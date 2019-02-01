use HCURSOS_TARDE;

select * from PROFESSORES;

insert into PROFESSORES(NOME)
values ('Raquel')

select * from CATEGORIAS;

update CATEGORIAS set NOME = ('Gestão') where ID = 3;

select * from PROFESSORES;
select * from CATEGORIAS;
select * from CURSOS;

insert into CURSOS(NOME, TITULO, ID_CATEGORIA, ID_PROFESSOR)
values ('SQL', 'SQL BÀSICO - PARTE 1', 1, 1), 
	   ('SQL', 'SQL BÀSICO - PARTE 2', 1, 1),
	   ('JAVA', 'JAVA BÁSICO - PARTE 2', 1, 2),
	   ('REACT', 'REACT NATIVE - PARTE 1', 1, 2),
	   ('GESTÂO', 'GESTÃO DE PESSOAS', 3, 3)

-- Retorna os dados das tabelas CURSOS E PROFESSORES relacionando
-- ID_PROFESSOR da tabela CURSOS ao ID da tabela professor
select * from CURSOS, PROFESSORES where CURSOS.ID_PROFESSOR = PROFESSORES.ID;


-- Intersecção entre as tabelas CURSOS E PROFESSORES
select C.NOME, TITULO, P.NOME as NOME_PROFESSOR from CURSOS C
inner join PROFESSORES P on C.ID_PROFESSOR = P.ID;

-- Intersecção entre as tabelas CURSOS E PROFESSORES, trazendo tambem
-- os professores que não tem cursos
select C.NOME, TITULO, CAG.NOME as CATEGORIA_CURSO from CURSOS C
right join CATEGORIAS CAG on C.ID_CATEGORIA = CAG.ID

-- Intersecção entre as tabelas CURSOS E PROFESSORES, trazendo tambem
-- os cursos que não tem professores
select C.NOME, TITULO, P.NOME as NOME_PROFESSOR from CURSOS C
left join PROFESSORES P on C.ID_PROFESSOR = P.ID;

-- Forma mais fácil e dinâmica de escrever consultas
select 
	C.NOME as NOME_CURSOS
	,TITULO 
	,P.NOME as NOME_PROFESSOR 
from 
	-- Esse C é a mesma coisa de escrever "as C" ou "as P", mas de uma forma mais fácil
	CURSOS C left join PROFESSORES P 
on 
	C.ID_PROFESSOR = P.ID;

-- Com os join você pode fazer diversos filtros com and, or, etc
select 
	* 
from 
	CURSOS C right join PROFESSORES P 
on 
	C.ID_PROFESSOR = P.ID
and
	C.NOME like '%s%'


----------------------------------------------

-- Exercicios de prática

-- 01
select CURSOS.*, CATEGORIAS.NOME from CURSOS 
inner join CATEGORIAS on CURSOS.ID_CATEGORIA = CATEGORIAS.ID;


-- 02
select CURSOS.*, CATEGORIAS.NOME from CURSOS
right join CATEGORIAS on CURSOS.ID_CATEGORIA = CATEGORIAS.ID;


-- 03
select CURSOS.*, CATEGORIAS.NOME from CURSOS
left join CATEGORIAS on CURSOS.ID_CATEGORIA = CATEGORIAS.ID;

-- Segunda parte do exercicio

-- 04
select CURSOS.*, CATEGORIAS.NOME from CATEGORIAS
left join CURSOS on  CATEGORIAS.ID = CURSOS.ID_CATEGORIA


-- 05
select CURSOS.*, CATEGORIAS.NOME from CATEGORIAS
right join CURSOS on  CATEGORIAS.ID = CURSOS.ID_CATEGORIA