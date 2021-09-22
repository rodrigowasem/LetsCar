CREATE PROCEDURE InserirUsuario
	@ClienteId INT, 
	@Senha VARCHAR(8), 
	@DataNasc DATETIME
AS
BEGIN

INSERT INTO Usuario(ClienteId, Senha, DataNasc)
	VALUES (@ClienteId, 
			@Senha, 
			@DataNasc);

END;