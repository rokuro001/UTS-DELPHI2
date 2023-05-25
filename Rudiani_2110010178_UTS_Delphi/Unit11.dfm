object Form11: TForm11
  Left = 242
  Top = 119
  Width = 928
  Height = 480
  Caption = 'Form11'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 24
    Top = 8
    Width = 721
    Height = 273
    Caption = 'Tambah Data Jadwal'
    TabOrder = 0
    object Label1: TLabel
      Left = 32
      Top = 24
      Width = 45
      Height = 13
      Caption = 'Jam Awal'
    end
    object Label2: TLabel
      Left = 240
      Top = 24
      Width = 46
      Height = 13
      Caption = 'Jam Akhir'
    end
    object Label3: TLabel
      Left = 32
      Top = 64
      Width = 82
      Height = 13
      Caption = 'Hari Pelaksanaan'
    end
    object Label4: TLabel
      Left = 32
      Top = 105
      Width = 38
      Height = 13
      Caption = 'Tanggal'
    end
    object Label5: TLabel
      Left = 32
      Top = 144
      Width = 43
      Height = 13
      Caption = 'Ruangan'
    end
    object Label6: TLabel
      Left = 32
      Top = 184
      Width = 52
      Height = 13
      Caption = 'MataKuliah'
    end
    object Label7: TLabel
      Left = 32
      Top = 216
      Width = 25
      Height = 13
      Caption = 'Kelas'
    end
    object Label8: TLabel
      Left = 32
      Top = 240
      Width = 52
      Height = 13
      Caption = 'Total Hadir'
    end
    object Edit1: TEdit
      Left = 104
      Top = 24
      Width = 129
      Height = 21
      TabOrder = 0
      Text = '00:00'
    end
    object Edit2: TEdit
      Left = 296
      Top = 24
      Width = 129
      Height = 21
      TabOrder = 1
      Text = '00:00'
    end
    object ComboBox1: TComboBox
      Left = 128
      Top = 56
      Width = 185
      Height = 21
      ItemHeight = 13
      TabOrder = 2
      Text = '--Pilih Hari--'
      Items.Strings = (
        'Senin'
        'Selasa'
        'Rabu'
        'Kamis '
        'Jumat'
        'Sabtu'
        'Minggu')
    end
    object DateTimePicker1: TDateTimePicker
      Left = 128
      Top = 96
      Width = 137
      Height = 24
      Date = 45069.787011087960000000
      Time = 45069.787011087960000000
      TabOrder = 3
    end
    object Edit3: TEdit
      Left = 128
      Top = 136
      Width = 185
      Height = 21
      TabOrder = 4
    end
    object Edit4: TEdit
      Left = 128
      Top = 176
      Width = 185
      Height = 21
      TabOrder = 5
    end
    object Edit5: TEdit
      Left = 128
      Top = 208
      Width = 185
      Height = 21
      TabOrder = 6
    end
    object Edit6: TEdit
      Left = 128
      Top = 240
      Width = 121
      Height = 21
      TabOrder = 7
    end
    object Button1: TButton
      Left = 608
      Top = 24
      Width = 75
      Height = 41
      Caption = 'Tambah'
      TabOrder = 8
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 608
      Top = 80
      Width = 75
      Height = 43
      Caption = 'Edit'
      TabOrder = 9
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 608
      Top = 192
      Width = 75
      Height = 40
      Caption = 'Batal'
      TabOrder = 10
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 608
      Top = 136
      Width = 75
      Height = 42
      Caption = 'Hapus'
      TabOrder = 11
      OnClick = Button4Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 288
    Width = 721
    Height = 161
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
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
  object ADOTable1: TADOTable
    Active = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=jadwal_db.mdb;Persi' +
      'st Security Info=False'
    CursorType = ctStatic
    TableName = 'jadwal_table'
    Left = 744
    Top = 16
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 744
    Top = 64
  end
end
