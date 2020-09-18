alter table gafanhotos
add column cursopreferido int;

alter table gafanhotos 
add foreign key (cursopreferido)
references cursos(idcurso);

desc gafanhotos;

update gafanhotos set cursopreferido = '6' where id = '1';

select * from gafanhotos;

select gafanhotos.nome, cursos.nome, cursos.ano
from gafanhotos join cursos
on cursos.idcurso = gafanhotos.cursopreferido;

create table gafanhoto_assite_curso(
id int not null auto_increment,
data date,
idgafanhoto int,
idcurso int,
primary key(id),
foreign key (idgafanhoto) references gafanhotos(id),
foreign key (idcurso) references cursos(idcurso)
)default charset = utf8;

insert into gafanhoto_assite_curso values
(default, '2014-03-01', '1', '2');

select * from gafanhoto_assite_curso;

select g.nome, c.nome from  gafanhotos g
join gafanhoto_assite_curso a
on g.id = a.idgafanhoto
join cursos c
on a.idcurso = c.idcurso
order by g.nome;