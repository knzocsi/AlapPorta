object AlapbemodF: TAlapbemodF
  Left = 0
  Top = 0
  Caption = 'Modify default value'
  ClientHeight = 267
  ClientWidth = 477
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 8
    Width = 38
    Height = 13
    Caption = 'Group'
  end
  object Label2: TLabel
    Left = 32
    Top = 64
    Width = 62
    Height = 13
    Caption = 'Property'
  end
  object Label4: TLabel
    Left = 32
    Top = 121
    Width = 25
    Height = 13
    Caption = 'Value'
  end
  object Label5: TLabel
    Left = 32
    Top = 169
    Width = 61
    Height = 13
    Caption = 'Description:'
  end
  object cbxcsoport: TComboBox
    Left = 32
    Top = 24
    Width = 257
    Height = 21
    MaxLength = 50
    TabOrder = 0
    Text = 'cbxcsoport'
  end
  object rgtipus: TRadioGroup
    Left = 369
    Top = 8
    Width = 100
    Height = 81
    Caption = 'Type'
    Enabled = False
    ItemIndex = 0
    Items.Strings = (
      'Integer'
      'String'
      'Boolean')
    TabOrder = 1
    OnClick = rgtipusClick
  end
  object chkigaz: TCheckBox
    Left = 32
    Top = 140
    Width = 97
    Height = 17
    Caption = 'Value'
    TabOrder = 2
  end
  object edmagyarazat: TEdit
    Left = 32
    Top = 188
    Width = 437
    Height = 21
    TabOrder = 3
    Text = 'ed'
  end
  object edertek: TEdit
    Left = 32
    Top = 140
    Width = 437
    Height = 21
    MaxLength = 200
    TabOrder = 4
    Text = 'ed'
  end
  object edtulajdonsag: TEdit
    Left = 32
    Top = 80
    Width = 257
    Height = 21
    MaxLength = 50
    TabOrder = 5
    Text = 'edtulajdonsag'
  end
  object btnok: TButton
    Left = 32
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Modify'
    TabOrder = 6
    OnClick = btnokClick
  end
  object Button2: TButton
    Left = 369
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Cancel'
    TabOrder = 7
  end
end
