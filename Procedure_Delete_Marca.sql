CREATE PROCEDURE ExcluirMarca
	@IdMarca INT
AS
BEGIN

DELETE FROM Marca WHERE Id = @IdMarca

END;