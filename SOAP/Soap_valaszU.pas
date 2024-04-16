
{********************************************************************************************}
{                                                                                            }
{                                      XML Data Binding                                      }
{                                                                                            }
{         Generated on: 2018.11.08. 9:33:01                                                  }
{       Generated from: C:\Munka\MERLEG_SAP\Win32\Debug\SAP_XML\sap_valasz\SOAP_VALASZ.xml   }
{   Settings stored in: C:\Munka\MERLEG_SAP\Win32\Debug\SAP_XML\sap_valasz\SOAP_VALASZ.xdb   }
{                                                                                            }
{********************************************************************************************}

unit Soap_valaszU;

interface

uses Xml.xmldom, Xml.XMLDoc, Xml.XMLIntf;

type

{ Forward Decls }

  IXMLGenIFResultRootType = interface;
  IXMLResultType = interface;
  IXMLGenIFResultsType = interface;
  IXMLGenIFResultType = interface;
  IXMLUserSpecResultXMLsType = interface;
  IXMLMerlegResponseXMLsType = interface;
  IXMLMerlegResponseXMLType = interface;

{ IXMLGenIFResultRootType }

  IXMLGenIFResultRootType = interface(IXMLNode)
    ['{FC1A433A-15FA-430E-B492-DA21BE61C979}']
    { Property Accessors }
    function Get_Result: IXMLResultType;
    function Get_Messages: UnicodeString;
    function Get_GenIFResults: IXMLGenIFResultsType;
    procedure Set_Messages(Value: UnicodeString);
    { Methods & Properties }
    property Result: IXMLResultType read Get_Result;
    property Messages: UnicodeString read Get_Messages write Set_Messages;
    property GenIFResults: IXMLGenIFResultsType read Get_GenIFResults;
  end;

{ IXMLResultType }

  IXMLResultType = interface(IXMLNode)
    ['{1751EF08-5A2F-41B1-B13D-8B6797DCE1F0}']
    { Property Accessors }
    function Get_FuncCode: UnicodeString;
    function Get_ReasonCode: UnicodeString;
    function Get_ID: UnicodeString;
    procedure Set_FuncCode(Value: UnicodeString);
    procedure Set_ReasonCode(Value: UnicodeString);
    procedure Set_ID(Value: UnicodeString);
    { Methods & Properties }
    property FuncCode: UnicodeString read Get_FuncCode write Set_FuncCode;
    property ReasonCode: UnicodeString read Get_ReasonCode write Set_ReasonCode;
    property ID: UnicodeString read Get_ID write Set_ID;
  end;

{ IXMLGenIFResultsType }

  IXMLGenIFResultsType = interface(IXMLNode)
    ['{6E97C780-7445-411F-84FB-8AF50E609746}']
    { Property Accessors }
    function Get_GenIFResult: IXMLGenIFResultType;
    { Methods & Properties }
    property GenIFResult: IXMLGenIFResultType read Get_GenIFResult;
  end;

{ IXMLGenIFResultType }

  IXMLGenIFResultType = interface(IXMLNode)
    ['{A8FCB6AA-D0AD-4F4C-9164-4BC4787E3B31}']
    { Property Accessors }
    function Get_ID: UnicodeString;
    function Get_Result: IXMLResultType;
    function Get_Messages: UnicodeString;
    function Get_Querydomain: UnicodeString;
    function Get_Op_name: UnicodeString;
    function Get_Op_mode: Integer;
    function Get_Sql_name: UnicodeString;
    function Get_Params: UnicodeString;
    function Get_UserSpecResultXMLs: IXMLUserSpecResultXMLsType;
    procedure Set_ID(Value: UnicodeString);
    procedure Set_Messages(Value: UnicodeString);
    procedure Set_Querydomain(Value: UnicodeString);
    procedure Set_Op_name(Value: UnicodeString);
    procedure Set_Op_mode(Value: Integer);
    procedure Set_Sql_name(Value: UnicodeString);
    procedure Set_Params(Value: UnicodeString);
    { Methods & Properties }
    property ID: UnicodeString read Get_ID write Set_ID;
    property Result: IXMLResultType read Get_Result;
    property Messages: UnicodeString read Get_Messages write Set_Messages;
    property Querydomain: UnicodeString read Get_Querydomain write Set_Querydomain;
    property Op_name: UnicodeString read Get_Op_name write Set_Op_name;
    property Op_mode: Integer read Get_Op_mode write Set_Op_mode;
    property Sql_name: UnicodeString read Get_Sql_name write Set_Sql_name;
    property Params: UnicodeString read Get_Params write Set_Params;
    property UserSpecResultXMLs: IXMLUserSpecResultXMLsType read Get_UserSpecResultXMLs;
  end;

{ IXMLUserSpecResultXMLsType }

  IXMLUserSpecResultXMLsType = interface(IXMLNode)
    ['{068E2BDB-D09F-4657-A8F9-FB0004640F70}']
    { Property Accessors }
    function Get_MerlegResponseXMLs: IXMLMerlegResponseXMLsType;
    { Methods & Properties }
    property MerlegResponseXMLs: IXMLMerlegResponseXMLsType read Get_MerlegResponseXMLs;
  end;

{ IXMLMerlegResponseXMLsType }

  IXMLMerlegResponseXMLsType = interface(IXMLNode)
    ['{ABE88622-2775-47CC-BD29-6F4904974690}']
    { Property Accessors }
    function Get_MerlegResponseXML: IXMLMerlegResponseXMLType;
    { Methods & Properties }
    property MerlegResponseXML: IXMLMerlegResponseXMLType read Get_MerlegResponseXML;
  end;

{ IXMLMerlegResponseXMLType }

  IXMLMerlegResponseXMLType = interface(IXMLNode)
    ['{F87C205B-B71E-4542-85EF-523B7A1F8AB2}']
    { Property Accessors }
    function Get_SAP_CODE: Integer;
    function Get_MERLEG: UnicodeString;
    function Get_ID: Integer;
    procedure Set_SAP_CODE(Value: Integer);
    procedure Set_MERLEG(Value: UnicodeString);
    procedure Set_ID(Value: Integer);
    { Methods & Properties }
    property SAP_CODE: Integer read Get_SAP_CODE write Set_SAP_CODE;
    property MERLEG: UnicodeString read Get_MERLEG write Set_MERLEG;
    property ID: Integer read Get_ID write Set_ID;
  end;

{ Forward Decls }

  TXMLGenIFResultRootType = class;
  TXMLResultType = class;
  TXMLGenIFResultsType = class;
  TXMLGenIFResultType = class;
  TXMLUserSpecResultXMLsType = class;
  TXMLMerlegResponseXMLsType = class;
  TXMLMerlegResponseXMLType = class;

{ TXMLGenIFResultRootType }

  TXMLGenIFResultRootType = class(TXMLNode, IXMLGenIFResultRootType)
  protected
    { IXMLGenIFResultRootType }
    function Get_Result: IXMLResultType;
    function Get_Messages: UnicodeString;
    function Get_GenIFResults: IXMLGenIFResultsType;
    procedure Set_Messages(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLResultType }

  TXMLResultType = class(TXMLNode, IXMLResultType)
  protected
    { IXMLResultType }
    function Get_FuncCode: UnicodeString;
    function Get_ReasonCode: UnicodeString;
    function Get_ID: UnicodeString;
    procedure Set_FuncCode(Value: UnicodeString);
    procedure Set_ReasonCode(Value: UnicodeString);
    procedure Set_ID(Value: UnicodeString);
  end;

{ TXMLGenIFResultsType }

  TXMLGenIFResultsType = class(TXMLNode, IXMLGenIFResultsType)
  protected
    { IXMLGenIFResultsType }
    function Get_GenIFResult: IXMLGenIFResultType;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLGenIFResultType }

  TXMLGenIFResultType = class(TXMLNode, IXMLGenIFResultType)
  protected
    { IXMLGenIFResultType }
    function Get_ID: UnicodeString;
    function Get_Result: IXMLResultType;
    function Get_Messages: UnicodeString;
    function Get_Querydomain: UnicodeString;
    function Get_Op_name: UnicodeString;
    function Get_Op_mode: Integer;
    function Get_Sql_name: UnicodeString;
    function Get_Params: UnicodeString;
    function Get_UserSpecResultXMLs: IXMLUserSpecResultXMLsType;
    procedure Set_ID(Value: UnicodeString);
    procedure Set_Messages(Value: UnicodeString);
    procedure Set_Querydomain(Value: UnicodeString);
    procedure Set_Op_name(Value: UnicodeString);
    procedure Set_Op_mode(Value: Integer);
    procedure Set_Sql_name(Value: UnicodeString);
    procedure Set_Params(Value: UnicodeString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLUserSpecResultXMLsType }

  TXMLUserSpecResultXMLsType = class(TXMLNode, IXMLUserSpecResultXMLsType)
  protected
    { IXMLUserSpecResultXMLsType }
    function Get_MerlegResponseXMLs: IXMLMerlegResponseXMLsType;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLMerlegResponseXMLsType }

  TXMLMerlegResponseXMLsType = class(TXMLNode, IXMLMerlegResponseXMLsType)
  protected
    { IXMLMerlegResponseXMLsType }
    function Get_MerlegResponseXML: IXMLMerlegResponseXMLType;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLMerlegResponseXMLType }

  TXMLMerlegResponseXMLType = class(TXMLNode, IXMLMerlegResponseXMLType)
  protected
    { IXMLMerlegResponseXMLType }
    function Get_SAP_CODE: Integer;
    function Get_MERLEG: UnicodeString;
    function Get_ID: Integer;
    procedure Set_SAP_CODE(Value: Integer);
    procedure Set_MERLEG(Value: UnicodeString);
    procedure Set_ID(Value: Integer);
  end;

{ Global Functions }

function GetGenIFResultRoot(Doc: IXMLDocument): IXMLGenIFResultRootType;
function LoadGenIFResultRoot(const FileName: string): IXMLGenIFResultRootType;
function NewGenIFResultRoot: IXMLGenIFResultRootType;

const
  TargetNamespace = '';

implementation

uses Xml.xmlutil;

{ Global Functions }

function GetGenIFResultRoot(Doc: IXMLDocument): IXMLGenIFResultRootType;
begin
  Result := Doc.GetDocBinding('GenIFResultRoot', TXMLGenIFResultRootType, TargetNamespace) as IXMLGenIFResultRootType;
end;

function LoadGenIFResultRoot(const FileName: string): IXMLGenIFResultRootType;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('GenIFResultRoot', TXMLGenIFResultRootType, TargetNamespace) as IXMLGenIFResultRootType;
end;

function NewGenIFResultRoot: IXMLGenIFResultRootType;
begin
  Result := NewXMLDocument.GetDocBinding('GenIFResultRoot', TXMLGenIFResultRootType, TargetNamespace) as IXMLGenIFResultRootType;
end;

{ TXMLGenIFResultRootType }

procedure TXMLGenIFResultRootType.AfterConstruction;
begin
  RegisterChildNode('result', TXMLResultType);
  RegisterChildNode('GenIFResults', TXMLGenIFResultsType);
  inherited;
end;

function TXMLGenIFResultRootType.Get_Result: IXMLResultType;
begin
  Result := ChildNodes['result'] as IXMLResultType;
end;

function TXMLGenIFResultRootType.Get_Messages: UnicodeString;
begin
  Result := ChildNodes['messages'].Text;
end;

procedure TXMLGenIFResultRootType.Set_Messages(Value: UnicodeString);
begin
  ChildNodes['messages'].NodeValue := Value;
end;

function TXMLGenIFResultRootType.Get_GenIFResults: IXMLGenIFResultsType;
begin
  Result := ChildNodes['GenIFResults'] as IXMLGenIFResultsType;
end;

{ TXMLResultType }

function TXMLResultType.Get_FuncCode: UnicodeString;
begin
  Result := ChildNodes['funcCode'].Text;
end;

procedure TXMLResultType.Set_FuncCode(Value: UnicodeString);
begin
  ChildNodes['funcCode'].NodeValue := Value;
end;

function TXMLResultType.Get_ReasonCode: UnicodeString;
begin
  Result := ChildNodes['reasonCode'].Text;
end;

procedure TXMLResultType.Set_ReasonCode(Value: UnicodeString);
begin
  ChildNodes['reasonCode'].NodeValue := Value;
end;

function TXMLResultType.Get_ID: UnicodeString;
begin
  Result := ChildNodes['ID'].Text;
end;

procedure TXMLResultType.Set_ID(Value: UnicodeString);
begin
  ChildNodes['ID'].NodeValue := Value;
end;

{ TXMLGenIFResultsType }

procedure TXMLGenIFResultsType.AfterConstruction;
begin
  RegisterChildNode('GenIFResult', TXMLGenIFResultType);
  inherited;
end;

function TXMLGenIFResultsType.Get_GenIFResult: IXMLGenIFResultType;
begin
  Result := ChildNodes['GenIFResult'] as IXMLGenIFResultType;
end;

{ TXMLGenIFResultType }

procedure TXMLGenIFResultType.AfterConstruction;
begin
  RegisterChildNode('result', TXMLResultType);
  RegisterChildNode('UserSpecResultXMLs', TXMLUserSpecResultXMLsType);
  inherited;
end;

function TXMLGenIFResultType.Get_ID: UnicodeString;
begin
  Result := AttributeNodes['ID'].Text;
end;

procedure TXMLGenIFResultType.Set_ID(Value: UnicodeString);
begin
  SetAttribute('ID', Value);
end;

function TXMLGenIFResultType.Get_Result: IXMLResultType;
begin
  Result := ChildNodes['result'] as IXMLResultType;
end;

function TXMLGenIFResultType.Get_Messages: UnicodeString;
begin
  Result := ChildNodes['messages'].Text;
end;

procedure TXMLGenIFResultType.Set_Messages(Value: UnicodeString);
begin
  ChildNodes['messages'].NodeValue := Value;
end;

function TXMLGenIFResultType.Get_Querydomain: UnicodeString;
begin
  Result := ChildNodes['querydomain'].Text;
end;

procedure TXMLGenIFResultType.Set_Querydomain(Value: UnicodeString);
begin
  ChildNodes['querydomain'].NodeValue := Value;
end;

function TXMLGenIFResultType.Get_Op_name: UnicodeString;
begin
  Result := ChildNodes['op_name'].Text;
end;

procedure TXMLGenIFResultType.Set_Op_name(Value: UnicodeString);
begin
  ChildNodes['op_name'].NodeValue := Value;
end;

function TXMLGenIFResultType.Get_Op_mode: Integer;
begin
  Result := ChildNodes['op_mode'].NodeValue;
end;

procedure TXMLGenIFResultType.Set_Op_mode(Value: Integer);
begin
  ChildNodes['op_mode'].NodeValue := Value;
end;

function TXMLGenIFResultType.Get_Sql_name: UnicodeString;
begin
  Result := ChildNodes['sql_name'].Text;
end;

procedure TXMLGenIFResultType.Set_Sql_name(Value: UnicodeString);
begin
  ChildNodes['sql_name'].NodeValue := Value;
end;

function TXMLGenIFResultType.Get_Params: UnicodeString;
begin
  Result := ChildNodes['params'].Text;
end;

procedure TXMLGenIFResultType.Set_Params(Value: UnicodeString);
begin
  ChildNodes['params'].NodeValue := Value;
end;

function TXMLGenIFResultType.Get_UserSpecResultXMLs: IXMLUserSpecResultXMLsType;
begin
  Result := ChildNodes['UserSpecResultXMLs'] as IXMLUserSpecResultXMLsType;
end;

{ TXMLUserSpecResultXMLsType }

procedure TXMLUserSpecResultXMLsType.AfterConstruction;
begin
  RegisterChildNode('MerlegResponseXMLs', TXMLMerlegResponseXMLsType);
  inherited;
end;

function TXMLUserSpecResultXMLsType.Get_MerlegResponseXMLs: IXMLMerlegResponseXMLsType;
begin
  Result := ChildNodes['MerlegResponseXMLs'] as IXMLMerlegResponseXMLsType;
end;

{ TXMLMerlegResponseXMLsType }

procedure TXMLMerlegResponseXMLsType.AfterConstruction;
begin
  RegisterChildNode('MerlegResponseXML', TXMLMerlegResponseXMLType);
  inherited;
end;

function TXMLMerlegResponseXMLsType.Get_MerlegResponseXML: IXMLMerlegResponseXMLType;
begin
  Result := ChildNodes['MerlegResponseXML'] as IXMLMerlegResponseXMLType;
end;

{ TXMLMerlegResponseXMLType }

function TXMLMerlegResponseXMLType.Get_SAP_CODE: Integer;
begin
  Result := ChildNodes['SAP_CODE'].NodeValue;
end;

procedure TXMLMerlegResponseXMLType.Set_SAP_CODE(Value: Integer);
begin
  ChildNodes['SAP_CODE'].NodeValue := Value;
end;

function TXMLMerlegResponseXMLType.Get_MERLEG: UnicodeString;
begin
  Result := ChildNodes['MERLEG'].Text;
end;

procedure TXMLMerlegResponseXMLType.Set_MERLEG(Value: UnicodeString);
begin
  ChildNodes['MERLEG'].NodeValue := Value;
end;

function TXMLMerlegResponseXMLType.Get_ID: Integer;
begin
  Result := ChildNodes['ID'].NodeValue;
end;

procedure TXMLMerlegResponseXMLType.Set_ID(Value: Integer);
begin
  ChildNodes['ID'].NodeValue := Value;
end;

end.