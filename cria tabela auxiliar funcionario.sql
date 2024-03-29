CREATE TABLE AUX_FUNCIONARIO (
  AUXFU_CODIGO		INTEGER IDENTITY(1,1)	  NOT NULL,
  AUXEM_EMPS_CODIGO	VARCHAR(5)	NULL,
  AUXFU_MATRICULA	VARCHAR(30)	NULL,
  AUXFU_NOME		VARCHAR(100)	NULL,
  AUXFU_DATA_ADMISSAO	DATETIME	NULL,
  AUXFU_DATA_DEMISSAO	DATETIME	NULL,
  AUXFU_PIS		VARCHAR(12)	NULL,
  AUXFU_CPF		VARCHAR(15)	NULL,
  AUXFU_NIS		VARCHAR(12)	NULL,
  AUXFU_DOCUMENTO	VARCHAR(20) 	NULL,
  AUXFU_TIPO_PAGAMENTO	VARCHAR(2)	NULL,
  AUXFU_ISENTO 		VARCHAR(1)	NULL, 
  AUXLO_COD_LOTACAO	VARCHAR(50)	NULL,
  AUXFU_CODHORARIO       VARCHAR(4)      NULL,
  AUXFU_CARGAHOR_DIARIA	NUMERIC(6,0)	NULL,
  AUXFU_CARGAHOR_MENSAL	NUMERIC(6,0)	NULL,
  AUXEM_EMPR_CODIGO	VARCHAR(20)	NULL,
  AUXFU_CARGO		VARCHAR(50)	NULL,
  AUXFU_ENVIA_REP        VARCHAR(1) 	NULL,
  AUXFU_OPERACAO		VARCHAR(1)	NULL,
  AUXLG_MOMENTO		DATETIME	NULL,
  AUXLG_CHAVE_LOG	VARCHAR(55)	NULL,
  AUXFU_ATIVO		VARCHAR(1)	NULL,
  AUXFU_DATA_INIALOCACAO	DATETIME	NULL,
  AUXFU_EMAIL		VARCHAR(100) 	NULL,
  AUXFU_PESS_CATEGORIA	VARCHAR(100) 	NULL,
  AUXFU_NOMEABREVIADO	VARCHAR(50) 	NULL,
  CONSTRAINT PK_AUX_FUNCIONARIO PRIMARY KEY (AUXFU_CODIGO) )

CREATE INDEX ID_AUXLG_CHAVE_LOG_FU ON AUX_FUNCIONARIO (AUXLG_CHAVE_LOG)
GRANT SELECT,INSERT,UPDATE,DELETE ON AUX_FUNCIONARIO TO RL_USUARIO_AUXILIAR
GO

