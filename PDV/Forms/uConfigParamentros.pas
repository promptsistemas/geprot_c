unit uConfigParamentros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, IniFiles, Vcl.Buttons;

type
  TfrmConfigParametros = class(TForm)
    Image1: TImage;
    GroupBox1: TGroupBox;
    edtDados: TEdit;
    edtUserName: TEdit;
    edtPass: TEdit;
    edtCaixa: TEdit;
    edtTabelaPreco: TEdit;
    edtLoja: TEdit;
    edtLogo: TEdit;
    edtImpressoa: TEdit;
    edtEporta: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    SpeedButton1: TSpeedButton;
    OpenDialog1: TOpenDialog;
    BB_CONFIRMAR: TBitBtn;
    BB_FECHAR: TBitBtn;
    SpeedButton2: TSpeedButton;
    edtFisco: TEdit;
    Label10: TLabel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure BB_CONFIRMARClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BB_FECHARClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure GravaArqIni;
    Procedure LeArqIni;

  end;

var
  frmConfigParametros: TfrmConfigParametros;
  sDados, sUserName, sPassWord, sLogo, sImpressora, sExporta : String;
  sCaixa, sTabelaPreco, sLoja, sFisco : Integer;

implementation

{$R *.dfm}

uses uDM, uPdv;

{ TfrmConfigParametros }

procedure TfrmConfigParametros.BB_CONFIRMARClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja Realmente Salvar as Informações Alteradas?','Confirmação',MB_ICONQUESTION+MB_YESNO) = idyes then
  begin
    try
      sDados      := edtDados.Text;
      sUserName   := edtUserName.Text;
      sPassWord   := edtPass.Text;
      sCaixa      := StrToInt(edtCaixa.Text);
      sTabelaPreco:= StrToInt(edtTabelaPreco.Text);
      sLoja       := StrToInt(edtLoja.Text);
      sFisco      := StrToInt(edtFisco.Text);
      sLogo       := edtLogo.Text;
      sImpressora := edtImpressoa.Text;
      sExporta    := edtEporta.Text;

      GravaArqIni;
      DM.CONFIGURADO :='S';
      if DM.CONFIGURADO = 'S' then
      begin
        MessageDlg('Arquivo Gravado com sucesso!', mtInformation, [mbOK], 0);
        Application.Restore;
        BB_FECHARClick(Self);
        Close;
        frmPdv.NovoAcesso;
      end
      else
      begin
        if DM.CONFIGURADO ='N' then
          Application.Terminate
        else
          Close;
      end;
    except
      MessageDlg('Erro ao gravar arquivo de configuração!', mtError, [mbOK], 0);
    end;
  end
  else
  begin
      MessageDlg('Alteração Cancelada!', mtError, [mbOK], 0);
      if DM.CONFIGURADO ='N' then
         Application.Terminate
      else
        Close;
   end;


end;

procedure TfrmConfigParametros.BB_FECHARClick(Sender: TObject);
begin
  if DM.CONFIGURADO = 'N' then
    Application.Terminate
  else
    Close;
end;

procedure TfrmConfigParametros.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  frmConfigParametros := nil;
end;

procedure TfrmConfigParametros.FormShow(Sender: TObject);
begin
  LeArqIni;
  GroupBox1.SetFocus;
end;

procedure TfrmConfigParametros.GravaArqIni;
var ArqINI : TIniFile;
begin
  ArqINI := TIniFile.Create(ExtractFilePath(Application.ExeName)+'PDV.INI');
  ArqINI.WriteString('SERVIDOR','DADOS',sDados);
  ArqINI.WriteString('SERVIDOR','User_Name',sUserName);
  ArqINI.WriteString('SERVIDOR','PASSWORD',sPassWord);
  ArqINI.WriteString('SERVIDOR','PASSWORD',sPassWord);
  ArqINI.WriteInteger('SERVIDOR','CAIXA',sCaixa);
  ArqINI.WriteInteger('SERVIDOR','TABELA_PRECO',sTabelaPreco);
  ArqINI.WriteInteger('SERVIDOR','LOJA',sLoja);
  ArqINI.WriteInteger('SERVIDOR','FISCO',sFisco);
  ArqINI.WriteString('SERVIDOR','LOGO',sLogo);
  ArqINI.WriteString('SERVIDOR','IMPRESSORA',sImpressora);
  ArqINI.WriteString('SERVIDOR','EXPORTA',sExporta);
  ArqINI.WriteString('SERVIDOR','CONFIGURADO','S');
  ArqINI.Free;
end;

procedure TfrmConfigParametros.LeArqIni;
var
  ArqINI : TIniFile;
  aux : String;
begin
  aux := ExtractFilePath(Application.ExeName)+'PDV.INI';
  ArqINI := TIniFile.Create(aux);

  sDados      := ArqINI.ReadString('SERVIDOR','DADOS','');
  sUserName   := ArqINI.ReadString('SERVIDOR','User_Name','');
  sPassWord   := ArqINI.ReadString('SERVIDOR','PASSWORD','');
  sCaixa      := ArqINI.ReadInteger('SERVIDOR','CAIXA',1);
  sTabelaPreco:= ArqINI.ReadInteger('SERVIDOR','TABELA_PRECO',1);
  sLoja       := ArqINI.ReadInteger('SERVIDOR','LOJA',1);
  sFisco      := ArqINI.ReadInteger('SERVIDOR','FISCO',1);
  sLogo       := ArqINI.ReadString('SERVIDOR','LOGO','');
  sImpressora := ArqINI.ReadString('SERVIDOR','IMPRESSORA','');
  sExporta    := ArqINI.ReadString('SERVIDOR','EXPORTA','');

  ArqINI.Free;


  edtDados.Text       := sDados;
  edtUserName.Text    := sUserName;
  edtPass.Text        := sPassWord;
  edtCaixa.Text       := IntToStr(sCaixa);
  edtTabelaPreco.Text := IntToStr(sTabelaPreco);
  edtLoja.Text        := IntToStr(sLoja);
  edtFisco.Text       := IntToStr(sFisco);
  edtLogo.Text        := sLogo;
  edtImpressoa.Text   := sImpressora;
  edtEporta.Text      := sExporta;


end;

procedure TfrmConfigParametros.SpeedButton1Click(Sender: TObject);
begin
  OpenDialog1.Execute;
  edtLogo.Text := OpenDialog1.FileName;
end;

procedure TfrmConfigParametros.SpeedButton2Click(Sender: TObject);
begin
  OpenDialog1.Execute;
  edtEporta.Text := OpenDialog1.FileName;

end;

procedure TfrmConfigParametros.SpeedButton3Click(Sender: TObject);
begin
  OpenDialog1.Execute;
  edtImpressoa.Text := OpenDialog1.FileName;

end;

end.
