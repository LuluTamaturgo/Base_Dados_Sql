# criando a base de dados prova_pratica_iel
create database prova_pratica_iel;

# criando a tabela clientes:
create table clientes (
    `id_cliente` int NOT NULL auto_increment,
    `nome` varchar(30) NOT NULL,
    `email` varchar(30) NOT NULL,
    `data_nascimento` date,
    `cidade` varchar(20) default 'Brasil',
    primary key (id_cliente)
) default charset = utf8mb4;

# alimentando a tabela com as informações configuradas na mesma:
INSERT INTO clientes (nome, email, data_nascimento, cidade)
VALUES ('Antonia Vieira', 'antonia_v@gmail.com.com', '1954-06-10', 'Fortaleza')
# verificando se os campos nomes e email possuem dados duplicados, ou seja, dado inserido já existe na tabela,
# caso tenha a duplicação, será atualizado os novos dados inseridos
ON DUPLICATE KEY UPDATE 
    nome = VALUES(nome),
    email = VALUES(email),
    data_nascimento = VALUES(data_nascimento),
    cidade = VALUES(cidade);
    
SELECT * FROM clientes;


