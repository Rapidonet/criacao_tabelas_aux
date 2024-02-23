CREATE TABLE AUX_LOTACAO (
  AUXLO_CODIGO		INTEGER IDENTITY(1,1)	  NOT NULL,
  AUXEM_EMPS_CODIGO	VARCHAR(5)	NULL,
  AUXLO_COD_LOTACAO	VARCHAR(50)	NULL,
  AUXLO_DESCR_LOTACAO	VARCHAR(100)	NULL,
  AUXLO_OPERACAO		VARCHAR(1)	NULL,
  AUXLG_MOMENTO		DATETIME	NULL,
  AUXLG_CHAVE_LOG	VARCHAR(55)	NULL,

  CONSTRAINT PK_AUX_LOTACAO PRIMARY KEY (AUXLO_CODIGO) )

CREATE INDEX ID_AUXLG_CHAVE_LOG_LO ON AUX_LOTACAO (AUXLG_CHAVE_LOG)
GRANT SELECT,INSERT,UPDATE,DELETE ON AUX_LOTACAO TO RL_USUARIO_AUXILIAR
GO