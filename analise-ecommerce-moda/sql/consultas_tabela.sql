SELECT *
FROM vendas_tratadas

SELECT SUM(revenue) AS faturamento
FROM vendas_tratadas;

SELECT 
CAST(order_date AS DATE) AS data,
SUM(revenue) AS faturamento_por_dia
FROM vendas_tratadas
GROUP BY CAST(order_date AS DATE)
ORDER BY data ASC;

SELECT TOP 5 sku, SUM (revenue) AS  top_sku
FROM vendas_tratadas
GROUP BY sku
ORDER  BY top_sku DESC;

SELECT sku, AVG(unit_price) AS preco_medio
FROM vendas_tratadas
GROUP BY sku;

SELECT order_id, SUM(quantity) AS tres_pedidos
FROM  vendas_tratadas
GROUP BY order_id
HAVING sum(quantity) >3;

SELECT unit_price, quantity , revenue
FROM vendas_tratadas
WHERE revenue <> unit_price * quantity;

SELECT ISNULL(size, 'One Size') AS size,SUM(quantity) AS total_vendido
FROM vendas_tratadas
GROUP BY ISNULL(size, 'One Size')
ORDER BY total_vendido DESC;

SELECT color, SUM(revenue) AS fat_por_cor
FROM vendas_tratadas
GROUP BY color
ORDER BY fat_por_cor desc

