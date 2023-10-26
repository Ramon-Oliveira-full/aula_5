CREATE database loja;
Use loja;

Create table editoras(
		id_editora int,
        nome varchar(45),
        cnpj char(14),
        primary key(id_editora)
);

Create table livros(
		id_livro int,
        titulo varchar(45),
        lancamento int,
        id_editora int,
        primary key(id_livro),
        foreign key(id_editora) references editoras(id_editora)
);

insert into editoras(id_editora, nome, cnpj) 
		values(1, "Intrinseca", 05660045000106) 
;

insert into livros(id_livro, titulo, lancamento, id_editora)
	Values(100, "Uma Breve História do Tempo", 1988, 1),
		  (1, "O Livro das Fobioas e Manias", 2023, 1),
          (2, "Trader ou Investidor?", 2023, 1)
;

select * from livros;

insert into editoras(id_editora, nome, cnpj) 
		values(2, "Atlas", 61080370000766) 
;

insert into livros(id_livro, titulo, lancamento, id_editora)
	Values(3, "Administração", 2005, 2),
		  (4, "Gestão de Pessoas e Cultura Organizacional", 2015, 2)
;

insert into editoras(id_editora, nome, cnpj) 
		values(3, "Arqueiro", 06985027000590) 
;

insert into livros(id_livro, titulo, lancamento, id_editora)
	Values(5, "Um Homem de Sorte", 2005, 3)
;

select * from livros where id_editora = 2;

select * from livros where id_editora = 1 or id_editora = 2 ;

update livros set lancamento = 2018 Where id_livro = 5;




         