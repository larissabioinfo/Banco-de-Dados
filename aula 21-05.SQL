create database aluno_cursos; #CRIAR BANCO DE DADOS 
use aluno_cursos;

#CRIAR TABELA COM SEUS ATRIBUTOS 
create table aluno_cursos (
 	id_aluno int primary key auto_increment,
 	id_curso int ,
 	nota varchar (100),
    foreign key (id_curso) references cursos(id_curso)); #ESTOU REFERENCIANDO OUTRA TABELA 
    
#CRIA UMA TABELA CHAMADA TELEFONE - SEPARADAMENTE     
create table cursos(
    id_curso int primary key auto_increment, 
	descricao varchar(300)); 
    
drop table aluno_cursos;
drop table cursos;
# INSERE VALORES PARA AS VARIAVEIS - DENTRO DE CADA TABELA ( PESSOAS E TELEFONE )
insert into cursos (descricao) values ('direito'), ('administracao'),('contabilidade');
insert into aluno_cursos (id_curso , nota) values (1, '10') , (2, '20')  , (3, '30');

select * from cursos;

