CREATE DATABASE cidade_dos_vegetais;
USE cidade_dos_vegetais;


/*O sistema trabalhará com as informações dos produtos comercializados pela empresa.
 O sistema trabalhará com 2 tabelas tb_produtos e tb_categorias, que deverão estar relacionadas.*/
 
 /*Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar os produtos.*/
 
 CREATE TABLE tb_categorias (
 
	id_categorias INT PRIMARY KEY auto_increment,
    nome_categorias VARCHAR (255),
    origem VARCHAR (255)
 
 );


/*Crie a tabela tb_produtos e determine 4 atributos, além da Chave Primária, relevantes aos produtos da farmácia.*/

CREATE TABLE tb_produtos (
 
	id_produtos INT PRIMARY KEY auto_increment,
    nome_produto VARCHAR (255),
    desc_produto VARCHAR (255),
    preco DECIMAL (6,2),
    dt_validade DATE,
    id_categorias INT,
    
     FOREIGN KEY (id_categorias) REFERENCES tb_categorias(id_categorias)
 
 );
 
 /*Insira 5 registros na tabela tb_categorias.*/
 
 INSERT INTO tb_categorias VALUES (1,"Frutas","Orgânico"); 
 INSERT INTO tb_categorias VALUES (2,"Verduras","Não-Orgânico"); 
  INSERT INTO tb_categorias VALUES (3,"Grãos","Orgânico"); 
   INSERT INTO tb_categorias VALUES (4,"Temperos Naturais","Orgânico"); 
    INSERT INTO tb_categorias VALUES (5,"Latícionios","Não-Orgânico"); 
    
    
    /*Insira 8 registros na tabela tb_produtos, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.*/
    
INSERT INTO tb_produtos VALUES (17,"Maça Irlandesa", "A maça mais doce e vermelha da Europa",6.00, "2022.06.06",1);
 INSERT INTO tb_produtos VALUES (18,"Pera Argentina", "Pera verde e graúda",8.00, "2022.07.06",1);
 INSERT INTO tb_produtos VALUES (19,"Uva Thompsons", "Uva sem semente e verde",10.00, "2022.05.06",1);
 
 
INSERT INTO tb_produtos VALUES (20,"Couve Green", "Coúve verde",4.00, "2022.07.06",2);
INSERT INTO tb_produtos VALUES (21,"Couve-Flor", "Do tipo verde",8.00, "2022.07.06",2);
INSERT INTO tb_produtos VALUES (22,"Alface", "Alface tradicional ",2.00, "2022.07.06",2);
   
INSERT INTO tb_produtos VALUES (23,"Couve Green", "Coúve verde",4.00, "2022.07.06",2);
INSERT INTO tb_produtos VALUES (24,"Acelga", "Acelga do norte",10.00, "2022.07.06",2);
INSERT INTO tb_produtos VALUES (25,"Mix de noses", "Nozes na Noruega",55.00, "2022.07.06",3);
INSERT INTO tb_produtos VALUES (26,"Mix de noses - Atacado", "Nozes na Noruega",105.00, "2022.07.06",3);

/*Faça um SELECT que retorne todes os produtos cujo valor seja maior do que R$ 50,00.*/

SELECT*FROM tb_produtos WHERE preco > 50;

/*Faça um SELECT que retorne todes os produtos cujo valor esteja no intervalo R$ 50,00 e R$ 150,00.*/

SELECT*FROM tb_produtos WHERE preco between  50.00 and 150.00;

SELECT * FROM tb_produtos WHERE nome_produto LIKE '%C%';

/*Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias.*/

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON  tb_categorias.id_categorias = tb_produtos.id_categorias;

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON  tb_categorias.id_categorias = tb_produtos.id_categorias where id_categorias = 2;





