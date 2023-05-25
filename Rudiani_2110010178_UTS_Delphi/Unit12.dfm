object Form12: TForm12
  Left = 317
  Top = 264
  Width = 928
  Height = 480
  Caption = 'Form12'
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
    Left = 32
    Top = 179
    Width = 28
    Height = 13
    Caption = 'Nilai 1'
  end
  object Label2: TLabel
    Left = 32
    Top = 216
    Width = 28
    Height = 13
    Caption = 'Nilai 2'
  end
  object Label3: TLabel
    Left = 32
    Top = 259
    Width = 28
    Height = 13
    Caption = 'Nilai 3'
  end
  object Label4: TLabel
    Left = 304
    Top = 179
    Width = 24
    Height = 13
    Caption = 'Total'
  end
  object Label5: TLabel
    Left = 304
    Top = 216
    Width = 29
    Height = 13
    Caption = 'Grade'
  end
  object Panel1: TPanel
    Left = 32
    Top = 24
    Width = 409
    Height = 41
    Caption = 'Contoh Kondisional'
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 96
    Top = 120
    Width = 73
    Height = 41
    Caption = 'Nilai'
    TabOrder = 1
  end
  object Panel3: TPanel
    Left = 192
    Top = 120
    Width = 73
    Height = 41
    Caption = 'Bobot'
    TabOrder = 2
  end
  object Editnilai1: TEdit
    Left = 96
    Top = 176
    Width = 73
    Height = 23
    TabOrder = 3
  end
  object Editnilai2: TEdit
    Left = 96
    Top = 213
    Width = 73
    Height = 23
    TabOrder = 4
  end
  object Editnilai3: TEdit
    Left = 96
    Top = 256
    Width = 73
    Height = 23
    TabOrder = 5
  end
  object Editbobot1: TEdit
    Left = 192
    Top = 176
    Width = 73
    Height = 23
    TabOrder = 6
  end
  object Editbobot2: TEdit
    Left = 192
    Top = 213
    Width = 73
    Height = 23
    TabOrder = 7
  end
  object Editbobot3: TEdit
    Left = 192
    Top = 256
    Width = 73
    Height = 23
    TabOrder = 8
  end
  object Edittotal: TEdit
    Left = 368
    Top = 176
    Width = 73
    Height = 23
    TabOrder = 9
  end
  object Editgrade: TEdit
    Left = 368
    Top = 213
    Width = 73
    Height = 23
    TabOrder = 10
  end
  object Button1: TButton
    Left = 96
    Top = 304
    Width = 73
    Height = 25
    Caption = 'Hitung'
    TabOrder = 11
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 192
    Top = 304
    Width = 73
    Height = 25
    Caption = 'Hapus'
    TabOrder = 12
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 368
    Top = 304
    Width = 73
    Height = 25
    Caption = 'Keluar'
    TabOrder = 13
    OnClick = Button3Click
  end
end
