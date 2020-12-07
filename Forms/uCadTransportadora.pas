unit uCadTransportadora;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Imaging.jpeg, Vcl.Grids, Vcl.DBGrids, db,
  ACBrBase, ACBrSocket, ACBrCEP;

type
  TfrmCadTransportadora = class(TForm)
    P_DADOS: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBComboBox1: TDBComboBox;
    DBEdit7: TDBEdit;
    Label11: TLabel;
    DBEdit8: TDBEdit;
    Label8: TLabel;
    DBEdit9: TDBEdit;
    Label9: TLabel;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    Label16: TLabel;
    telefone: TLabel;
    BB_NOVO: TBitBtn;
    BB_EDITAR: TBitBtn;
    BB_GRAVAR: TBitBtn;
    BB_CANCELAR: TBitBtn;
    BB_EXCLUIR: TBitBtn;
    BB_PESQUISAR: TBitBtn;
    BB_SAIR: TBitBtn;
    DBNavigator1: TDBNavigator;
    Panel1: TPanel;
    DBText1: TDBText;
    Label10: TLabel;
    Label22: TLabel;
    DBGrid2: TDBGrid;
    ACBrCEP1: TACBrCEP;
    SpeedButton1: TSpeedButton;
    BitBtn1: TBitBtn;
    SpeedButton3: TSpeedButton;
    procedure BB_NOVO1Click(Sender: TObject);
    procedure BB_EDITAR1Click(Sender: TObject);
    procedure BB_CANCELAR1Click(Sender: TObject);
    procedure BB_GRAVAR1Click(Sender: TObject);
    procedure BB_EXCLUIR1Click(Sender: TObject);
    procedure BB_PESQUISAR1Click(Sender: TObject);
    procedure BB_SAIR1Click(Sender: TObject);
    procedure DBEdit2Enter(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBComboBox1Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit11Enter(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
    Procedure GerenCiaBotoes;

  public
    { Public declarations }
    function cgc(num: string): boolean;
    Function TiraPontoeVirgula(sTexto:String):String;
    procedure VerificaEmpresaExiste;

  end;

var
  frmCadTransportadora: TfrmCadTransportadora;
  Tipo : string;

implementation

{$R *.dfm}

uses U_LIB, UD_PESQUISA, uDm, uConsultaCNPJ;

{ TfrmCadTransportadora }

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

procedure TfrmCadTransportadora.BB_CANCELAR1Click(Sender: TObject);
begin
  DM.cdsTransportadora.Cancel;
  GerenCiaBotoes;

end;

procedure TfrmCadTransportadora.BB_EDITAR1Click(Sender: TObject);
begin
  Tipo := 'Edit';
  DM.cdsTransportadora.Edit;
  GerenCiaBotoes;
  DBEdit2.SetFocus;

end;

procedure TfrmCadTransportadora.BB_EXCLUIR1Click(Sender: TObject);
begin
  if Application.MessageBox('Deseja Excluir Este Vendedor ?','Confirma��o',MB_ICONQUESTION+MB_YESNO ) = idyes then
  begin
    DM.cdsTransportadora.Delete;
    DM.cdsTransportadora.ApplyUpdates(0);
    GerenciaBotoes;
  end
  else
  begin
    ShowMessage('Vendedor N�o Exclu�do');
  end;
    GerenciaBotoes;

end;

procedure TfrmCadTransportadora.BB_GRAVAR1Click(Sender: TObject);
begin
  if Tipo = 'Insert' then
  begin
    DM.cdsDinamica.Close;
    DM.cdsDinamica.IndexFieldNames:='';
    DM.cdsDinamica.CommandText := ' SELECT MAX(ID_TRANSPORTADORA) FROM TB_TRANSPORTADORA ';
    DM.cdsDinamica.Open;

    DM.cdsTransportadoraID_TRANSPORTADORA.AsInteger := DM.cdsDinamica.Fields[0].AsInteger +1;

    if DM.cdsTransportadora.ApplyUpdates(0) <> 0 then
    begin
      ShowMessage('O Sistema n�o conseguiu gravar este Registro. Tente novamente ou contate o Suporte.');
      BB_GRAVAR.SetFocus;
    end
    else
    begin
      DM.cdsTransportadora.ApplyUpdates(0);
      DM.cdsTransportadora.Refresh;
      GerenCiaBotoes;
    end;

  end;


  if Tipo = 'Edit' then
  begin
    if DM.cdsTransportadora.ApplyUpdates(0) <> 0 then
    begin
      ShowMessage('O Sistema n�o conseguiu gravar este Registro. Tente novamente ou contate o Suporte.');
      BB_GRAVAR.SetFocus;
    end
    else
    begin
      DM.cdsTransportadora.ApplyUpdates(0);
      DM.cdsTransportadora.Refresh;
      GerenCiaBotoes;
    end;

  end;

end;

procedure TfrmCadTransportadora.BB_NOVO1Click(Sender: TObject);
begin
  Tipo := 'Insert';
  DM.cdsTransportadora.Open;
  DM.cdsTransportadora.Insert;
  GerenCiaBotoes;
  DBEdit2.SetFocus;
end;

procedure TfrmCadTransportadora.BB_PESQUISAR1Click(Sender: TObject);
begin
  Pesquisa(DM.cdsTransportadora,['NOME_TRANSPORTADORA','ID_TRANSPORTADORA'],['Nome','C�digo'],
    [30,8],'','','','','Transportadora','Transportadora');

end;

procedure TfrmCadTransportadora.BB_SAIR1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadTransportadora.BitBtn1Click(Sender: TObject);
var i : integer;
begin
  for I := 0 to ACBrCEP1.Enderecos.Count -1 do
  begiN
    DM.cdsTransportadoraCEP.AsString := ACBrCEP1.Enderecos[i].CEP;
    if DM.cdsTransportadoraENDERECO.IsNull then
      DM.cdsTransportadoraENDERECO.AsString := ACBrCEP1.Enderecos[i].Tipo_Logradouro+' '+ACBrCEP1.Enderecos[i].Logradouro;
//    if DM.cdsEmpresaCOMPLEMENTO.IsNull then
//      DM.cdsEmpresaCOMPLEMENTO.AsString := ACBrCEP1.Enderecos[i].Complemento;
    DM.cdsTransportadoraCIDADE_1.AsString := RemoveAcentos(ACBrCEP1.Enderecos[i].Municipio);
//    DM.cdsTransportadoraCODIGO_MUNIC.AsString := RemoveAcentos(ACBrCEP1.Enderecos[i].IBGE_Municipio);
    DM.cdsTransportadoraUF_1.AsString := ACBrCEP1.Enderecos[i].UF;
    if DM.cdsTransportadoraBAIRRO.IsNull then
      DM.cdsTransportadoraBAIRRO.AsString := ACBrCEP1.Enderecos[i].Bairro;
    if DM.cdsTransportadoraUF_1.Value <> '' then
    begin
      DM.cdsDinamica.Close;
      DM.cdsDinamica.IndexFieldNames:='';
      DM.cdsDinamica.CommandText := ' SELECT M.codigo_munic,M.nome,M.UF,M.DDD FROM TB_MUNICIPIOS M WHERE M.UF ='+QuotedStr(DM.cdsTransportadoraUF_1.AsString)+
                                    ' AND upper(M.nome) ='+QuotedStr(DBEdit6.Text);
      DM.cdsDinamica.Open;
//      Pesquisa(DM.cdsDinamica,['NOME','UF'],['Municipios','Estado'],[50,2],'','','','','Municipios','Municipios');
      DM.cdsTransportadoraCODIGO_MUNIC.AsString := DM.cdsDinamica.Fields[0].AsString;
      DBComboBox1.Enabled := False
    end
    else
    begin
      DBComboBox1.Enabled := True;
    end;
  end;

end;

function TfrmCadTransportadora.cgc(num: string): boolean;
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


procedure TfrmCadTransportadora.DBComboBox1Exit(Sender: TObject);
begin
  if DBComboBox1.Text = '' then
  begin
    ShowMessage('Informe o Estado');
    DBComboBox1.SetFocus;
  end
  else
  begin
    DM.cdsPesquisaCidade.Close;
    DM.cdsPesquisaCidade.Params[0].AsString := DBComboBox1.Text;
    DM.cdsPesquisaCidade.Open;

    Pesquisa(DM.cdsPesquisaCidade,['NOME','UF'],['Municipios','Estado'],[50,2],'','','','','Municipios','Municipios');
    DM.cdsTransportadoraCODIGO_MUNIC.AsString := DM.cdsPesquisaCidadeCODIGO_MUNIC.AsString;
    DM.cdsTransportadoraCIDADE_1.AsString     := DM.cdsPesquisaCidadeNOME.AsString;
    DM.cdsTransportadoraDDD.AsString          := DM.cdsPesquisaCidadeDDD.AsString;
    BB_GRAVAR.SetFocus;
  end;

end;

procedure TfrmCadTransportadora.DBEdit11Enter(Sender: TObject);
begin
  DM.cdsTransportadoraTELEFONE.EditMask := '####-####';
end;

procedure TfrmCadTransportadora.DBEdit2Enter(Sender: TObject);
begin
  DM.cdsTransportadoraCNPJ.EditMask := '##.###.###/####-##';
end;

procedure TfrmCadTransportadora.DBEdit2Exit(Sender: TObject);
var
i,j : integer;
texto,textofinal,result:string;

begin
texto := dbedit2.text;
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
    DM.cdsTransportadora.Cancel;
    GerenCiaBotoes;
    Exit;
  end;
    VerificaEmpresaExiste;

    If not cgc(result) then  //Se a fun�ao CGC retornar Falso, Nao libera o Focus
    Begin
      ShowMessage('CNPJ Inv�lido !!');
      DBEdit2.SetFocus;
    END;

end;

procedure TfrmCadTransportadora.DBEdit7Exit(Sender: TObject);
begin
  ACBrCEP1.BuscarPorCEP(DM.cdsTransportadoraCEP.AsString);
end;

procedure TfrmCadTransportadora.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  frmCadTransportadora := NIL;
end;

procedure TfrmCadTransportadora.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;

end;

procedure TfrmCadTransportadora.FormShow(Sender: TObject);
begin
  DM.cdsTransportadora.Close;
  DM.cdsTransportadora.Open;
  GerenCiaBotoes;
end;

procedure TfrmCadTransportadora.GerenCiaBotoes;
begin
  BB_NOVO.Enabled := not (DM.cdsTransportadora.State in dsEditModes);
  BB_GRAVAR.Enabled := NOT BB_NOVO.Enabled;
  BB_EXCLUIR.Enabled := BB_NOVO.Enabled and not (DM.cdsTransportadora.IsEmpty);
  BB_CANCELAR.Enabled := BB_GRAVAR.Enabled;
  BB_EDITAR.Enabled := BB_EXCLUIR.Enabled;
  BB_SAIR.Enabled := BB_NOVO.Enabled;
  BB_PESQUISAR.Enabled:= BB_NOVO.Enabled;
  P_DADOS.Enabled := not BB_NOVO.Enabled;
end;

procedure TfrmCadTransportadora.SpeedButton1Click(Sender: TObject);
begin
  frmConsultaCNPJ.ClienteFornecedor := 'Transportadora';
  frmConsultaCNPJ.ShowModal;
end;

procedure TfrmCadTransportadora.SpeedButton3Click(Sender: TObject);
begin
  Close;
end;

function TfrmCadTransportadora.TiraPontoeVirgula(sTexto: String): String;
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

procedure TfrmCadTransportadora.VerificaEmpresaExiste;
var
Codigo, Nome : string;
begin
  if Tipo = 'Insert' then
  begin
    DM.cdsDinamica.Close;
    DM.cdsDinamica.IndexFieldNames:='';
    DM.cdsDinamica.CommandText:='SELECT  T.ID_TRANSPORTADORA, T.NOME_TRANSPORTADORA FROM TB_TRANSPORTADORA T WHERE T.CNPJ ='+QuotedStr(DBEdit2.Text);
    DM.cdsDinamica.Open;

    codigo:= DM.cdsDinamica.Fields[0].AsString;
    Nome  := DM.cdsDinamica.Fields[1].AsString;
    if DM.cdsDinamica.IsEmpty then
    begin

    end
    else
    begin
      ShowMessage('             Transportadora J� Cadastrada :  '+#13+
                  '                                         '+#13+
                  'C�digo '+Codigo+' Nome : '+Nome);
      DM.cdsEmpresa.Cancel;
      GerenCiaBotoes;
      Exit;
    end;
end;

end;

end.










