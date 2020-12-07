program Gerenciador;

uses
  Vcl.Forms,
  uRelatorios in 'Forms\uRelatorios.pas' {frmRelatorios},
  uVendaFiscal in 'Forms\uVendaFiscal.pas' {frmVendaFiscal},
  uPrincipal in 'Forms\uPrincipal.pas' {frmPrincipal},
  uSelecionarCertificado in 'Forms\uSelecionarCertificado.pas' {frSelecionarCertificado},
  uSenha in 'Forms\uSenha.pas' {frmSenha},
  uRemessaProducao in 'Forms\uRemessaProducao.pas' {frmRemessaProducao},
  uProducao in 'Forms\uProducao.pas' {frmProducao},
  U_LIB in 'Forms\U_LIB.pas',
  uBaixaConPag in 'Forms\uBaixaConPag.pas' {frmBaixaConPag},
  uCadAcabamento in 'Forms\uCadAcabamento.pas' {frmCadAcabamento},
  uCadArtigo in 'Forms\uCadArtigo.pas' {frmCadArtigo},
  uCadCategoria in 'Forms\uCadCategoria.pas' {frmCadCategorias},
  uCadCliente in 'Forms\uCadCliente.pas' {frmCadCliente},
  uCadCores in 'Forms\uCadCores.pas' {frmCadCores},
  uCadEmpresa in 'Forms\uCadEmpresa.pas' {frmCadEmpresa},
  uCadFor in 'Forms\uCadFor.pas' {frmCadfor},
  uCadFormaPagto in 'Forms\uCadFormaPagto.pas' {frmCadFormaPagto},
  uCadGrupo in 'Forms\uCadGrupo.pas' {frmCadGrupo},
  uCadGrupoEmpresa in 'Forms\uCadGrupoEmpresa.pas' {frmCadGrupoEmpresa},
  uCadMatPrima in 'Forms\uCadMatPrima.pas' {frmCadMatPrima},
  uCadMesa in 'Forms\uCadMesa.pas' {frmCadMesa},
  uCadPlanoPagto in 'Forms\uCadPlanoPagto.pas' {frmCadPlanosPagto},
  uCadPro in 'Forms\uCadPro.pas' {frmCadPro},
  uCadServicos in 'Forms\uCadServicos.pas' {frmCadServicos},
  uCadTransportadora in 'Forms\uCadTransportadora.pas' {frmCadTransportadora},
  uCadVendendor in 'Forms\uCadVendendor.pas' {frmCadVendedor},
  uCaixaDiarioAnalitico in 'Forms\uCaixaDiarioAnalitico.pas' {frmCaixaDiarioAnalitico},
  uComanda in 'Forms\uComanda.pas' {frmComanda},
  uConfigParamentros in 'Forms\uConfigParamentros.pas' {frmConfigParametros},
  uConfiguraArquivoNfe in 'Forms\uConfiguraArquivoNfe.pas' {frmConfiguraArquivoNFe},
  uConPagComplementarMalharia in 'Forms\uConPagComplementarMalharia.pas' {frmConPagComplementarMalharia},
  uConPagComplementarTingimento in 'Forms\uConPagComplementarTingimento.pas' {frmConPagComplementarTingimento},
  uConsultaCNPJ in 'Forms\uConsultaCNPJ.pas' {frmConsultaCNPJ},
  uConsultaCPF in 'Forms\uConsultaCPF.pas' {frmConsultaCPF},
  uConsultaEstoque in 'Forms\uConsultaEstoque.pas' {frmConsultaEstoque},
  uContasPagar in 'Forms\uContasPagar.pas' {frmContasPagar},
  uContasPagarComplementar in 'Forms\uContasPagarComplementar.pas' {frmContasPagarComplementar},
  uContasPagarLista in 'Forms\uContasPagarLista.pas' {frmContasPagarLista},
  uContasPagarMalharia in 'Forms\uContasPagarMalharia.pas' {frmContasPagarMalharia},
  uContasPagarTingimento in 'Forms\uContasPagarTingimento.pas' {frmContasPagarTingimento},
  UD_PESQUISA in 'Forms\UD_PESQUISA.pas' {FD_PESQUISA},
  uDM in 'Forms\uDM.pas' {DM: TDataModule},
  uDmFiscal in 'Forms\uDmFiscal.pas' {DM_FISCAL: TDataModule},
  uEntradaProduto in 'Forms\uEntradaProduto.pas' {frmEntradaProduto},
  ufrmRelProgramar in 'Forms\ufrmRelProgramar.pas' {frmRelProgramar},
  ufrmStatus in 'Forms\ufrmStatus.pas' {frmStatus},
  uInsertEditContas in 'Forms\uInsertEditContas.pas' {frmInsertEditContas},
  uLogin in 'Forms\uLogin.pas' {frmLogin},
  uManutencaoContasPagar in 'Forms\uManutencaoContasPagar.pas' {frmManutencaoContasPagar},
  uMenu in 'Forms\uMenu.pas' {frmMenu},
  uNFe in 'Forms\uNFe.pas' {frmNotaFiscalEletronica},
  uPesquisaPadrao in 'Forms\uPesquisaPadrao.pas' {frmPesquisaPadrao},
  uPrecoMalharia in 'Forms\uPrecoMalharia.pas' {frmPrecoMalharia},
  uTingimento in 'Forms\uTingimento.pas' {frmTingimento},
  uProgramacao in 'Forms\uProgramacao.pas' {frmProgramacao},
  uQuebraFios in 'Forms\uQuebraFios.pas' {frmQuebraFio},
  uPrecoTinturaria in 'Forms\uPrecoTinturaria.pas' {frmPrecoTinturaria},
  uRelatorioConPag in 'Forms\uRelatorioConPag.pas' {frmRelatorioConPag},
  uRelatorioProdMalharia in 'Forms\uRelatorioProdMalharia.pas' {frmRelatorioProdMalharia};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Gerenciador Fiscall';
  Application.CreateForm(TfrmMenu, frmMenu);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFD_PESQUISA, FD_PESQUISA);
  Application.CreateForm(TfrmRelatorios, frmRelatorios);
  Application.CreateForm(TDM_FISCAL, DM_FISCAL);
  Application.CreateForm(TfrmComanda, frmComanda);
  Application.CreateForm(TfrmNotaFiscalEletronica, frmNotaFiscalEletronica);
  Application.CreateForm(TfrmConfigParametros, frmConfigParametros);
  Application.CreateForm(TfrmConfiguraArquivoNFe, frmConfiguraArquivoNFe);
  Application.CreateForm(TfrSelecionarCertificado, frSelecionarCertificado);
  Application.CreateForm(TfrmStatus, frmStatus);
  Application.CreateForm(TfrmSenha, frmSenha);
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TfrmPesquisaPadrao, frmPesquisaPadrao);
  Application.CreateForm(TfrmCadFormaPagto, frmCadFormaPagto);
  Application.CreateForm(TfrmCadPlanosPagto, frmCadPlanosPagto);
  Application.CreateForm(TfrmCadCliente, frmCadCliente);
  Application.CreateForm(TfrmCadEmpresa, frmCadEmpresa);
  Application.CreateForm(TfrmCadVendedor, frmCadVendedor);
  Application.CreateForm(TfrmConsultaCNPJ, frmConsultaCNPJ);
  Application.CreateForm(TfrmConsultaCPF, frmConsultaCPF);
  Application.CreateForm(TfrmRemessaProducao, frmRemessaProducao);
  Application.CreateForm(TfrmContasPagarMalharia, frmContasPagarMalharia);
  Application.CreateForm(TfrmProducao, frmProducao);
  Application.CreateForm(TfrmBaixaConPag, frmBaixaConPag);
  Application.CreateForm(TfrmCadAcabamento, frmCadAcabamento);
  Application.CreateForm(TfrmCadArtigo, frmCadArtigo);
  Application.CreateForm(TfrmCadCategorias, frmCadCategorias);
  Application.CreateForm(TfrmCadCliente, frmCadCliente);
  Application.CreateForm(TfrmCadCores, frmCadCores);
  Application.CreateForm(TfrmCadEmpresa, frmCadEmpresa);
  Application.CreateForm(TfrmCadfor, frmCadfor);
  Application.CreateForm(TfrmCadFormaPagto, frmCadFormaPagto);
  Application.CreateForm(TfrmCadGrupo, frmCadGrupo);
  Application.CreateForm(TfrmCadGrupoEmpresa, frmCadGrupoEmpresa);
  Application.CreateForm(TfrmCadMatPrima, frmCadMatPrima);
  Application.CreateForm(TfrmCadMesa, frmCadMesa);
  Application.CreateForm(TfrmCadPlanosPagto, frmCadPlanosPagto);
  Application.CreateForm(TfrmCadPro, frmCadPro);
  Application.CreateForm(TfrmCadServicos, frmCadServicos);
  Application.CreateForm(TfrmCadTransportadora, frmCadTransportadora);
  Application.CreateForm(TfrmCadVendedor, frmCadVendedor);
  Application.CreateForm(TfrmCaixaDiarioAnalitico, frmCaixaDiarioAnalitico);
  Application.CreateForm(TfrmComanda, frmComanda);
  Application.CreateForm(TfrmConfigParametros, frmConfigParametros);
  Application.CreateForm(TfrmConfiguraArquivoNFe, frmConfiguraArquivoNFe);
  Application.CreateForm(TfrmConPagComplementarMalharia, frmConPagComplementarMalharia);
  Application.CreateForm(TfrmConPagComplementarTingimento, frmConPagComplementarTingimento);
  Application.CreateForm(TfrmConsultaCNPJ, frmConsultaCNPJ);
  Application.CreateForm(TfrmConsultaCPF, frmConsultaCPF);
  Application.CreateForm(TfrmConsultaEstoque, frmConsultaEstoque);
  Application.CreateForm(TfrmContasPagar, frmContasPagar);
  Application.CreateForm(TfrmContasPagarComplementar, frmContasPagarComplementar);
  Application.CreateForm(TfrmContasPagarLista, frmContasPagarLista);
  Application.CreateForm(TfrmContasPagarMalharia, frmContasPagarMalharia);
  Application.CreateForm(TfrmContasPagarTingimento, frmContasPagarTingimento);
  Application.CreateForm(TFD_PESQUISA, FD_PESQUISA);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TDM_FISCAL, DM_FISCAL);
  Application.CreateForm(TfrmEntradaProduto, frmEntradaProduto);
  Application.CreateForm(TfrmRelProgramar, frmRelProgramar);
  Application.CreateForm(TfrmStatus, frmStatus);
  Application.CreateForm(TfrmInsertEditContas, frmInsertEditContas);
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TfrmManutencaoContasPagar, frmManutencaoContasPagar);
  Application.CreateForm(TfrmMenu, frmMenu);
  Application.CreateForm(TfrmNotaFiscalEletronica, frmNotaFiscalEletronica);
  Application.CreateForm(TfrmPesquisaPadrao, frmPesquisaPadrao);
  Application.CreateForm(TfrmPrecoMalharia, frmPrecoMalharia);
  Application.CreateForm(TfrmTingimento, frmTingimento);
  Application.CreateForm(TfrmProgramacao, frmProgramacao);
  Application.CreateForm(TfrmQuebraFio, frmQuebraFio);
  Application.CreateForm(TfrmPrecoTinturaria, frmPrecoTinturaria);
  Application.CreateForm(TfrmRelatorioConPag, frmRelatorioConPag);
  Application.CreateForm(TfrmRelatorioProdMalharia, frmRelatorioProdMalharia);
  Application.Run;
end.
