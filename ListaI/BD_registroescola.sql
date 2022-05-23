CREATE DATABASE bd_escola;
USE bd_escola;

 CREATE TABLE tb_aluno(
  
 id INT auto_increment PRIMARY KEY,
  nome_aluno VARCHAR (255),
  idade INT,
  dt_nasc DATE,
  nota DECIMAL (3,1)
  

  );
  

INSERT INTO tb_aluno VALUES (1,"Stephanie Gonçalves", 22, "2000-05-05", 10); 
INSERT INTO tb_aluno VALUES (2,"Lucca Ribeiro", 21, "2001-05-05", 8); 
INSERT INTO tb_aluno VALUES (3,"Lunaa Ribeiro", 22, "2000-05-05", 9.0); 

INSERT INTO tb_aluno VALUES (4,"Stephanie Gonçalves", 22, "2000-05-05", 6); 
INSERT INTO tb_aluno VALUES (5,"Juana Ribeiro", 21, "2001-05-05", 6.0); 
INSERT INTO tb_aluno VALUES (6,"Carlos Silva", 22, "2000-05-05", 5.0); 




/*Faça um SELECT que retorne todes o/a(s) estudantes com a nota maior do que 7.0.*/
  
  SELECT * FROM tb_aluno WHERE nota > 7.00;
  
  
  /* Faça um SELECT que retorne todes o/a(s) estudantes com a nota menor do que 7.0.*/
  
 SELECT * FROM tb_aluno WHERE nota < 7.00;

UPDATE tb_aluno SET nota = 10.0 WHERE id = 5;