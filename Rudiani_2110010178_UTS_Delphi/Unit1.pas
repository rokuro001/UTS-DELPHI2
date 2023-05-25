unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Latihan1: TMenuItem;
    Database1: TMenuItem;
    Latihan11: TMenuItem;
    Latihan21: TMenuItem;
    Kondisional11: TMenuItem;
    Kondisional21: TMenuItem;
    GrafikStringgrid1: TMenuItem;
    GrafikStringgridrevisi1: TMenuItem;
    LatihanDatabase1: TMenuItem;
    Laporan1: TMenuItem;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Latihan11Click(Sender: TObject);
    procedure Latihan21Click(Sender: TObject);
    procedure Kondisional11Click(Sender: TObject);
    procedure Kondisional21Click(Sender: TObject);
    procedure GrafikStringgrid1Click(Sender: TObject);
    procedure GrafikStringgridrevisi1Click(Sender: TObject);
    procedure LatihanDatabase1Click(Sender: TObject);
    procedure Laporan1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit3, Unit12, Unit7, Unit6, Unit8, Unit9, Unit10;

{$R *.dfm}

procedure TForm1.Latihan11Click(Sender: TObject);
begin
  form2.show;
end;

procedure TForm1.Latihan21Click(Sender: TObject);
begin
  form3.show;
end;

procedure TForm1.Kondisional11Click(Sender: TObject);
begin
  form12.Show;
end;

procedure TForm1.Kondisional21Click(Sender: TObject);
begin
  form7.Show;
end;

procedure TForm1.GrafikStringgrid1Click(Sender: TObject);
begin
  form6.Show;
end;

procedure TForm1.GrafikStringgridrevisi1Click(Sender: TObject);
begin
  form8.show;
end;

procedure TForm1.LatihanDatabase1Click(Sender: TObject);
begin
  form9.Show;
end;

procedure TForm1.Laporan1Click(Sender: TObject);
begin
    Form10.QuickRep1.preview;
end;

end.
