CREATE PROCEDURE InserirAdicional
	@Descricao VARCHAR(30)
AS
BEGIN

INSERT INTO Adicional(Descricao)
	VALUES (@Descricao)

END


