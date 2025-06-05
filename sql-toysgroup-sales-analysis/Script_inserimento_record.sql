/* Script inserimento record nelle tabelle.

Lo script inserisce pochi record come richiesto nella Task 3.
Nella cartella successiva (Task 4) è presente uno script che aggiunge
la restante parte di record utile per l'analisi. */

INSERT INTO Category (CategoryID, CategoryName) VALUES
(1, 'Giochi neonato e prima infanzia')
, (2, 'Giochi da tavolo')
, (3, 'Giochi di costruzione')
, (4, 'Puzzle e rompicapo');

INSERT INTO Product (ProductID, ProductName, Price, CategoryID) VALUES
(102, 'Tappeto Interattivo', 45.00, 1)
, (201, 'Monopoly Junior', 30.00, 2)
, (301, 'Lego Classic', 50.00, 3)
, (401, 'Puzzle Animali', 20.00, 4);

INSERT INTO Region (RegionID, RegionName) VALUES
(1, 'West Europe')
, (2, 'North America')
, (3, 'East Europe')
, (4, 'Asia Pacific')
, (5, 'Scandinavia');

INSERT INTO State (StateID, StateName, RegionID) VALUES
(10, 'Italy', 1)
, (20, 'USA', 2)
, (30, 'Poland', 3)
, (40, 'China', 4)
, (50, 'Sweden', 5);

INSERT INTO Customer (CustomerID, CustomerName, ShippingAddress, StateID) VALUES
(2, 'Giocattoli Rossi', 'Via del Corso 45, Roma', 10)
, (13, 'FunTime Toys', '5th Avenue 500, New York', 20)
, (30, 'Zabawki Świat', 'Nowy Świat 25, Varsavia', 30)
, (22, 'Panda Toys', 'Nanjing Road 100, Shanghai', 40)
, (36, 'Barnens Värld', 'Drottninggatan 100, Stoccolma', 50);

INSERT INTO Sales (SalesOrderNumber, SalesOrderLineNumber, ProductID, StateID, CustomerID, OrderDate, Quantity, UnitPrice, SalesAmount) VALUES
('SO300', 1, 102, 10, 2, '2025-01-10', 2, 45.00, 90.00)
, ('SO301', 1, 201, 20, 13, '2025-01-15', 1, 30.00, 30.00)
, ('SO302', 1, 301, 30, 30, '2025-01-20', 3, 50.00, 150.00)
, ('SO303', 1, 401, 40, 22, '2025-01-25', 2, 20.00, 40.00)
, ('SO304', 1, 102, 50, 36, '2025-01-30', 1, 45.00, 45.00)
, ('SO305', 1, 301, 10, 2, '2025-02-05', 2, 50.00, 100.00);

