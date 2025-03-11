# Prova Prática IEL - Banco de Dados e Tabela de Clientes

Este repositório contém um exemplo de criação de um banco de dados e uma tabela de clientes em SQL, além de uma inserção de dados com tratamento de duplicatas. O código foi desenvolvido como parte de uma prova prática para o IEL.

## Estrutura do Projeto

### Banco de Dados
- **Nome do Banco de Dados**: `prova_pratica_iel`
- **Descrição**: Banco de dados criado para armazenar informações de clientes.

### Tabela `clientes`
A tabela `clientes` foi criada com os seguintes campos:

| Campo             | Tipo         | Descrição                                      |
|-------------------|--------------|------------------------------------------------|
| `id_cliente`      | INT          | Chave primária, autoincrementável.             |
| `nome`            | VARCHAR(30)  | Nome do cliente (não pode ser nulo).           |
| `email`           | VARCHAR(30)  | E-mail do cliente (não pode ser nulo).         |
| `data_nascimento` | DATE         | Data de nascimento do cliente (opcional).      |
| `cidade`          | VARCHAR(20)  | Cidade do cliente (padrão: 'Brasil').          |

### Inserção de Dados
O código inclui um exemplo de inserção de dados na tabela `clientes`. Caso já exista um registro com o mesmo `nome` ou `email`, os dados serão atualizados em vez de inseridos novamente (usando `ON DUPLICATE KEY UPDATE`).

### Consulta de Dados
Após a inserção, uma consulta (`SELECT * FROM clientes;`) é realizada para exibir todos os registros da tabela.

---

## Como Executar o Código

1. **Criação do Banco de Dados**:
   ```sql

   CREATE TABLE clientes (
    id_cliente INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    email VARCHAR(30) NOT NULL,
    data_nascimento DATE,
    cidade VARCHAR(20) DEFAULT 'Brasil',
    PRIMARY KEY (id_cliente)
    ) DEFAULT CHARSET = utf8mb4;

2. **Inserção de Dados:**
  ```sql
  INSERT INTO clientes (nome, email, data_nascimento, cidade)
  VALUES ('Antonia Vieira', 'antonia_v@gmail.com.com', '1954-06-10', 'Fortaleza')
  ON DUPLICATE KEY UPDATE 
      nome = VALUES(nome),
      email = VALUES(email),
      data_nascimento = VALUES(data_nascimento),
      cidade = VALUES(cidade);
 ```
2. **Consulta de Dados:s:**
```sql
SELECT * FROM clientes;
```

## Funcionalidades Principais
Criação de Banco de Dados: O banco de dados prova_pratica_iel é criado para armazenar informações de clientes.

Tabela de Clientes: A tabela clientes é projetada para armazenar dados básicos dos clientes, como nome, e-mail, data de nascimento e cidade.

Inserção com Tratamento de Duplicatas: O comando INSERT verifica se já existe um registro com o mesmo nome ou email. Caso exista, os dados são atualizados.

Consulta de Dados: A consulta SELECT * FROM clientes; exibe todos os registros da tabela.
