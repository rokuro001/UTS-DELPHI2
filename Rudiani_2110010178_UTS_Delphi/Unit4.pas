unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeEngine, Series, ExtCtrls, TeeProcs, Chart, Buttons, Grids,
  StdCtrls;

type
  TForm4 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Editjumlah: TEdit;
    ComboBox1: TComboBox;
    Button1: TButton;
    StringGrid1: TStringGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Chart1: TChart;
    Series1: TPieSeries;
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
begin
    StringGrid1.ColCount := StringGrid1.ColCount +1;
    StringGrid1.Cells[0,StringGrid1.ColCount -2] := IntToStr(StringGrid1.ColCount -1);
    StringGrid1.Cells[1,StringGrid1.ColCount -2] := Editjumlah.Text;
    StringGrid1.Cells[0,StringGrid1.ColCount -2] := ComboBox1.Text;
end;

procedure TForm4.BitBtn1Click(Sender: TObject);
  var i : Integer;
begin
  for i := 1 to StringGrid1.ColCount -2 do
     begin
       Chart1.Series[0].Add(strtofloat(StringGrid1.Cells[1,i]),StringGrid1.Cells[0,i]);
     end;
end;

procedure TForm4.FormShow(Sender: TObject);
begin
     StringGrid1.RowCount:=5;
     StringGrid1.ColCount:=2;
     StringGrid1.Cells[0,0]:= 'JENIS PENYAKIT';
     StringGrid1.Cells[0,1]:= 'COVID 19';
     StringGrid1.Cells[0,2]:= 'FLU BIASA';
     StringGrid1.Cells[0,3]:= 'DEMAM';
     StringGrid1.Cells[0,4]:= 'RINDU';
     StringGrid1.Cells[1,0]:= 'JUMLAH';

     StringGrid1.ColWidths[0]:= 120;
     StringGrid1.ColWidths[1]:= 120;
     Chart1.Title.Text.Add('Grafik Informasi Jenis Penyakit');
end;

end.
