object Form2: TForm2
  Left = 192
  Top = 125
  Width = 928
  Height = 480
  Caption = 'latihan_kalkulator'
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
    Left = 88
    Top = 64
    Width = 28
    Height = 13
    Caption = 'Nilai 1'
  end
  object Label2: TLabel
    Left = 88
    Top = 112
    Width = 28
    Height = 13
    Caption = 'Nilai 2'
  end
  object Label3: TLabel
    Left = 88
    Top = 168
    Width = 21
    Height = 13
    Caption = 'hasil'
  end
  object Editnilai1: TEdit
    Left = 168
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Editnilai2: TEdit
    Left = 168
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edithasil: TEdit
    Left = 168
    Top = 160
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Button1: TButton
    Left = 352
    Top = 64
    Width = 75
    Height = 49
    Caption = 'TAMBAH'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 352
    Top = 128
    Width = 75
    Height = 49
    Caption = 'SELESAI'
    TabOrder = 4
    OnClick = Button2Click
  end
end
