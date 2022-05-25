CREATE DATABASE bd_ecommerce;    /*Crie um banco de dados para um e-commerce*/
  USE bd_ecommerce;
  

  
  CREATE TABLE tb_produto(
  
 id INT auto_increment PRIMARY KEY,
  nome_produto VARCHAR (255),
  descricao VARCHAR(255),
  dt_fabri DATE,
  preco DECIMAL (6,2)
  

  );
  
INSERT INTO tb_produto VALUES (1,"Garrafa", "Garrafa Termica", "2020-11-26", 50.00);
INSERT INTO tb_produto VALUES (2,"Mesa de Jantar", "Mesa marrom com quatro cadeiras", "2021-12-26", 800);
INSERT INTO tb_produto VALUES (3,"Mesa de Escritório", "Mesa de escritório com rodinhas", "2022-01-26", 900);
INSERT INTO tb_produto VALUES (4,"Mesa de Kids", "Mesa Kids 4 cadeiras", "2020-10-06", 600);

INSERT INTO tb_produto VALUES (5,"Cadeira", "Cadeira individual", "2021-01-12", 100);
INSERT INTO tb_produto VALUES (6,"Cadeira de escritório", "Cadeira de escritório com rodinhas", "2022-01-12", 200);
INSERT INTO tb_produto VALUES (7,"Cadeira de Plastico", "Cadeira de Plastico", "2022-01-12", 100);

/*Faça um SELECT que retorne todes os produtos com o valor maior do que 500.*/
  
  SELECT * FROM tb_produto WHERE preco > 500;
  
  /* Faça um SELECT que retorne todes os produtos com o valor menor do que 500.*/

  SELECT * FROM tb_produto WHERE preco < 500;

UPDATE tb_produto SET preco = 60 WHERE id = 7;
