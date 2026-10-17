# Análise de Clientes e Pedidos com PostgreSQL

Projeto de portfólio para demonstrar consultas SQL e análise de indicadores comerciais a partir de uma base **fictícia** de clientes e pedidos.

## Objetivo
Analisar faturamento, ticket médio, clientes recorrentes, clientes sem pedidos e resultados por cidade, apoiando a interpretação de indicadores de vendas.

## Ferramentas
- PostgreSQL
- pgAdmin 4
- SQL

## Estrutura
- `01_estrutura.sql`: cria o schema isolado `portfolio_clientes` e as tabelas com relacionamento 1:N.
- `02_dados.sql`: insere dados fictícios de demonstração.
- `03_analises.sql`: reúne seis análises SQL.

## Como executar
1. Abra um banco de testes no PostgreSQL usando o pgAdmin.
2. Execute `01_estrutura.sql`.
3. Execute `02_dados.sql`.
4. Execute `03_analises.sql`, selecionando cada consulta para visualizar seu resultado.

**Atenção:** os scripts criam tabelas no schema `portfolio_clientes` e não modificam as tabelas originais `public.clientes` e `public.pedidos`. Execute preferencialmente em banco de testes vazio. Não inclua dados reais de clientes no repositório.

## Indicadores esperados com os dados de exemplo
| Indicador | Resultado |
|---|---:|
| Clientes cadastrados | 7 |
| Pedidos | 5 |
| Faturamento | R$ 865,90 |
| Ticket médio | R$ 173,18 |
| Maior pedido | R$ 320,00 |
| Menor pedido | R$ 75,50 |
| Clientes sem pedidos | 3 |

## Técnicas aplicadas
`SELECT`, `JOIN`, `LEFT JOIN`, `GROUP BY`, `HAVING`, `ORDER BY`, `COUNT`, `SUM`, `AVG`, `MAX`, `MIN`, `COALESCE`, `CASE` e chaves primárias/estrangeiras.

## Contexto e limites
Os dados são simulados para fins educacionais; portanto, os resultados demonstram a aplicação técnica das consultas e não representam desempenho comercial real. As faixas de segmentação de clientes são ilustrativas.

## Autoria
Cristina Netto Silva — [GitHub](https://github.com/CrisNetto25)
