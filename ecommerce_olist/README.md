# Brazilian E-Commerce Dashboard – Power BI Report

## Indice

- [Introduzione al dataset](#dataset)
- [Obiettivo del progetto](#obiettivo-del-progetto)
- [1. Overview](#overview)
- [2. Orders](#orders)
- [3. Logistics](#logistics)
- [4. Sellers](#sellers)
- [Obiettivo del report](#obiettivo-del-report)
- [Insight principali](#insight-principali)
- [Possibili interventi di miglioramento](#possibili-interventi-di-miglioramento)






## Dataset

Il progetto si basa sul **Brazilian E-commerce Public Dataset by Olist**, disponibile su [Kaggle](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce).  
Il dataset contiene dati reali raccolti tra il 2016 e il 2018 su ordini online effettuati da clienti in Brasile. Comprende informazioni dettagliate su:

- Transazioni e ordini
- Clienti e venditori
- Pagamenti e recensioni
- Prodotti e categorie merceologiche
- Tempi di spedizione e consegna
- Localizzazione geografica

Il dataset è composto da 9 tabelle collegate tra loro tramite relazioni chiave-primaria/chiave-esterna.

---

## Obiettivo del Progetto

Questo report interattivo è stato realizzato nell’ambito del percorso formativo per **Junior Data Analyst** con i seguenti obiettivi:

- Analizzare un dataset reale e complesso
- Ridurre il volume del dataset
- Ristrutturare i dati grezzi in modo tale da ottenere uno Star Schema
- Utilizzare una dimensione calendario
- Progettare un buon layout e una buona UX
- Applicare trasformazioni, misure DAX, filtri e visualizzazioni personalizzate
- Comunicare insight strategici tramite indicatori e grafici

Il report si articola in 4 sezioni principali:

1. **Overview** (panoramica generale)
2. **Orders** (analisi del customer journey)
3. **Logistics** (tempi e ritardi di consegna)
4. **Sellers** (performance dei venditori)

---

# Overview

La sezione **Overview** fornisce una sintesi dei principali KPI e delle metriche temporali più rilevanti del marketplace Olist.  
Tutti i dati sono filtrabili per:

- **State** (es. São Paulo, Rio de Janeiro, etc.)
- **Year** (2016–2018)
- **Order Status** (delivered, canceled, etc.)

### KPI visualizzati

- **Revenue**: somma di prezzo prodotto + costo spedizione
- **Orders**: quantità totale di ordini effettuati
- **Quantity sold**: numero totale di prodotti acquistati
- **Average review score**: media delle valutazioni post-consegna

### Grafici inclusi

- **Monthly Orders and % Change YoY**  
  Confronto mese per mese tra ordini dell’anno corrente e dell’anno precedente, con calcolo della variazione percentuale (YoY).

- **Revenue Trend and % Change YoY**  
  Trend dei ricavi mensili con variazione YoY visualizzata come linea sovrapposta.

- **Review Score Distribution**  
  Grafico a torta che mostra la distribuzione percentuale dei punteggi da 1 a 5 stelle (inclusi i casi senza review).

- **Average Score by Quarter and % Change YoY**  
  Analisi del punteggio medio per trimestre, comparato con l’anno precedente.

---

# Orders

La pagina **Orders** esplora nel dettaglio il comportamento d’acquisto dei clienti e le metriche legate agli ordini effettuati.

### KPI visualizzati

- **Net Sales (excl. Shipping)**: ricavi netti generati escludendo i costi di spedizione.
- **AOV – Average Order Value**: valore medio per ordine, comprensivo di spedizione.
- **Orders**: numero totale di ordini registrati.
- **Quantity Sold**: quantità totale di prodotti venduti.

### Grafici inclusi

- **Monthly Sales Quantity Comparison (YoY)**  
  Confronto tra quantità mensili vendute e lo stesso mese dell’anno precedente, con variazione YoY evidenziata tramite linea arancione.

- **Payment Method Distribution**  
  Grafico a torta che mostra la percentuale d’utilizzo dei vari metodi di pagamento:
  - *credit card* 
  - *boleto* 
  - *voucher*
  - *debit card*

- **Units Sold by Product Category**  
  Grafico a barre orizzontali che mostra le categorie più vendute. Le categorie principali includono:
  - *bed_bath_table*
  - *health_beauty*
  - *sports_leisure*, ecc.

- **Revenue by Customer Location**  
  Mappa geografica che visualizza il totale dei ricavi generati per **stato brasiliano**, utile per individuare aree con maggiore concentrazione di clienti attivi.

### Analisi avanzata

In alto a sinistra sono presenti due pulsanti che consentono di approfondire i dati:

- **View Order Details**  
  Apre la pagina **Order Details**, una tabella interattiva in cui è possibile esplorare ogni singolo ordine con filtri per:
  - *order ID*
  - *product ID*
  - *seller ID*
  - *customer ID*
  - *order status*
  - *intervalli di prezzo, spedizione e data*

  La tabella mostra anche i totali aggregati di:
  - **Ricavi (Price)**
  - **Spese di spedizione (Freight Value)**

- **View Decomposition Tree**  
  Apre un **grafico ad albero interattivo (Decomposition Tree)** che consente di esplorare in modo gerarchico i driver delle vendite.  
  L’utente può analizzare i ricavi per:
  - *mese*
  - *stato e città del cliente*
  - *categoria prodotto*

---

# Logistics

Questa sezione della dashboard è dedicata all’analisi delle **performance logistiche** relative agli ordini effettuati sulla piattaforma Olist. Vengono monitorati i tempi di spedizione, di consegna e i costi logistici, offrendo una panoramica sia aggregata che dettagliata a livello geografico.

### **KPI principali**

- **Orders**: quantità di ordini ricevuti  
- **AVG Shipping Time (days)**: media dei giorni impiegati per effettuare la spedizione   
- **AVG Delivery Time (days)**: media dei giorni impiegati per effettuare la consegna   
- **AVG Freight Value**: media delle spese di spedizione

### **Grafici**

- **Average Shipping Cost by City**: città con i costi medi di spedizione più elevati.
- **Average Delivery Time by City**: città con i tempi medi di consegna più lunghi.
Attraverso due pulsanti è possibile visualizzare i grafici per Stato

- **Average Shipping vs Delivery Time per Month**: confronto mensile tra tempi di spedizione e consegna.
- **On-Time Delivery Rate**: percentuale di consegne puntuali rispetto a quelle in ritardo.
- **Order Processing Status**: distribuzione degli ordini nei diversi stati (escluse le consegne concluse e gli ordini cancellati).
- **AVG Delivery Time (days) of late orders by State**: mappa che mostra i tempi medi di consegna in ritardo, per stato.

### **Filtri disponibili**

Nella barra laterale sinistra è possibile filtrare i dati per:

- **Order Status**
- **Year**
- **State**

In alto, due pulsanti consentono di navigare verso pagine di dettaglio:

- **View shipping statistics** → rimanda alla pagina *Shipping Statistics*
- **View shipping details** → rimanda alla pagina *Shipping Details*

---

## Shipping Statistics

Pagina dedicata alla visualizzazione aggregata delle **statistiche di spedizione per Stato**.

### **Colonne disponibili**

- **State**: Stato
- **Orders**: Quantità di ordini
- **AVG Shipping Time (day)**: media dei giorni impiegati per effettuare la spedizione
- **AVG Delivery Time (day)**: media dei giorni impiegati per effettuare la consegna
- **AVG Shipping Value**: media delle spese di spedizione
- **% Late Deliveries** : percentuale di ordini consegnati in ritardo

### **Filtri disponibili**

- **Year**

---

## Shipping Details

Pagina di dettaglio che mostra **le informazioni logistiche a livello di singolo ordine/prodotto**.

### **Colonne disponibili**

- **Order ID** : ID univoco dell'ordine
- **Order Item ID** : riga dell'ordine
- **Freight Value** : spese di spedizione
- **Order Status**: stato dell'ordine
- **Order Date**: data dell'ordine
- **Estimated Delivery Date**: data stimata di consegna dell'ordine
- **Delivered Carrier Date**: data in cui l'ordine è stato consegnato al corriere
- **Delivered Customer Date**: data in cui l'ordine è stato consegnato

### **Filtri disponibili**

- **Order ID**
- **Order Status**
- **Freight Value**
- **Order Date Range**
- **KPI Delivery** (On time / Late)

In fondo alla tabella è visibile il **totale complessivo del valore di spedizione**.


# Sellers

In questa sezione viene analizzata la performance dei venditori attivi sulla piattaforma Olist. Considerando che il dataset è **anonimizzato** (i seller ID sono stringhe alfanumeriche casuali), è stata scelta un'impostazione **statistica** anziché nominativa.

### **KPI principali**

- **Active Sellers**: Totale venditori registrati  
- **AVG Orders per Seller**: la media di ordini processati da ciascun venditore
- **AVG Revenue per Seller**: la media dei ricavi di ciascun venditore
- **Median Revenue per Seller**: la mediana dei ricavi di ciascun venditore

### **Grafici**

- **Sales Distribution per Seller**: istogramma che mostra la distribuzione degli importi di vendita per venditore, con evidenziata la media (linea verde) e la mediana (linea rossa).
- **Orders vs Revenue per Seller**: scatter plot che mostra la correlazione tra numero di ordini e fatturato generato per ciascun venditore.
- **Sellers Classified as Normal or Outlier**: grafico a barre che mostra la classificazione dei seller in base alla loro performance (normali vs outlier), utile per contare gli outlier.

### **Nota metodologica**

L'approccio adottato consente di:

- Identificare eventuali **outlier** in termini di vendite.
- Valutare la **distribuzione della performance** economica.
- Analizzare **correlazioni** tra quantità di ordini gestiti e fatturato.

Questa impostazione permette di trarre insight significativi anche in assenza di nomi o etichette riconoscibili.

---

## Obiettivo del Report

L'obiettivo di questo report è fornire una panoramica completa e interattiva sul funzionamento della piattaforma e-commerce **Olist**, attraverso l'analisi esplorativa del dataset pubblico disponibile su [Kaggle](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce).  

Il focus è stato posto su quattro aree chiave:
- **Ordini**: andamento delle vendite, categorie merceologiche, metodi di pagamento e distribuzione geografica del fatturato.
- **Logistica**: tempi di spedizione e consegna, affidabilità del servizio e costi medi per località.
- **Dettagli delle spedizioni e degli ordini**: per esplorare in profondità le transazioni a livello granulare.
- **Seller (Venditori)**: analisi statistica delle performance dei venditori, con identificazione di outlier.

Il lavoro è stato realizzato in **Power BI**, con l’integrazione di funzionalità interattive (filtri, pulsanti di navigazione e decomposizione gerarchica) per migliorare l'esperienza utente e l'usabilità del report.

---

## Insight Principali

### Ordini
- Il volume degli ordini e di conseguenza delle revenue è in forte crescita nel 2018 rispetto all'anno precedente, purtroppo l'analisi non è da prendere in considerazione in merito al confronto tra 2017 e 2016, anno in cui ci sono pochissimi dati.
- Il metodo di pagamento più utilizzato è **la carta di credito** (75,2%), seguito dal **boleto bancário** (19,5%).
- La maggior parte delle recensioni sono positive (circa il 77% con score tra 4 e 5).
- Le categorie più vendute sono `bed_bath_table`, `health_beauty` e `sports_leisure`.
- Le regioni con il **fatturato più alto** sono gli stati del sud-est, in particolare **São Paulo**.

### Logistica
- Il **tempo medio di spedizione** è di **3,28 giorni**, mentre il **tempo medio di consegna** si attesta a **12,41 giorni**.
- L'**on-time delivery rate** è del **93,41%**, un buon indicatore di affidabilità del servizio.
- Alcune città come **Itupiranga** e **Amarante** presentano **costi medi di spedizione** molto elevati rispetto alla media.
- Le consegne più lente si registrano in località remote come **Novo Brasil** (fino a 148 giorni).

### Seller (Venditori)
- I venditori attivi sono **3.092** con una media di **31,91 ordini** a testa.
- L’**analisi statistica** ha evidenziato una forte asimmetria nella distribuzione del fatturato: la **media** è R$ 5.123 mentre la **mediana** è di soli R$ 997, segno della presenza di **pochi seller ad altissime performance**.
- Sono stati identificati e classificati **outlier**, ovvero seller con valori anomali rispetto al resto della distribuzione.

---

# Possibili interventi di miglioramento
Sulla base degli insight emersi dal report, si suggeriscono i seguenti interventi mirati per migliorare le performance della piattaforma Olist:

## Miglioramento della Customer Satisfaction

Analizzare in dettaglio le recensioni con punteggio inferiore a 4 per identificare le cause principali dell’insoddisfazione (es. ritardi, prodotto danneggiato, descrizione fuorviante).
Questo permetterebbe di adottare azioni correttive mirate (es. miglioramento della logistica, verifica qualità prodotto, ottimizzazione descrizioni), con l’obiettivo di aumentare il punteggio medio delle recensioni e la fidelizzazione del cliente.

## Estensione dell’offerta nelle categorie di prodotto a bassa rotazione

Identificare le categorie di prodotto con scarse vendite mensili ma con potenziale di mercato e valutarne un potenziamento tramite:
- aumento della varietà dell’offerta
- promozione mirata
- eventuali partnership con fornitori strategici
L’obiettivo è diversificare il catalogo e migliorare la conversione anche su nicchie sottoservite.

## Campagne di marketing localizzate

Utilizzare i dati sulle vendite per individuare gli Stati brasiliani con bassa attività commerciale.
Si potrebbero pianificare campagne promozionali localizzate, offerte geolocalizzate o collaborazioni con influencer locali per aumentare la brand awareness in aree poco servite.

## Ottimizzazione dei costi e dei tempi di spedizione

Agire su due leve:
Costi: negoziare tariffe migliori con i corrieri per città o Stati con spese di spedizione elevate.
Tempi: ottimizzare i flussi logistici per ridurre i giorni di consegna medi, in particolare nelle zone in cui i tempi superano la media nazionale.
Questo ridurrebbe i costi operativi, migliorerebbe l’esperienza cliente e inciderebbe positivamente sul punteggio delle recensioni.

## Supporto mirato ai seller sotto-performanti

Fornire report personalizzati e consigli operativi ai seller con ricavi inferiori alla mediana, come:
- suggerimenti su pricing e promozione
- miglioramento delle schede prodotto
- analisi della concorrenza nella propria categoria
Obiettivo: aumentare l’equità tra seller, migliorando le performance generali del marketplace.

## Ulteriori sviluppi futuri 

- Implementare un modello di previsione della domanda (forecast) per migliorare gestione stock e logistica.
- Applicare una clustering analysis dei clienti per creare segmenti target per campagne marketing più efficaci.
- Integrare il dato esterno sulle performance dei corrieri per cross-check con i ritardi di consegna.

