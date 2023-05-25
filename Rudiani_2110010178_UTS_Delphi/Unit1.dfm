object Form1: TForm1
  Left = 252
  Top = 155
  Width = 928
  Height = 480
  Caption = 'Menu'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 288
    Top = 48
    Width = 188
    Height = 31
    Caption = 'Nama : Rudiani'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 288
    Top = 96
    Width = 224
    Height = 31
    Caption = 'NPM : 2110010178'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 288
    Top = 144
    Width = 360
    Height = 31
    Caption = 'Kelas : 4D TI REG PAGI BJM'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object MainMenu1: TMainMenu
    Left = 104
    Top = 80
    object File1: TMenuItem
      Caption = 'File'
    end
    object Latihan1: TMenuItem
      Caption = 'Latihan'
      object Latihan11: TMenuItem
        Caption = 'Latihan 1'
        OnClick = Latihan11Click
      end
      object Latihan21: TMenuItem
        Caption = 'Latihan 2'
        OnClick = Latihan21Click
      end
      object Kondisional11: TMenuItem
        Caption = 'Kondisional 1'
        OnClick = Kondisional11Click
      end
      object Kondisional21: TMenuItem
        Caption = 'Kondisional 2'
        OnClick = Kondisional21Click
      end
      object GrafikStringgrid1: TMenuItem
        Caption = 'Grafik Stringgrid'
        OnClick = GrafikStringgrid1Click
      end
      object GrafikStringgridrevisi1: TMenuItem
        Caption = 'Grafik Stringgrid revisi'
        OnClick = GrafikStringgridrevisi1Click
      end
      object LatihanDatabase1: TMenuItem
        Caption = 'Latihan Database'
        OnClick = LatihanDatabase1Click
      end
    end
    object Database1: TMenuItem
      Caption = 'Database'
    end
    object Laporan1: TMenuItem
      Caption = 'Laporan'
      OnClick = Laporan1Click
    end
  end
end
