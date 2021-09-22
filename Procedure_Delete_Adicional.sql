CREATE PROCEDURE ExcluirAdicional
	@IdAdicional INT
AS
BEGIN

DELETE FROM Adicional WHERE Id = @IdAdicional

END;