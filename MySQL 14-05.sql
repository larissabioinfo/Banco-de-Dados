create database pessoas; #CRIAR BANCO DE DADOS 
use pessoas; 

#CRIAR TABELA COM SEUS ATRIBUTOS 
create table pessoas (
 	id int primary key,
 	nome varchar(300),
 	endereco varchar (300)
    );
    
#CRIA UMA TABELA CHAMADA TELEFONE - SEPARADAMENTE     
create table telefone(
    id int ,
    telefone varchar(300),
    foreign key (id) references pessoas(id));
    
select * from pessoas;  #MOSTRA OS DADOS DA  TABELA 

# INSERE VALORES PARA AS VARIAVEIS - DENTRO DE CADA TABELA ( PESSOAS E TELEFONE )
insert into pessoas values (123, 'Joana', 'Bias');
insert into pessoas values (345, ' Lucas', 'JF');
insert into telefone values (345,'3244-4526');
insert into telefone values (123,'3222-4526');
insert into telefone values (123,'9555-4321');

# CONSULTA A INFORMAÇÃO QUE EXISTE NAS DUAS TABELAS AO MESMO TEMPO
select * from pessoas inner join telefone on pessoas.id = telefone.id;   
																	    