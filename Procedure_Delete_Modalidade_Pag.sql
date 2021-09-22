CREATE PROCEDURE ExcluirModalidadePag
	@IdModalidadePag INT
AS
BEGIN

DELETE FROM Modalidade_Pag WHERE Id = @IdModalidadePag

END;