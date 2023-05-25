unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeEngine, Series, ExtCtrls, TeeProcs, Chart, StdCtrls, Grids;

type
  TForm8 = class(TForm)
    Label1: TLabel;
    label2: TLabel;
    Label3: TLabel;
    ComboBox1: TComboBox;
    Editjumlah: TEdit;
    ComboBox2: TComboBox;
    StringGrid1: TStringGrid;
    Button1: TButton;
    Chart1: TChart;
    Series1: TPieSeries;
    Button3: TButton;
    Button4: TButton;
    procedure charadd;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}

procedure TForm8.Button1Click(Sender: TObject);
begin
     StringGrid1.RowCount :=StringGrid1.RowCount+1;
     StringGrid1.Cells[0,StringGrid1.RowCount -1] := IntToStr(StringGrid1.RowCount -1);
     StringGrid1.Cells[1,StringGrid1.RowCount -1] := Editjumlah.Text;
     StringGrid1.Cells[2,StringGrid1.RowCount -1] := ComboBox2.Text;
     StringGrid1.Cells[3,StringGrid1.RowCount -1] := ComboBox1.Text;
     charadd;
end;

procedure TForm8.Button3Click(Sender: TObject);
  var a,b :Integer;
begin
     a:=StringGrid1.Selection.Bottom - StringGrid1.Selection.Top+1;
     for b:=StringGrid1.Selection.Bottom +2 to StringGrid1.rowcount -1 do
     StringGrid1.Rows[b-a]:=StringGrid1.Rows[b];
     StringGrid1.RowCount:=StringGrid1.RowCount-1;
     charadd;
  end;


procedure TForm8.Button4Click(Sender: TObject);
begin
 StringGrid1.RowCount := StringGrid1.RowCount- MAX_PATH;
     charadd;
end;

procedure TForm8.charadd;

  var i : Integer;
begin
     Chart1.Series[0].Clear;
     for i := 1 to StringGrid1.RowCount -1 do
     begin
       Chart1.Series[0].Add(StrToFloat(StringGrid1.Cells[1,i]),StringGrid1.Cells[2,i]);
     end;
end;

procedure TForm8.FormShow(Sender: TObject);
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

end.
