CREATE PROCEDURE InserirModalidadePag
	@Nome VARCHAR(30)
AS
BEGIN

INSERT INTO Modalidade_Pag(Nome)
	VALUES (@Nome);

END;