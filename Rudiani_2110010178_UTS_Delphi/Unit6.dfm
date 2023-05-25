object Form6: TForm6
  Left = 328
  Top = 109
  Width = 928
  Height = 480
  Caption = 'Form6'
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
    Left = 104
    Top = 24
    Width = 79
    Height = 13
    Caption = 'Tahun Angkatan'
  end
  object label2: TLabel
    Left = 104
    Top = 72
    Width = 82
    Height = 13
    Caption = 'Jumlah Terdaftar'
  end
  object Label3: TLabel
    Left = 104
    Top = 115
    Width = 40
    Height = 13
    Caption = 'Fakultas'
  end
  object ComboBox1: TComboBox
    Left = 214
    Top = 21
    Width = 121
    Height = 21
    ItemHeight = 13
    TabOrder = 0
  end
  object Editjumlah: TEdit
    Left = 216
    Top = 69
    Width = 121
    Height = 23
    TabOrder = 1
  end
  object ComboBox2: TComboBox
    Left = 216
    Top = 112
    Width = 121
    Height = 21
    ItemHeight = 13
    TabOrder = 2
  end
  object StringGrid1: TStringGrid
    Left = 47
    Top = 229
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
    Left = 104
    Top = 152
    Width = 75
    Height = 25
    Caption = 'ADD Data'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 214
    Top = 152
    Width = 75
    Height = 25
    Caption = 'View Grafik'
    TabOrder = 5
    OnClick = Button2Click
  end
  object Chart1: TChart
    Left = 456
    Top = 31
    Width = 404
    Height = 338
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
    TabOrder = 6
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
    Left = 168
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Keluar'
    TabOrder = 7
    OnClick = Button3Click
  end
end
