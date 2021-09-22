CREATE PROCEDURE ExcluirCliente
	@ClienteId INT
AS
BEGIN

DELETE FROM Cliente WHERE Id = @ClienteId

END;