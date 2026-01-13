CREATE DATABASE ecommerce_analise;
GO

USE ecommerce_analise;
GO


CREATE TABLE vendas_tratadas (
    order_id INT,
    order_date DATETIME,
    sku VARCHAR(50),
    color VARCHAR(50),
    size VARCHAR(10),
    unit_price FLOAT,
    quantity INT,
    revenue FLOAT
);

SELECT * FROM vendas;
