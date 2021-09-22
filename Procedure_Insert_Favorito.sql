CREATE PROCEDURE InserirFavorito
	@UsuarioId INT,
	@CarroId INT
AS
BEGIN

INSERT INTO Favorito(UsuarioId, CarroId)
	VALUES (@UsuarioId, @CarroId)

END; 
