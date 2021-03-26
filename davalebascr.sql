/* Create a table called NAMES */
CREATE TABLE PriceList (
    
    priceListId INTEGER,
    name TEXT,
    status TEXT);

/* It will automatically pick an id that's different from other ones. */
INSERT INTO PriceList (priceListId,name,staus) VALUES (1,"+10% fasnamati", "Active");
INSERT INTO PriceList (priceListId,name,staus) VALUES (2,"-20% fasdakleba", "Active");
INSERT INTO PriceList (priceListId,name,staus) VALUES (3,"2020 wlis fasebi", "Active");
INSERT INTO PriceList (priceListId,name,staus) VALUES (4,"2019 wlis fasebi", "InActive");
INSERT INTO PriceList (priceListId,name,staus) VALUES (5,"-5% fasdakleba", "Active");


SELECT * FROM PriceList;

SELECT
    priceListId, name, COUNT(*)
FROM
    PriceList
GROUP BY
    priceListId, name
HAVING 
    COUNT(*) > 1
    
    


CREATE TABLE PriceListProducts (
    
    PriceListProductId INTEGER,
    PriceListId INTEGER,
    ProductId INTEGER,
    name TEXT);

/* It will automatically pick an id that's different from other ones. */
INSERT INTO PriceListProducts (PriceListProductId,PriceListId,ProductId,name) VALUES (1,1,150,"Product1");
INSERT INTO PriceListProducts (PriceListProductId,PriceListId,ProductId,name) VALUES (2,1,150,"Product1");
INSERT INTO PriceListProducts (PriceListProductId,PriceListId,ProductId,name) VALUES (3,1,203,"Product3");
INSERT INTO PriceListProducts (PriceListProductId,PriceListId,ProductId,name) VALUES (4,2,203,"Product3");
INSERT INTO PriceListProducts (PriceListProductId,PriceListId,ProductId,name) VALUES (5,2,150,"Product1");


SELECT * FROM PriceListProducts;


SELECT
    PriceListId, ProductId,name, COUNT(*)
FROM
    PriceListProducts
GROUP BY
    PriceListId, ProductId,name
HAVING 
    COUNT(*) > 1
