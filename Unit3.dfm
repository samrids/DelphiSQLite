object Form3: TForm3
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Add Blog.'
  ClientHeight = 164
  ClientWidth = 567
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
    Left = 16
    Top = 13
    Width = 64
    Height = 13
    Caption = 'Blog content:'
  end
  object Label2: TLabel
    Left = 16
    Top = 59
    Width = 40
    Height = 13
    Caption = 'Remark:'
  end
  object Button1: TButton
    Left = 403
    Top = 131
    Width = 75
    Height = 25
    Caption = 'Save'
    ModalResult = 1
    TabOrder = 2
  end
  object Button2: TButton
    Left = 484
    Top = 131
    Width = 75
    Height = 25
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 3
  end
  object Edit2: TEdit
    Left = 16
    Top = 75
    Width = 543
    Height = 21
    TabOrder = 1
  end
  object Edit1: TEdit
    Left = 16
    Top = 32
    Width = 543
    Height = 21
    TabOrder = 0
  end
end
