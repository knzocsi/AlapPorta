object GlabsBekuldesF: TGlabsBekuldesF
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Glabs bek'#252'ld'#233's'
  ClientHeight = 406
  ClientWidth = 560
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 560
    Height = 185
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object lblDatum: TLabel
      Left = 16
      Top = 12
      Width = 3
      Height = 13
    end
    object lblMjegy: TLabel
      Left = 280
      Top = 12
      Width = 3
      Height = 13
    end
    object lblKuldve: TLabel
      Left = 16
      Top = 158
      Width = 3
      Height = 13
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblRendszam: TLabel
      Left = 16
      Top = 43
      Width = 50
      Height = 13
      Caption = 'Rendsz'#225'm'
    end
    object lblTomeg: TLabel
      Left = 16
      Top = 71
      Width = 60
      Height = 13
      Caption = 'T'#246'meg (kg)'
    end
    object lblOk: TLabel
      Left = 16
      Top = 99
      Width = 28
      Height = 13
      Caption = 'Ir'#225'ny'
    end
    object lblAllomas: TLabel
      Left = 16
      Top = 127
      Width = 55
      Height = 13
      Caption = #193'llom'#225's ID'
    end
    object edtRendszam: TEdit
      Left = 120
      Top = 40
      Width = 150
      Height = 21
      TabOrder = 0
    end
    object edtTomeg: TEdit
      Left = 120
      Top = 68
      Width = 150
      Height = 21
      NumbersOnly = True
      TabOrder = 1
    end
    object cbOk: TComboBox
      Left = 120
      Top = 96
      Width = 150
      Height = 21
      Style = csDropDownList
      TabOrder = 2
      Items.Strings = (
        'Be ('#233'rkez'#233's)'
        'Ki (t'#225'voz'#225's)'
        'Egy'#233'b')
    end
    object edtAllomas: TEdit
      Left = 120
      Top = 124
      Width = 425
      Height = 21
      TabOrder = 3
    end
  end
  object memNaplo: TMemo
    Left = 0
    Top = 185
    Width = 560
    Height = 180
    Align = alClient
    ReadOnly = True
    ScrollBars = ssBoth
    TabOrder = 1
    Visible = False
    WordWrap = False
  end
  object Panel2: TPanel
    Left = 0
    Top = 365
    Width = 560
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object btnNaplo: TButton
      Left = 16
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Napl'#243
      TabOrder = 2
      OnClick = btnNaploClick
    end
    object btnKilepes: TButton
      Left = 470
      Top = 8
      Width = 75
      Height = 25
      Cancel = True
      Caption = 'Kil'#233'p'#233's'
      ModalResult = 2
      TabOrder = 1
    end
    object btnKuldes: TButton
      Left = 380
      Top = 8
      Width = 84
      Height = 25
      Caption = 'Bek'#252'ld'#233's'
      Default = True
      TabOrder = 0
      OnClick = btnKuldesClick
    end
  end
end
