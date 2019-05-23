object DataModule2: TDataModule2
  OldCreateOrder = False
  Height = 341
  Width = 553
  object FDQuery1: TFDQuery
    CachedUpdates = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT '
      'b.id,'
      'b.blog_title,'
      'b.blog_remark,'
      'b.sys_createdate,'
      'b.sys_updatedate'
      'FROM BLOG b'
      'WHERE b.id >= :id;')
    Left = 24
    Top = 16
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        FDDataType = dtInt32
        ParamType = ptInput
      end>
    object FDQuery1id: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQuery1blog_title: TStringField
      FieldName = 'blog_title'
      Origin = 'blog_title'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 50
    end
    object FDQuery1blog_remark: TStringField
      FieldName = 'blog_remark'
      Origin = 'blog_remark'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object FDQuery1sys_createdate: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'sys_createdate'
      Origin = 'sys_createdate'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQuery1sys_updatedate: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'sys_updatedate'
      Origin = 'sys_updatedate'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=D:\Awarasoft\test_Sqlite\awaraBlog.db'
      'DriverID=SQLite')
    Connected = True
    LoginPrompt = False
    Left = 376
    Top = 96
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 120
    Top = 88
  end
  object FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink
    Left = 152
    Top = 32
  end
end
