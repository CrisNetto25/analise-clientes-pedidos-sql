-- Projeto de portfólio: Análise de Clientes e Pedidos
-- Execute em um banco de teste. Não execute no banco original de estudos.
CREATE SCHEMA IF NOT EXISTS portfolio_clientes;

CREATE TABLE IF NOT EXISTS portfolio_clientes.clientes (
    id INTEGER PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    cidade VARCHAR(100) NOT NULL,
    telefone VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS portfolio_clientes.pedidos (
    id INTEGER PRIMARY KEY,
    cliente_id INTEGER NOT NULL REFERENCES portfolio_clientes.clientes(id),
    data_pedido DATE NOT NULL,
    valor_total NUMERIC(10,2) NOT NULL CHECK (valor_total >= 0)
);
