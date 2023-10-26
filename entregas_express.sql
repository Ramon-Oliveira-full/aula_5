CREATE DATABASE entregas_express;
Use entregas_express;

Create table paises( 
		id_pais int,
        nome varchar(45),
        latitude varchar(45),
        longitude varchar(45),
        idioma_oficial varchar(45),
        primary key(id_pais)
);

insert into paises(id_pais, nome, latitude, longitude, idioma_oficial)
			values(1, "Brasil", "5°16'19", "-60o 12'45", "português");

Create table unidades_federativas(
			cod_uf int,
            nome varchar(45),
            abreviacao_uf char(2),
			id_pais int,
            primary key(cod_uf),
            foreign key(id_pais) references paises(id_pais)
);

insert into unidades_federativas(cod_uf, nome, abreviacao_uf, id_pais)
			values(1, "Rio de Janeiro", "RJ", 1),
				  (2, "São Paulo", "SP", 1),
                  (3, "Minas Gerais", "MG" ,1)
;

Create table municipios(
		id_municipio int,
        nome varchar(45),
        cod_uf int,
        primary key(id_municipio),
        foreign key(cod_uf) references unidades_federativas(cod_uf)
);

insert into municipios(id_municipio, nome, cod_uf)
		values(1, "Barra do Piraí", 1),
			  (2, "Mendes", 1),
              (3, "São Bernardo do Campo", 2),
              (4, "Santos", 2 ),
              (5, "Bom Jardim de Minas", 3),
              (6, "São João do Nepomuceno", 3)
;
              
Select * from paises;

Select * from unidades_federativas;

Select * from municipios;



create table casa(
		quarto int,
        sala int,
        cozinha int,
        varanda int,
        banheiro int
);
 
 select * from casa;
 
ALTER TABLE casa MODIFY COLUMN banheiro char(2) AFTER sala;

describe casa;

drop table casa; 

join