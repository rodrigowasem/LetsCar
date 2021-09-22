CREATE PROCEDURE InserirModalidadePagCarro
	@CarroId INT, 
	@ModalidadePagId INT
AS
BEGIN

INSERT INTO Modalidade_Pag_Carro(CarroId, ModalidadePagId)
	VALUES (@CarroId, 
			@ModalidadePagId);

END;
