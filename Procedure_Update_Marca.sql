CREATE PROCEDURE EditarMarca
	@MarcaId INT, 
	@Nome VARCHAR(30)
AS
BEGIN

	UPDATE Marca
	SET 
		Nome = @Nome
	WHERE Id = @MarcaId;

END;