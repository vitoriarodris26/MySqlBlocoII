  CREATE DATABASE bd_rh;    /*Crie um banco de dados para um serviço de RH de uma empresa*/
  USE bd_rh;
  
  
  
  CREATE TABLE tb_colaboradores(
  
 id INT auto_increment PRIMARY KEY,
  nome VARCHAR (255),
  idade INT,
  dt_nasc DATE,
  salario DECIMAL (5,3)
  

  );
  
INSERT INTO tb_colaboradores VALUES (1,"Thiago Alves", 19, "2002-11-26", 10.000);
INSERT INTO tb_colaboradores VALUES (2,"Vitoria Rodrigues", 19, "2002-11-25", 15.000);

INSERT INTO tb_colaboradores VALUES (3,"Luna Cavalvante", 22, "2000-05-05", 5.000);  
INSERT INTO tb_colaboradores VALUES (4,"Carlos Silva", 28, "1994-02-26", 2.000);  
INSERT INTO tb_colaboradores VALUES (5,"Lucca Ribeiro", 20, "2002-05-05", 1.500);  
INSERT INTO tb_colaboradores VALUES (9,"Stephanie Gonçalves", 22, "2000-05-05", 1.600); 

/*Faça um SELECT que retorne todes os colaboradores com o salário maior do que 2000.*/
  
  SELECT * FROM tb_colaboradores WHERE salario > 2.000;
  
  /* Faça um SELECT que retorne todes os colaboradores com o salário menor do que 2000.*/

SELECT * FROM tb_colaboradores WHERE salario < 2.000;

UPDATE tb_colaboradores SET salario = 1.800 WHERE id = 9;
  
  
  