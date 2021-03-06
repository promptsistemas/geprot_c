program GeProt;

uses
  Vcl.Forms,
  uMenu in 'Forms\uMenu.pas' {frmMenu},
  uDM in 'Forms\uDM.pas' {DM: TDataModule},
  uCadFor in 'Forms\uCadFor.pas' {frmCadfor},
  U_LIB in 'Forms\U_LIB.pas',
  UD_PESQUISA in 'Forms\UD_PESQUISA.pas' {FD_PESQUISA},
  uCadGrupo in 'Forms\uCadGrupo.pas' {frmCadGrupo},
  uCadPro in 'Forms\uCadPro.pas' {frmCadPro},
  uEntradaProduto in 'Forms\uEntradaProduto.pas' {frmEntradaProduto},
  uConsultaEstoque in 'Forms\uConsultaEstoque.pas' {frmConsultaEstoque},
  uRelatorios in 'Forms\uRelatorios.pas' {frmRelatorios},
  uVendaFiscal in 'Forms\uVendaFiscal.pas' {frmVendaFiscal},
  uPrincipal in 'Forms\uPrincipal.pas' {frmPrincipal},
  uDmFiscal in 'Forms\uDmFiscal.pas' {DM_FISCAL: TDataModule},
  uCadCliente in 'Forms\uCadCliente.pas' {frmCadCliente},
  uConsultaCNPJ in 'Forms\uConsultaCNPJ.pas' {frmConsultaCNPJ},
  uConsultaCPF in 'Forms\uConsultaCPF.pas' {frmConsultaCPF},
  Vcl.Themes,
  Vcl.Styles,
  Windows,
  uCadVendendor in 'Forms\uCadVendendor.pas' {frmCadVendedor},
  uCadEmpresa in 'Forms\uCadEmpresa.pas' {frmCadEmpresa},
  uCadPlanoPagto in 'Forms\uCadPlanoPagto.pas' {frmCadPlanosPagto},
  uCadFormaPagto in 'Forms\uCadFormaPagto.pas' {frmCadFormaPagto},
  uPesquisaPadrao in 'Forms\uPesquisaPadrao.pas' {frmPesquisaPadrao},
  uConfigParamentros in 'Forms\uConfigParamentros.pas' {frmConfigParametros},
  uConfiguraArquivoNfe in 'Forms\uConfiguraArquivoNfe.pas' {frmConfiguraArquivoNFe},
  uSelecionarCertificado in 'Forms\uSelecionarCertificado.pas' {frSelecionarCertificado},
  uLogin in 'Forms\uLogin.pas' {frmLogin},
  uSenha in 'Forms\uSenha.pas' {frmSenha},
  uNFe in 'Forms\uNFe.pas' {frmNotaFiscalEletronica},
  ufrmStatus in 'Forms\ufrmStatus.pas' {frmStatus},
  uComanda in 'Forms\uComanda.pas' {frmComanda},
  uCaixaDiarioAnalitico in 'Forms\uCaixaDiarioAnalitico.pas' {frmCaixaDiarioAnalitico},
  uCadMesa in 'Forms\uCadMesa.pas' {frmCadMesa},
  uCadTransportadora in 'Forms\uCadTransportadora.pas' {frmCadTransportadora},
  uCadArtigo in 'Forms\uCadArtigo.pas' {frmCadArtigo},
  uCadMatPrima in 'Forms\uCadMatPrima.pas' {frmCadMatPrima},
  uProducao in 'Forms\uProducao.pas' {frmProducao},
  uCadCategoria in 'Forms\uCadCategoria.pas' {frmCadCategorias},
  uRemessaProducao in 'Forms\uRemessaProducao.pas' {frmRemessaProducao},
  uContasPagar in 'Forms\uContasPagar.pas' {frmContasPagar},
  uContasPagarComplementar in 'Forms\uContasPagarComplementar.pas' {frmContasPagarComplementar},
  uContasPagarMalharia in 'Forms\uContasPagarMalharia.pas' {frmContasPagarMalharia},
  uConPagComplementarMalharia in 'Forms\uConPagComplementarMalharia.pas' {frmConPagComplementarMalharia},
  uPrecoMalharia in 'Forms\uPrecoMalharia.pas' {frmPrecoMalharia},
  uCadCores in 'Forms\uCadCores.pas' {frmCadCores},
  uPrecoTinturaria in 'Forms\uPrecoTinturaria.pas' {frmPrecoTinturaria},
  uCadGrupoEmpresa in 'Forms\uCadGrupoEmpresa.pas' {frmCadGrupoEmpresa},
  uCadAcabamento in 'Forms\uCadAcabamento.pas' {frmCadAcabamento},
  uProgramacao in 'Forms\uProgramacao.pas' {frmProgramacao},
  uContasPagarLista in 'Forms\uContasPagarLista.pas' {frmContasPagarLista},
  uBaixaConPag in 'Forms\uBaixaConPag.pas' {frmBaixaConPag},
  uRelatorioConPag in 'Forms\uRelatorioConPag.pas' {frmRelatorioConPag},
  uManutencaoContasPagar in 'Forms\uManutencaoContasPagar.pas' {frmManutencaoContasPagar},
  uInsertEditContas in 'Forms\uInsertEditContas.pas' {frmInsertEditContas},
  uTingimento in 'Forms\uTingimento.pas' {frmTingimento},
  uContasPagarTingimento in 'Forms\uContasPagarTingimento.pas' {frmContasPagarTingimento},
  uConPagComplementarTingimento in 'Forms\uConPagComplementarTingimento.pas' {frmConPagComplementarTingimento},
  uRelatorioProdMalharia in 'Forms\uRelatorioProdMalharia.pas' {frmRelatorioProdMalharia},
  uCadServicos in 'Forms\uCadServicos.pas' {frmCadServicos},
  uQuebraFios in 'Forms\uQuebraFios.pas' {frmQuebraFio},
  ufrmRelProgramar in 'Forms\ufrmRelProgramar.pas' {frmRelProgramar},
  uFechamento in 'Forms\uFechamento.pas' {frmFechamento},
  uReativaProducao in 'Forms\uReativaProducao.pas' {frmReativaProducao},
  uReativaRemessa in 'Forms\uReativaRemessa.pas' {frmReativaRemessa},
  uReativaPrgTinturaria in 'Forms\uReativaPrgTinturaria.pas' {frmReativaPrgTinturaria},
  uTabelaFretes in 'Forms\uTabelaFretes.pas' {frmTabelaFretes};

var
  Hand: THandle;


{$R *.res}

begin
 Hand := FindWindow('TfrmMenu', nil);
  if Hand <> 0 then
  begin { J� est� aberto }
    Application.MessageBox('Sistema J� Est� Sendo Executado.' , 'Aviso.', MB_OK);
    if not IsWindowVisible(Hand) then
      ShowWindow(Hand, SW_RESTORE);
      SetForegroundWindow(Hand);
      Application.Terminate;
  end;
begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'GeProt - Gerenciador de Produ��o T�xtil';
  Application.CreateForm(TfrmMenu, frmMenu);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFD_PESQUISA, FD_PESQUISA);
  Application.CreateForm(TfrmRelatorios, frmRelatorios);
  Application.CreateForm(TDM_FISCAL, DM_FISCAL);
  Application.CreateForm(TfrmConsultaCNPJ, frmConsultaCNPJ);
  Application.CreateForm(TfrmConsultaCPF, frmConsultaCPF);
  Application.CreateForm(TfrmPesquisaPadrao, frmPesquisaPadrao);
  Application.CreateForm(TfrSelecionarCertificado, frSelecionarCertificado);
  Application.CreateForm(TfrmSenha, frmSenha);
  Application.CreateForm(TfrmStatus, frmStatus);
  Application.Run;
end;
end.
