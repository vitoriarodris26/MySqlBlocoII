/* Crie um banco de dados para uma plataforma de Cursos Online (EAD). 
O nome do Banco de dados deverá ter o seguinte nome db_curso_da_minha_vida. O sistema trabalhará com as informações dos produtos comercializados pela empresa. O sistema trabalhará com 2 tabelas tb_cursos e tb_categorias, que deverão estar relacionadas.
*/
CREATE DATABASE ddb_curso_da_minha_vida;
USE ddb_curso_da_minha_vida;




/*Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar os produtos.*/

CREATE TABLE tb_categorias (
 
	id_categorias INT PRIMARY KEY auto_increment,
    nome_categorias VARCHAR (255),
	carga_hr VARCHAR(30)
 
 );
 
 /*Crie a tabela tb_cursos e determine 4 atributos, além da Chave Primária,*/
 
  CREATE TABLE tb_cursos (
 
	id_cursos INT PRIMARY KEY auto_increment,
    nome_curso varchar(255),
    desc_curso VARCHAR (255),
    preco DECIMAL (6,2),
    quantidade int,
    id_categorias INT,
    
     FOREIGN KEY (id_categorias) REFERENCES tb_categorias(id_categorias)
 
 );
 /*Insira 5 registros na tabela tb_categorias.*/
INSERT INTO tb_categorias VALUES (1," Iniciante","200hrs"); 
INSERT INTO tb_categorias VALUES (2,"Intermediário","300hrs"); 
INSERT INTO tb_categorias VALUES (3,"Avançado ","300"); 
INSERT INTO tb_categorias VALUES (4,"Pleno ","120hrs");
INSERT INTO tb_categorias VALUES (5,"Sênior","140hrs"); 



/*Insira 8 registros na tabela tb_cursos, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.*/
INSERT INTO tb_cursos VALUES (20,"Java", "Fundamentos do Java",200,1,1);
INSERT INTO tb_cursos VALUES (21,"Spring", "SpringBoot",700,1,3);
INSERT INTO tb_cursos VALUES (22, "MySql","Aperfeçoamento",100,1,5);
INSERT INTO tb_cursos VALUES (23,"JavaScript","Fundamentos de Java Script",220,2,1);
INSERT INTO tb_cursos VALUES (24, "Git", "Mestres em GIT", 100,1,5);
INSERT INTO tb_cursos VALUES (25, "PHP", "Quase mestres em PHP",305, 2,4);

INSERT INTO tb_cursos VALUES (29,"cnologias Font-End", "Html, CSS, JavaScript ", 1000,2,2);
INSERT INTO tb_cursos VALUES (71,"Tecnologias Back-End", "PHP, Python, MySql, SpringBoot",900,3,2);
 
 /*Faça um SELECT que retorne todes os cursos cujo valor seja maior do que R$ 500,00.*/
 
 SELECT*FROM tb_cursos WHERE preco > 500;
 
/*Faça um SELECT que retorne todes os cursos cujo valor esteja no intervalo R$ 600,00 e R$ 1000,00.*/
 
 SELECT*FROM tb_cursos WHERE preco between  600 and 1000;
 
 /* Faça um SELECT utilizando o operador LIKE, buscando todes os cursos que possuam a letra J no atributo nome.*/
 
 SELECT * FROM tb_cursos WHERE nome_curso LIKE'%J%';
 
/*aça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_cursos com os dados da tabela tb_categorias.*/

  SELECT * FROM tb_cursos INNER
  JOIN tb_categorias ON  tb_categorias.id_categorias = tb_cursos.id_categorias;
 
 

 
 