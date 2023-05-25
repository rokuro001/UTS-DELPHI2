object Form5: TForm5
  Left = 361
  Top = 184
  Width = 928
  Height = 480
  Caption = 'Form5'
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
    Left = 72
    Top = 24
    Width = 19
    Height = 13
    Caption = 'NIM'
  end
  object Label2: TLabel
    Left = 72
    Top = 51
    Width = 94
    Height = 13
    Caption = 'NAMA MAHASISWA'
  end
  object Label3: TLabel
    Left = 72
    Top = 88
    Width = 91
    Height = 13
    Caption = 'TAHUN ANGKATAN'
  end
  object Editnim: TEdit
    Left = 216
    Top = 22
    Width = 121
    Height = 23
    TabOrder = 0
  end
  object Editnama: TEdit
    Left = 216
    Top = 51
    Width = 121
    Height = 23
    TabOrder = 1
  end
  object ComboBox1: TComboBox
    Left = 216
    Top = 80
    Width = 121
    Height = 21
    ItemHeight = 13
    TabOrder = 2
  end
  object Button1: TButton
    Left = 106
    Top = 120
    Width = 75
    Height = 25
    Caption = 'ADD DATA'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 216
    Top = 120
    Width = 75
    Height = 25
    Caption = 'VIEW GRAFIK'
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 168
    Top = 151
    Width = 75
    Height = 25
    Caption = 'KELUAR'
    TabOrder = 5
    OnClick = Button3Click
  end
  object StringGrid1: TStringGrid
    Left = 367
    Top = 21
    Width = 466
    Height = 155
    TabOrder = 6
  end
  object Chart1: TChart
    Left = 104
    Top = 184
    Width = 681
    Height = 241
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
    TabOrder = 7
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
end
