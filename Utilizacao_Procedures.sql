EXEC BuscarCarros 
	@ListaIdAdicional = '1, 2, 3, 4, 5',
	@ModalidadePag = '1, 2, 3, 4, 5',
	@ValorMin  = 0.00,
	@ValorMax = 1000000.00,
	@CorId = 1,
	@AnoMin = 2000,
	@AnoMax = 2022;



EXEC BuscarFavoritos @UsuarioId = 1;


EXEC BuscarContatos;




