unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm7 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Edithadir: TEdit;
    Edittugas: TEdit;
    Edituts: TEdit;
    Editharian: TEdit;
    Edituas: TEdit;
    Editb1: TEdit;
    Editb2: TEdit;
    Editb3: TEdit;
    Editb4: TEdit;
    Editb5: TEdit;
    Edittotal: TEdit;
    Editgrade: TEdit;
    Editket: TEdit;
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
  Form7: TForm7;

implementation

{$R *.dfm}

procedure TForm7.Button1Click(Sender: TObject);
var
   nil1, nil2, nil3, nil4, nil5, hasil : real;
   b1, b2, b3, b4, b5 : real;
   grade, ket : string;
begin
     nil1 := strtofloat(Edithadir.Text);
     nil2 := strtofloat(Edittugas.Text);
     nil3 := strtofloat(Edituts.Text);
     nil4 := strtofloat(Editharian.Text);
     nil5 := strtofloat(Edituas.Text);

     b1 := strtofloat(Editb1.Text)/100;
     b2 := strtofloat(Editb2.Text)/100;
     b3 := strtofloat(Editb3.Text)/100;
     b4 := strtofloat(Editb4.Text)/100;
     b5 := strtofloat(Editb5.Text)/100;

     hasil := nil1*b1 + nil2*b2 + nil3*b3 + nil4*b4 + nil5*b5;

     if (hasil >= 80) then
     grade:= 'A'
     else
     if (hasil >= 70) then
     grade:= 'B'
     else
     if (hasil >= 60) then
     grade:= 'C'
     else
     if (hasil >= 50) then
     grade:= 'D'
     else
     grade:= 'E';

     if ((grade = 'A') or (grade='B') or (grade='C')) then
        ket :='LULUS'
     else
     ket :='TIDAK LULUS';

     Edittotal.Text := floattostr(hasil);
     Editgrade.Text := grade;
     Editket.Text   := ket;

end;

procedure TForm7.Button2Click(Sender: TObject);
begin
     Edithadir.Text  := '0';
     Edittugas.Text  := '0';
     Edituts.Text    := '0';
     Editharian.Text := '0';
     Edituas.Text    := '0';
     Edittotal.Text  := '';
     Editgrade.Text  := '';
end;

procedure TForm7.Button3Click(Sender: TObject);
begin
  Close;
end;

end.
