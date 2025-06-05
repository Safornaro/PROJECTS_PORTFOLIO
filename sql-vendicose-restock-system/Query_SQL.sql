SET SQL_SAFE_UPDATES = 0;
-- Query che processa la vendita 
start transaction;
UPDATE StockLevel AS SL
INNER JOIN Vendite AS V 
ON SL.Id_Prodotto = V.Id_Prodotto
INNER JOIN Negozio AS N 
ON V.Id_Negozio = N.Id_Negozio
SET SL.Quantità = SL.Quantità - V.Quantità
WHERE V.Id_Vendita = 1;
rollback;
-- commit;  

-- Query per verificare media quantità venduta Categoria

select C.Id_Categoria
, C.Nome_Categoria
, avg (Quantità) as Media_Vendita
from vendite as V
inner join Prodotto as P
on V.Id_Prodotto = P.Id_Prodotto
inner join Categoria as C
on P.Id_Categoria = C.Id_Categoria
group by Id_Categoria
order by avg(Quantità) desc, Id_Categoria;

-- Query per verificare quali prodotti sono sotto la soglia
 SELECT SL.*
 , C.Livello_StockLevel
 , C.Livello_StockLevel - SL.Quantità as Quantità_Da_Rifornire
, case when SL.Quantità < C.Livello_StockLevel THEN 'Si'
else 'No' end as Magazzino_Da_Rifornire
FROM StockLevel AS SL
INNER JOIN Categoria AS C 
ON SL.Id_Categoria = C.Id_Categoria;

-- Query rifornimento Restock per Categoria (+ extralevel)
Start transaction;
UPDATE StockLevel AS SL
INNER JOIN Vendite AS V 
ON SL.Id_Prodotto = V.Id_Prodotto
INNER JOIN Negozio AS N 
ON V.Id_Negozio = N.Id_Negozio
INNER JOIN Categoria AS C 
ON SL.Id_Categoria = C.Id_Categoria
SET SL.Quantità = SL.Quantità + CASE
    WHEN C.Id_Categoria = 1 THEN 7
    WHEN C.Id_Categoria = 2 THEN 10
    WHEN C.Id_Categoria = 3 THEN 6
    WHEN C.Id_Categoria = 4 THEN 10
    WHEN C.Id_Categoria = 5 THEN 4
    END
WHERE SL.Quantità < C.Livello_StockLevel;
-- Controllo Operazione di Restock
 SELECT SL.*
 , C.Livello_StockLevel
, case when SL.Quantità < C.Livello_StockLevel THEN 'Si'
else 'No' end as Magazzino_Da_Rifornire
FROM StockLevel AS SL
INNER JOIN Categoria AS C 
ON SL.Id_Categoria = C.Id_Categoria;
rollback;