select * from cursos
order by nome desc;

select ano, nome, carga from cursos
order by ano, nome;

select nome, descricao, ano from cursos
where ano <= '2015'
order by ano, nome;

select nome, descricao, ano from cursos
where ano between '2014' and '2016'
order by ano desc, nome asc;

select nome, descricao, ano from cursos
where ano in ('2014', '2016')
order by ano, nome;

select nome, carga, totaulas from cursos
where carga > 35 and totaulas <30;

select * from cursos
where nome not like '%a%'
order by ano, nome;

select * from cursos
where nome like 'ph_%';

select distinct nacionalidade from gafanhotos
order by nacionalidade;

select count(*) from cursos where carga > 40;

select nome, max(carga) from cursos where ano < 2014;

select totaulas, count(*) from cursos
group by totaulas
order by totaulas;