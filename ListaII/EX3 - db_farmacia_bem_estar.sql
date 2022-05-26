CREATE DATABASE db_farmacia_bem_estar;
 USE db_farmacia_bem_estar;
 
/*O sistema trabalhará com as informações dos produtos comercializados pela empresa.
 O sistema trabalhará com 2 tabelas tb_produtos e tb_categorias, que deverão estar relacionadas.*/
 
 
 
 
/* CRECrie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar os produtos.*/

CREATE TABLE tb_categorias (
 
	id_categorias INT PRIMARY KEY auto_increment,
    nome_categotia VARCHAR (255),
    dt_fabri DATE
 
 );



/*Crie a tabela tb_produtos e determine 4 atributos, além da Chave Primária, relevantes aos produtos da farmácia.
Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_produtos.*/

CREATE TABLE tb_produtos (
 
	id_produtos INT PRIMARY KEY auto_increment,
    nome_produto VARCHAR (255),
    desc_produto VARCHAR (255),
    preco_produto DECIMAL (6,2),
    dt_validade DATE,
    id_categorias INT,
    
     FOREIGN KEY (id_categorias) REFERENCES tb_categorias(id_categorias)
 
 );
/*Insira 5 registros na tabela tb_categorias.*/

INSERT INTO tb_categorias VALUES (1,"Perfumaria","2022-05-05");
INSERT INTO tb_categorias VALUES (2,"Remédios","2022-05-0");
INSERT INTO tb_categorias VALUES (3,"Acessorios","2022-06-05");
INSERT INTO tb_categorias VALUES (4,"Higiene","2022-05-05");
INSERT INTO tb_categorias VALUES (5,"Comidas","2022-05-05");

/*nsira 8 registros na tabela tb_produtos, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.*/

INSERT INTO tb_produtos VALUES (11,"Bucopan" ,"Rémedio para dores abdominias", 7.00, "2024.05.06",2);
INSERT INTO tb_produtos VALUES (12,"Alegrra" ,"Rémedio para rinite", 8.00, "2024.05.06",2);
INSERT INTO tb_produtos VALUES (13,"Paracetamol" ,"Rémedio para dores abdominias", 10.00, "2024.05.06",2);

INSERT INTO tb_produtos VALUES (14,"Desodorante" ,"Rexona nãote abandona", 60.00, "2025.07.06",4);
INSERT INTO tb_produtos VALUES (15,"Nivea Creme Hidratande facil de pepino" ,"Creme facial em gel para peles oleosas", 55.00, "2026.08.06",4);
INSERT INTO tb_produtos VALUES (16,"Kit Skin Care" ,"Sabanote facial Neotrogena, Esfoliante Nivea, tônico Vichy", 130.00, "2029.11.06",4);

INSERT INTO tb_produtos VALUES (17,"O boticario Coffe" ,"O perfume de café", 150.00, "2025.07.06",1);
INSERT INTO tb_produtos VALUES (18,"Body Frash Maça" ,"Body Frash o boticário", 100.00, "2025.07.06",1);


/*Faça um SELECT que retorne todes os produtos cujo valor seja maior do que R$ 50,00.*/

SELECT*FROM tb_produtos WHERE preco_produto > 50;

/*Faça um SELECT que retorne todes os produtos cujo valor esteja no intervalo R$ 5,00 e R$ 60,00.*/


SELECT*FROM tb_produtos WHERE preco_produto between  50 and 60.00;


/*Faça um SELECT utilizando o operador LIKE, buscando todes os produtos que possuam a letra C no atributo nome.*/

SELECT * FROM tb_produtos WHERE nome_produto LIKE '%C%';

/*Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias.*/

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON  tb_categorias.id_categorias = tb_produtos.id_categorias;


/*Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias,
 onde traga apenas os produtos que pertençam a uma categoria específica (Exemplo: Todes os produtos que pertencem a categoria cosméticos).*/

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON  tb_categorias.id_categorias = tb_produtos.id_categorias where  nome_categotia =1;

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON  tb_categorias.id_categorias = tb_produtos.id_categorias where  id_categorias =5;




