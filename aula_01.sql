create table Pais (
    id_pais number ,
    nomes_pais varchar2(30)
);
 
alter table pais add primary key (id_pais);
 
create table estado (
    id_estado number,
    nome_estado varchar2(30),
    id_pais number
);
 
alter table estado add primary key (id_estado);
alter table estado add constraint fk_estado foreign key (id_pais) references pais (id_pais);
 
create table cidade (
    id_cidade number,
    nome_cidade varchar2(30),
    id_estado number
);
 
alter table cidade add foreign key (id_cidade);
 
alter table cidade add constraint fk_cidade foreign key (id_estado) references estado (id_estado);
 
create table bairro (
    id_bairro number,
    nome_bairro varchar2(30),
    id_cidade number
);
 
alter table bairro add primary key (id_bairro);
 
alter table bairro add constraint fk_bairro foreign key (id_cidade) references cidade (id_cidade);
 
create table endereco_cliente(
id_endereco number,
cep number,
logradouro varchar(50),
numero number,
referencia varchar2(50),
id_bairro number
);
 
alter table endereco_cliente add primary key (id_endereco);
 
alter table endereco_cliente add constraint fk_bairro foreign key (id_bairro) references bairro (id_bairro);
 

