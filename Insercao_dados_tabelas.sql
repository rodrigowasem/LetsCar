EXEC InserirMarca @Nome = 'Toyota';  
EXEC InserirMarca @Nome = 'Volkswagen';  
EXEC InserirMarca @Nome = 'Ford';  
EXEC InserirMarca @Nome = 'Honda';  
EXEC InserirMarca @Nome = 'Nissan';  
EXEC InserirMarca @Nome = 'Chevrolet';

select * from Marca;



EXEC InserirModalidadePag @Nome = 'Dinheiro';
EXEC InserirModalidadePag @Nome = 'Cartão de Crédito';
EXEC InserirModalidadePag @Nome = 'Cartão de Débito';
EXEC InserirModalidadePag @Nome = 'Boleto Bancário';
EXEC InserirModalidadePag @Nome = 'Pix';


select * from Modalidade_Pag;



EXEC InserirCor @NomeCor = 'Branco';
EXEC InserirCor @NomeCor = 'Preto';
EXEC InserirCor @NomeCor = 'Prata';
EXEC InserirCor @NomeCor = 'Azul';
EXEC InserirCor @NomeCor = 'Vermelho';



select * from Cor;



EXEC InserirAdicional @Descricao = 'Air Bag';
EXEC InserirAdicional @Descricao = 'Ar Condicionado';
EXEC InserirAdicional @Descricao = 'Banco de Couro';
EXEC InserirAdicional @Descricao = 'Direção Elétrica';
EXEC InserirAdicional @Descricao = 'Rodas de Liga Leve';
EXEC InserirAdicional @Descricao = 'Travas Elétricas';
EXEC InserirAdicional @Descricao = 'Retrovisor Elétrico';
EXEC InserirAdicional @Descricao = 'Alarme';


select * from Adicional;

EXEC InserirModelo @MarcaId = 4, @Nome = 'CIVIC 2.0 EXL SEDAN 16V';
EXEC InserirModelo @MarcaId = 4, @Nome = 'HR-V 1.8 EX 16V';
EXEC InserirModelo @MarcaId = 1, @Nome = 'HILUX SW4 2.8 SRX 4X4 TDI 16V';
EXEC InserirModelo @MarcaId = 1, @Nome = 'RAV4 2.5 SX HYBRID 4X4';
EXEC InserirModelo @MarcaId = 5, @Nome = 'KICKS 1.6 ADVANCE CVT';
EXEC InserirModelo @MarcaId = 5, @Nome = 'KICKS 1.6 SV 16V';


select * from Modelo;


EXEC InserirCarro @ModeloId = 1, @CorId = 1, @Ano = 2013, @Valor = 60000.00;
EXEC InserirCarro @ModeloId = 3, @CorId = 1, @Ano = 2015, @Valor = 98000.00;
EXEC InserirCarro @ModeloId = 2, @CorId = 3, @Ano = 2010, @Valor = 75000.00;
EXEC InserirCarro @ModeloId = 6, @CorId = 4, @Ano = 2016, @Valor = 100000.00;
EXEC InserirCarro @ModeloId = 4, @CorId = 2, @Ano = 2020, @Valor = 130000.00;


select * from Carro;


EXEC InserirModalidadePagCarro @CarroId = 1, @ModalidadePagId = 1;
EXEC InserirModalidadePagCarro @CarroId = 1, @ModalidadePagId = 2;
EXEC InserirModalidadePagCarro @CarroId = 1, @ModalidadePagId = 3;
EXEC InserirModalidadePagCarro @CarroId = 1, @ModalidadePagId = 4;
EXEC InserirModalidadePagCarro @CarroId = 1, @ModalidadePagId = 5;

EXEC InserirModalidadePagCarro @CarroId = 2, @ModalidadePagId = 1;
EXEC InserirModalidadePagCarro @CarroId = 2, @ModalidadePagId = 2;
EXEC InserirModalidadePagCarro @CarroId = 2, @ModalidadePagId = 4;
EXEC InserirModalidadePagCarro @CarroId = 2, @ModalidadePagId = 5;

EXEC InserirModalidadePagCarro @CarroId = 3, @ModalidadePagId = 1;
EXEC InserirModalidadePagCarro @CarroId = 3, @ModalidadePagId = 2;
EXEC InserirModalidadePagCarro @CarroId = 3, @ModalidadePagId = 4;
EXEC InserirModalidadePagCarro @CarroId = 3, @ModalidadePagId = 5;

EXEC InserirModalidadePagCarro @CarroId = 4, @ModalidadePagId = 1;
EXEC InserirModalidadePagCarro @CarroId = 4, @ModalidadePagId = 2;
EXEC InserirModalidadePagCarro @CarroId = 4, @ModalidadePagId = 3;
EXEC InserirModalidadePagCarro @CarroId = 4, @ModalidadePagId = 4;
EXEC InserirModalidadePagCarro @CarroId = 4, @ModalidadePagId = 5;

EXEC InserirModalidadePagCarro @CarroId = 5, @ModalidadePagId = 4;
EXEC InserirModalidadePagCarro @CarroId = 5, @ModalidadePagId = 5;

select * from Modalidade_Pag_Carro;


EXEC InserirAdicionalCarro @CarroId = 1, @AdicionalId = 1;
EXEC InserirAdicionalCarro @CarroId = 1, @AdicionalId = 2;
EXEC InserirAdicionalCarro @CarroId = 1, @AdicionalId = 3;
EXEC InserirAdicionalCarro @CarroId = 1, @AdicionalId = 4;
EXEC InserirAdicionalCarro @CarroId = 1, @AdicionalId = 5;
EXEC InserirAdicionalCarro @CarroId = 1, @AdicionalId = 6;
EXEC InserirAdicionalCarro @CarroId = 1, @AdicionalId = 7;
EXEC InserirAdicionalCarro @CarroId = 1, @AdicionalId = 8;

EXEC InserirAdicionalCarro @CarroId = 2, @AdicionalId = 1;
EXEC InserirAdicionalCarro @CarroId = 2, @AdicionalId = 3;
EXEC InserirAdicionalCarro @CarroId = 2, @AdicionalId = 8;
EXEC InserirAdicionalCarro @CarroId = 2, @AdicionalId = 6;
EXEC InserirAdicionalCarro @CarroId = 2, @AdicionalId = 7;
EXEC InserirAdicionalCarro @CarroId = 2, @AdicionalId = 5;
EXEC InserirAdicionalCarro @CarroId = 2, @AdicionalId = 2;

EXEC InserirAdicionalCarro @CarroId = 3, @AdicionalId = 2;
EXEC InserirAdicionalCarro @CarroId = 3, @AdicionalId = 3;
EXEC InserirAdicionalCarro @CarroId = 3, @AdicionalId = 4;
EXEC InserirAdicionalCarro @CarroId = 3, @AdicionalId = 6;
EXEC InserirAdicionalCarro @CarroId = 3, @AdicionalId = 7;
EXEC InserirAdicionalCarro @CarroId = 3, @AdicionalId = 8;
EXEC InserirAdicionalCarro @CarroId = 3, @AdicionalId = 1;


EXEC InserirAdicionalCarro @CarroId = 5, @AdicionalId = 6;
EXEC InserirAdicionalCarro @CarroId = 5, @AdicionalId = 5;
EXEC InserirAdicionalCarro @CarroId = 5, @AdicionalId = 4;
EXEC InserirAdicionalCarro @CarroId = 5, @AdicionalId = 3;
EXEC InserirAdicionalCarro @CarroId = 5, @AdicionalId = 2;
EXEC InserirAdicionalCarro @CarroId = 5, @AdicionalId = 8;



select * from Adicional_Carro;


EXEC InserirCliente @Email = 'igowasem@gmail.com', @Nome = 'Rodrigo', @Sobrenome = 'Wasem';
EXEC InserirCliente @Email = 'vini@teste.com', @Nome = 'Vinícios', @Sobrenome = 'Teste';
EXEC InserirCliente @Email = 'paulo@teste.com', @Nome = 'Paulo', @Sobrenome = 'Teste';
EXEC InserirCliente @Email = 'anderson@teste.com', @Nome = 'Anderson', @Sobrenome = 'Teste';
EXEC InserirCliente @Email = 'marco@teste.com', @Nome = 'Marco', @Sobrenome = 'Teste';


select * from Cliente;


EXEC InserirUsuario @ClienteId = 1, @Senha = '12345678', @DataNasc = '19931025 18:45:01';


SELECT * FROM Usuario


EXEC InserirFavorito @UsuarioId = 1, @CarroId = 3;
EXEC InserirFavorito @UsuarioId = 1, @CarroId = 5;


SELECT * FROM Favorito


EXEC InserirContato @CarroId = 1, @ClienteId = 2, @Mensagem = 'Testetetetetetettetee1';
EXEC InserirContato @CarroId = 5, @ClienteId = 2, @Mensagem = 'Testetetetetetettetee2';
EXEC InserirContato @CarroId = 3, @ClienteId = 5, @Mensagem = 'Testetetetetetettetee3';
EXEC InserirContato @CarroId = 1, @ClienteId = 1, @Mensagem = 'Testetetetetetettetee4';


select * from Contato





