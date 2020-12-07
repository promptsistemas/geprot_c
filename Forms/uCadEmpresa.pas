unit uCadEmpresa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls, ComCtrls,db,
  Grids, DBGrids,ACBrBase, ACBrSocket, ACBrCEP, Vcl.Touch.Keyboard;


type
  TfrmCadEmpresa = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label2: TLabel;
    Label6: TLabel;
    DBEdit7: TDBEdit;
    Label7: TLabel;
    DBEdit8: TDBEdit;
    Label8: TLabel;
    DBEdit9: TDBEdit;
    Label9: TLabel;
    DBEdit10: TDBEdit;
    Label10: TLabel;
    DBEdit11: TDBEdit;
    Label11: TLabel;
    DBComboBox1: TDBComboBox;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    Label15: TLabel;
    DBEdit15: TDBEdit;
    Label16: TLabel;
    DBEdit16: TDBEdit;
    Label17: TLabel;
    DBEdit18: TDBEdit;
    Label19: TLabel;
    DBEdit4: TDBEdit;
    Label3: TLabel;
    ACBrCEP1: TACBrCEP;
    Button1: TButton;
    Button2: TButton;
    DBNavigator1: TDBNavigator;
    BB_NOVO: TBitBtn;
    BB_EDITAR: TBitBtn;
    BB_GRAVAR: TBitBtn;
    BB_CANCELAR: TBitBtn;
    BB_EXCLUIR: TBitBtn;
    BB_PESQUISAR: TBitBtn;
    BB_SAIR: TBitBtn;
    Panel1: TPanel;
    DBText1: TDBText;
    Label5: TLabel;
    Label22: TLabel;
    SpeedButton1: TSpeedButton;
    DBEdit6: TDBEdit;
    Label23: TLabel;
    DBEdit5: TDBEdit;
    L_CPF_CNPJ: TLabel;
    DBEdit17: TDBEdit;
    Label4: TLabel;
    DBEdit19: TDBEdit;
    Label18: TLabel;
    DBEdit20: TDBEdit;
    Label20: TLabel;
    Label21: TLabel;
    DBMemo1: TDBMemo;
    SpeedButton3: TSpeedButton;
    procedure BB_SAIR1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BB_NOVO1Click(Sender: TObject);
    procedure DBComboBox1Exit(Sender: TObject);
    procedure DBEdit13Exit(Sender: TObject);
    procedure DBEdit13Enter(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BB_CANCELAR1Click(Sender: TObject);
    procedure BB_GRAVAR1Click(Sender: TObject);
    procedure DBEdit15Enter(Sender: TObject);
    procedure DBEdit16Enter(Sender: TObject);
    procedure BB_EDITAR1Click(Sender: TObject);
    procedure BB_PESQUISAR1Click(Sender: TObject);
    procedure BB_EXCLUIR1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBEdit11Exit(Sender: TObject);
    procedure BB_NOVOClick(Sender: TObject);
    procedure BB_EDITARClick(Sender: TObject);
    procedure BB_CANCELARClick(Sender: TObject);
    procedure BB_GRAVARClick(Sender: TObject);
    procedure BB_EXCLUIRClick(Sender: TObject);
    procedure BB_PESQUISARClick(Sender: TObject);
    procedure BB_SAIRClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit5Enter(Sender: TObject);
    procedure BB_CANCELARMouseActivate(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y, HitTest: Integer;
      var MouseActivate: TMouseActivate);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
    Procedure GerenCiaBotoes;
  public
    { Public declarations }
    function cpf(num: string): boolean;
    function cgc(num: string): boolean;
    Function TiraPontoeVirgula(sTexto:String):String;
    procedure VerificaEmpresaExiste;
  end;

var
  frmCadEmpresa: TfrmCadEmpresa;
  Tipo : String;

implementation

uses uDm, U_LIB, UD_PESQUISA, uConsultaCNPJ;
//U_LIB, UD_PESQUISA;

{$R *.dfm}
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

function TfrmCadEmpresa.TiraPontoeVirgula(sTexto: String): String;
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

procedure TfrmCadEmpresa.VerificaEmpresaExiste;
var
Codigo, Nome : string;
begin
  if Tipo = 'Insert' then
  begin
    DM.cdsDinamica.Close;
    DM.cdsDinamica.IndexFieldNames:='';
    DM.cdsDinamica.CommandText:='SELECT C.ID_LOJA,C.R_SOCIAL FROM TB_LOJAS C WHERE C.CNPJ ='+QuotedStr(DBEdit13.Text);
    DM.cdsDinamica.Open;

    codigo:= DM.cdsDinamica.Fields[0].AsString;
    Nome  := DM.cdsDinamica.Fields[1].AsString;
    if DM.cdsDinamica.IsEmpty then
    begin

    end
    else
    begin
      ShowMessage('             Empresa J� Cadastrada :  '+#13+
                  '                                         '+#13+
                  'C�digo '+Codigo+' Nome : '+Nome);
      DM.cdsEmpresa.Cancel;
      GerenCiaBotoes;
      Exit;
    end;
end;
end;

procedure TfrmCadEmpresa.BB_SAIR1Click(Sender: TObject);
begin
  DM.cdsEmpresa.Close;
  Close;
end;

procedure TfrmCadEmpresa.GerenCiaBotoes;
begin
  BB_NOVO.Enabled := not (DM.cdsEmpresa.State in dsEditModes);
  BB_GRAVAR.Enabled := NOT BB_NOVO.Enabled;
  BB_EXCLUIR.Enabled := BB_NOVO.Enabled and not (DM.cdsEmpresa.IsEmpty);
  BB_CANCELAR.Enabled := BB_GRAVAR.Enabled;
  BB_EDITAR.Enabled := BB_EXCLUIR.Enabled;
  BB_SAIR.Enabled := BB_NOVO.Enabled;
  BB_PESQUISAR.Enabled:= BB_NOVO.Enabled;
  TabSheet1.Enabled := not BB_NOVO.Enabled;
  DBComboBox1.Enabled := True;
end;

procedure TfrmCadEmpresa.SpeedButton1Click(Sender: TObject);
begin
  frmConsultaCNPJ.ClienteFornecedor := 'Empresa';
  frmConsultaCNPJ.ShowModal;
end;

procedure TfrmCadEmpresa.SpeedButton3Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadEmpresa.FormShow(Sender: TObject);
begin
  PageControl1.ActivePage := TabSheet1;
  DM.cdsEmpresa.Open;
  GerenCiaBotoes;
end;

procedure TfrmCadEmpresa.BB_NOVO1Click(Sender: TObject);
begin
  PageControl1.ActivePage := TabSheet1;
  DM.cdsEmpresa.Open;
  DM.cdsEmpresa.Insert;
  DM.cdsEmpresaDT_CADASTRO.AsDateTime := Date;
  GerenCiaBotoes;
  DBEdit2.SetFocus;
end;

procedure TfrmCadEmpresa.DBComboBox1Exit(Sender: TObject);
begin
  if DBComboBox1.Text = '' then
  begin
    ShowMessage('Informe o Estado');
    DBComboBox1.SetFocus;
  end
  else
  begin
    DM.cdsDinamica.Close;
    DM.cdsDinamica.IndexFieldNames:='';
    DM.cdsDinamica.CommandText := 'SELECT M.codigo_munic,M.nome,M.UF FROM TB_MUNICIPIOS M WHERE M.UF ='+QuotedStr(DM.cdsEmpresaUF.AsString);
    DM.cdsDinamica.Open;
    Pesquisa(DM.cdsDinamica,['NOME','UF'],['Municipios','Estado'],[50,2],'','','','','Municipios','Municipios');
    DM.cdsEmpresaCODIGO_MUNIC.AsString := DM.cdsDinamica.Fields[0].AsString;
    DM.cdsEmpresaCIDADE.AsString       := DM.cdsDinamica.Fields[1].AsString;
    dbedit4.SetFocus;
  end;
end;

function TfrmCadEmpresa.cgc(num: string): boolean;
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

function TfrmCadEmpresa.cpf(num: string): boolean;
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

procedure TfrmCadEmpresa.DBEdit13Exit(Sender: TObject);
var
i,j : integer;
texto,textofinal,result:string;

begin
texto := dbedit13.text;
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
    DM.cdsEmpresa.Cancel;
    GerenCiaBotoes;
    Exit;
  end;
  VerificaEmpresaExiste;

  if (DBEdit13.Text <> '  .   .   /    -  ') and (DBEdit13.Text <> '   .   .   -  ') then
  begin
    If not cgc(result) then  //Se a fun�ao CGC retornar Falso, Nao libera o Focus
    Begin
      ShowMessage('CNPJ Inv�lido !!');
      DBEdit13.SetFocus;
   end;
  end
  else
  begin
    ShowMessage('Nenhum N�mero Informado. Caso Seja Nulo Preencher com Zeros.');
    DBEdit13.SetFocus;
  end;
end;

procedure TfrmCadEmpresa.DBEdit13Enter(Sender: TObject);
begin
  DM.cdsEmpresaCNPJ.EditMask := '##.###.###/####-##';
end;

procedure TfrmCadEmpresa.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TfrmCadEmpresa.BB_CANCELAR1Click(Sender: TObject);
begin
  DM.cdsEmpresa.Cancel;
  GerenCiaBotoes;
end;

procedure TfrmCadEmpresa.BB_GRAVAR1Click(Sender: TObject);
begin
  PageControl1.ActivePage := TabSheet1;
  if DM.cdsEmpresa.ApplyUpdates(0) <> 0 then
  begin
    ShowMessage('O Sistema n�o conseguiu gravar este Registro. Tente novamente ou contate o Suporte.');
    BB_GRAVAR.SetFocus;
  end
  else
  begin
    DM.cdsEmpresa.ApplyUpdates(0);
    DM.cdsEmpresa.Refresh;
    GerenCiaBotoes;
  end;
end;

procedure TfrmCadEmpresa.DBEdit15Enter(Sender: TObject);
begin
  if DM.cdsEmpresaTELEFONE.IsNull then
    DM.cdsEmpresaTELEFONE.EditMask := '(##)####-####';
end;

procedure TfrmCadEmpresa.DBEdit16Enter(Sender: TObject);
begin
  DM.cdsEmpresaFAX.EditMask := '(##)####-####';
end;

procedure TfrmCadEmpresa.DBEdit5Enter(Sender: TObject);
begin
  DM.cdsEmpresaCPF_CONTATO.EditMask :='###.###.###-##';
end;

procedure TfrmCadEmpresa.DBEdit5Exit(Sender: TObject);
var
  i,j : integer;
  texto,textofinal,result:string;
begin
  texto := dbedit5.text;
  textofinal := '';
  for i:=1 to length(texto) do
  begin
   if not((copy(texto,i,1) = '-')or(copy(texto,i,1) = '.')or(copy(texto,i,1) = '/')) then
  begin
   textofinal := textofinal+copy(texto,i,1);
  end;
  end;
   result := textofinal;

    If not cpf(result) then  //Se a fun�ao CGC retornar Falso, Nao libera o Focus
    Begin
      ShowMessage('CPF Inv�lido !!');
      DBEdit5.SetFocus;
    END;
end;

procedure TfrmCadEmpresa.BB_EDITAR1Click(Sender: TObject);
begin
  PageControl1.ActivePage := TabSheet1;
  DM.cdsEmpresa.Edit;
  GerenCiaBotoes;
  DBEdit2.SetFocus;

end;

procedure TfrmCadEmpresa.BB_PESQUISAR1Click(Sender: TObject);
begin
  //Pesquisa(DM.cdsEmpresa,['NOME','CNPJ'],['Raz�o Social','Fantasia','CNPJ'],
  //  [20,20,18],'','','','','Fornecedor','Fornecedor');
end;

procedure TfrmCadEmpresa.BB_EXCLUIR1Click(Sender: TObject);
begin
  if Application.MessageBox('Deseja Excluir Este Fornecedor ?','Confirma��o',MB_ICONQUESTION+MB_YESNO ) = idyes then
  begin
    DM.cdsEmpresa.Delete;
    DM.cdsEmpresa.ApplyUpdates(0);
    GerenciaBotoes;
  end
  else
  begin
    ShowMessage('Fornecedor N�o Exclu�do');
  end;
    GerenciaBotoes;

end;

procedure TfrmCadEmpresa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.cdsEmpresa.State in [dsEdit,dsInsert] then
  begin
    ShowMessage('Favor Salve ou Cancele o Registro Para Sair');
    Abort;
  end
  else
  begin
    Action := caFree;
    frmCadEmpresa := nil;
  end;
end;

procedure TfrmCadEmpresa.Button1Click(Sender: TObject);
begin
  ACBrCEP1.BuscarPorCEP(DM.cdsEmpresaCEP.AsString);
end;

procedure TfrmCadEmpresa.Button2Click(Sender: TObject);
var i : integer;
begin
  for I := 0 to ACBrCEP1.Enderecos.Count -1 do
  begiN
    DM.cdsEmpresaCEP.AsString := ACBrCEP1.Enderecos[i].CEP;
    if DM.cdsEmpresaENDERECO.IsNull then
      DM.cdsEmpresaENDERECO.AsString := ACBrCEP1.Enderecos[i].Tipo_Logradouro+' '+ACBrCEP1.Enderecos[i].Logradouro;
    if DM.cdsEmpresaCOMPLEMENTO.IsNull then
      DM.cdsEmpresaCOMPLEMENTO.AsString := ACBrCEP1.Enderecos[i].Complemento;
    DM.cdsEmpresaCIDADE.AsString := RemoveAcentos(ACBrCEP1.Enderecos[i].Municipio);
    DM.cdsEmpresaUF.AsString := ACBrCEP1.Enderecos[i].UF;
    if DM.cdsEmpresaBAIRRO.IsNull then
      DM.cdsEmpresaBAIRRO.AsString := ACBrCEP1.Enderecos[i].Bairro;
    if DM.cdsEmpresaUF.Value <> '' then
    begin
      DM.cdsDinamica.Close;
      DM.cdsDinamica.IndexFieldNames:='';
      DM.cdsDinamica.CommandText := ' SELECT M.codigo_munic,M.nome,M.UF,M.DDD FROM TB_MUNICIPIOS M WHERE M.UF ='+QuotedStr(DM.cdsEmpresaUF.AsString)+
                                    ' AND upper(M.nome) ='+QuotedStr(DBEdit12.Text);
      DM.cdsDinamica.Open;
//      Pesquisa(DM.cdsDinamica,['NOME','UF'],['Municipios','Estado'],[50,2],'','','','','Municipios','Municipios');
      DM.cdsEmpresaCODIGO_MUNIC.AsString := DM.cdsDinamica.Fields[0].AsString;
      DBComboBox1.Enabled := False
    end
    else
    begin
      DBComboBox1.Enabled := True;
    end;
  end;
end;

procedure TfrmCadEmpresa.DBEdit11Exit(Sender: TObject);
begin
  ACBrCEP1.BuscarPorCEP(DM.cdsEmpresaCEP.AsString);
end;

procedure TfrmCadEmpresa.BB_NOVOClick(Sender: TObject);
begin
  Tipo := 'Insert';
  PageControl1.ActivePage := TabSheet1;
  DM.cdsEmpresa.Open;
  DM.cdsEmpresa.Insert;
  DM.cdsEmpresaDT_CADASTRO.AsDateTime := Date;
  GerenCiaBotoes;
  DBEdit13.SetFocus;

end;

procedure TfrmCadEmpresa.BB_EDITARClick(Sender: TObject);
begin
  Tipo := 'Edit';
  PageControl1.ActivePage := TabSheet1;
  DM.cdsEmpresa.Edit;
  GerenCiaBotoes;
  DBEdit13.SetFocus;

end;

procedure TfrmCadEmpresa.BB_CANCELARClick(Sender: TObject);
begin
  DM.cdsEmpresa.Cancel;
  GerenCiaBotoes;

end;

procedure TfrmCadEmpresa.BB_CANCELARMouseActivate(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y, HitTest: Integer;
  var MouseActivate: TMouseActivate);
begin
  Tipo := 'Cancelar';
end;

procedure TfrmCadEmpresa.BB_GRAVARClick(Sender: TObject);
begin
  PageControl1.ActivePage := TabSheet1;

  if Tipo = 'Insert' then
  begin
    DM.cdsDinamica.Close;
    DM.cdsDinamica.IndexFieldNames:='';
    DM.cdsDinamica.CommandText := ' SELECT MAX(ID_LOJA) FROM TB_LOJAS ';
    DM.cdsDinamica.Open;

    DM.cdsEmpresaID_LOJA.AsInteger := DM.cdsDinamica.Fields[0].AsInteger + 1;
    if DM.cdsEmpresa.ApplyUpdates(0) <> 0 then
    begin
      ShowMessage('O Sistema n�o conseguiu gravar este Registro. Tente novamente ou contate o Suporte.');
      BB_GRAVAR.SetFocus;
    end
    else
    begin
      DM.cdsEmpresa.ApplyUpdates(0);
      DM.cdsEmpresa.Refresh;
      GerenCiaBotoes;
    end;
  end;

  if Tipo = 'Edit' then
  begin
    if DM.cdsEmpresa.ApplyUpdates(0) <> 0 then
    begin
      ShowMessage('O Sistema n�o conseguiu gravar este Registro. Tente novamente ou contate o Suporte.');
      BB_GRAVAR.SetFocus;
    end
    else
    begin
      DM.cdsEmpresa.ApplyUpdates(0);
      DM.cdsEmpresa.Refresh;
      GerenCiaBotoes;
    end;
  end;
end;

procedure TfrmCadEmpresa.BB_EXCLUIRClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja Excluir Este Fornecedor ?','Confirma��o',MB_ICONQUESTION+MB_YESNO ) = idyes then
  begin
    DM.cdsEmpresa.Delete;
    DM.cdsEmpresa.ApplyUpdates(0);
    GerenciaBotoes;
  end
  else
  begin
    ShowMessage('Fornecedor N�o Exclu�do');
  end;
    GerenciaBotoes;

end;

procedure TfrmCadEmpresa.BB_PESQUISARClick(Sender: TObject);
begin
  Pesquisa(DM.cdsEmpresa,['R_SOCIAL','FANTASIA','CNPJ'],['Raz�o Social','Fantasia','CNPJ'],
    [25,15,18],'','','','','Empresa','Empresa');

end;

procedure TfrmCadEmpresa.BB_SAIRClick(Sender: TObject);
begin
  DM.cdsEmpresa.Close;
  Close;
end;

procedure TfrmCadEmpresa.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  TDbGrid(Sender).Canvas.font.Color:= clBlack; //aqui � definida a cor da fonte
  if gdSelected in State then
  with (Sender as TDBGrid).Canvas do
  begin
    Brush.Color:=$00F0DAC7; //aqui � definida a cor do fundo
    Font.Style := [fsBold];
    FillRect(Rect);
  end;

  TDbGrid(Sender).DefaultDrawDataCell(Rect, TDbGrid(Sender).columns[datacol].field, State);

end;

end.
