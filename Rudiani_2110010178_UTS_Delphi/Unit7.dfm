object Form7: TForm7
  Left = 194
  Top = 125
  Width = 928
  Height = 480
  Caption = 'Form7'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 160
    Width = 88
    Height = 13
    Caption = 'NILAI KEHADIRAN'
  end
  object Label2: TLabel
    Left = 24
    Top = 189
    Width = 63
    Height = 13
    Caption = 'NILAI TUGAS'
  end
  object Label3: TLabel
    Left = 24
    Top = 218
    Width = 49
    Height = 13
    Caption = 'NILAI UTS'
  end
  object Label4: TLabel
    Left = 24
    Top = 247
    Width = 69
    Height = 13
    Caption = 'NILAI HARIAN'
  end
  object Label5: TLabel
    Left = 24
    Top = 276
    Width = 50
    Height = 13
    Caption = 'NILAI UAS'
  end
  object Label6: TLabel
    Left = 320
    Top = 160
    Width = 24
    Height = 13
    Caption = 'Total'
  end
  object Label7: TLabel
    Left = 320
    Top = 189
    Width = 29
    Height = 13
    Caption = 'Grade'
  end
  object Label8: TLabel
    Left = 320
    Top = 218
    Width = 20
    Height = 13
    Caption = 'Ket.'
  end
  object Panel1: TPanel
    Left = 24
    Top = 16
    Width = 449
    Height = 41
    Caption = 'CEK NILAI BOBOT SISWA'
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 136
    Top = 104
    Width = 73
    Height = 41
    Caption = 'NILAI'
    TabOrder = 1
  end
  object Panel3: TPanel
    Left = 216
    Top = 104
    Width = 73
    Height = 41
    Caption = 'BOBOT'
    TabOrder = 2
  end
  object Edithadir: TEdit
    Left = 136
    Top = 157
    Width = 73
    Height = 21
    TabOrder = 3
  end
  object Edittugas: TEdit
    Left = 136
    Top = 186
    Width = 73
    Height = 21
    TabOrder = 4
  end
  object Edituts: TEdit
    Left = 136
    Top = 215
    Width = 73
    Height = 21
    TabOrder = 5
  end
  object Editharian: TEdit
    Left = 136
    Top = 244
    Width = 73
    Height = 21
    TabOrder = 6
  end
  object Edituas: TEdit
    Left = 136
    Top = 273
    Width = 73
    Height = 21
    TabOrder = 7
  end
  object Editb1: TEdit
    Left = 216
    Top = 157
    Width = 73
    Height = 21
    TabOrder = 8
  end
  object Editb2: TEdit
    Left = 215
    Top = 186
    Width = 74
    Height = 21
    TabOrder = 9
  end
  object Editb3: TEdit
    Left = 215
    Top = 215
    Width = 74
    Height = 21
    TabOrder = 10
  end
  object Editb4: TEdit
    Left = 215
    Top = 244
    Width = 74
    Height = 21
    TabOrder = 11
  end
  object Editb5: TEdit
    Left = 215
    Top = 273
    Width = 74
    Height = 21
    TabOrder = 12
  end
  object Edittotal: TEdit
    Left = 368
    Top = 157
    Width = 73
    Height = 21
    TabOrder = 13
  end
  object Editgrade: TEdit
    Left = 368
    Top = 186
    Width = 73
    Height = 21
    TabOrder = 14
  end
  object Editket: TEdit
    Left = 368
    Top = 218
    Width = 105
    Height = 21
    TabOrder = 15
  end
  object Button1: TButton
    Left = 136
    Top = 320
    Width = 73
    Height = 25
    Caption = 'Hitung'
    TabOrder = 16
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 215
    Top = 320
    Width = 73
    Height = 25
    Caption = 'Hapus'
    TabOrder = 17
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 368
    Top = 266
    Width = 75
    Height = 25
    Caption = 'Keluar'
    TabOrder = 18
    OnClick = Button3Click
  end
end
