CREATE PROCEDURE EditarModalidadePagCarro
	@ModalidadePagCarro INT, 
	@CarroId INT,
	@ModalidadePagId INT
AS
BEGIN

	UPDATE Modalidade_Pag_Carro
	SET 
		CarroId = @CarroId,
		ModalidadePagId = @ModalidadePagId
	WHERE Id = @ModalidadePagCarro;

END;