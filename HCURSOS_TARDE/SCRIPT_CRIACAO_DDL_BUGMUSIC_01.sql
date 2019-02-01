select * from GENEROS;
select * from ALBUNS;
select * from MUSICAS;
select * from CANTORES;
select * from BANDAS;

insert into GENEROS(NOME)
values ('Rock'), ('Sertanejo'), ('Pop')

insert into BANDAS(NOME, ID_GENERO)
values ('Ultraje a Rigor', 1), ('Fernando e Sorocaba', 2), ('Bar�o Vermelho', 3)

insert into ALBUNS(NOME, ID_BANDA)
values ('Recome�o', 1), ('Vendaval', 2), ('Maior Abandonado', 3)

insert into MUSICAS(NOME, ID_ALBUM)
values ('In�til', 1), ('Mim Qul', 2)
	   ,('Paga Pau', 2), ('Baby Suporte', 3)
	   ,('Sem Verer Tocar', 1)
	   ,('Vendavagonha', 3)

insert into CANTORES(NOME)
values ('Roger Moreira'), ('Mingau'), ('Bacalhau'), ('Marcos Kleine')
	  ,('Fernando Zorzanello Bonif�cio'), ('Fernando Fakri de Assis')
	  ,('Fernando Fakri de Assis'), ('Guto Goffi'), ('Maur�cio Barros')
	  ,('Fernando Magalh�es')


insert into BANDAS_CANTORES(ID_CANTOR, ID_BANDA)
values (1, 1), (2, 1), (3, 1), (4, 1)