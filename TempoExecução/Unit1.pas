unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)


    PnlPrincipal: TPanel;

    Button1: TButton;

    sbxTeste: TScrollBox;


    procedure Button1Click(Sender: TObject);

     procedure pnlCPG1Click(Sender: TObject);

  private
    { Private declarations }
     contador: integer;


   procedure InsereCard;



  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}



procedure TForm1.Button1Click(Sender: TObject);
begin
 InsereCard;
end;

procedure TForm1.InsereCard;
var
  vrPnl : Tpanel;
  begin
    vrPnl:=Tpanel.Create(Self);
    vrPnl.Align := alLeft;


     vrpnl.Name:=('painel' + inttostr(contador));
     contador := contador +1;

     ////
     vrpnl.OnClick:=pnlCPG1Click;

    //heran�a - instancia //
    vrPnl.Parent:= sbxTeste;
end;

procedure TForm1.pnlCPG1Click(Sender: TObject);
begin


showmessage('ol� mundo ' + Tpanel(Sender).name);
end;

end.
