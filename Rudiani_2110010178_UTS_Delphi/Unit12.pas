unit Unit12;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm12 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Editnilai1: TEdit;
    Editnilai2: TEdit;
    Editnilai3: TEdit;
    Editbobot1: TEdit;
    Editbobot2: TEdit;
    Editbobot3: TEdit;
    Edittotal: TEdit;
    Editgrade: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form12: TForm12;

implementation

{$R *.dfm}



procedure TForm12.Button2Click(Sender: TObject);
begin
     Editnilai1.Text := '0';
     Editnilai2.Text := '0';
     Editnilai3.Text := '0';
     Editbobot1.Text := '0';
     Editbobot2.Text := '0';
     Editbobot3.Text := '0';
     Edittotal.Text  := '';
     Editgrade.Text  := '';

end;

procedure TForm12.Button3Click(Sender: TObject);
begin
close;
end;
procedure TForm12.Button1Click(Sender: TObject);
var
  nil1, nil2, nil3, hasil : real ;
  b1, b2, b3 : real ;
  grade : string ;
begin

  nil1 := strtofloat(Editnilai1.Text);
  nil2 := strtofloat(Editnilai2.Text);
  nil3 := strtofloat(Editnilai2.Text);

  b1 := strtofloat(Editbobot1.Text);
  b2 := strtofloat(Editbobot2.Text);
  b3 := strtofloat(Editbobot3.Text);

  hasil := nil1*b1 + nil2*b2 + nil3*b3;

  if (hasil >= 80) then
  grade :='A'
  else
  if (hasil >= 70) then
  grade :='B'
  else
  if (hasil >= 60) then
  grade :='C'
  else
  if (Hasil >= 50) then
  grade :='D'
  else
  grade :='E';

  Edittotal.Text := floattostr(hasil);
  Editgrade.Text := grade;


end;

end.
