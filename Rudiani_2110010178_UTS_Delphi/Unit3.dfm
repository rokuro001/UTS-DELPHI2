object Form3: TForm3
  Left = 344
  Top = 138
  Width = 928
  Height = 480
  Caption = 'Form3'
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
    Left = 72
    Top = 80
    Width = 50
    Height = 13
    Caption = 'INPUTAN1'
  end
  object Label2: TLabel
    Left = 72
    Top = 112
    Width = 50
    Height = 13
    Caption = 'INPUTAN2'
  end
  object GroupBox1: TGroupBox
    Left = 40
    Top = 168
    Width = 401
    Height = 257
    Caption = 'NILAI DIPROSES'
    TabOrder = 0
    object Label3: TLabel
      Left = 24
      Top = 40
      Width = 73
      Height = 13
      Caption = 'HASIL TAMBAH'
    end
    object Label4: TLabel
      Left = 24
      Top = 83
      Width = 73
      Height = 13
      Caption = 'HASIL KURANG'
    end
    object Label5: TLabel
      Left = 24
      Top = 131
      Width = 54
      Height = 13
      Caption = 'HASIL KALI'
    end
    object Label6: TLabel
      Left = 24
      Top = 176
      Width = 90
      Height = 13
      Caption = 'HASIL PEMBAGIAN'
    end
    object Edittambah: TEdit
      Left = 152
      Top = 37
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object Editkurang: TEdit
      Left = 152
      Top = 83
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object Editkali: TEdit
      Left = 152
      Top = 128
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object Editbagi: TEdit
      Left = 152
      Top = 168
      Width = 121
      Height = 21
      TabOrder = 3
    end
    object Button2: TButton
      Left = 294
      Top = 37
      Width = 75
      Height = 23
      Caption = '+'
      TabOrder = 4
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 294
      Top = 81
      Width = 75
      Height = 25
      Caption = '-'
      TabOrder = 5
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 294
      Top = 128
      Width = 75
      Height = 25
      Caption = 'x'
      TabOrder = 6
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 294
      Top = 167
      Width = 75
      Height = 25
      Caption = '/'
      TabOrder = 7
      OnClick = Button5Click
    end
  end
  object Editnilai1: TEdit
    Left = 160
    Top = 77
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Editnilai2: TEdit
    Left = 160
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Button1: TButton
    Left = 310
    Top = 76
    Width = 115
    Height = 59
    Caption = 'PROSES SEMUA'
    TabOrder = 3
    OnClick = Button1Click
  end
end
