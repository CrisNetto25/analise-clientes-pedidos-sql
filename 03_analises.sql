-- 1. Indicadores gerais
SELECT COUNT(*) AS quantidade_pedidos,
       COALESCE(SUM(valor_total), 0) AS faturamento_total,
       ROUND(AVG(valor_total), 2) AS ticket_medio,
       MAX(valor_total) AS maior_pedido,
       MIN(valor_total) AS menor_pedido
FROM portfolio_clientes.pedidos;

-- 2. Ranking de clientes, incluindo quem ainda não comprou
SELECT c.id, c.nome, c.cidade,
       COUNT(p.id) AS quantidade_pedidos,
       COALESCE(SUM(p.valor_total), 0) AS total_gasto
FROM portfolio_clientes.clientes c
LEFT JOIN portfolio_clientes.pedidos p ON p.cliente_id = c.id
GROUP BY c.id, c.nome, c.cidade
ORDER BY total_gasto DESC, c.id;

-- 3. Clientes sem pedidos
SELECT c.id, c.nome, c.cidade
FROM portfolio_clientes.clientes c
LEFT JOIN portfolio_clientes.pedidos p ON p.cliente_id = c.id
WHERE p.id IS NULL
ORDER BY c.id;

-- 4. Análise por cidade
SELECT c.cidade,
       COUNT(DISTINCT c.id) AS clientes_cadastrados,
       COUNT(p.id) AS quantidade_pedidos,
       COALESCE(SUM(p.valor_total), 0) AS faturamento
FROM portfolio_clientes.clientes c
LEFT JOIN portfolio_clientes.pedidos p ON p.cliente_id = c.id
GROUP BY c.cidade
ORDER BY faturamento DESC;

-- 5. Clientes recorrentes (HAVING)
SELECT c.nome, COUNT(p.id) AS quantidade_pedidos
FROM portfolio_clientes.clientes c
JOIN portfolio_clientes.pedidos p ON p.cliente_id = c.id
GROUP BY c.id, c.nome
HAVING COUNT(p.id) > 1;

-- 6. Segmentação demonstrativa por valor gasto
SELECT c.nome, COALESCE(SUM(p.valor_total), 0) AS total_gasto,
       CASE
         WHEN COUNT(p.id) = 0 THEN 'Sem pedidos'
         WHEN SUM(p.valor_total) >= 300 THEN 'VIP'
         WHEN SUM(p.valor_total) >= 150 THEN 'Regular'
         ELSE 'Ocasional'
       END AS categoria_cliente
FROM portfolio_clientes.clientes c
LEFT JOIN portfolio_clientes.pedidos p ON p.cliente_id = c.id
GROUP BY c.id, c.nome
ORDER BY total_gasto DESC;
