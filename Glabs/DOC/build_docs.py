# -*- coding: utf-8 -*-
"""Combine the page-by-page GLABs API doc snapshots into one Markdown + HTML document."""
import os
import re
import glob
import shutil
import html as htmlmod
from urllib.parse import urlparse

from bs4 import BeautifulSoup
from markdownify import markdownify as md

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))  # .../Glabs
OUT = os.path.dirname(os.path.abspath(__file__))                    # .../Glabs/_output
ASSETS = os.path.join(OUT, "assets")

SITE_HOST = "partnerportal.glabs.me"
SITE_PREFIX = "/api-documents/"


def load_pages():
    pages = []
    for folder in sorted(glob.glob(os.path.join(ROOT, "*"))):
        index_path = os.path.join(folder, "index.html")
        if not os.path.isdir(folder) or not os.path.isfile(index_path):
            continue
        with open(index_path, "r", encoding="utf-8", errors="replace") as f:
            raw = f.read()
        soup = BeautifulSoup(raw, "html.parser")
        html_tag = soup.find("html")
        source = html_tag.get("data-scrapbook-source", "") if html_tag else ""
        title_tag = soup.find("title")
        title = title_tag.get_text(strip=True) if title_tag else "(untitled)"
        title = re.sub(r"\s*\|\s*GLABs API Docs\s*$", "", title).strip()

        parsed = urlparse(source)
        if parsed.netloc != SITE_HOST:
            continue  # skip stray external captures (e.g. JSON:API spec page)

        path = parsed.path
        if path.startswith(SITE_PREFIX):
            slug = path[len(SITE_PREFIX):].strip("/")
        else:
            slug = path.strip("/")

        breadcrumb_nav = soup.find("nav", class_="theme-doc-breadcrumbs")
        breadcrumb = ""
        if breadcrumb_nav:
            items = [li.get_text(strip=True) for li in breadcrumb_nav.find_all("li")]
            items = [i for i in items if i]
            breadcrumb = " > ".join(items)

        content_div = soup.find("div", class_="theme-doc-markdown")
        if content_div is None:
            continue
        header = content_div.find("header")
        if header:
            header.decompose()  # h1 duplicated separately as section title

        # copy any non-icon local images referenced in this page's content
        for img in content_div.find_all("img"):
            src = img.get("src", "")
            if not src or src.startswith(("http://", "https://", "data:")):
                continue
            local_path = os.path.normpath(os.path.join(folder, src))
            if os.path.isfile(local_path):
                base = os.path.basename(local_path)
                new_name = f"{slug.replace('/', '_') or 'root'}_{base}"
                os.makedirs(ASSETS, exist_ok=True)
                shutil.copyfile(local_path, os.path.join(ASSETS, new_name))
                img["src"] = f"assets/{new_name}"

        content_html = content_div.decode_contents()

        pages.append({
            "slug": slug,
            "title": title,
            "breadcrumb": breadcrumb,
            "content_html": content_html,
            "folder": folder,
        })
    return pages


def sort_key(page):
    slug = page["slug"]
    if slug == "":
        return (0, "", page["breadcrumb"])
    if slug == "changelog":
        return (3, "", page["breadcrumb"])
    if slug.startswith("guides/") or slug.startswith("guides"):
        return (1, page["breadcrumb"] or slug, slug)
    if slug.startswith("reference/") or slug.startswith("reference"):
        return (2, page["breadcrumb"] or slug, slug)
    return (4, page["breadcrumb"] or slug, slug)


def dedupe(pages):
    seen = {}
    for p in pages:
        # keep the richest capture (longest content) for a given slug
        prev = seen.get(p["slug"])
        if prev is None or len(p["content_html"]) > len(prev["content_html"]):
            seen[p["slug"]] = p
    return list(seen.values())


def anchor_for(slug):
    return "sec-" + re.sub(r"[^a-z0-9]+", "-", (slug or "getting-started").lower()).strip("-")


def build_markdown(pages):
    lines = []
    lines.append("# GLABs API Docs — összesített dokumentáció\n")
    lines.append("_Forrás: https://partnerportal.glabs.me/api-documents/ — oldalankénti mentésekből összefűzve._\n")
    lines.append("## Tartalomjegyzék\n")
    for p in pages:
        indent = "  " * (p["slug"].count("/"))
        anchor = anchor_for(p["slug"])
        lines.append(f"{indent}- [{p['title']}](#{anchor})")
    lines.append("")

    for p in pages:
        anchor = anchor_for(p["slug"])
        lines.append(f'\n<a id="{anchor}"></a>\n')
        lines.append(f"## {p['title']}\n")
        if p["breadcrumb"]:
            lines.append(f"*{p['breadcrumb']}*\n")
        content_md = md(p["content_html"], heading_style="ATX", bullets="-")
        content_md = re.sub(r"\n{3,}", "\n\n", content_md).strip()
        lines.append(content_md)
        lines.append("\n---\n")

    return "\n".join(lines)


HTML_TEMPLATE = """<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>GLABs API Docs</title>
<style>
  body {{ font-family: -apple-system, Segoe UI, Arial, sans-serif; max-width: 860px; margin: 2rem auto; padding: 0 1.5rem; line-height: 1.55; color: #1a1a1a; }}
  h1 {{ font-size: 2rem; border-bottom: 3px solid #2f6feb; padding-bottom: .3rem; }}
  h2 {{ font-size: 1.5rem; margin-top: 2.5rem; border-bottom: 1px solid #ddd; padding-bottom: .25rem; page-break-before: always; }}
  h3 {{ font-size: 1.15rem; margin-top: 1.5rem; }}
  .breadcrumb {{ color: #666; font-size: .9rem; margin-top: -.5rem; }}
  code {{ background: #f2f2f2; padding: .1rem .3rem; border-radius: 3px; font-size: .9em; }}
  pre {{ background: #1e1e1e; color: #e8e8e8; padding: .9rem; border-radius: 6px; overflow-x: auto; font-size: .85em; }}
  pre code {{ background: none; padding: 0; color: inherit; }}
  table {{ border-collapse: collapse; width: 100%; margin: 1rem 0; font-size: .9em; }}
  th, td {{ border: 1px solid #ccc; padding: .4rem .6rem; text-align: left; }}
  th {{ background: #f5f5f5; }}
  a {{ color: #2f6feb; text-decoration: none; }}
  .toc {{ background: #f8f9fb; border: 1px solid #e2e5eb; border-radius: 6px; padding: 1rem 1.5rem; }}
  .toc ul {{ margin: 0; padding-left: 1.2rem; }}
  .sep {{ display: none; }}
  img {{ max-width: 100%; }}
  @media print {{
    a {{ color: inherit; }}
    .toc {{ page-break-after: always; }}
  }}
</style>
</head>
<body>
<h1>GLABs API Docs — összesített dokumentáció</h1>
<p><em>Forrás: https://partnerportal.glabs.me/api-documents/ — oldalankénti mentésekből összefűzve.</em></p>
<div class="toc">
<h2 style="page-break-before: auto; border: none; margin-top: 0;">Tartalomjegyzék</h2>
<ul>
{toc}
</ul>
</div>
{body}
</body>
</html>
"""


def build_html(pages):
    toc_items = []
    body_parts = []
    for p in pages:
        anchor = anchor_for(p["slug"])
        depth = p["slug"].count("/")
        toc_items.append(f'<li style="margin-left:{depth*1.2}em"><a href="#{anchor}">{htmlmod.escape(p["title"])}</a></li>')
        crumb = f'<p class="breadcrumb">{htmlmod.escape(p["breadcrumb"])}</p>' if p["breadcrumb"] else ""
        body_parts.append(
            f'<section id="{anchor}">\n<h2>{htmlmod.escape(p["title"])}</h2>\n{crumb}\n{p["content_html"]}\n</section>'
        )
    return HTML_TEMPLATE.format(toc="\n".join(toc_items), body="\n".join(body_parts))


def main():
    pages = load_pages()
    pages = dedupe(pages)
    pages.sort(key=sort_key)

    print(f"Pages kept: {len(pages)}")
    for p in pages:
        print(f"  [{p['slug'] or '(root)'}] {p['title']}")

    md_doc = build_markdown(pages)
    with open(os.path.join(OUT, "glabs-api-docs.md"), "w", encoding="utf-8") as f:
        f.write(md_doc)

    html_doc = build_html(pages)
    with open(os.path.join(OUT, "glabs-api-docs.html"), "w", encoding="utf-8") as f:
        f.write(html_doc)

    print("Wrote glabs-api-docs.md and glabs-api-docs.html")


if __name__ == "__main__":
    main()
