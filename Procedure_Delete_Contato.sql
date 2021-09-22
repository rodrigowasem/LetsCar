CREATE PROCEDURE ExcluirContato
	@CarroId INT,
	@ClienteId INT
AS
BEGIN

DELETE FROM Contato WHERE CarroId = @CarroId AND ClienteId = @ClienteId

END;