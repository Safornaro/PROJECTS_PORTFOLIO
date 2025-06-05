/* 1)	Verificare che i campi definiti come PK siano univoci. 
In altre parole, scrivi una query per determinare l’univocità dei valori di ciascuna PK 
(una query per tabella implementata). */

SELECT CategoryID
, COUNT(*)
FROM Category
GROUP BY CategoryID
HAVING COUNT(*) > 1;

SELECT ProductID
, COUNT(*)
FROM Product
GROUP BY ProductID
HAVING COUNT(*) > 1;

SELECT RegionID
, COUNT(*)
FROM Region
GROUP BY RegionID
HAVING COUNT(*) > 1;

SELECT StateID
, COUNT(*)
FROM State
GROUP BY StateID
HAVING COUNT(*) > 1;

SELECT CustomerID
, COUNT(*)
FROM Customer
GROUP BY CustomerID
HAVING COUNT(*) > 1;

SELECT SalesOrderNumber
, SalesOrderLineNumber 
, COUNT(*)
FROM Sales
GROUP BY SalesOrderNumber, SalesOrderLineNumber
HAVING COUNT(*) > 1;

/* 2) Esporre l’elenco delle transazioni indicando nel result set il codice documento, 
la data, il nome del prodotto, la categoria del prodotto, il nome dello stato, 
il nome della regione di vendita e un campo booleano 
valorizzato in base alla condizione che siano passati più di 
180 giorni dalla data vendita o meno (>180 -> True, <= 180 -> False) */

SELECT s.SalesOrderNumber as NumeroOrdine
, s.OrderDate as DataOrdine
, p.ProductName as NomeProdotto
, c.CategoryName as Categoria
, st.StateName as Stato
, r.RegionName as Regione
, CASE WHEN DATEDIFF(CURDATE(), s.OrderDate) > 180 THEN TRUE
        ELSE FALSE
    END AS Oltre180giorni
FROM Sales as s
INNER JOIN Product as p 
ON s.ProductID = p.ProductID
INNER JOIN Category as c 
ON p.CategoryID = c.CategoryID
INNER JOIN State as st 
ON s.StateID = st.StateID
INNER JOIN Region as r 
ON st.RegionID = r.RegionID;


/* 3) Esporre l’elenco dei prodotti che hanno venduto, in totale, una quantità maggiore della media delle vendite realizzate nell’ultimo anno censito. 
(ogni valore della condizione deve risultare da una query e non deve essere inserito a mano). 
Nel result set devono comparire solo il codice prodotto e il totale venduto. */

SELECT ProductID AS CodiceProdotto
, SUM(Quantity) AS TotaleQuantitàVendute
FROM Sales
GROUP BY ProductID
HAVING SUM(Quantity) > (SELECT AVG(Quantity)
						FROM Sales
						WHERE YEAR(OrderDate) = (SELECT MAX(YEAR(OrderDate))
												FROM Sales));
                                                
/* Esporre l’elenco dei soli prodotti venduti e per ognuno di questi il fatturato totale per anno. */

SELECT ProductID AS CodiceProdotto
, YEAR(OrderDate) AS Anno
, SUM(SalesAmount) AS FatturatoTotale
FROM Sales
GROUP BY ProductID
, YEAR(OrderDate);

/* 5) Esporre il fatturato totale per stato per anno. 
Ordina il risultato per data e per fatturato decrescente */

SELECT St.StateID AS CodiceStato
, St.StateName AS Stato
, YEAR(S.OrderDate) AS Anno
, SUM(S.SalesAmount) AS TotaleVendite
FROM Sales AS S
INNER JOIN State AS St 
ON S.StateID = St.StateID
GROUP BY St.StateID 
, St.StateName 
, YEAR(S.OrderDate)
ORDER BY Anno
, TotaleVendite DESC;

/* 6) Rispondere alla seguente domanda: qual è la categoria di articoli maggiormente richiesta dal mercato? */

SELECT C.CategoryName AS Categoria
, SUM(S.Quantity) AS TotaleQuantitàVenduta
FROM Sales AS S
INNER JOIN Product AS P 
ON S.ProductID = P.ProductID
INNER JOIN Category AS C 
ON C.CategoryID = P.CategoryID
GROUP BY C.CategoryName
ORDER BY TotaleQuantitàVenduta DESC
LIMIT 1;

/* 7)Rispondere alla seguente domanda: quali sono i prodotti invenduti? Proponi due approcci risolutivi differenti. */

-- Primo approccio risolutivo

SELECT p.ProductID AS CodiceProdotto
, p.ProductName AS NomeProdotto
FROM Product AS p
LEFT JOIN Sales AS s 
ON p.ProductID = s.ProductID
WHERE s.ProductID IS NULL;

-- Secondo approccio risolutivo

SELECT p.ProductID AS CodiceProdotto
, p.ProductName AS NomeProdotto
FROM Product AS p
WHERE p.ProductID NOT IN (SELECT DISTINCT ProductID
							FROM Sales);
                            
/* 8) Creare una vista sui prodotti in modo tale da esporre una “versione denormalizzata” delle informazioni utili (codice prodotto, nome prodotto, nome categoria) */

CREATE VIEW InfoProdotti AS (
SELECT p.ProductID AS CodiceProdotto
, p.ProductName AS NomeProdotto
, c.CategoryName AS Categoria
FROM Product AS p
INNER JOIN Category AS c 
ON p.CategoryID = c.CategoryID);

SELECT *
FROM InfoProdotti;

/* 9) Creare una vista per le informazioni geografiche */

CREATE VIEW InfoGeo AS (
SELECT st.StateID AS CodiceStato
, st.StateName AS Stato
, r.RegionName AS Regione
FROM State AS st
INNER JOIN Region AS r 
ON st.RegionID = r.RegionID);

SELECT *
FROM InfoGeo;











