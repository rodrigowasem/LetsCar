CREATE PROCEDURE ExcluirModalidadePagCarro
	@ModalidadePagCarroId INT
AS
BEGIN

DELETE FROM Modalidade_Pag_Carro WHERE Id = @ModalidadePagCarroId

END;