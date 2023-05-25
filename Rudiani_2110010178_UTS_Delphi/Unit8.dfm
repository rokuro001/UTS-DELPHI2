object Form8: TForm8
  Left = 389
  Top = 193
  Width = 928
  Height = 480
  Caption = 'Form8'
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
  object Label1: TLabel
    Left = 16
    Top = 32
    Width = 79
    Height = 13
    Caption = 'Tahun Angkatan'
  end
  object label2: TLabel
    Left = 16
    Top = 80
    Width = 82
    Height = 13
    Caption = 'Jumlah Terdaftar'
  end
  object Label3: TLabel
    Left = 16
    Top = 123
    Width = 40
    Height = 13
    Caption = 'Fakultas'
  end
  object ComboBox1: TComboBox
    Left = 126
    Top = 29
    Width = 121
    Height = 21
    ItemHeight = 13
    TabOrder = 0
  end
  object Editjumlah: TEdit
    Left = 128
    Top = 77
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object ComboBox2: TComboBox
    Left = 128
    Top = 120
    Width = 121
    Height = 21
    ItemHeight = 13
    TabOrder = 2
  end
  object StringGrid1: TStringGrid
    Left = 287
    Top = 21
    Width = 365
    Height = 156
    TabOrder = 3
    ColWidths = (
      64
      81
      64
      64
      64)
  end
  object Button1: TButton
    Left = 16
    Top = 160
    Width = 75
    Height = 25
    Caption = 'ADD Data'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Chart1: TChart
    Left = 16
    Top = 191
    Width = 612
    Height = 250
    AllowPanning = pmNone
    AllowZoom = False
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    BackWall.Pen.Visible = False
    Title.Text.Strings = (
      'TChart')
    AxisVisible = False
    ClipPoints = False
    Frame.Visible = False
    View3DOptions.Elevation = 315
    View3DOptions.Orthogonal = False
    View3DOptions.Perspective = 0
    View3DOptions.Rotation = 360
    View3DWalls = False
    TabOrder = 5
    object Series1: TPieSeries
      Marks.ArrowLength = 8
      Marks.Visible = True
      SeriesColor = clRed
      OtherSlice.Text = 'Other'
      PieValues.DateTime = False
      PieValues.Name = 'Pie'
      PieValues.Multiplier = 1.000000000000000000
      PieValues.Order = loNone
    end
  end
  object Button3: TButton
    Left = 104
    Top = 160
    Width = 75
    Height = 25
    Caption = 'CLEAR'
    TabOrder = 6
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 182
    Top = 159
    Width = 75
    Height = 25
    Caption = 'CLEAR ALL'
    TabOrder = 7
    OnClick = Button4Click
  end
end
