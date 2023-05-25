object Form9: TForm9
  Left = 249
  Top = 171
  Width = 928
  Height = 480
  Caption = 'Form9'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 664
    Top = 32
    Width = 121
    Height = 25
    Caption = 'Tampilkan Data Grafik'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Chart1: TChart
    Left = 8
    Top = 200
    Width = 785
    Height = 193
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Text.Strings = (
      'TChart')
    TabOrder = 1
    object Series1: TBarSeries
      ColorEachPoint = True
      Marks.ArrowLength = 20
      Marks.Visible = True
      SeriesColor = clRed
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Bar'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
  end
  object Button2: TButton
    Left = 704
    Top = 63
    Width = 75
    Height = 25
    Caption = 'KELUAR'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 600
    Top = 32
    Width = 57
    Height = 25
    Caption = 'Print'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 512
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Tambah Data'
    TabOrder = 4
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 424
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Load Data'
    TabOrder = 5
    OnClick = Button5Click
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 88
    Width = 785
    Height = 113
    DataSource = DataSource1
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'No'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jam_mulai'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jam_akhir'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'hari'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tanggal'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ruang'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'matkul'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kelas'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kehadiran_total'
        Visible = True
      end>
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=jadwa' +
      'l_db.mdb;Mode=Share Deny None;Persist Security Info=False;Jet OL' +
      'EDB:System database="";Jet OLEDB:Registry Path="";Jet OLEDB:Data' +
      'base Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Lock' +
      'ing Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global ' +
      'Bulk Transactions=1;Jet OLEDB:New Database Password="";Jet OLEDB' +
      ':Create System Database=False;Jet OLEDB:Encrypt Database=False;J' +
      'et OLEDB:Don'#39't Copy Locale on Compact=False;Jet OLEDB:Compact Wi' +
      'thout Replica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 48
    Top = 32
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from jadwal_table')
    Left = 128
    Top = 32
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 200
    Top = 32
  end
end
