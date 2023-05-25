unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, TeEngine, Series, ExtCtrls, TeeProcs,
  Chart, StdCtrls;

type
  TForm9 = class(TForm)
    Button1: TButton;
    Chart1: TChart;
    Series1: TBarSeries;
    Button2: TButton;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    DBGrid1: TDBGrid;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation
uses unit11, Unit10;


{$R *.dfm}

procedure TForm9.Button1Click(Sender: TObject);
var i:Integer;
begin
   ADOQuery1.SQL.Clear;
   ADOQuery1.SQL.Add('select Count(no)as jumlah_kelas,sum(kehadiran_total) as total_siswa,kelas as nama_kelas from jadwal_table group by kelas');
   ADOQuery1.Open;
   Chart1.Series[0].Clear;
for i:=1 to ADOQuery1.RecordCount do
begin
Chart1.Series[0].Add(StrToInt(ADOQuery1.fieldbyname('total_siswa').AsString),ADOQuery1.Fields[2].AsString);
ADOQuery1.Next;
end;
DBGrid1.Columns[2].Width:=90;


end;

procedure TForm9.FormShow(Sender: TObject);
begin
     Chart1.Title.Text.Add('GRAFIK KEHADIRAN PRAKTIKUM SISWA');
DBGrid1.columns[0].Width:=30;
DBGrid1.Columns[3].Width:=90;
DBGrid1.Columns[5].Width:=50;
DBGrid1.Columns[6].Width:=110;
DBGrid1.Columns[7].Width:=90;
end;

procedure TForm9.Button2Click(Sender: TObject);
begin
  close;
end;

procedure TForm9.Button5Click(Sender: TObject);
begin
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select * from jadwal_table');
ADOQuery1.Open;
DBGrid1.columns[0].Width:=30;
DBGrid1.Columns[3].Width:=90;
DBGrid1.Columns[5].Width:=50;
DBGrid1.Columns[6].Width:=110;
DBGrid1.Columns[7].Width:=90;
end;

procedure TForm9.Button3Click(Sender: TObject);
begin
  Form10.QuickRep1.preview;
end;

procedure TForm9.Button4Click(Sender: TObject);
begin
  Form11.ShowModal;
end;

end.
