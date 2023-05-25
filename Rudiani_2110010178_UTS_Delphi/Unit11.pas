unit Unit11;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ComCtrls, StdCtrls, DB, ADODB;

type
  TForm11 = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    ComboBox1: TComboBox;
    DateTimePicker1: TDateTimePicker;
    Label4: TLabel;
    Label5: TLabel;
    Edit3: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBGrid1: TDBGrid;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    procedure Button1Click(Sender: TObject);
    procedure bersih;
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form11: TForm11;
  updt: String;

implementation

uses
     Unit9;

{$R *.dfm}

procedure TForm11.bersih;
begin
Edit1.Text:='00:00';
Edit2.Text:='00:00';
ComboBox1.Text:='--Pilih Hari--';
Edit3.Text:='-';
Edit4.Text:='-';
Edit5.Text:='-';
Edit6.Text:='0';

DBGrid1.columns[0].Width:=20;
DBGrid1.columns[1].Width:=50;
DBGrid1.columns[2].Width:=50;
DBGrid1.Columns[3].Width:=90;
DBGrid1.columns[4].Width:=60;
DBGrid1.Columns[5].Width:=60;
DBGrid1.Columns[6].Width:=110;
DBGrid1.Columns[7].Width:=80;
Button1.Enabled:= True;
Button2.Enabled:= False;
Button4.Enabled:= False;
end;

procedure TForm11.Button1Click(Sender: TObject);
var
  a: Integer;
begin
  if (Edit1.Text = '') or (Edit1.Text = '00:00') or (Edit2.Text = '') or (Edit2.Text = '00:00') then
  begin
    ShowMessage('Data Belum Diisi Dengan Benar');
  end
  else if (ComboBox1.Text = '') or (ComboBox1.Text = '--Pilih Hari--') then
  begin
    ShowMessage('Data Belum Diisi Dengan Benar');
  end
  else if (Edit3.Text = '') or (Edit3.Text = '-') or (Edit4.Text = '') or (Edit4.Text = '-') then
  begin
    ShowMessage('Inputan Ruangan atau Matakuliah Belum Diisi');
  end
  else if (Edit5.Text = '') or (Edit5.Text = '-') or (Edit6.Text = '') or (Edit6.Text = '0') then
  begin
    ShowMessage('Inputan Kelas atau Total Hadir Masih Belum Selesai');
  end
  else if
  (form9.ADOQuery1.Locate('hari',ComboBox1.Text,[])) or (Form9.ADOQuery1.Locate('jam_mulai',Edit1.Text,[])) then
  begin
    ShowMessage('Data Sudah Ada Di Dalam Sistem');
    Edit1.SetFocus
  end
  else
  begin

adotable1.insert;
adotable1.FieldByName('jam_mulai').AsString := Edit1.Text;
adotable1.FieldByName('jam_akhir').AsString := Edit2.Text;
adotable1.FieldByName('hari').AsString := ComboBox1.Text;
adotable1.FieldByName('tanggal').AsDateTime := DateTimePicker1.Date;
adotable1.FieldByName('ruang').AsString :=  Edit3.Text;
adotable1.FieldByName('matkul').AsString :=  Edit4.Text;
adotable1.FieldByName('kelas').AsString :=  Edit5.Text;
adotable1.FieldByName('kehadiran_total').AsString :=  Edit6.Text;
adotable1.Post;
bersih;
  end;
end;

procedure TForm11.FormShow(Sender: TObject);
begin
bersih;
end;

procedure TForm11.Button2Click(Sender: TObject);
begin
  if (Edit1.Text = '') or (Edit1.Text = '00:00') or (Edit2.Text = '') or (Edit2.Text = '00:00') then
  begin
    ShowMessage('Data Belum Diisi Dengan Benar');
  end
  else if (ComboBox1.Text = '') or (ComboBox1.Text = '--Pilih Hari--') then
  begin
    ShowMessage('Data Belum Diisi Dengan Benar');
  end
  else if (Edit3.Text = '') or (Edit3.Text = '-') or (Edit4.Text = '') or (Edit4.Text = '-') then
  begin
    ShowMessage('Inputan Ruangan atau Matakuliah Belum Diisi');
  end
  else if (Edit5.Text = '') or (Edit5.Text = '-') or (Edit6.Text = '') or (Edit6.Text = '0') then
  begin
    ShowMessage('Inputan Kelas atau Total Hadir Masih Belum Selesai');
  end
  else if (Edit1.Text= form9.ADOQuery1.Fields[1].AsString) and (ComboBox1.Text=form9.ADOQuery1.Fields[2].AsString) then
  begin
    ShowMessage('Data Tidak Ada Perubahan');
  end
  else
  begin
    ADOTable1.Edit;
    ADOTable1.FieldByName('jam_mulai').AsString := Edit1.Text;
    ADOTable1.FieldByName('jam_akhir').AsString := Edit2.Text;
    ADOTable1.FieldByName('hari').AsString := ComboBox1.Text;
    ADOTable1.FieldByName('tanggal').AsDateTime := DateTimePicker1.Date;
    ADOTable1.FieldByName('ruang').AsString := Edit3.Text;
    ADOTable1.FieldByName('matkul').AsString := Edit4.Text;
    ADOTable1.FieldByName('kelas').AsString := Edit5.Text;
    ADOTable1.FieldByName('kehadiran_total').AsString := Edit6.Text;
    ADOTable1.Post;
    ShowMessage('Data Telah Diedit');
    bersih;
  end;
  end;

procedure TForm11.Button4Click(Sender: TObject);
begin
if (Edit1.Text = '') or (Edit1.Text = '00:00') or (Edit2.Text = '') or (Edit2.Text = '00:00') then
  begin
    ShowMessage('Data Belum Diisi Dengan Benar');
  end
  else if (ComboBox1.Text = '') or (ComboBox1.Text = '--Pilih Hari--') then
  begin
    ShowMessage('Data Belum Diisi Dengan Benar');
  end
  else if (Edit3.Text = '') or (Edit3.Text = '-') or (Edit4.Text = '') or (Edit4.Text = '-') then
  begin
    ShowMessage('Inputan Ruangan atau Matakuliah Belum Diisi');
  end
  else if (Edit5.Text = '') or (Edit5.Text = '-') or (Edit6.Text = '') or (Edit6.Text = '0') then
  begin
    ShowMessage('Inputan Kelas atau Total Hadir Masih Belum Selesai');
  end
  else if (Edit1.Text= form9.ADOQuery1.Fields[1].AsString) and (ComboBox1.Text=form9.ADOQuery1.Fields[2].AsString) then
  begin
    ShowMessage('Data Tidak Ada Perubahan');
  end
  else
  begin
  if MessageDlg('Apakah Yakin Menghapus Data ini?',mtWarning,[mbYes,mbNo],0)=mryes then
  Begin
      AdoTable1.Delete;
  end else
  begin
      ShowMessage('Data Batal Di Hapus');
  end;
  end;
end;

procedure TForm11.Button3Click(Sender: TObject);
begin
bersih;
end;
procedure TForm11.DBGrid1CellClick(Column: TColumn);
begin
try
updt :=ADOTable1.Fields[0].AsString;
Edit1.Text:= ADOTable1.Fields[1].AsString;
Edit2.Text:= Form9.ADOQuery1.Fields[2].AsString;
ComboBox1.Text:= ADOTable1.Fields[3].AsString;
DateTimePicker1.Date:=ADOTable1.Fields[4].AsDateTime;
Edit3.Text:= ADOTable1.Fields[5].AsString;
Edit4.Text:= ADOTable1.Fields[6].AsString;
Edit5.Text:= ADOTable1.Fields[7].AsString;
Edit6.Text:= ADOTable1.Fields[8].AsString;

Button1.Enabled:= False;
Button2.Enabled:= True;
Button4.Enabled:= True;
Except
end;

end;

end.
