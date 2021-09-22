CREATE PROCEDURE InserirContato
	@CarroId INT,
	@ClienteId INT,
	@Mensagem VARCHAR(500)
AS
BEGIN

INSERT INTO Contato(CarroId, ClienteId, Mensagem)
	VALUES (@CarroId, 
			@ClienteId,
			@Mensagem)

END