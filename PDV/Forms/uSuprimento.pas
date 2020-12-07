unit uSuprimento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls, ExtCtrls, Vcl.Imaging.jpeg;

type
  TfrmSuprimento = class(TForm)
    BB_ABRIR: TBitBtn;
    BitBtn1: TBitBtn;
    P_SUPRIMENTO: TPanel;
    DBEdit1: TDBEdit;
    PMENU: TPanel;
    SpeedButton3: TSpeedButton;
    Label1: TLabel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure BB_ABRIRClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MakeRounded(Control: TWinControl);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSuprimento: TfrmSuprimento;

implementation

uses uDm, uPdv;

{$R *.dfm}

procedure TfrmSuprimento.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TfrmSuprimento.FormShow(Sender: TObject);
begin


  DM.cdsDinamica.Close;
  DM.cdsDinamica.IndexFieldNames:='';
  DM.cdsDinamica.CommandText := ' SELECT MAX(ID_SUPRIMENTO) FROM TB_SUPRIMENTO';
  DM.cdsDinamica.Open;

  DM.cdsSuprimento.Close;
  DM.cdsSuprimento.Open;
  DM.cdsSuprimento.Insert;

  DM.cdsSuprimentoID_SUPRIMENTO.AsInteger := DM.cdsDinamica.Fields[0].AsInteger +1;
  DM.cdsSuprimentoID_USUARIO.AsInteger    := frmpdv.recInformacoes.id_Usuario;
  DM.cdsSuprimentoID_LOJA.AsInteger       := StrToInt(frmPdv.recInformacoes.lojaCredenciada);
  DM.cdsSuprimentoCAIXA.AsInteger         := StrToInt(frmPdv.L_CAIXA.Caption);
  DM.cdsSuprimentoDT_SUPRIMENTO.AsDateTime:= Date;
  DM.cdsSuprimentoHR_SUPRIMENTO.AsDateTime:= Time;
  DM.cdsDinamica.Close;
  DM.cdsDinamica.IndexFieldNames:='';

  DBEdit1.SetFocus;
end;

procedure TfrmSuprimento.BB_ABRIRClick(Sender: TObject);
begin
  DM.cdsSuprimento.ApplyUpdates(0);
  Close;
end;

procedure TfrmSuprimento.BitBtn1Click(Sender: TObject);
begin
  DM.cdsSuprimento.Cancel;
  Close;
end;

procedure TfrmSuprimento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  frmSuprimento := nil;
end;

procedure TfrmSuprimento.MakeRounded(Control: TWinControl);
var
  R: TRect;
  Rgn: HRGN;
begin
with Control do
begin
  R := ClientRect;
  rgn := CreateRoundRectRgn(R.Left, R.Top, R.Right, R.Bottom, 40, 40);
  Perform(EM_GETRECT, 0, lParam(@r));
  InflateRect(r, - 30, - 30);
  Perform(EM_SETRECTNP, 0, lParam(@r));
  SetWindowRgn(Handle, rgn, True);
  Invalidate;
end;
end;
procedure TfrmSuprimento.SpeedButton3Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmSuprimento.FormCreate(Sender: TObject);
begin
  MakeRounded(P_SUPRIMENTO);
end;

end.