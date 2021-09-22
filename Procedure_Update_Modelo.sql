CREATE PROCEDURE EditarModelo
	@ModeloId INT, 
	@Nome VARCHAR(30),
	@MarcaId INT
AS
BEGIN

	UPDATE Modelo
	SET 
		Nome = @Nome,
		MarcaId = @MarcaId
	WHERE Id = @ModeloId;

END;