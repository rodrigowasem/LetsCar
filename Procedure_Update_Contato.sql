CREATE PROCEDURE EditarContato
	@ContatoId INT,
	@CarroId INT,
	@ClienteId INT
AS
BEGIN

	UPDATE Contato
	SET CarroId = @CarroId,
		ClienteId = @ClienteId
	WHERE Id = @ContatoId;

END;