CREATE DATABASE db_pizzaria_legal;
 USE db_pizzaria_legal;
 
 /*O sistema trabalhará com as informações dos produtos comercializados pela empresa.
 O sistema trabalhará com 2 tabelas tb_pizzas e tb_categorias, que deverão estar relacionadas.*/
 
 /*Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar as pizzas*/
 
 CREATE TABLE tb_categorias (
 
	id_categorias INT PRIMARY KEY auto_increment,
 
    client_nome VARCHAR(100),
    pedido_dt DATE
    
 
 );
 
 /*Crie a tabela tb_pizzas e determine 4 atributos, além da Chave Primária, relevantes aos produtos da pizzaria*/
 
 CREATE TABLE tb_pizzas(
 
	id_pizzas INT PRIMARY KEY auto_increment,
    nome_pizza VARCHAR(255),
    borda VARCHAR(10),
    descricao_pizza VARCHAR(255),
    massa_pizza VARCHAR (255),
    preco DECIMAL (6,2),
    id_categorias INT,
    
      FOREIGN KEY (id_categorias) REFERENCES tb_categorias(id_categorias)
 );
 /*Insira 5 registros na tabela tb_categorias.*/
 
 
 	INSERT INTO tb_categorias VALUES (1,"Marinana","2022-05-05");
    INSERT INTO tb_categorias VALUES (2,"Lucca","2022-05-05");
    INSERT INTO tb_categorias VALUES (3,"Carla","2022-03-05");
    INSERT INTO tb_categorias VALUES (4,"Carlos","2022-05-05");
    INSERT INTO tb_categorias VALUES (5,"Luna","2022-06-05");
	
 
 -- Insira 8 registros na tabela tb_pizzas, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.

INSERT INTO tb_pizzas VALUES (11,"Naolity house" ,"Sim", "Pizza tradicional Italiana", "Massa fina", 50.00,1);
 INSERT INTO tb_pizzas VALUES (12," Four Cheese ", "Não", "Pizza com queijo mussarela, provolone e quijo Minas", "Massa grossa", 46.00,2);
 INSERT INTO tb_pizzas VALUES (5," TheCalabrese " ,"Sim", "Pizza com calabresa","Massa média",50.00,3);
 INSERT INTO tb_pizzas VALUES (13," BeeMargue", "não", "Pizza com queijo, parmessão e tomate", "Massa fina",100.00,4);
 INSERT INTO tb_pizzas VALUES (14,"Sampa" ,"Sim", "Pizza de frango e bacon", "Massa fina", 80.00,5);
 
/*Faça um SELECT que retorne todas as pizzas cujo valor seja maior do que R$ 45,00.*/ 
 
  SELECT * FROM tb_pizzas WHERE preco > 45.00;
  
  /*Faça um SELECT que retorne todas as pizzas cujo valor esteja no intervalo R$ 50,00 e R$ 100,00.*/
  
  SELECT * FROM tb_pizzas WHERE preco BETWEEN '50.00' and '100.00';
 
 /*Faça um SELECT utilizando o operador LIKE, buscando todas as pizzas que possuam a letra M no atributo nome.*/

SELECT * FROM tb_pizzas WHERE nome_pizza LIKE '%M%';

/* Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias.*/
 
 SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_categorias.id_categorias = tb_pizzas.id_categorias;
 
 
 
 
 