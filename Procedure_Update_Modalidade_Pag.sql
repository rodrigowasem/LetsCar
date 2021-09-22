CREATE PROCEDURE EditarModalidadePag
	@ModalidadePag INT, 
	@Nome VARCHAR(30)
AS
BEGIN

	UPDATE Modalidade_Pag
	SET 
		Nome = @Nome
	WHERE Id = @ModalidadePag;

END;