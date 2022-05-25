 CREATE DATABASE db_generation_game_online;
 USE   db_generation_game_online;
  
 /*O sistema trabalhará com as informações dos personagens do jogo. O sistema trabalhará com
 2 tabelas tb_personagens e tb_classes, que deverão estar relacionadas.*/
 
 
 /*1- Crie a tabela tb_classes e determine pelo menos 2 atributos, 
 além da Chave Primária, relevantes para classificar os personagens do Game Online.
*/
 
 CREATE TABLE tb_classes (
	id_classes INT PRIMARY KEY ,
    nome_classe VARCHAR(255),
    descricao VARCHAR (255)
 );
 
 /*Crie a tabela tb_personagens e determine 4 atributos, além da Chave Primária, 
 Não esqueça de criar a Foreign Key da tabela tb_classes na tabela tb_personagens.
*/
 
  CREATE TABLE tb_personagens (
	id_personagens INT PRIMARY KEY,
    nome_personagens VARCHAR(255),
    idade_personagem INT,
    poder_personagem  VARCHAR(255),
    dano_personagem INT,
	defesa_personagem INT,
    descricao_personagem VARCHAR(255),
    id_classes INT,
  FOREIGN KEY (id_classes) REFERENCES tb_classes(id_classes)

 );
 /*Insira 5 registros na tabela tb_classes.*/
	INSERT INTO tb_classes VALUES (1,"Júnior Pleayer", "A fase inicial");
	INSERT INTO tb_classes VALUES (2,"Júnior Pleayer Descover", "E fase da evolução");
	INSERT INTO tb_classes VALUES (3,"Pleno Pleayer ", "A experiência é maior");
	INSERT INTO tb_classes VALUES (4,"Pleno Pleayer Adventure", "A um  passo da experiência superior");
	INSERT INTO tb_classes VALUES (5,"Sênior Supremo", "O mestre da programação");
    
 /*Insira 8 registros na tabela tb_personagens, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_classes.*/
 
 INSERT INTO tb_personagens VALUES (1,"ciktor.", 19,"Invisibilidade da Noite", 2550, 1000,"Jovem mago perdido",1);
  INSERT INTO tb_personagens VALUES (2,"Ruckus.", 23,"Força do Vento",2580,2000,"Homem nascido do vento",2);
  INSERT INTO tb_personagens VALUES (3,"Barik", 28,"Lê mentes",3000,1500, "Misterioso mago",3);
  INSERT INTO tb_personagens VALUES (4,"Crohk", 18,"Visão Noturna",8000,2000,"Homem nascido da noite",4);
    /*******************************************************************************************/
  INSERT INTO tb_personagens VALUES (9,"Stella", 29,"Poder das montanhas",700,3000,"Gerada pela rocha",5);
  INSERT INTO tb_personagens VALUES (17,"Aurora", 29,"Poder da Aurora Boreal",1000,3600,"Gerada pelo Gelo",3);
  INSERT INTO tb_personagens VALUES (20,"Cing", 30,"Poder da Ilusão",800,8500,"Vira cópia de outras pessoas",4);
  INSERT INTO tb_personagens VALUES (19,"Bomb King", 19,"Poder da explosão",1500,5000,"Solta dinamites pelas mãos",1);
 
 
 /*Faça um SELECT que retorne todes os personagens cujo poder de ataque seja maior do que 2000.*/
 
 SELECT * FROM tb_personagens WHERE dano_personagem > 2000;
 
 /*Faça um SELECT que retorne todes os personagens cujo poder de defesa esteja no intervalo 1000 e 2000.*/

  SELECT * FROM tb_personagens WHERE dano_personagem BETWEEN '1000' AND '2000';
  
  
  /*Faça um SELECT utilizando o operador LIKE, buscando todes os personagens que possuam a letra C no atributo nome.*/

SELECT * FROM tb_personagens WHERE nome_personagens LIKE 'C%';
 
 /*Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes.*/

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_classes.id_classes = tb_personagens.id_classes;
 
SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_classes.id_classes = tb_personagens.id_classes WHERE id_classes =5;
 


 
 