/*Crie um banco de dados para um serviço de uma loja de Material de Construção. 
O nome do Banco de dados deverá ter o seguinte nome db_construindo_vidas.
O sistema trabalhará com as informações dos produtos comercializados pela empresa. 
O sistema trabalhará com 2 tabelas tb_produtos e tb_categorias, que deverão estar relacionadas.*/



CREATE DATABASE db_construindo_vidas;
USE db_construindo_vidas;

/*Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar os produtos.*/

CREATE TABLE tb_categorias (
 
	id_categorias INT PRIMARY KEY auto_increment,
    nome_categorias VARCHAR (255),
    dt_fabricacao DATE
 
 );
 
 /*Crie a tabela tb_produtos e determine 4 atributos, além da Chave Primária, relevantes aos produtos da farmácia.*/
 
 CREATE TABLE tb_produtos (
 
	id_produtos INT PRIMARY KEY auto_increment,
    nome_produto VARCHAR (255),
    desc_produto VARCHAR (255),
    preco DECIMAL (6,2),
    quantidade float,
    id_categorias INT,
    
     FOREIGN KEY (id_categorias) REFERENCES tb_categorias(id_categorias)
 
 );
 
 /*Insira 5 registros na tabela tb_categorias*/
 
 
	INSERT INTO tb_categorias VALUES (1,"Concreto","2022.01.01"); 
	INSERT INTO tb_categorias VALUES (2,"Tijolos","2022.03.02");
	INSERT INTO tb_categorias VALUES (3,"Tinta","2022.03.02"); 
	INSERT INTO tb_categorias VALUES (4,"Madeira","2022.03.02"); 
    INSERT INTO tb_categorias VALUES (5,"Piso & Revestimento","2022.03.02"); 
 
 /*Insira 8 registros na tabela tb_produtos, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.*/

INSERT INTO tb_produtos VALUES (20,"tijolo Baiano", "Tijolo laranja tradicional",2.00, 3,2);
INSERT INTO tb_produtos VALUES (21,"Cimento", "Cimento Votoran",15.00, 2.5,1);
INSERT INTO tb_produtos VALUES (22,"Madeira Francesa", "Madeira vermelha da frança",200.00, 3,4);
 
INSERT INTO tb_produtos VALUES (23,"Tinta Azul", "Suvinil de 18L",185.00, 3,3);
INSERT INTO tb_produtos VALUES (24,"Tinta vermelha", "Suvinil",30.00, 2,3);
INSERT INTO tb_produtos VALUES (25,"Piso Porcela", "Porcelana real cinza",100.00, 3,5);
 
 
INSERT INTO tb_produtos VALUES (26,"tijolo Americano", "Tijolo branco",8.00, 5,2);
INSERT INTO tb_produtos VALUES (27,"Madeira Russa", "Madeira verde russa",15.00, 2.5,4);

 
 /*Faça um SELECT que retorne todes os produtos cujo valor seja maior do que R$ 100,00.*/
 
 SELECT*FROM tb_produtos WHERE preco > 100;
 
 /*Faça um SELECT que retorne todes os produtos cujo valor esteja no intervalo R$ 70,00 e R$ 150,00.*/
 
 SELECT*FROM tb_produtos WHERE preco between  70.00 and 150.00;
 
 /*Faça um SELECT utilizando o operador LIKE, buscando todes os produtos que possuam a letra C no atributo nome.*/
 
 SELECT * FROM tb_produtos WHERE nome_produto LIKE '%C%'; 
 
 
 /*Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias.*/
 
 SELECT * FROM tb_produtos INNER JOIN tb_categorias ON  tb_categorias.id_categorias = tb_produtos.id_categorias;
 
 
 SELECT * FROM tb_produtos INNER JOIN tb_categorias ON  tb_categorias.id_categorias = tb_produtos.id_categorias where id_categorias = 3;
 
 SELECT * from tb_produtos inner join tb_categorias 
on tb_produtos.id_categorias= tb_categorias.id_categorias where tb_produtos.id_categoria =2;