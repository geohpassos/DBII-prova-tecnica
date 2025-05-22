CREATE DATABASE Loja_Pascotto;
USE Loja_Pascotto;
CREATE TABLE produtos(
id_produtos INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(250),
preco DECIMAL(10,2),
qtd_estoque INT,
id_fornecedor INT
);
INSERT INTO produtos(nome,preco,qtd_estoque,id_fornecedor)VALUE
('Placa de Video',700.00,10,2),
('Placa Mãe',2000.00,7,3);
SELECT * FROM produtos;
ALTER TABLE produtos ADD CONSTRAINT fk_prod_forn FOREIGN KEY (id_fornecedor) REFERENCES fornecedores(id_fornecedores);

CREATE TABLE fornecedores(
id_fornecedores INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(250),
cnpj VARCHAR(50),
telefone VARCHAR(25),
cpf VARCHAR(25)
);
ALTER TABLE fornecedores DROP cpf;
ALTER TABLE fornecedores ADD email VARCHAR(260) NOT NULL;
INSERT INTO fornecedores(nome,cnpj,telefone,email)VALUE
('Danilo Gomes','34820842203','(11)92348-9230','danilo@gmail.com'),
('Davi Sousa','892038428492','(11)92348-4824','davi@gmail.com');
SELECT * FROM fornecedores;
CREATE TABLE colaborador(
id_colaborador INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(250),
cargo VARCHAR(200),
salario DECIMAL(10,2)
);
INSERT INTO colaborador (nome,cargo,salario)VALUE
('Murilo Silva', 'Desenvolvedor',1900.00),
('Guilherme Silva', 'Suporte TI',1400.00);
SELECT * FROM colaborador;
CREATE TABLE pedidos(
id_pedidos INT AUTO_INCREMENT PRIMARY KEY,
data_pedido VARCHAR(25),
id_funcionario INT
);
ALTER TABLE pedidos ADD id_Catgoria INT;
ALTER TABLE pedidos ADD id_Produto INT;
INSERT INTO pedidos(data_pedido,id_funcionario,id_Catgoria,id_Produto)VALUES
('09/11/2025',1,3,1),
('09/12/2025',2,1,2);
SELECT * FROM pedidos;
ALTER TABLE pedidos ADD CONSTRAINT fk_pedidos_categoria FOREIGN KEY (id_Catgoria) REFERENCES categoria(id_Categoria);
ALTER TABLE pedidos ADD CONSTRAINT fk_pedidos_funcionario FOREIGN KEY (id_funcionario) REFERENCES funcionarios(id_funcionarios);
ALTER TABLE pedidos ADD CONSTRAINT fk_pedidos_produtos FOREIGN KEY (id_Produto) REFERENCES produtos(id_produtos);

CREATE TABLE funcionarios(
id_funcionarios INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(250),
cpf VARCHAR(25),
email VARCHAR(300),
telefone VARCHAR(30)
);
INSERT INTO funcionarios(nome,cpf,email,telefone)VALUEs
('Lucas Pascotto','098342098432','lucas@gmail.com','(11)93243-2423'),
('Pedro Henrique','173872192371','pedro@gmail.com','(11)93243-2348');
SELECT * FROM funcionarios;

CREATE TABLE categoria(
id_Categoria INT AUTO_INCREMENT PRIMARY KEY,
nomeCategoria VARCHAR(250)
);
INSERT INTO categoria(nomeCategoria)VALUE
('lOJA DE PC'),
('lOJA DE PLACAS');
SELECT * FROM categoria;
UPDATE 

SELECT a.nome, b.nome
FROM produtos a
INNER JOIN fornecedores b
ON a.id_produtos = b.id_fornecedores;



