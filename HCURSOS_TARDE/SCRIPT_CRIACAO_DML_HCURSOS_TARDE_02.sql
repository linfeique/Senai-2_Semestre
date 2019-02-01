-- Insere novos dados na tabela e coluna escolhida
insert into CATEGORIAS(NOME)
values ('Desenvolvimento')

insert into CATEGORIAS(NOME)
values ('Informatica')

-- Insere os valores na ordem da tabela
insert into CATEGORIAS
values ('Modelagem')

-- Insere disversos valores na mesma coluna
insert into CATEGORIAS(NOME)
values ('Design'), ('Marketing')

-- Seleciona dados pelo id ou seleciona tudo
select * FROM CATEGORIAS
select NOME FROM CATEGORIAS WHERE ID = '3'

-- Mostra os campos em ascendente (asc) ou descendente (desc)
select * from CATEGORIAS order by ID asc
select * from CATEGORIAS order by NOME desc

-- Seleciona dados filtrando pelo where
select * from CATEGORIAS where ID = 4 or ID = 2

insert into CATEGORIAS(NOME)
values ('')

-- Atualiza dados da coluna uzando filtrando pelo id NUNCA DEIXE DE UTILIZAR O WHERE
update CATEGORIAS SET NOME = 'Outros' where ID = 6

-- Deleta dados filtrando pelo id NUNCA DEIXE DE UTILIZAR O WHERE
delete from CATEGORIAS where ID = 6

-- Traz todos os registros que contem a letra 'e' ou qualquer outra letra
select * from CATEGORIAS where NOME like '%e%'

-- Traz todos os registros que terminem com letra 'n' ou qualquer outra
select * from CATEGORIAS where NOME like '%n'

-- Traz todos os registros que comecem com letra 'd' ou qualquer outra
select * from CATEGORIAS where NOME like 'd%'

-- Seleciona valores em um intervalo
select * from CATEGORIAS where ID >= 2 and ID < 4

-- Seleciona valores em um intervalo só que com outra sintaxe e ele traz o 3 e o 5 tambem
select * from CATEGORIAS where ID between 3 and 5

-- Seleciona diversos valores sem a necessidade do comando OR
select * from CATEGORIAS where ID IN(3,4,2)

-- Seleciona os dados pelos primeiros ou ultimos
select top 2 * from CATEGORIAS order by ID 

select count(*) as QNTD_DADOS from CATEGORIAS

select * from CATEGORIAS where not ID = 3

select * from CATEGORIAS where ID <> 3

-- Retorna dados por ordem alfabetica ou não
select * from CATEGORIAS order by NOME desc
