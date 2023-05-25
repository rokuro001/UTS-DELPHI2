unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeEngine, Series, ExtCtrls, TeeProcs, Chart, StdCtrls, Grids;

type
  TForm6 = class(TForm)
    Label1: TLabel;
    label2: TLabel;
    Label3: TLabel;
    ComboBox1: TComboBox;
    Editjumlah: TEdit;
    ComboBox2: TComboBox;
    StringGrid1: TStringGrid;
    Button1: TButton;
    Button2: TButton;
    Chart1: TChart;
    Series1: TPieSeries;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

procedure TForm6.Button1Click(Sender: TObject);
begin
     StringGrid1.RowCount :=StringGrid1.RowCount+1;
     StringGrid1.Cells[0,StringGrid1.RowCount -1] := IntToStr(StringGrid1.RowCount -1);
     StringGrid1.Cells[1,StringGrid1.RowCount -1] := Editjumlah.Text;
     StringGrid1.Cells[2,StringGrid1.RowCount -1] := ComboBox2.Text;
     StringGrid1.Cells[3,StringGrid1.RowCount -1] := ComboBox1.Text;
end;

procedure TForm6.Button2Click(Sender: TObject);
var
   i : Integer;
begin
     for i := 1 to StringGrid1.RowCount -1 do
     begin
       Chart1.Series[0].Add(StrToFloat(StringGrid1.Cells[1,i]),StringGrid1.Cells[2,i]);
     end;
  end;
procedure TForm6.FormShow(Sender: TObject);
begin
     StringGrid1.RowCount:=1;
     StringGrid1.ColCount:=4;
     StringGrid1.Cells[0,0]:='NO';
     StringGrid1.Cells[1,0]:='JUMLAH TERDAFTAR';
     StringGrid1.Cells[2,0]:='FAKULTAS';
     StringGrid1.Cells[3,0]:='TAHUN ANGKATAN';

     StringGrid1.ColWidths[0]:=30;
     StringGrid1.ColWidths[1]:=120;
     StringGrid1.ColWidths[2]:=80;
     StringGrid1.ColWidths[3]:=170;
end;

procedure TForm6.Button3Click(Sender: TObject);
begin
  close;
end;

end.
