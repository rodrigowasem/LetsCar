CREATE PROCEDURE EditarFavorito
	@FavoritoId INT, 
	@UsuarioId INT, 
	@CarroId INT
AS
BEGIN

	UPDATE Favorito
	SET UsuarioId = @UsuarioId,
		CarroId = @CarroId
	WHERE Id = @FavoritoId;

END;