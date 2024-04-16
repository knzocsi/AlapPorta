
{*********************************************************************************}
{                                                                                 }
{                                XML Data Binding                                 }
{                                                                                 }
{         Generated on: 2024.01.25. 16:26:31                                      }
{       Generated from: N:\Delphi_10_4\D10munkak\MERLEG_SAP\segitseg\merleg.xml   }
{   Settings stored in: N:\Delphi_10_4\D10munkak\MERLEG_SAP\segitseg\merleg.xdb   }
{                                                                                 }
{*********************************************************************************}

unit Soap_keresU;

interface

uses Xml.xmldom, Xml.XMLDoc, Xml.XMLIntf;

type

{ Forward Decls }

  IXMLGenIfQueryRootType = interface;
  IXMLHeaderType = interface;
  IXMLUserType = interface;
  IXMLGenIfQuerysType = interface;
  IXMLGenIfQueryType = interface;
  IXMLUserSpecXMLsType = interface;
  IXMLMerlegXMLsType = interface;
  IXMLMerlegXMLType = interface;
  IXMLPicture_Base64Type = interface;

{ IXMLGenIfQueryRootType }

  IXMLGenIfQueryRootType = interface(IXMLNode)
    ['{03917370-1961-4A86-A2EB-FD32665B51D7}']
    { Property Accessors }
    function Get_Header: IXMLHeaderType;
    function Get_User: IXMLUserType;
    function Get_GenIfQuerys: IXMLGenIfQuerysType;
    { Methods & Properties }
    property Header: IXMLHeaderType read Get_Header;
    property User: IXMLUserType read Get_User;
    property GenIfQuerys: IXMLGenIfQuerysType read Get_GenIfQuerys;
  end;

{ IXMLHeaderType }

  IXMLHeaderType = interface(IXMLNode)
    ['{E7F7189A-46A8-4625-B55B-3D370720A9F6}']
    { Property Accessors }
    function Get_RequestId: UnicodeString;
    function Get_Timestamp: UnicodeString;
    function Get_RequestVersion: UnicodeString;
    function Get_HeaderVersion: UnicodeString;
    procedure Set_RequestId(Value: UnicodeString);
    procedure Set_Timestamp(Value: UnicodeString);
    procedure Set_RequestVersion(Value: UnicodeString);
    procedure Set_HeaderVersion(Value: UnicodeString);
    { Methods & Properties }
    property RequestId: UnicodeString read Get_RequestId write Set_RequestId;
    property Timestamp: UnicodeString read Get_Timestamp write Set_Timestamp;
    property RequestVersion: UnicodeString read Get_RequestVersion write Set_RequestVersion;
    property HeaderVersion: UnicodeString read Get_HeaderVersion write Set_HeaderVersion;
  end;

{ IXMLUserType }

  IXMLUserType = interface(IXMLNode)
    ['{ED0F869B-4789-446E-9925-482FDC18916A}']
    { Property Accessors }
    function Get_User: UnicodeString;
    function Get_PasswordHash: UnicodeString;
    function Get_RequestSignature: UnicodeString;
    procedure Set_User(Value: UnicodeString);
    procedure Set_PasswordHash(Value: UnicodeString);
    procedure Set_RequestSignature(Value: UnicodeString);
    { Methods & Properties }
    property login: UnicodeString read Get_User write Set_User;
    property PasswordHash: UnicodeString read Get_PasswordHash write Set_PasswordHash;
    property RequestSignature: UnicodeString read Get_RequestSignature write Set_RequestSignature;
  end;

{ IXMLGenIfQuerysType }

  IXMLGenIfQuerysType = interface(IXMLNode)
    ['{6373FC8F-C3EC-42F6-A9EE-60D5689ED171}']
    { Property Accessors }
    function Get_GenIfQuery: IXMLGenIfQueryType;
    { Methods & Properties }
    property GenIfQuery: IXMLGenIfQueryType read Get_GenIfQuery;
  end;

{ IXMLGenIfQueryType }

  IXMLGenIfQueryType = interface(IXMLNode)
    ['{3CC2FDBC-9D61-4452-B67B-82D51BEE8FDC}']
    { Property Accessors }
    function Get_Querydomain: UnicodeString;
    function Get_Op_name: UnicodeString;
    function Get_Op_mode: Integer;
    function Get_Sql_name: UnicodeString;
    function Get_Params: UnicodeString;
    function Get_UserSpecXMLs: IXMLUserSpecXMLsType;
    procedure Set_Querydomain(Value: UnicodeString);
    procedure Set_Op_name(Value: UnicodeString);
    procedure Set_Op_mode(Value: Integer);
    procedure Set_Sql_name(Value: UnicodeString);
    procedure Set_Params(Value: UnicodeString);
    { Methods & Properties }
    property Querydomain: UnicodeString read Get_Querydomain write Set_Querydomain;
    property Op_name: UnicodeString read Get_Op_name write Set_Op_name;
    property Op_mode: Integer read Get_Op_mode write Set_Op_mode;
    property Sql_name: UnicodeString read Get_Sql_name write Set_Sql_name;
    property Params: UnicodeString read Get_Params write Set_Params;
    property UserSpecXMLs: IXMLUserSpecXMLsType read Get_UserSpecXMLs;
  end;

{ IXMLUserSpecXMLsType }

  IXMLUserSpecXMLsType = interface(IXMLNode)
    ['{05EA13D3-DAA4-4E2D-B75E-E6624C3F8F6E}']
    { Property Accessors }
    function Get_MerlegXMLs: IXMLMerlegXMLsType;
    { Methods & Properties }
    property MerlegXMLs: IXMLMerlegXMLsType read Get_MerlegXMLs;
  end;

{ IXMLMerlegXMLsType }

  IXMLMerlegXMLsType = interface(IXMLNode)
    ['{3481D6FC-2165-4800-9E07-07B9E22EB45A}']
    { Property Accessors }
    function Get_MerlegXML: IXMLMerlegXMLType;
    { Methods & Properties }
    property MerlegXML: IXMLMerlegXMLType read Get_MerlegXML;
  end;

{ IXMLMerlegXMLType }

  IXMLMerlegXMLType = interface(IXMLNode)
    ['{961544ED-C657-4AD8-8582-81864E501D38}']
    { Property Accessors }
    function Get_ID: Integer;
    function Get_WERKS: Integer;
    function Get_MERLEG: UnicodeString;
    function Get_Rendszam: UnicodeString;
    function Get_Brutto: UnicodeString;
    function Get_ForgalomIrany: UnicodeString;
    function Get_Datum: UnicodeString;
    function Get_Ido: UnicodeString;
    function Get_Picture_Base64: IXMLPicture_Base64Type;
    procedure Set_ID(Value: Integer);
    procedure Set_WERKS(Value: Integer);
    procedure Set_MERLEG(Value: UnicodeString);
    procedure Set_Rendszam(Value: UnicodeString);
    procedure Set_Brutto(Value: UnicodeString);
    procedure Set_ForgalomIrany(Value: UnicodeString);
    procedure Set_Datum(Value: UnicodeString);
    procedure Set_Ido(Value: UnicodeString);
    { Methods & Properties }
    property ID: Integer read Get_ID write Set_ID;
    property WERKS: Integer read Get_WERKS write Set_WERKS;
    property MERLEG: UnicodeString read Get_MERLEG write Set_MERLEG;
    property Rendszam: UnicodeString read Get_Rendszam write Set_Rendszam;
    property Brutto: UnicodeString read Get_Brutto write Set_Brutto;
    property ForgalomIrany: UnicodeString read Get_ForgalomIrany write Set_ForgalomIrany;
    property Datum: UnicodeString read Get_Datum write Set_Datum;
    property Ido: UnicodeString read Get_Ido write Set_Ido;
    property Picture_Base64: IXMLPicture_Base64Type read Get_Picture_Base64;
  end;

{ IXMLPicture_Base64Type }

  IXMLPicture_Base64Type = interface(IXMLNode)
    ['{75BA3DB0-6575-40EF-AFE6-AFFF5F2F4DD1}']
    { Property Accessors }
    function Get_Ext: UnicodeString;
    procedure Set_Ext(Value: UnicodeString);
    { Methods & Properties }
    property Ext: UnicodeString read Get_Ext write Set_Ext;
  end;

{ Forward Decls }

  TXMLGenIfQueryRootType = class;
  TXMLHeaderType = class;
  TXMLUserType = class;
  TXMLGenIfQuerysType = class;
  TXMLGenIfQueryType = class;
  TXMLUserSpecXMLsType = class;
  TXMLMerlegXMLsType = class;
  TXMLMerlegXMLType = class;
  TXMLPicture_Base64Type = class;

{ TXMLGenIfQueryRootType }

  TXMLGenIfQueryRootType = class(TXMLNode, IXMLGenIfQueryRootType)
  protected
    { IXMLGenIfQueryRootType }
    function Get_Header: IXMLHeaderType;
    function Get_User: IXMLUserType;
    function Get_GenIfQuerys: IXMLGenIfQuerysType;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLHeaderType }

  TXMLHeaderType = class(TXMLNode, IXMLHeaderType)
  protected
    { IXMLHeaderType }
    function Get_RequestId: UnicodeString;
    function Get_Timestamp: UnicodeString;
    function Get_RequestVersion: UnicodeString;
    function Get_HeaderVersion: UnicodeString;
    procedure Set_RequestId(Value: UnicodeString);
    procedure Set_Timestamp(Value: UnicodeString);
    procedure Set_RequestVersion(Value: UnicodeString);
    procedure Set_HeaderVersion(Value: UnicodeString);
  end;

{ TXMLUserType }

  TXMLUserType = class(TXMLNode, IXMLUserType)
  protected
    { IXMLUserType }
    function Get_User: UnicodeString;
    function Get_PasswordHash: UnicodeString;
    function Get_RequestSignature: UnicodeString;
    procedure Set_User(Value: UnicodeString);
    procedure Set_PasswordHash(Value: UnicodeString);
    procedure Set_RequestSignature(Value: UnicodeString);
  end;

{ TXMLGenIfQuerysType }

  TXMLGenIfQuerysType = class(TXMLNode, IXMLGenIfQuerysType)
  protected
    { IXMLGenIfQuerysType }
    function Get_GenIfQuery: IXMLGenIfQueryType;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLGenIfQueryType }

  TXMLGenIfQueryType = class(TXMLNode, IXMLGenIfQueryType)
  protected
    { IXMLGenIfQueryType }
    function Get_Querydomain: UnicodeString;
    function Get_Op_name: UnicodeString;
    function Get_Op_mode: Integer;
    function Get_Sql_name: UnicodeString;
    function Get_Params: UnicodeString;
    function Get_UserSpecXMLs: IXMLUserSpecXMLsType;
    procedure Set_Querydomain(Value: UnicodeString);
    procedure Set_Op_name(Value: UnicodeString);
    procedure Set_Op_mode(Value: Integer);
    procedure Set_Sql_name(Value: UnicodeString);
    procedure Set_Params(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLUserSpecXMLsType }

  TXMLUserSpecXMLsType = class(TXMLNode, IXMLUserSpecXMLsType)
  protected
    { IXMLUserSpecXMLsType }
    function Get_MerlegXMLs: IXMLMerlegXMLsType;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLMerlegXMLsType }

  TXMLMerlegXMLsType = class(TXMLNode, IXMLMerlegXMLsType)
  protected
    { IXMLMerlegXMLsType }
    function Get_MerlegXML: IXMLMerlegXMLType;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLMerlegXMLType }

  TXMLMerlegXMLType = class(TXMLNode, IXMLMerlegXMLType)
  protected
    { IXMLMerlegXMLType }
    function Get_ID: Integer;
    function Get_WERKS: Integer;
    function Get_MERLEG: UnicodeString;
    function Get_Rendszam: UnicodeString;
    function Get_Brutto: UnicodeString;
    function Get_ForgalomIrany: UnicodeString;
    function Get_Datum: UnicodeString;
    function Get_Ido: UnicodeString;
    function Get_Picture_Base64: IXMLPicture_Base64Type;
    procedure Set_ID(Value: Integer);
    procedure Set_WERKS(Value: Integer);
    procedure Set_MERLEG(Value: UnicodeString);
    procedure Set_Rendszam(Value: UnicodeString);
    procedure Set_Brutto(Value: UnicodeString);
    procedure Set_ForgalomIrany(Value: UnicodeString);
    procedure Set_Datum(Value: UnicodeString);
    procedure Set_Ido(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLPicture_Base64Type }

  TXMLPicture_Base64Type = class(TXMLNode, IXMLPicture_Base64Type)
  protected
    { IXMLPicture_Base64Type }
    function Get_Ext: UnicodeString;
    procedure Set_Ext(Value: UnicodeString);
  end;

{ Global Functions }

function GetGenIfQueryRoot(Doc: IXMLDocument): IXMLGenIfQueryRootType;
function LoadGenIfQueryRoot(const FileName: string): IXMLGenIfQueryRootType;
function NewGenIfQueryRoot: IXMLGenIfQueryRootType;

const
  TargetNamespace = '';

implementation

uses Xml.xmlutil;

{ Global Functions }

function GetGenIfQueryRoot(Doc: IXMLDocument): IXMLGenIfQueryRootType;
begin
  Result := Doc.GetDocBinding('GenIfQueryRoot', TXMLGenIfQueryRootType, TargetNamespace) as IXMLGenIfQueryRootType;
end;

function LoadGenIfQueryRoot(const FileName: string): IXMLGenIfQueryRootType;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('GenIfQueryRoot', TXMLGenIfQueryRootType, TargetNamespace) as IXMLGenIfQueryRootType;
end;

function NewGenIfQueryRoot: IXMLGenIfQueryRootType;
begin
  Result := NewXMLDocument.GetDocBinding('GenIfQueryRoot', TXMLGenIfQueryRootType, TargetNamespace) as IXMLGenIfQueryRootType;
end;

{ TXMLGenIfQueryRootType }

procedure TXMLGenIfQueryRootType.AfterConstruction;
begin
  RegisterChildNode('header', TXMLHeaderType);
  RegisterChildNode('user', TXMLUserType);
  RegisterChildNode('GenIfQuerys', TXMLGenIfQuerysType);
  inherited;
end;

function TXMLGenIfQueryRootType.Get_Header: IXMLHeaderType;
begin
  Result := ChildNodes['header'] as IXMLHeaderType;
end;

function TXMLGenIfQueryRootType.Get_User: IXMLUserType;
begin
  Result := ChildNodes['user'] as IXMLUserType;
end;

function TXMLGenIfQueryRootType.Get_GenIfQuerys: IXMLGenIfQuerysType;
begin
  Result := ChildNodes['GenIfQuerys'] as IXMLGenIfQuerysType;
end;

{ TXMLHeaderType }

function TXMLHeaderType.Get_RequestId: UnicodeString;
begin
  Result := ChildNodes['requestId'].Text;
end;

procedure TXMLHeaderType.Set_RequestId(Value: UnicodeString);
begin
  ChildNodes['requestId'].NodeValue := Value;
end;

function TXMLHeaderType.Get_Timestamp: UnicodeString;
begin
  Result := ChildNodes['timestamp'].Text;
end;

procedure TXMLHeaderType.Set_Timestamp(Value: UnicodeString);
begin
  ChildNodes['timestamp'].NodeValue := Value;
end;

function TXMLHeaderType.Get_RequestVersion: UnicodeString;
begin
  Result := ChildNodes['requestVersion'].Text;
end;

procedure TXMLHeaderType.Set_RequestVersion(Value: UnicodeString);
begin
  ChildNodes['requestVersion'].NodeValue := Value;
end;

function TXMLHeaderType.Get_HeaderVersion: UnicodeString;
begin
  Result := ChildNodes['headerVersion'].Text;
end;

procedure TXMLHeaderType.Set_HeaderVersion(Value: UnicodeString);
begin
  ChildNodes['headerVersion'].NodeValue := Value;
end;

{ TXMLUserType }

function TXMLUserType.Get_User: UnicodeString;
begin
  Result := ChildNodes['login'].Text;
end;

procedure TXMLUserType.Set_User(Value: UnicodeString);
begin
  ChildNodes['login'].NodeValue := Value;
end;

function TXMLUserType.Get_PasswordHash: UnicodeString;
begin
  Result := ChildNodes['passwordHash'].Text;
end;

procedure TXMLUserType.Set_PasswordHash(Value: UnicodeString);
begin
  ChildNodes['passwordHash'].NodeValue := Value;
end;

function TXMLUserType.Get_RequestSignature: UnicodeString;
begin
  Result := ChildNodes['requestSignature'].Text;
end;

procedure TXMLUserType.Set_RequestSignature(Value: UnicodeString);
begin
  ChildNodes['requestSignature'].NodeValue := Value;
end;

{ TXMLGenIfQuerysType }

procedure TXMLGenIfQuerysType.AfterConstruction;
begin
  RegisterChildNode('GenIfQuery', TXMLGenIfQueryType);
  inherited;
end;

function TXMLGenIfQuerysType.Get_GenIfQuery: IXMLGenIfQueryType;
begin
  Result := ChildNodes['GenIfQuery'] as IXMLGenIfQueryType;
end;

{ TXMLGenIfQueryType }

procedure TXMLGenIfQueryType.AfterConstruction;
begin
  RegisterChildNode('UserSpecXMLs', TXMLUserSpecXMLsType);
  inherited;
end;

function TXMLGenIfQueryType.Get_Querydomain: UnicodeString;
begin
  Result := ChildNodes['querydomain'].Text;
end;

procedure TXMLGenIfQueryType.Set_Querydomain(Value: UnicodeString);
begin
  ChildNodes['querydomain'].NodeValue := Value;
end;

function TXMLGenIfQueryType.Get_Op_name: UnicodeString;
begin
  Result := ChildNodes['op_name'].Text;
end;

procedure TXMLGenIfQueryType.Set_Op_name(Value: UnicodeString);
begin
  ChildNodes['op_name'].NodeValue := Value;
end;

function TXMLGenIfQueryType.Get_Op_mode: Integer;
begin
  Result := ChildNodes['op_mode'].NodeValue;
end;

procedure TXMLGenIfQueryType.Set_Op_mode(Value: Integer);
begin
  ChildNodes['op_mode'].NodeValue := Value;
end;

function TXMLGenIfQueryType.Get_Sql_name: UnicodeString;
begin
  Result := ChildNodes['sql_name'].Text;
end;

procedure TXMLGenIfQueryType.Set_Sql_name(Value: UnicodeString);
begin
  ChildNodes['sql_name'].NodeValue := Value;
end;

function TXMLGenIfQueryType.Get_Params: UnicodeString;
begin
  Result := ChildNodes['params'].Text;
end;

procedure TXMLGenIfQueryType.Set_Params(Value: UnicodeString);
begin
  ChildNodes['params'].NodeValue := Value;
end;

function TXMLGenIfQueryType.Get_UserSpecXMLs: IXMLUserSpecXMLsType;
begin
  Result := ChildNodes['UserSpecXMLs'] as IXMLUserSpecXMLsType;
end;

{ TXMLUserSpecXMLsType }

procedure TXMLUserSpecXMLsType.AfterConstruction;
begin
  RegisterChildNode('MerlegXMLs', TXMLMerlegXMLsType);
  inherited;
end;

function TXMLUserSpecXMLsType.Get_MerlegXMLs: IXMLMerlegXMLsType;
begin
  Result := ChildNodes['MerlegXMLs'] as IXMLMerlegXMLsType;
end;

{ TXMLMerlegXMLsType }

procedure TXMLMerlegXMLsType.AfterConstruction;
begin
  RegisterChildNode('MerlegXML', TXMLMerlegXMLType);
  inherited;
end;

function TXMLMerlegXMLsType.Get_MerlegXML: IXMLMerlegXMLType;
begin
  Result := ChildNodes['MerlegXML'] as IXMLMerlegXMLType;
end;

{ TXMLMerlegXMLType }

procedure TXMLMerlegXMLType.AfterConstruction;
begin
  RegisterChildNode('Picture_Base64', TXMLPicture_Base64Type);
  inherited;
end;

function TXMLMerlegXMLType.Get_ID: Integer;
begin
  Result := ChildNodes['ID'].NodeValue;
end;

procedure TXMLMerlegXMLType.Set_ID(Value: Integer);
begin
  ChildNodes['ID'].NodeValue := Value;
end;

function TXMLMerlegXMLType.Get_WERKS: Integer;
begin
  Result := ChildNodes['WERKS'].NodeValue;
end;

procedure TXMLMerlegXMLType.Set_WERKS(Value: Integer);
begin
  ChildNodes['WERKS'].NodeValue := Value;
end;

function TXMLMerlegXMLType.Get_MERLEG: UnicodeString;
begin
  Result := ChildNodes['MERLEG'].Text;
end;

procedure TXMLMerlegXMLType.Set_MERLEG(Value: UnicodeString);
begin
  ChildNodes['MERLEG'].NodeValue := Value;
end;

function TXMLMerlegXMLType.Get_Rendszam: UnicodeString;
begin
  Result := ChildNodes['Rendszam'].Text;
end;

procedure TXMLMerlegXMLType.Set_Rendszam(Value: UnicodeString);
begin
  ChildNodes['Rendszam'].NodeValue := Value;
end;

function TXMLMerlegXMLType.Get_Brutto: UnicodeString;
begin
  Result := ChildNodes['Brutto'].Text;
end;

procedure TXMLMerlegXMLType.Set_Brutto(Value: UnicodeString);
begin
  ChildNodes['Brutto'].NodeValue := Value;
end;

function TXMLMerlegXMLType.Get_ForgalomIrany: UnicodeString;
begin
  Result := ChildNodes['ForgalomIrany'].Text;
end;

procedure TXMLMerlegXMLType.Set_ForgalomIrany(Value: UnicodeString);
begin
  ChildNodes['ForgalomIrany'].NodeValue := Value;
end;

function TXMLMerlegXMLType.Get_Datum: UnicodeString;
begin
  Result := ChildNodes['Datum'].Text;
end;

procedure TXMLMerlegXMLType.Set_Datum(Value: UnicodeString);
begin
  ChildNodes['Datum'].NodeValue := Value;
end;

function TXMLMerlegXMLType.Get_Ido: UnicodeString;
begin
  Result := ChildNodes['Ido'].Text;
end;

procedure TXMLMerlegXMLType.Set_Ido(Value: UnicodeString);
begin
  ChildNodes['Ido'].NodeValue := Value;
end;

function TXMLMerlegXMLType.Get_Picture_Base64: IXMLPicture_Base64Type;
begin
  Result := ChildNodes['Picture_Base64'] as IXMLPicture_Base64Type;
end;

{ TXMLPicture_Base64Type }

function TXMLPicture_Base64Type.Get_Ext: UnicodeString;
begin
  Result := AttributeNodes['ext'].Text;
end;

procedure TXMLPicture_Base64Type.Set_Ext(Value: UnicodeString);
begin
  SetAttribute('ext', Value);
end;

end.