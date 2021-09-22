CREATE PROCEDURE EditarAdicional
	@IdAdicional INT, @Descricao VARCHAR(30)
AS
BEGIN

	UPDATE Adicional
	SET Descricao = @Descricao
	WHERE Id = @IdAdicional;

END;