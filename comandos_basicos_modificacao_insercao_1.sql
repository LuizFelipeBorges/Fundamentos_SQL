INSERT INTO pessoas VALUES 
(default, 'Adalgiza', '1930-11-02', 'F', '63.2', '1.75', 'Irlanda');

select * from pessoas;

alter table pessoas
add column profissao varchar(20) not null default '' after nome;

alter table pessoas
change column profissao prof varchar(20);

alter table pessoas
modify profissao varchar(20) not null default '' after nome;

alter table pessoas
add codigo int first;

desc pessoas;

alter table pessoas
drop column profissao;

alter table pessoas
rename to gafanhotos;

alter table gafanhotos
rename to pessoas;
