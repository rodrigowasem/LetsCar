CREATE PROCEDURE InserirCliente
	@Email VARCHAR(256),
	@Nome VARCHAR(50),
	@Sobrenome VARCHAR(100)
AS
BEGIN

INSERT INTO Cliente(Email, Nome, Sobrenome)
	VALUES (@Email, 
			@Nome, 
			@Sobrenome)

END