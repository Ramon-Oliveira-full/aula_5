CREATE DATABASE estoque_senai;
use estoque_senai;

create table marcas(
		id_marca int,
        nome varchar(45),
        descricao varchar(45),
		primary key(id_marca)
);

create table produtos(
		id_produto int,
        nome varchar(45),
		preco_unitario double,
        id_marca int,
        primary key(id_produto),
        foreign key(id_marca) references marcas(id_marca)
);

insert into marcas( id_marca, nome, descricao)
		values(1, "Eudora", "Cosméticos"),
			  (2, "Logitech", " Aparelho Eletrônico"),
              (3, "Iphone", "Aparelho celular")
;

insert into produtos(id_produto, nome, preco_unitario, id_marca)
			Values(1, "Shampoo", 19.90, 1),
				  (2, "Mouse Gamer", 39.90, 2),
                  (3, "Iphone 13", 8.900, 3)
;

select * from marcas;

select* from produtos;

update produtos set preco_unitario = 8900 where id_produto = 3;

