unit uCadVendendor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls,DB, Vcl.Mask, ACBrBase, ACBrSocket, ACBrCEP, Vcl.XPMan,
  Vcl.ActnMan, Vcl.ActnColorMaps, ACBrConsultaCPF, ACBrConsultaCNPJ;

type
  TfrmCadVendedor = class(TForm)
    Panel1: TPanel;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    RadioGroup3: TRadioGroup;
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
    DBEdit1: TDBEdit;
    L_CPF_CNPJ: TLabel;
    DBEdit2: TDBEdit;
    L_NOME: TLabel;
    DBEdit3: TDBEdit;
    L_RG: TLabel;
    Label2: TLabel;
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
    DBEdit10: TDBEdit;
    Label9: TLabel;
    DBEdit11: TDBEdit;
    Label10: TLabel;
    DBEdit12: TDBEdit;
    Label11: TLabel;
    DBEdit13: TDBEdit;
    Label12: TLabel;
    DBEdit15: TDBEdit;
    Label14: TLabel;
    DBEdit16: TDBEdit;
    Label15: TLabel;
    DBEdit17: TDBEdit;
    Label16: TLabel;
    DBText1: TDBText;
    Label17: TLabel;
    Label18: TLabel;
    DBEdit19: TDBEdit;
    RadioGroup5: TRadioGroup;
    Panel6: TPanel;
    Label22: TLabel;
    DBEdit20: TDBEdit;
    SpeedButton1: TSpeedButton;
    DBEdit5: TDBEdit;
    Label3: TLabel;
    DBEdit4: TDBEdit;
    Label1: TLabel;
    DBEdit18: TDBEdit;
    Label19: TLabel;
    DBEdit21: TDBEdit;
    Label20: TLabel;
    SpeedButton2: TSpeedButton;
    bb_enviar: TBitBtn;
    BB_ENVIAR_TODOS: TBitBtn;
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
    procedure BB_EDITARClick(Sender: TObject);
    procedure BB_EXCLUIRClick(Sender: TObject);
    procedure DBComboBox1Exit(Sender: TObject);
    procedure BB_CANCELARMouseActivate(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y, HitTest: Integer;
      var MouseActivate: TMouseActivate);
    procedure DBEdit6Exit(Sender: TObject);
    procedure DBEdit19Exit(Sender: TObject);
    procedure DBMemo1Exit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit18Exit(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit18KeyPress(Sender: TObject; var Key: Char);
    procedure bb_enviarClick(Sender: TObject);
    procedure BB_ENVIAR_TODOSClick(Sender: TObject);
  private
    { Private declarations }
    Procedure GerenCiaBotoes;
    function cpf(num: string): boolean;
    function cgc(num: string): boolean;
    procedure ConsultaCNPJ;
    procedure ConsultaCPF;
    procedure VerificaVendedorExiste;


  public
    { Public declarations }
  end;

var
  frmCadVendedor: TfrmCadVendedor;
  Tipo :  string;

implementation

{$R *.dfm}

uses U_LIB, UD_PESQUISA, uDM, uConsultaCNPJ, uConsultaCPF, uMenu;

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


procedure TfrmCadVendedor.BB_CANCELARClick(Sender: TObject);
begin
  DM.cdsVendedor.Cancel;
  GerenCiaBotoes;
end;

procedure TfrmCadVendedor.BB_CANCELARMouseActivate(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y, HitTest: Integer;
  var MouseActivate: TMouseActivate);
begin
  Tipo := 'Cancelar';
end;

procedure TfrmCadVendedor.BB_EDITARClick(Sender: TObject);
begin
  Tipo := 'Edit';
  DM.cdsVendedor.Edit;
  GerenCiaBotoes;
  DBEdit1.SetFocus;
end;

procedure TfrmCadVendedor.bb_enviarClick(Sender: TObject);
var arq: TextFile;
linha, aliquota,vlVenda,F_J,dtCadastro,dtNascimento,vlLimite: String;
begin
  AssignFile (arq,DM.EXPORTA+'VENDEDOR.TXT');
  Rewrite ( arq );
  Write ( arq, AjustaStr ( DM.cdsVendedorID_VENDEDOR.AsString, 6 ) );
  Write ( arq, AjustaStr ( DM.cdsVendedorNOME.AsString, 30 ) );
  WriteLn ( arq );
  CloseFile ( arq );

end;

procedure TfrmCadVendedor.BB_ENVIAR_TODOSClick(Sender: TObject);
var arq: TextFile;
linha, aliquota,vlVenda,F_J,dtCadastro,dtNascimento,vlLimite: String;
begin
  AssignFile (arq,DM.EXPORTA+'VENDEDOR.TXT');
  Rewrite ( arq );
  DM.cdsVendedor.First;
  while not DM.cdsVendedor.Eof do
  begin
    Write ( arq, AjustaStr ( DM.cdsVendedorID_VENDEDOR.AsString, 6 ) );
    Write ( arq, AjustaStr ( DM.cdsVendedorNOME.AsString, 30 ) );
    WriteLn ( arq );
    DM.cdsVendedor.Next;
  end;
   CloseFile ( arq );
end;

procedure TfrmCadVendedor.BB_EXCLUIRClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja Excluir Este Cliente ?','Confirma��o',MB_ICONQUESTION+MB_YESNO ) = idyes then
  begin
    DM.cdsVendedor.Delete;
    if DM.cdsVendedor.ApplyUpdates(0) <> 0 then
    begin
      ShowMessage('O Sistema n�o conseguiu excluir este Registro. Tente novamente ou contate o Suporte.');
      BB_GRAVAR.SetFocus;
    end
    else
    begin
      DM.cdsVendedor.ApplyUpdates(0);
      GerenciaBotoes;
    end;
  end
  else
  begin
    ShowMessage('Cliente N�o Exclu�do');
  end;
    GerenciaBotoes;

end;

procedure TfrmCadVendedor.BB_GRAVARClick(Sender: TObject);
begin
  if Tipo = 'Insert' then
  begin
    DM.cdsDinamica.Close;
    DM.cdsDinamica.IndexFieldNames:='';
    DM.cdsDinamica.CommandText := 'SELECT MAX(ID_VENDEDOR) FROM TB_VENDEDOR';
    DM.cdsDinamica.Open;

    DM.cdsVendedorID_VENDEDOR.AsInteger := DM.cdsDinamica.Fields[0].AsInteger+1;

    if DM.cdsVendedor.ApplyUpdates(0) <> 0 then
    begin
      ShowMessage('O Sistema n�o conseguiu gravar este Registro. Tente novamente ou contate o Suporte.');
      BB_GRAVAR.SetFocus;
    end
    else
    begin
      bb_enviarClick(Self);
      DM.cdsVendedor.ApplyUpdates(0);
      GerenCiaBotoes;
    end;
  end
  else
  begin
    if DM.cdsVendedor.ApplyUpdates(0) <> 0 then
    begin
      ShowMessage('O Sistema n�o conseguiu Alterar este Registro. Tente novamente ou contate o Suporte.');
      BB_GRAVAR.SetFocus;
    end
    else
    begin
      bb_enviarClick(Self);
      DM.cdsVendedor.ApplyUpdates(0);
      GerenCiaBotoes;
    end;

  end;

end;

procedure TfrmCadVendedor.BB_NOVOClick(Sender: TObject);
begin
  Tipo := 'Insert';
  DM.cdsVendedor.Open;
  DM.cdsVendedor.Insert;
  DM.cdsVendedorATIVO.Value := 'S';
  DM.cdsVendedorDT_CADASTRO.AsDateTime := Date;
  GerenCiaBotoes;
  DBEdit1.SetFocus;
end;

procedure TfrmCadVendedor.BB_PESQUISARClick(Sender: TObject);
begin
  Pesquisa(DM.cdsVendedor,['NOME','CPF','ID_VENDEDOR'],['Nome','CPF','C�digo'],
    [35,18,4],'','','','','Vendedor','Vendedor');
end;

procedure TfrmCadVendedor.BB_SAIRClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadVendedor.Button1Click(Sender: TObject);
var i : integer;
begin
  for I := 0 to ACBrCEP1.Enderecos.Count -1 do
  begiN
    DM.cdsVendedorCEP.AsString := ACBrCEP1.Enderecos[i].CEP;
    if DM.cdsVendedorENDERECO.IsNull then
      DM.cdsVendedorENDERECO.AsString :=RemoveAcentos(ACBrCEP1.Enderecos[i].Tipo_Logradouro+' '+ ACBrCEP1.Enderecos[i].Logradouro);
    if DM.cdsVendedorCOMPLEMENTO.IsNull then
      DM.cdsVendedorCOMPLEMENTO.AsString := ACBrCEP1.Enderecos[i].Complemento;
    if DM.cdsVendedorCODIGO_MUNIC.IsNull then
      DM.cdsVendedorCODIGO_MUNIC.AsString := ACBrCEP1.Enderecos[i].IBGE_UF;
    if DM.cdsVendedorCIDADE.IsNull then
      DM.cdsVendedorCIDADE.AsString := RemoveAcentos(ACBrCEP1.Enderecos[i].Municipio);
    if DM.cdsVendedorUF.IsNull then
      DM.cdsVendedorUF.AsString := ACBrCEP1.Enderecos[i].UF;
    if DM.cdsVendedorBAIRRO.IsNull then
    DM.cdsVendedorBAIRRO.AsString := RemoveAcentos(ACBrCEP1.Enderecos[i].Bairro);
    if DM.cdsVendedorUF.Value <> '' then
    begin
      DM.cdsDinamica.Close;
      DM.cdsDinamica.IndexFieldNames:='';
      DM.cdsDinamica.CommandText := ' SELECT M.codigo_munic,M.nome,M.UF,M.DDD FROM TB_MUNICIPIOS M WHERE M.UF ='+RemoveAcentos(QuotedStr(DM.cdsVendedorUF.AsString))+
                                    ' AND upper(M.nome) ='+RemoveAcentos(QuotedStr(DBEdit9.Text));
      DM.cdsDinamica.Open;
//      Pesquisa(DM.cdsDinamica,['NOME','UF'],['Municipios','Estado'],[50,2],'','','','','Municipios','Municipios');
      DM.cdsVendedorCODIGO_MUNIC.AsString := DM.cdsDinamica.Fields[0].AsString;
      DM.cdsVendedorDDD.AsString          := DM.cdsDinamica.Fields[3].AsString;
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

function TfrmCadVendedor.cgc(num: string): boolean;
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

procedure TfrmCadVendedor.ConsultaCNPJ;
begin
  frmConsultaCNPJ.ClienteFornecedor := 'Cliente';
  frmConsultaCNPJ.ShowModal;
end;

procedure TfrmCadVendedor.ConsultaCPF;
begin
  frmConsultaCPF.ClienteVendedor := 'Vendedor';
  frmConsultaCPF.ShowModal;
end;

function TfrmCadVendedor.cpf(num: string): boolean;
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

procedure TfrmCadVendedor.DBComboBox1Exit(Sender: TObject);
begin

  if Tipo = 'Cancelar' then
  begin
    DM.cdsVendedor.Cancel;
    GerenCiaBotoes;
    Exit;
  end;

end;

procedure TfrmCadVendedor.DBComboBox2Exit(Sender: TObject);
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
    DM.cdsDinamica.CommandText := 'SELECT M.codigo_munic,M.nome,M.UF FROM TB_MUNICIPIOS M WHERE M.UF ='+QuotedStr(DM.cdsVendedorUF.AsString);
    DM.cdsDinamica.Open;
    Pesquisa(DM.cdsDinamica,['NOME','UF'],['Municipios','Estado'],[50,2],'','','','','Municipios','Municipios');
    DM.cdsVendedorCODIGO_MUNIC.AsString := DM.cdsDinamica.Fields[0].AsString;
    DM.cdsVendedorCIDADE.AsString := DM.cdsDinamica.Fields[1].AsString;
    dbedit10.SetFocus;
  end;

end;

procedure TfrmCadVendedor.DBEdit15Enter(Sender: TObject);
begin
  if DM.cdsVendedorTELEFONE.IsNull then
  DM.cdsVendedorTELEFONE.EditMask:= '(##)####-####';
end;

procedure TfrmCadVendedor.DBEdit16Enter(Sender: TObject);
begin
  DM.cdsVendedorCELULAR.EditMask:= '(##)#####-####';
end;

procedure TfrmCadVendedor.DBEdit17Enter(Sender: TObject);
begin
  DM.cdsVendedorWHATSAPP.Value := DM.cdsVendedorCELULAR.Value;
  DM.cdsVendedorWHATSAPP.EditMask:= '(##)#####-####';
end;

procedure TfrmCadVendedor.DBEdit18Exit(Sender: TObject);
begin
  DM.cdsEmpresa.Close;
  DM.cdsEmpresa.Open;
  if DM.cdsEmpresa.Locate('ID_LOJA',DM.cdsVendedorID_LOJA.AsInteger,[]) then
  begin
    DM.cdsVendedorID_LOJA.AsInteger   := DM.cdsEmpresaID_LOJA.AsInteger;
    DM.cdsVendedorNOME_LOJA.AsString       := DM.cdsEmpresaFANTASIA.AsString;
    DBEdit4.SetFocus;
  end
  else
  begin
      ShowMessage('          A T E N � � O  !!!!!!!!!   '+#13+
                  '                                     '+#13+
                  '   Loja n�o Encontrada            '+#13+
                  '                                     ');
      DM.cdsVendedorID_LOJA.Clear;
      SpeedButton2Click(Self);
  end;

end;

procedure TfrmCadVendedor.DBEdit18KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end
  else if Key = #32 then
  begin
    Key := #0;
    SpeedButton2Click(self);
  end;

end;

procedure TfrmCadVendedor.DBEdit19Exit(Sender: TObject);
begin
  if (DBEdit19.Text <> 'S') AND (DBEdit19.Text <> 'N') then
  begin
    ShowMessage('Favor Informar "S" ou "N"');
    DBEdit19.SetFocus;
    Exit;
  end;
end;

procedure TfrmCadVendedor.DBEdit1Enter(Sender: TObject);
begin
  DM.cdsVendedorCPF.EditMask := '###.###.###-##';
end;

procedure TfrmCadVendedor.DBEdit1Exit(Sender: TObject);
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

  if Tipo = 'Cancelar' then
  begin
    DM.cdsVendedor.Cancel;
    GerenCiaBotoes;
    Exit;
  end;
  VerificaVendedorExiste;

 { if DM.cdsVendedorTP_CLIENTE.AsString = 'Juridica' then
 begin
    If not cgc(result) then  //Se a fun�ao CGC retornar Falso, Nao libera o Focus
    Begin
      ShowMessage('CNPJ Inv�lido !!');
      DBEdit1.SetFocus;
    END;
 end;}

  if (DBEdit1.Text <> '  .   .   /    -  ') and (DBEdit1.Text <> '   .   .   -  ') then
  begin
    If not cpf(result) then  //Se a fun�ao CGC retornar Falso, Nao libera o Focus
    Begin
      ShowMessage('CPF Inv�lido !!');
      DBEdit1.SetFocus;
    END;
  end
  else
  begin
    ShowMessage('Nenhum N�mero Informado. Caso Seja Nulo Preencher com Zeros.');
    DBEdit1.SetFocus;
  end;

end;

procedure TfrmCadVendedor.DBEdit4Exit(Sender: TObject);
begin
  if not (DM.cdsVendedorDT_NASCIMENTO.IsNull) then
    DBEdit7.SetFocus
  else
    DBEdit5.SetFocus;
end;

procedure TfrmCadVendedor.DBEdit5Exit(Sender: TObject);
begin
  DBEdit7.SetFocus;
end;

procedure TfrmCadVendedor.DBEdit6Exit(Sender: TObject);
begin
  DBEdit18.SetFocus;
end;

procedure TfrmCadVendedor.DBEdit7Enter(Sender: TObject);
begin
//  DM.cdsVendedorCEP.EditMask := '#####-###';
end;

procedure TfrmCadVendedor.DBEdit7Exit(Sender: TObject);
begin
  ACBrCEP1.BuscarPorCEP(DM.cdsVendedorCEP.AsString);
end;

procedure TfrmCadVendedor.DBMemo1Exit(Sender: TObject);
begin
  BB_GRAVAR.SetFocus;
end;

procedure TfrmCadVendedor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.cdsVendedor.State in [dsEdit,dsInsert] then
  begin
    ShowMessage('Favor Salve ou Cancele o Registro Para Sair');
    Abort;
  end
  else
  begin
    Action := caFree;
    frmCadVendedor := nil;
  end;


end;

procedure TfrmCadVendedor.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TfrmCadVendedor.FormShow(Sender: TObject);
begin
  if frmMenu.recInformacoes.nm_Usuario  = 'MARCIO' then
  begin
    BB_ENVIAR_TODOS.Visible := True;
  end;
  DM.cdsVendedor.Open;
  GerenCiaBotoes;

end;

procedure TfrmCadVendedor.GerenCiaBotoes;
begin
  BB_NOVO.Enabled := not (DM.cdsVendedor.State in dsEditModes);
  BB_GRAVAR.Enabled := NOT BB_NOVO.Enabled;
  BB_EXCLUIR.Enabled := BB_NOVO.Enabled and not (DM.cdsVendedor.IsEmpty);
  BB_CANCELAR.Enabled := BB_GRAVAR.Enabled;
  BB_EDITAR.Enabled := BB_EXCLUIR.Enabled;
  BB_SAIR.Enabled := BB_NOVO.Enabled;
  BB_PESQUISAR.Enabled:= BB_NOVO.Enabled;
  Panel2.Enabled := not BB_NOVO.Enabled;
  Panel3.Enabled := not BB_NOVO.Enabled;
  Panel4.Enabled := not BB_NOVO.Enabled;
end;

procedure TfrmCadVendedor.SpeedButton1Click(Sender: TObject);
begin
  ConsultaCPF;
end;

procedure TfrmCadVendedor.SpeedButton2Click(Sender: TObject);
begin
   DM.cdsEmpresa.Open;

   Pesquisa(DM.cdsEmpresa,['R_SOCIAL','ID_LOJA'],
                                 ['',''],[35,10],'','0','','Loja','Loja','Loja');
    DM.cdsVendedorID_LOJA.AsInteger   := DM.cdsEmpresaID_LOJA.AsInteger;
    DM.cdsVendedorNOME_LOJA.AsString       := DM.cdsEmpresaFANTASIA.AsString;
    DBEdit4.SetFocus;

end;

procedure TfrmCadVendedor.VerificaVendedorExiste;
var
Codigo, Nome : string;
begin
  if Tipo = 'Insert' then
  begin
    DM.cdsDinamica.Close;
    DM.cdsDinamica.IndexFieldNames:='';
    DM.cdsDinamica.CommandText:='SELECT C.ID_VENDEDOR,C.NOME FROM TB_VENDEDOR C WHERE C.CPF ='+QuotedStr(DBEdit1.Text);
    DM.cdsDinamica.Open;

    codigo:= DM.cdsDinamica.Fields[0].AsString;
    Nome  := DM.cdsDinamica.Fields[1].AsString;
    if DM.cdsDinamica.IsEmpty then
    begin

    end
    else
    begin
      ShowMessage('            Vendendor J� Cadastrado : '+#13+
                  '                                      '+#13+
                  'C�digo '+Codigo+' Nome : '+Nome);
      DM.cdsVendedor.Cancel;
      GerenCiaBotoes;
      Exit;
    end;
  end;

end;
end.


