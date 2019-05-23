object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Blog work with SQLite.'
  ClientHeight = 398
  ClientWidth = 991
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 41
    Width = 991
    Height = 357
    Align = alClient
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 991
    Height = 41
    Align = alTop
    TabOrder = 1
    DesignSize = (
      991
      41)
    object Button1: TButton
      Left = 8
      Top = 10
      Width = 75
      Height = 25
      Caption = 'get'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 251
      Top = 10
      Width = 75
      Height = 25
      Caption = 'save'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 904
      Top = 10
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Add Blog'
      TabOrder = 2
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 456
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Update'
      TabOrder = 3
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 537
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Delete'
      TabOrder = 4
      OnClick = Button5Click
    end
    object Button6: TButton
      Left = 170
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Cancel'
      TabOrder = 5
      OnClick = Button6Click
    end
  end
  object DataSource1: TDataSource
    DataSet = DataModule2.FDQuery1
    Left = 904
    Top = 80
  end
end
