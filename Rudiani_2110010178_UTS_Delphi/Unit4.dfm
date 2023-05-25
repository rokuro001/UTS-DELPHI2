object Form4: TForm4
  Left = 192
  Top = 125
  Width = 928
  Height = 480
  Caption = 'Grafik Dan StringGrid'
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
    Left = 96
    Top = 40
    Width = 41
    Height = 13
    Caption = 'Penyakit'
  end
  object Label2: TLabel
    Left = 96
    Top = 72
    Width = 82
    Height = 13
    Caption = 'Jumlah Penderita'
  end
  object Editjumlah: TEdit
    Left = 208
    Top = 64
    Width = 145
    Height = 23
    TabOrder = 0
  end
  object ComboBox1: TComboBox
    Left = 208
    Top = 37
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 1
  end
  object Button1: TButton
    Left = 168
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 2
    OnClick = Button1Click
  end
  object StringGrid1: TStringGrid
    Left = 96
    Top = 144
    Width = 257
    Height = 177
    TabOrder = 3
  end
  object BitBtn1: TBitBtn
    Left = 88
    Top = 344
    Width = 75
    Height = 25
    TabOrder = 4
    OnClick = BitBtn1Click
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 184
    Top = 344
    Width = 75
    Height = 25
    TabOrder = 5
    Kind = bkAbort
  end
  object BitBtn3: TBitBtn
    Left = 278
    Top = 344
    Width = 75
    Height = 25
    TabOrder = 6
    Kind = bkClose
  end
  object Chart1: TChart
    Left = 448
    Top = 40
    Width = 433
    Height = 345
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
