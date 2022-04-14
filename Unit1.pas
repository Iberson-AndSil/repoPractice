unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Edit, FMX.Controls.Presentation;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    titulo: TLabel;
    pideNum1: TLabel;
    PideNum2: TLabel;
    guardaNum1: TEdit;
    guardaNum2: TEdit;
    MuestraOperation: TButton;
    muestraResult: TLabel;
    procedure MuestraOperationClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.MuestraOperationClick(Sender: TObject);

var

  num1, num2 : Integer;
  result : Integer;

begin

  num1 := StrToInt(guardaNum1.Text);
  num2 := StrToInt(guardaNum2.Text);
  result := num1 + num2;
  muestraResult.Text := '  '+IntToStr(result);

end;

end.
