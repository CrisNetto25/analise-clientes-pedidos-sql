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

## Resultados da análise

A análise foi realizada com uma base de dados 100% fictícia, composta por 7 clientes e 5 pedidos, utilizando PostgreSQL.

### Indicadores gerais

| Indicador | Resultado |
|---|---|
| Faturamento total | R$ 865,90 |
| Quantidade de pedidos | 5 |
| Ticket médio | R$ 173,18 |
| Clientes cadastrados | 7 |
| Clientes que realizaram pedidos | 4 |
| Clientes sem pedidos | 3 |
| Maior pedido | R$ 320,00 |
| Menor pedido | R$ 75,50 |

### Principais insights

**1. Concentração de vendas**

O cliente com maior gasto acumulado realizou compras no valor total de R$ 320,00, representando aproximadamente 36,96% do faturamento.

**2. Clientes sem pedidos**

Dos 7 clientes cadastrados, 3 ainda não realizaram compras, representando aproximadamente 42,86% da base. Esse indicador pode apoiar estratégias de ativação de clientes.

**3. Análise do ticket médio**

O ticket médio de R$ 173,18 permite acompanhar o valor médio das compras e pode servir como referência para futuras análises comerciais.

**4. Segmentação de clientes**

As consultas SQL permitem classificar clientes conforme o valor acumulado de suas compras, facilitando a identificação de diferentes perfis de consumo.

### Competências demonstradas

- Consultas SQL com PostgreSQL.
- Relacionamentos entre tabelas utilizando JOIN.
- Agregações com COUNT, SUM, AVG, MAX e MIN.
- Tratamento de valores nulos com COALESCE.
- Agrupamento e ordenação de resultados.
- Análise de indicadores comerciais e segmentação de clientes.

*Todos os dados utilizados neste projeto são fictícios e destinados exclusivamente a fins educacionais e de portfólio.*
