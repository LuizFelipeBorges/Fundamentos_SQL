create table if not exists cursos (
nome varchar(30) not null unique,
descricao text,
carga int unsigned,
totaulas int unsigned,
ano year default '2020'
) default charset=utf8;

desc cursos;

alter table cursos
add column idcurso int first;

alter table cursos
add primary key (idcurso);

create table if not exists test (
nome varchar(30) not null unique,
descricao text
);

drop table test;