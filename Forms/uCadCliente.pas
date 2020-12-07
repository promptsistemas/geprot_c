unit uCadCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls,DB, Vcl.Mask, ACBrBase, ACBrSocket, ACBrCEP, Vcl.XPMan,
  Vcl.ActnMan, Vcl.ActnColorMaps, ACBrConsultaCPF, ACBrConsultaCNPJ;

type
  TfrmCadCliente = class(TForm)
    Panel1: TPanel;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    RadioGroup3: TRadioGroup;
    RadioGroup4: TRadioGroup;
    BB_NOVO: TBitBtn;
    BB_EDITAR: TBitBtn;
    BB_GRAVAR: TBitBtn;
    BB_CANCELAR: TBitBtn;
    BB_EXCLUIR: TBitBtn;
    BB_PESQUISAR: TBitBtn;
    BB_SAIR: TBitBtn;
    DBNavigator1: TDBNavigator;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    DBComboBox1: TDBComboBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    L_CPF_CNPJ: TLabel;
    DBEdit2: TDBEdit;
    L_NOME: TLabel;
    DBEdit3: TDBEdit;
    L_RG: TLabel;
    Label2: TLabel;
    DBEdit4: TDBEdit;
    L_Apelido: TLabel;
    DBEdit5: TDBEdit;
    Label3: TLabel;
    DBEdit6: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit7: TDBEdit;
    ACBrCEP1: TACBrCEP;
    Label6: TLabel;
    DBComboBox2: TDBComboBox;
    Label7: TLabel;
    DBEdit8: TDBEdit;
    Label8: TLabel;
    DBEdit9: TDBEdit;
    Button1: TButton;
    DBEdit10: TDBEdit;
    Label9: TLabel;
    DBEdit11: TDBEdit;
    Label10: TLabel;
    DBEdit12: TDBEdit;
    Label11: TLabel;
    DBEdit13: TDBEdit;
    Label12: TLabel;
    DBEdit14: TDBEdit;
    Label13: TLabel;
    DBEdit15: TDBEdit;
    Label14: TLabel;
    DBEdit16: TDBEdit;
    Label15: TLabel;
    DBEdit17: TDBEdit;
    Label16: TLabel;
    DBText1: TDBText;
    Label17: TLabel;
    Label18: TLabel;
    Label20: TLabel;
    DBEdit18: TDBEdit;
    Label21: TLabel;
    DBEdit19: TDBEdit;
    RadioGroup5: TRadioGroup;
    Panel6: TPanel;
    Label22: TLabel;
    DBEdit20: TDBEdit;
    Label23: TLabel;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    Label24: TLabel;
    DBEdit23: TDBEdit;
    Label25: TLabel;
    DBEdit24: TDBEdit;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    DBEdit25: TDBEdit;
    SpeedButton1: TSpeedButton;
    bb_enviaDJ: TBitBtn;
    BB_TODOS: TBitBtn;
    DBMemo12: TDBMemo;
    SpeedButton3: TSpeedButton;
    DBComboBox4: TDBComboBox;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    Label19: TLabel;
    Label29: TLabel;
    SpeedButton2: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB_SAIRClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BB_NOVOClick(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB_CANCELARClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit7Enter(Sender: TObject);
    procedure DBComboBox2Exit(Sender: TObject);
    procedure DBEdit15Enter(Sender: TObject);
    procedure DBEdit16Enter(Sender: TObject);
    procedure DBEdit17Enter(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure BB_GRAVARClick(Sender: TObject);
    procedure BB_PESQUISARClick(Sender: TObject);
    procedure DBEdit18Enter(Sender: TObject);
    procedure BB_EDITARClick(Sender: TObject);
    procedure BB_EXCLUIRClick(Sender: TObject);
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBComboBox1Exit(Sender: TObject);
    procedure BB_CANCELARMouseActivate(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y, HitTest: Integer;
      var MouseActivate: TMouseActivate);
    procedure DBEdit6Exit(Sender: TObject);
    procedure DBEdit17Exit(Sender: TObject);
    procedure DBEdit19Exit(Sender: TObject);
    procedure DBEdit22Exit(Sender: TObject);
    procedure DBEdit24Exit(Sender: TObject);
    procedure DBMemo1Exit(Sender: TObject);
    procedure DBEdit25Exit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure bb_enviaDJClick(Sender: TObject);
    function TiraPontoeVirgula(sTexto:String):String;
    function  ColocaTextoDir(Texto: string; Qtd: integer; Ch: Char): string;
    procedure BB_TODOSClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBEdit26Exit(Sender: TObject);
  private
    { Private declarations }
    Procedure GerenCiaBotoes;
    function cpf(num: string): boolean;
    function cgc(num: string): boolean;
    procedure ConsultaCNPJ;
    procedure ConsultaCPF;
    Procedure verificaClienteExiste;


  public
    { Public declarations }
  end;

var
  frmCadCliente: TfrmCadCliente;
  Tipo :  string;

implementation

{$R *.dfm}

uses U_LIB, UD_PESQUISA, uDM, uConsultaCNPJ, uConsultaCPF, uMenu,
  uPesquisaPadrao;

function AjustaStr ( str: String; tam: Integer ): String;
begin
while Length ( str ) < tam do
str := str + ' ';
if Length ( str ) > tam then
str := Copy ( str, 1, tam );
Result := str;
end;


Function RemoveAcentos(Str:String): String;
{Remove caracteres acentuados de uma string}
Const ComAcento = '����������������������������';
  SemAcento = 'aaeouaoaeioucuAAEOUAOAEIOUCU';
Var
x : Integer;
Begin
For x := 1 to Length(Str) do
  Begin
  if Pos(Str[x],ComAcento)<>0 Then
  begin
  Str[x] := SemAcento[Pos(Str[x],ComAcento)];
  end;
  end;
Result := Str;
end;


procedure TfrmCadCliente.BB_CANCELARClick(Sender: TObject);
begin
  DBComboBox1.Text := 'Fisica';
  DM.cdsCliente.Cancel;
  GerenCiaBotoes;
end;

procedure TfrmCadCliente.BB_CANCELARMouseActivate(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y, HitTest: Integer;
  var MouseActivate: TMouseActivate);
begin
  Tipo := 'Cancelar';
end;

procedure TfrmCadCliente.BB_EDITARClick(Sender: TObject);
begin
  Tipo := 'Edit';
  DM.cdsCliente.Edit;
  GerenCiaBotoes;
  DBComboBox1.SetFocus;
end;

procedure TfrmCadCliente.bb_enviaDJClick(Sender: TObject);
var arq: TextFile;
linha, aliquota,vlVenda,F_J,dtCadastro,dtNascimento,vlLimite: String;
begin
  AssignFile (arq,DM.EXPORTA+'CLIENTE.TXT');
  Rewrite ( arq );
///  DM.cdsProduto.First;
///  while not DM.cdsProduto.Eof do
///  begin
    Write ( arq, AjustaStr ( DM.cdsClienteID_CLIENTE.AsString, 20 ) );
      if DM.cdsClienteTP_CLIENTE.Value = 'Fisica' then
        F_J := 'F'
      else
        F_J := 'J';

    Write ( arq, AjustaStr ( F_J, 1 ) );
    Write ( arq, AjustaStr ( DM.cdsClienteR_SOCIAL.AsString, 50 ) );
    Write ( arq, AjustaStr ( DM.cdsClienteFANTASIA.AsString, 30 ) );
    dtCadastro := TiraPontoeVirgula(DM.cdsClienteDT_CADASTRO.AsString);
    Write ( arq, AjustaStr (dtCadastro, 8 ) );
    dtNascimento := TiraPontoeVirgula(DM.cdsClienteDT_NASCIMENTO.AsString);
    Write ( arq, AjustaStr (dtNascimento, 8 ) );
    Write ( arq, AjustaStr ( '', 12 ) ); //DT_ULT_COMPRA
    Write ( arq, AjustaStr ( '', 12 ) ); //DT_ALTERADO
    Write ( arq, AjustaStr ( DM.cdsClienteTELEFONE.AsString, 14 ) );
    Write ( arq, AjustaStr ( DM.cdsClienteCELULAR.AsString, 14 ) );
    Write ( arq, AjustaStr ( DM.cdsClienteEMAIL.AsString, 50 ) );
    Write ( arq, AjustaStr ( DM.cdsClienteENDERECO.AsString, 50 ) );
    Write ( arq, AjustaStr ( DM.cdsClienteNUMERO.AsString, 6  ) );
    Write ( arq, AjustaStr ( DM.cdsClienteCOMPLEMENTO.AsString, 30  ) );
    Write ( arq, AjustaStr ( DM.cdsClienteBAIRRO.AsString, 30  ) );
    Write ( arq, AjustaStr ( DM.cdsClienteCIDADE.AsString, 30  ) );
    Write ( arq, AjustaStr ( DM.cdsClienteUF.AsString, 2  ) );
    Write ( arq, AjustaStr ( DM.cdsClienteCEP.AsString, 9  ) );
    Write ( arq, AjustaStr ( '', 80 ) ); //LOCAL ENTREGA
    Write ( arq, AjustaStr ( DM.cdsClienteINSC_RG.AsString, 20  ) );
    Write ( arq, AjustaStr ( DM.cdsClienteCNPJ_CPF.AsString, 20  ) );
    Write ( arq, AjustaStr ( '', 65 ) ); //OBS POP UP
    Write ( arq, AjustaStr ( DM.cdsClienteOBS.AsString, 80  ) );
    Write ( arq, AjustaStr ( '9', 1  ) );
    vlLimite:=StringReplace(DBEdit18.text, '.','', [rfReplaceAll]);
    vlLimite:=StringReplace(vlLimite, ',','', [rfReplaceAll]);
    vlLimite:=ColocaTextoDir(vlLimite,10,'0');

    Write ( arq, AjustaStr ( vlLimite, 10  ) );
    Write ( arq, AjustaStr ( '', 16 ) ); //SENHA CLIENTE
    Write ( arq, AjustaStr ( '', 6 ) ); //COD CLASSE
    Write ( arq, AjustaStr ( '', 30 ) ); //DESCRICAO CLASSE
    Write ( arq, AjustaStr ( '', 6 ) ); //CONVENIO
    Write ( arq, AjustaStr ( '', 30 ) ); //DESCRICAO CONVENIO
    Write ( arq, AjustaStr ( '', 6 ) ); //COD ANIMACAO
    Write ( arq, AjustaStr ( '', 6 ) ); //FLAG
    WriteLn ( arq );
   CloseFile ( arq );
end;

procedure TfrmCadCliente.BB_EXCLUIRClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja Excluir Este Cliente ?','Confirma��o',MB_ICONQUESTION+MB_YESNO ) = idyes then
  begin
    DM.cdsCliente.Delete;
    if DM.cdsCliente.ApplyUpdates(0) <> 0 then
    begin
      ShowMessage('O Sistema n�o conseguiu excluir este Registro. Tente novamente ou contate o Suporte.');
      BB_GRAVAR.SetFocus;
    end
    else
    begin
      DM.cdsCliente.ApplyUpdates(0);
      GerenciaBotoes;
    end;
  end
  else
  begin
    ShowMessage('Cliente N�o Exclu�do');
  end;
    GerenciaBotoes;

end;

procedure TfrmCadCliente.BB_GRAVARClick(Sender: TObject);
begin
  if DBEdit8.Text = '' then
  begin
    ShowMessage('Favor Informar C�digo Municipio.');
    DBComboBox2Exit(Self);
    Exit;
  end;
  if DBEdit26.Text = '' then
  begin
    ShowMessage('Favor Grupo de Cliente.');
    DBEdit26.SetFocus;
    dbedit26.Color := clYellow;
    Exit;
  end;

{  if DBComboBox3.Text = '' then
  begin
    ShowMessage('Favor Informar Sexo.');
    DBComboBox3.SetFocus;
    Exit;
  end;

  if DBComboBox4.Text = '' then
  begin
    ShowMessage('Favor Informar Tipo Estado Civil.');
    DBComboBox4.SetFocus;
    Exit;
  end; }


  if Tipo = 'Insert' then
  begin
    DM.cdsDinamica.Close;
    DM.cdsDinamica.IndexFieldNames:='';
    DM.cdsDinamica.CommandText := 'SELECT MAX(ID_CLIENTE) FROM TB_CLIENTE';
    DM.cdsDinamica.Open;

    DM.cdsClienteID_CLIENTE.AsInteger := DM.cdsDinamica.Fields[0].AsInteger+1;

    if DM.CdsCliente.ApplyUpdates(0) <> 0 then
    begin
      ShowMessage('O Sistema n�o conseguiu gravar este Registro. Tente novamente ou contate o Suporte.');
      BB_GRAVAR.SetFocus;
    end
    else
    begin
      bb_enviaDJClick(Self);
      DM.CdsCliente.ApplyUpdates(0);
      GerenCiaBotoes;
    end;
  end
  else
  begin
    if DM.CdsCliente.ApplyUpdates(0) <> 0 then
    begin
      ShowMessage('O Sistema n�o conseguiu Alterar este Registro. Tente novamente ou contate o Suporte.');
      BB_GRAVAR.SetFocus;
    end
    else
    begin
      bb_enviaDJClick(Self);
      DM.CdsCliente.ApplyUpdates(0);
      GerenCiaBotoes;
    end;

  end;

end;

procedure TfrmCadCliente.BB_NOVOClick(Sender: TObject);
begin
  Tipo := 'Insert';
  DM.cdsCliente.Open;
  DM.cdsCliente.Insert;
  DM.cdsClienteATIVO.Value := 'S';
  DM.cdsClienteSPC.Value := 'N';
  DM.cdsClienteBLOQUEIO.Value := 'N';
  DM.cdsClienteDT_CADASTRO.AsDateTime := Date;
  GerenCiaBotoes;
  DBComboBox1.SetFocus;
end;

procedure TfrmCadCliente.BB_PESQUISARClick(Sender: TObject);
begin
//  Pesquisa(DM.cdsCliente,['R_SOCIAL','CNPJ_CPF','ID_CLIENTE'],['Raz�o Social','CPF/CNPJ','C�digo'],
//    [35,18,4],'','','','','Clientes','Cliente');
  frmPesquisaPadrao := TfrmPesquisaPadrao.Create(self);
  frmPesquisaPadrao.TB_PESQUISA := 'Cliente';
  frmPesquisaPadrao.CDS := DM.cdsCliente;
  frmPesquisaPadrao.Tabela := 'TB_CLIENTE C';
  frmPesquisaPadrao.CampoBusca  := 'C.R_SOCIAL';
  frmPesquisaPadrao.CampoBusca2 := 'C.FANTASIA';
  frmPesquisaPadrao.CampoBusca3 := 'C.CNPJ_CPF';
  frmPesquisaPadrao.CampoChave  := 'C.R_SOCIAL';
  frmPesquisaPadrao.LegendaGrouBox := 'Consulta de Clientes';
  frmPesquisaPadrao.Sql            := ' SELECT C.ID_CLIENTE,C.CODIGO_MUNIC,C.DT_CADASTRO,C.TP_CLIENTE,C.CNPJ_CPF,'+
                                      ' C.INSC_RG,C.R_SOCIAL,C.FANTASIA,C.ENDERECO,C.COMPLEMENTO,C.NUMERO,'+
                                      ' C.BAIRRO,C.CEP,C.DT_NASCIMENTO,C.SEXO,C.ESTADO_CIVIL,C.VL_LIMITE, '+
                                      ' C.EMAIL,C.TELEFONE,C.CELULAR,C.WHATSAPP,C.CONTATO,C.OBS,C.ATIVO,  '+
                                      ' C.SPC,C.DT_CONSULTA_SPC,C.VL_ULT_DESC,C.DT_ULT_COMPRA,C.VL_ULT_COMPRA,'+
                                      ' C.INFORMACOES,C.BLOQUEIO,C.PONTO_REF, C.ID_GRUPO_EMPRESA,GE.nome_do_grupo, M.uf,M.nome AS CIDADE,M.ddd ';

  frmPesquisaPadrao.dbgPesquisa.Columns[0].Title.Caption := 'R.Social';
  frmPesquisaPadrao.dbgPesquisa.Columns[0].FieldName:= 'R_SOCIAL';
  frmPesquisaPadrao.dbgPesquisa.Columns[0].Width:= 200;

  frmPesquisaPadrao.dbgPesquisa.Columns[1].Title.Caption := 'Fantasia';
  frmPesquisaPadrao.dbgPesquisa.Columns[1].FieldName:= 'FANTASIA';
  frmPesquisaPadrao.dbgPesquisa.Columns[1].Width:= 200;

  frmPesquisaPadrao.dbgPesquisa.Columns[2].Title.Caption := 'CNPJ';
  frmPesquisaPadrao.dbgPesquisa.Columns[2].FieldName:= 'CNPJ_CPF';
  frmPesquisaPadrao.dbgPesquisa.Columns[2].Width:= 150;

  frmPesquisaPadrao.ShowModal;
  FreeAndNil(frmPesquisaPadrao);


  if DBComboBox1.Text = 'Juridica' then
  begin
    L_CPF_CNPJ.Caption := 'CNPJ';
    L_NOME.Caption := 'Raz�o Social';
    L_RG.Caption   := 'Insc.Estadual';
    L_Apelido.Caption := 'Nome Fantasia';
    DBComboBox1.Text := 'Juridica';
  end
  else
  begin
    L_CPF_CNPJ.Caption := 'C.P.F';
    L_NOME.Caption := 'Nome Completo';
    L_RG.Caption   := 'RG';
    L_Apelido.Caption := 'Apelido';
    DBComboBox1.Text := 'Fisica';
  end;
end;

procedure TfrmCadCliente.BB_SAIRClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadCliente.BB_TODOSClick(Sender: TObject);
var arq: TextFile;
linha, aliquota,vlVenda,F_J,dtCadastro,dtNascimento,vlLimite: String;
begin
  AssignFile (arq,DM.EXPORTA+'CLIENTE.TXT');
  Rewrite ( arq );
  DM.cdsCliente.First;
  while not DM.cdsCliente.Eof do
  begin
    Write ( arq, AjustaStr ( DM.cdsClienteID_CLIENTE.AsString, 20 ) );
      if DM.cdsClienteTP_CLIENTE.Value = 'Fisica' then
        F_J := 'F'
      else
        F_J := 'J';

    Write ( arq, AjustaStr ( F_J, 1 ) );
    Write ( arq, AjustaStr ( DM.cdsClienteR_SOCIAL.AsString, 50 ) );
    Write ( arq, AjustaStr ( DM.cdsClienteFANTASIA.AsString, 30 ) );
    dtCadastro := TiraPontoeVirgula(DM.cdsClienteDT_CADASTRO.AsString);
    Write ( arq, AjustaStr (dtCadastro, 8 ) );
    dtNascimento := TiraPontoeVirgula(DM.cdsClienteDT_NASCIMENTO.AsString);
    Write ( arq, AjustaStr (dtNascimento, 8 ) );
    Write ( arq, AjustaStr ( '', 12 ) ); //DT_ULT_COMPRA
    Write ( arq, AjustaStr ( '', 12 ) ); //DT_ALTERADO
    Write ( arq, AjustaStr ( DM.cdsClienteTELEFONE.AsString, 14 ) );
    Write ( arq, AjustaStr ( DM.cdsClienteCELULAR.AsString, 14 ) );
    Write ( arq, AjustaStr ( DM.cdsClienteEMAIL.AsString, 50 ) );
    Write ( arq, AjustaStr ( DM.cdsClienteENDERECO.AsString, 50 ) );
    Write ( arq, AjustaStr ( DM.cdsClienteNUMERO.AsString, 6  ) );
    Write ( arq, AjustaStr ( DM.cdsClienteCOMPLEMENTO.AsString, 30  ) );
    Write ( arq, AjustaStr ( DM.cdsClienteBAIRRO.AsString, 30  ) );
    Write ( arq, AjustaStr ( DM.cdsClienteCIDADE.AsString, 30  ) );
    Write ( arq, AjustaStr ( DM.cdsClienteUF.AsString, 2  ) );
    Write ( arq, AjustaStr ( DM.cdsClienteCEP.AsString, 9  ) );
    Write ( arq, AjustaStr ( '', 80 ) ); //LOCAL ENTREGA
    Write ( arq, AjustaStr ( DM.cdsClienteINSC_RG.AsString, 20  ) );
    Write ( arq, AjustaStr ( DM.cdsClienteCNPJ_CPF.AsString, 20  ) );
    Write ( arq, AjustaStr ( '', 65 ) ); //OBS POP UP
    Write ( arq, AjustaStr ( DM.cdsClienteOBS.AsString, 80  ) );
    Write ( arq, AjustaStr ( '9', 1  ) );
    vlLimite:=StringReplace(DBEdit18.text, '.','', [rfReplaceAll]);
    vlLimite:=StringReplace(vlLimite, ',','', [rfReplaceAll]);
    vlLimite:=ColocaTextoDir(vlLimite,10,'0');

    Write ( arq, AjustaStr ( vlLimite, 10  ) );
    Write ( arq, AjustaStr ( '', 16 ) ); //SENHA CLIENTE
    Write ( arq, AjustaStr ( '', 6 ) ); //COD CLASSE
    Write ( arq, AjustaStr ( '', 30 ) ); //DESCRICAO CLASSE
    Write ( arq, AjustaStr ( '', 6 ) ); //CONVENIO
    Write ( arq, AjustaStr ( '', 30 ) ); //DESCRICAO CONVENIO
    Write ( arq, AjustaStr ( '', 6 ) ); //COD ANIMACAO
    Write ( arq, AjustaStr ( '', 6 ) ); //FLAG
    WriteLn ( arq );
    DM.cdsCliente.Next;
  end;
   CloseFile ( arq );
end;

procedure TfrmCadCliente.Button1Click(Sender: TObject);
var i : integer;
begin
  for I := 0 to ACBrCEP1.Enderecos.Count -1 do
  begiN
    DM.cdsClienteCEP.AsString := ACBrCEP1.Enderecos[i].CEP;
//    if DM.cdsClienteENDERECO.IsNull then
      DM.cdsClienteENDERECO.AsString :=RemoveAcentos(ACBrCEP1.Enderecos[i].Tipo_Logradouro+' '+ ACBrCEP1.Enderecos[i].Logradouro);
//    if DM.cdsClienteCOMPLEMENTO.IsNull then
      DM.cdsClienteCOMPLEMENTO.AsString := ACBrCEP1.Enderecos[i].Complemento;
//    if DM.cdsClienteCODIGO_MUNIC.IsNull then
      DM.cdsClienteCODIGO_MUNIC.AsString := ACBrCEP1.Enderecos[i].IBGE_UF;
//    if DM.cdsClienteCIDADE.IsNull then
      DM.cdsClienteCIDADE.AsString := RemoveAcentos(ACBrCEP1.Enderecos[i].Municipio);
//    if DM.cdsClienteUF.IsNull then
      DM.cdsClienteUF.AsString := ACBrCEP1.Enderecos[i].UF;
//    if DM.cdsClienteBAIRRO.IsNull then
    DM.cdsClienteBAIRRO.AsString := RemoveAcentos(ACBrCEP1.Enderecos[i].Bairro);
    if DM.cdsClienteUF.Value <> '' then
    begin
      DM.cdsDinamica.Close;
      DM.cdsDinamica.IndexFieldNames:='';
      DM.cdsDinamica.CommandText := ' SELECT M.codigo_munic,M.nome,M.UF,M.DDD FROM TB_MUNICIPIOS M WHERE M.UF ='+RemoveAcentos(QuotedStr(DM.cdsClienteUF.AsString))+
                                    ' AND upper(M.nome) ='+RemoveAcentos(QuotedStr(DBEdit9.Text));
      DM.cdsDinamica.Open;
//      Pesquisa(DM.cdsDinamica,['NOME','UF'],['Municipios','Estado'],[50,2],'','','','','Municipios','Municipios');
      DM.cdsClienteCODIGO_MUNIC.AsString := DM.cdsDinamica.Fields[0].AsString;
      DM.cdsClienteDDD.AsString          := DM.cdsDinamica.Fields[3].AsString;
      DBComboBox2.Enabled := False;
      DBEdit11.SetFocus;
    end
    else
    begin
      DBComboBox2.Enabled := True;
      DBComboBox2.SetFocus;
    end;
  end;
end;

function TfrmCadCliente.cgc(num: string): boolean;
var
 n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12: integer;
 d1,d2: integer;
 digitado, calculado: string;
begin
 n1:=StrToInt(num[1]);
 n2:=StrToInt(num[2]);
 n3:=StrToInt(num[3]);
 n4:=StrToInt(num[4]);  // Retira cada numero do Edit, e joda p/ variavel
 n5:=StrToInt(num[5]);
 n6:=StrToInt(num[6]);
 n7:=StrToInt(num[7]);
 n8:=StrToInt(num[8]);
 n9:=StrToInt(num[9]);
 n10:=StrToInt(num[10]);
 n11:=StrToInt(num[11]);
 n12:=StrToInt(num[12]);
 d1:=n12*2+n11*3+n10*4+n9*5+n8*6+n7*7+n6*8+n5*9+n4*2+n3*3+n2*4+n1*5;
 d1:=11-(d1 mod 11);
 if d1>=10 then d1:=0;
 d2:=d1*2+n12*3+n11*4+n10*5+n9*6+n8*7+n7*8+n6*9+n5*2+n4*3+n3*4+n2*5+n1*6;
 d2:=11-(d2 mod 11);
 if d2>=10 then d2:=0;
 calculado:=inttostr(d1)+inttostr(d2);
 digitado:=num[13]+num[14];
 if calculado=digitado then
   cgc:=true
  else
   cgc:=false;

end;

function TfrmCadCliente.ColocaTextoDir(Texto: string; Qtd: integer;
  Ch: Char): string;
var
  x: integer;
  str: string;
begin
  if  Length(Texto) > Qtd then
      Result := Copy( Texto, (Length(Texto)-Qtd) + 1, Length(Texto) )
  else
    begin
      str := '';
      for x := Length(Texto) to Qtd - 1 do
      begin
        str := str + Ch;
      end;
      Result := str + Texto;
    end
  {endif};

end;

procedure TfrmCadCliente.ConsultaCNPJ;
begin
  frmConsultaCNPJ.ClienteFornecedor := 'Cliente';
  frmConsultaCNPJ.ShowModal;
end;

procedure TfrmCadCliente.ConsultaCPF;
begin
  frmConsultaCPF.ClienteVendedor := 'Cliente';
  frmConsultaCPF.ShowModal;
end;

function TfrmCadCliente.cpf(num: string): boolean;
var
 n1,n2,n3,n4,n5,n6,n7,n8,n9: integer;
 d1,d2: integer;
 digitado, calculado: string;
begin
 n1:=StrToInt(num[1]);
 n2:=StrToInt(num[2]);
 n3:=StrToInt(num[3]);
 n4:=StrToInt(num[4]);
 n5:=StrToInt(num[5]);
 n6:=StrToInt(num[6]);
 n7:=StrToInt(num[7]);
 n8:=StrToInt(num[8]);
 n9:=StrToInt(num[9]);
 d1:=n9*2+n8*3+n7*4+n6*5+n5*6+n4*7+n3*8+n2*9+n1*10;
 d1:=11-(d1 mod 11);
 if d1>=10 then d1:=0;
 d2:=d1*2+n9*3+n8*4+n7*5+n6*6+n5*7+n4*8+n3*9+n2*10+n1*11;
 d2:=11-(d2 mod 11);
 if d2>=10 then d2:=0;
 calculado:=inttostr(d1)+inttostr(d2);
 digitado:=num[10]+num[11];
 if calculado=digitado then
   cpf:=true
  else
   cpf:=false;
end;

procedure TfrmCadCliente.DBComboBox1Exit(Sender: TObject);
begin

  if Tipo = 'Cancelar' then
  begin
    DM.cdsCliente.Cancel;
    GerenCiaBotoes;
    Exit;
  end;

  if DBComboBox1.Text = '' then
  begin
    ShowMessage('Favor Informar Tipo de Pessoa.');
    DBComboBox1.SetFocus;
    Exit;
  end;
end;

procedure TfrmCadCliente.DBComboBox2Exit(Sender: TObject);
begin
  if DBComboBox2.Text = '' then
  begin
    ShowMessage('Informe o Estado');
    DBComboBox2.SetFocus;
  end
  else
  begin
    DM.cdsDinamica.Close;
    DM.cdsDinamica.IndexFieldNames:='';
    DM.cdsDinamica.CommandText := 'SELECT M.codigo_munic,M.nome,M.UF FROM TB_MUNICIPIOS M WHERE M.UF ='+QuotedStr(DM.cdsClienteUF.AsString);
    DM.cdsDinamica.Open;
    Pesquisa(DM.cdsDinamica,['NOME','UF'],['Municipios','Estado'],[50,2],'','','','','Municipios','Municipios');
    DM.cdsClienteCODIGO_MUNIC.AsString := DM.cdsDinamica.Fields[0].AsString;
    DM.cdsClienteCIDADE.AsString := DM.cdsDinamica.Fields[1].AsString;
    dbedit10.SetFocus;
  end;

end;

procedure TfrmCadCliente.DBEdit15Enter(Sender: TObject);
begin
  if DM.cdsClienteTELEFONE.IsNull then
  DM.cdsClienteTELEFONE.EditMask:= '(##)####-####';
end;

procedure TfrmCadCliente.DBEdit16Enter(Sender: TObject);
begin
  DM.cdsClienteCELULAR.EditMask:= '(##)#####-####';
end;

procedure TfrmCadCliente.DBEdit17Enter(Sender: TObject);
begin
  DM.cdsClienteWHATSAPP.Value := DM.cdsClienteCELULAR.Value;
  DM.cdsClienteWHATSAPP.EditMask:= '(##)#####-####';
end;

procedure TfrmCadCliente.DBEdit17Exit(Sender: TObject);
begin
  DBComboBox4.SetFocus;
end;

procedure TfrmCadCliente.DBEdit18Enter(Sender: TObject);
begin
   if DM.cdsClienteVL_LIMITE.IsNull then
     DM.cdsClienteVL_LIMITE.AsFloat := 0;
   DBEdit18.SelectAll;

end;

procedure TfrmCadCliente.DBEdit19Exit(Sender: TObject);
begin
  if (DBEdit19.Text <> 'S') AND (DBEdit19.Text <> 'N') then
  begin
    ShowMessage('Favor Informar "S" ou "N"');
    DBEdit19.SetFocus;
    Exit;
  end;
end;

procedure TfrmCadCliente.DBEdit1Enter(Sender: TObject);
begin
  if DBComboBox1.Text = 'Juridica' then
  begin
    L_CPF_CNPJ.Caption := 'CNPJ';
    L_NOME.Caption := 'Raz�o Social';
    L_RG.Caption   := 'Insc.Estadual';
    L_Apelido.Caption := 'Nome Fantasia';
    DM.cdsClienteCNPJ_CPF.EditMask := '##.###.###/####-##';
    DBComboBox1.Text := 'Juridica';
  end
  else
  begin
    L_CPF_CNPJ.Caption := 'C.P.F';
    L_NOME.Caption := 'Nome Completo';
    L_RG.Caption   := 'RG';
    L_Apelido.Caption := 'Apelido';
    DM.cdsClienteCNPJ_CPF.EditMask := '###.###.###-##';
    DBComboBox1.Text := 'Fisica';
  end;
end;

procedure TfrmCadCliente.DBEdit1Exit(Sender: TObject);
var
i,j : integer;
texto,textofinal,result:string;

begin
texto := dbedit1.text;
textofinal := '';
for i:=1 to length(texto) do
begin
 if not((copy(texto,i,1) = '-')or(copy(texto,i,1) = '.')or(copy(texto,i,1) = '/')) then
begin
 textofinal := textofinal+copy(texto,i,1);
end;
end;
 result := textofinal;

if ( DM.cdsClienteCNPJ_CPF.EditMask = '##.###.###/####-##') or (DM.cdsClienteCNPJ_CPF.EditMask = '###.###.###-##') then
 begin
   DM.cdsClienteCNPJ_CPF.EditMask := '';
   DBEdit2.SetFocus;
   Exit;
 end;

  DM.cdsClienteCNPJ_CPF.EditMask := '';
  if Tipo = 'Cancelar' then
  begin
    DM.cdsCliente.Cancel;
    GerenCiaBotoes;
    Exit;
  end;
  verificaClienteExiste;

  if (DBEdit1.Text <> ' .  .   /    -  ') and (DBEdit1.Text <> '   .   .   -  ') then
  begin
   if DM.CdsClienteTP_CLIENTE.AsString = 'Juridica' then
   begin
      If not cgc(result) then  //Se a fun�ao CGC retornar Falso, Nao libera o Focus
      Begin
        ShowMessage('CNPJ Inv�lido !!');
        DBEdit1.SetFocus;
        Exit;
      END;
   end;

   if DM.CdsClienteTP_CLIENTE.AsString = 'Fisica' then
   begin

      If not cpf(result) then  //Se a fun�ao CGC retornar Falso, Nao libera o Focus
      Begin
        ShowMessage('CPF Inv�lido !!');
        DBEdit1.SetFocus;
        Exit;
      END;
   end;
  end
  else
  begin
    ShowMessage('Nenhum N�mero Informado. Caso Seja Nulo Preencher com Zeros.');
    DBEdit1.SetFocus;
  end;
end;

procedure TfrmCadCliente.DBEdit22Exit(Sender: TObject);
begin
  if (DBEdit22.Text <> 'S') AND (DBEdit22.Text <> 'N') then
  begin
    ShowMessage('Favor Informar "S" ou "N"');
    DBEdit22.SetFocus;
    Exit;
  end;

end;

procedure TfrmCadCliente.DBEdit24Exit(Sender: TObject);
begin
  DBMemo12.SetFocus;
end;

procedure TfrmCadCliente.DBEdit25Exit(Sender: TObject);
begin
  if (DBEdit25.Text <> 'S') AND (DBEdit25.Text <> 'N') then
  begin
    ShowMessage('Favor Informar "S" ou "N"');
    DBEdit25.SetFocus;
    Exit;
  end;

end;

procedure TfrmCadCliente.DBEdit26Exit(Sender: TObject);
begin
  if DBEdit26.Text <> '' then
  begin
    DM.cdsGrupoEmpresa.Open;
    if DM.cdsGrupoEmpresa.Locate('ID_GRUPO_EMPRESA',DM.cdsClienteID_GRUPO_EMPRESA.AsString,[]) then
    begin
      DM.cdsClienteID_GRUPO_EMPRESA.AsInteger       := DM.cdsGrupoEmpresaID_GRUPO_EMPRESA.AsInteger;
      DM.cdsClienteNOME_DO_GRUPO.AsString           := DM.cdsGrupoEmpresaNOME_DO_GRUPO.AsString;
      DBEdit27.SetFocus;
    end
    else
    begin
        ShowMessage('          A T E N � � O  !!!!!!!!!   '+#13+
                    '                                     '+#13+
                    '   Grupo de Empresa N�o Encontrado            '+#13+
                    '                                     ');
        DM.cdsClienteID_GRUPO_EMPRESA.Clear;
        SpeedButton2Click(Self);
    end;
  end;

end;

procedure TfrmCadCliente.DBEdit6Exit(Sender: TObject);
begin
  DBEdit7.SetFocus;
end;

procedure TfrmCadCliente.DBEdit7Enter(Sender: TObject);
begin
//  DM.cdsClienteCEP.EditMask := '#####-###';
end;

procedure TfrmCadCliente.DBEdit7Exit(Sender: TObject);
begin
  ACBrCEP1.BuscarPorCEP(DM.cdsClienteCEP.AsString);
end;

procedure TfrmCadCliente.DBMemo1Exit(Sender: TObject);
begin
  BB_GRAVAR.SetFocus;
end;

procedure TfrmCadCliente.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  if DBComboBox1.Text = 'Juridica' then
  begin
    L_CPF_CNPJ.Caption := 'CNPJ';
    L_NOME.Caption := 'Raz�o Social';
    L_RG.Caption   := 'Insc.Estadual';
    L_Apelido.Caption := 'Nome Fantasia';
    DBComboBox1.Text := 'Juridica';
  end
  else
  begin
    L_CPF_CNPJ.Caption := 'C.P.F';
    L_NOME.Caption := 'Nome Completo';
    L_RG.Caption   := 'RG';
    L_Apelido.Caption := 'Apelido';
    DBComboBox1.Text := 'Fisica';
  end;
end;

procedure TfrmCadCliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.cdsCliente.State in [dsEdit,dsInsert] then
  begin
    ShowMessage('Favor Salve ou Cancele o Registro Para Sair');
    Abort;
  end
  else
  begin
    Action := caFree;
    frmCadCliente := nil;
    DM.cdsCliente.Close;
  end;
end;

procedure TfrmCadCliente.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TfrmCadCliente.FormShow(Sender: TObject);
begin
  DM.cdsCliente.Open;
  GerenCiaBotoes;
    if frmMenu.recInformacoes.nm_Usuario  = 'MARCIO' then
    begin
      BB_TODOS.Visible := True;
    end;

  if DM.cdsCliente.RecordCount > 0 then
  begin
    if DBComboBox1.Text = 'Juridica' then
    begin
      L_CPF_CNPJ.Caption := 'CNPJ';
      L_NOME.Caption := 'Raz�o Social';
      L_RG.Caption   := 'Insc.Estadual';
      L_Apelido.Caption := 'Nome Fantasia';
      DBComboBox1.Text := 'Juridica';
    end
    else
    begin
      L_CPF_CNPJ.Caption := 'C.P.F';
      L_NOME.Caption := 'Nome Completo';
      L_RG.Caption   := 'RG';
      L_Apelido.Caption := 'Apelido';
      DBComboBox1.Text := 'Fisica';
    end;
  end;
end;

procedure TfrmCadCliente.GerenCiaBotoes;
begin
  BB_NOVO.Enabled := not (DM.cdsCliente.State in dsEditModes);
  BB_GRAVAR.Enabled := NOT BB_NOVO.Enabled;
  BB_EXCLUIR.Enabled := BB_NOVO.Enabled and not (DM.cdsCliente.IsEmpty);
  BB_CANCELAR.Enabled := BB_GRAVAR.Enabled;
  BB_EDITAR.Enabled := BB_EXCLUIR.Enabled;
  BB_SAIR.Enabled := BB_NOVO.Enabled;
  BB_PESQUISAR.Enabled:= BB_NOVO.Enabled;
  Panel2.Enabled := not BB_NOVO.Enabled;
  Panel3.Enabled := not BB_NOVO.Enabled;
  Panel4.Enabled := not BB_NOVO.Enabled;
  Panel5.Enabled := not BB_NOVO.Enabled;
  Panel6.Enabled := not BB_NOVO.Enabled;
end;

procedure TfrmCadCliente.SpeedButton1Click(Sender: TObject);
begin
  if DM.cdsClienteTP_CLIENTE.AsString = 'Juridica' then
    ConsultaCNPJ
  else
    ConsultaCPF;

end;

procedure TfrmCadCliente.SpeedButton2Click(Sender: TObject);
begin
  frmPesquisaPadrao := TfrmPesquisaPadrao.Create(self);
  frmPesquisaPadrao.TB_PESQUISA := 'Grupo Empresa';
  frmPesquisaPadrao.CDS := DM.cdsGrupoEmpresa;
  frmPesquisaPadrao.Tabela := 'TB_GRUPO_EMPRESA GP';
  frmPesquisaPadrao.CampoBusca  := 'GP.NOME_DO_GRUPO';
  frmPesquisaPadrao.CampoBusca2 := 'GP.RESPONSAVEL';
  frmPesquisaPadrao.CampoChave := 'GP.NOME_DO_GRUPO';
  frmPesquisaPadrao.LegendaGrouBox := 'Consulta de Grupo Empresa';
  frmPesquisaPadrao.Sql            := ' SELECT '+
                                      ' GP.id_grupo_empresa, GP.dt_cadastro, GP.nome_do_grupo, GP.responsavel, GP.email, '+
                                      ' GP.fone ';

  frmPesquisaPadrao.dbgPesquisa.Columns[0].Title.Caption := 'Descricao do Grupo';
  frmPesquisaPadrao.dbgPesquisa.Columns[0].FieldName:= 'NOME_DO_GRUPO';
  frmPesquisaPadrao.dbgPesquisa.Columns[0].Width:= 200;

  frmPesquisaPadrao.dbgPesquisa.Columns[1].Title.Caption := 'RESPONSAVEL';
  frmPesquisaPadrao.dbgPesquisa.Columns[1].FieldName:= 'RESPONSAVEL';
  frmPesquisaPadrao.dbgPesquisa.Columns[1].Width:= 200;

  frmPesquisaPadrao.ShowModal;
  FreeAndNil(frmPesquisaPadrao);
  DM.cdsClienteID_GRUPO_EMPRESA.AsInteger := DM.cdsGrupoEmpresaID_GRUPO_EMPRESA.AsInteger;
  DM.cdsClienteNOME_DO_GRUPO.AsString     := DM.cdsGrupoEmpresaNOME_DO_GRUPO.AsString;


end;

procedure TfrmCadCliente.SpeedButton3Click(Sender: TObject);
begin
  Close;
end;

function TfrmCadCliente.TiraPontoeVirgula(sTexto: String): String;
var
 Temp_01 : string;
 Temp_03, conta: Integer;
begin
 Conta := 0;
 Temp_03 := length(sTexto);
while conta < temp_03 do
  begin
   Conta := Conta + 1;
    Temp_01 := Copy(Stexto,conta,1);
  if Temp_01 = '.' then
 begin
  sTexto := Copy(sTexto,1,(Conta - 1))+ Copy(sTexto,(Conta + 1),(Temp_03 - Conta));
end;
if Temp_01 = ',' then
 begin
  sTexto := Copy(sTexto,1,(Conta - 1))+ Copy(sTexto,(Conta + 1),(Temp_03 - Conta));
end;
if Temp_01 = '/' then
 begin
  sTexto := Copy(sTexto,1,(Conta - 1))+ Copy(sTexto,(Conta + 1),(Temp_03 - Conta));
end;
if Temp_01 = '-' then
 begin
  sTexto := Copy(sTexto,1,(Conta - 1))+ Copy(sTexto,(Conta + 1),(Temp_03 - Conta));
end;

end;
Result := sTexto;
end;

procedure TfrmCadCliente.verificaClienteExiste;
var
Codigo, Nome : string;
begin
  if Tipo = 'Insert' then
  begin
    DM.cdsDinamica.Close;
    DM.cdsDinamica.IndexFieldNames:='';
    DM.cdsDinamica.CommandText:='SELECT C.ID_CLIENTE,C.R_SOCIAL FROM TB_CLIENTE C WHERE C.CNPJ_CPF ='+QuotedStr(DBEdit1.Text);
    DM.cdsDinamica.Open;

    codigo:= DM.cdsDinamica.Fields[0].AsString;
    Nome  := DM.cdsDinamica.Fields[1].AsString;
    if DM.cdsDinamica.IsEmpty then
    begin

    end
    else
    begin
      ShowMessage('       Cliente J� Cadastrado :   '+#13+
                  '                                      '+#13+
                  'C�digo '+Codigo+' Nome : '+Nome);
      DBEdit1.SetFocus;
    end;
  end;
end;

end.
