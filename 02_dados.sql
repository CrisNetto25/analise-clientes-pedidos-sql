-- Dados 100% fictícios, destinados apenas à demonstração.
INSERT INTO portfolio_clientes.clientes (id, nome, email, cidade, telefone) VALUES
(1, 'Cliente Exemplo A', 'cliente.a@example.com', 'Nova Iguaçu', NULL),
(2, 'Cliente Exemplo B', 'cliente.b@example.com', 'Nova Iguaçu', NULL),
(3, 'Cliente Exemplo C', 'cliente.c@example.com', 'Rio de Janeiro', NULL),
(5, 'Cliente Exemplo D', 'cliente.d@example.com', 'Nova Iguaçu', NULL),
(6, 'Cliente Exemplo E', 'cliente.e@example.com', 'Rio de Janeiro', NULL),
(7, 'Cliente Exemplo F', 'cliente.f@example.com', 'Nova Iguaçu', NULL),
(8, 'Cliente Exemplo G', 'cliente.g@example.com', 'Rio de Janeiro', NULL)
ON CONFLICT (id) DO NOTHING;

INSERT INTO portfolio_clientes.pedidos (id, cliente_id, data_pedido, valor_total) VALUES
(1, 1, '2026-08-01', 150.00),
(2, 2, '2026-08-02', 230.50),
(3, 1, '2026-08-05', 89.90),
(4, 3, '2026-08-06', 320.00),
(5, 5, '2026-08-10', 75.50)
ON CONFLICT (id) DO NOTHING;
