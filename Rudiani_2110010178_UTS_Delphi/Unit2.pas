unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Editnilai1: TEdit;
    Editnilai2: TEdit;
    Edithasil: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button2Click(Sender: TObject);
begin
  close;
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
   Edithasil.Text:= IntToStr(StrToInt(Editnilai1.Text)+StrToInt(Editnilai2.Text));
end;

end.
