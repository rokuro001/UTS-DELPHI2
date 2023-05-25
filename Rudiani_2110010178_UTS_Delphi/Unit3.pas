unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edittambah: TEdit;
    Editkurang: TEdit;
    Editkali: TEdit;
    Editbagi: TEdit;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Editnilai1: TEdit;
    Editnilai2: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
  Edittambah.Text:= IntToSTR(StrToInt(Editnilai1.Text)+StrToInt(Editnilai2.Text));
  Editkurang.Text:= IntToSTR(StrToInt(Editnilai1.Text)-StrToInt(Editnilai2.Text));
  Editkali.Text:= IntToSTR(StrToInt(Editnilai1.Text)*StrToInt(Editnilai2.Text));
  Editbagi.Text:= floattostr(StrTofloat(Editnilai1.Text)/StrTofloat(Editnilai2.Text));

end;

procedure TForm3.Button2Click(Sender: TObject);
begin
   Edittambah.Text:= IntToSTR(StrToInt(Editnilai1.Text)+StrToInt(Editnilai2.Text));
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
  Editkurang.Text:= IntToSTR(StrToInt(Editnilai1.Text)-StrToInt(Editnilai2.Text));
end;

procedure TForm3.Button4Click(Sender: TObject);
begin
  Editkali.Text:= floattostr(StrTofloat(Editnilai1.Text)*StrTofloat(Editnilai2.Text));
end;

procedure TForm3.Button5Click(Sender: TObject);
begin
   Editbagi.Text:= floattostr(StrTofloat(Editnilai1.Text)/StrTofloat(Editnilai2.Text));
end;

end.
