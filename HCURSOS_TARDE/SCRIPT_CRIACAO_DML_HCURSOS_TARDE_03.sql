insert into ALUNOS(NOME)
values ('Custódio'), ('Holanda'), ('Vinicius'), ('Denis')

select * from ALUNOS

select * from ALUNOS where NOME like '%i%'

update ALUNOS set NOME = 'Matheus Custodio' where ID = 4
update ALUNOS set NOME = 'Matheus Holanda' where ID = 4
update ALUNOS set NOME = 'Vinicios Berrios' where ID = 4
update ALUNOS set NOME = 'Denis de Lima' where ID = 4

select * from ALUNOS where NOME like 'm%'

select * from ALUNOS where NOME like '%o' OR NOME LIKE '%a'
select * from ALUNOS where NOME like '%[o,a]'

select * from ALUNOS where ID > 3 and ID < 5

select * from ALUNOS order by NOME asc

select count(*) as QTD_aLUNOS from ALUNOS

delete from ALUNOS where ID = 2

insert into PROFESSORES(NOME)
values ('Fernando'), ('Helena'), ('Possarle')

select * from PROFESSORES