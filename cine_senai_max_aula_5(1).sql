-- Excluindo banco de dados
DROP DATABASE cine_senai_max;

-- Criando banco de dados
create database cine_senai_max;

-- Ativando banco de dados
use cine_senai_max;

-- Criando tabela filmes
CREATE TABLE filmes (
	id_filme int,
    titulo VARCHAR(60),
    genero VARCHAR(45),
    duracao int,
    ano_lancamento INT,
    preco_aluguel DOUBLE,
    primary key(id_filme)
);

insert into filmes(id_filme, titulo, genero, duracao, ano_lancamento, preco_aluguel)
		values(81, "O Homem do Futuro", "ficção científica e comédia romântica", 106, 2011, 10.0)
;

-- Criando tabela atores
CREATE TABLE atores (
	id_ator INT,
    nome_ator VARCHAR(60),
    ano_nascimento INT,
    nacionalidade VARCHAR(20),
    sexo VARCHAR(10),
    PRIMARY KEY(id_ator)
);

insert into atores ( id_ator, nome_ator, ano_nascimento, nacionalidade, sexo)
		values (150, "Rodrigo Santoro", 1975, "Brasileiro", "Masculino"),
			   (151, "Wagner Moura", 1976, "Brasileiro", "Masculino") 
;
-- Crie aqui a tabela de atuações

Select * from atores;

describe filmes;

describe atores;

create table atuacoes( 
		id_filme int,
        id_ator int,
        foreign key(id_filme) references filmes(Id_filme),
        foreign key(id_ator) references atores(id_ator)
);

insert into atuacoes( id_filme, id_ator)
		values(81, 151)
			  
;
describe atuacoes;

Select * from filmes;

Select * from atores;

Select * from atuacoes;
		

