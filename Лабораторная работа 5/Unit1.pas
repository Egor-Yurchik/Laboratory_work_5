unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  Form1: TForm1;
  procedure ShowForm(Handle: THandle);export;stdcall;

implementation
{$R *.dfm}
procedure ShowForm(Handle: THandle);

begin
 Application.Handle := Handle;
 form1:=TForm1.Create(Application);
 Form1.ShowModal;
 form1.Free;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
 form1.Close;
end;

end.
