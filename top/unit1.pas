unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Shape1: TShape;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;
  yukariya: boolean;
  sagya: boolean;


implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Timer1Timer(Sender: TObject);
begin
   if yukariya = true then shape1.Top := shape1.Top - 2
   else shape1.Top := shape1.Top + 2;
   if sagya = true then shape1.Left:= shape1.left + 2
   else shape1.Left:= shape1.left - 2;

   if shape1.Top < 0 then yukariya := false;
   if shape1.Top > form1.Height - shape1.Height then yukariya := true;

   if shape1.Left < 0 then sagya := true;
   if shape1.left > form1.Width - shape1.Width then sagya := false;

end;

end.

