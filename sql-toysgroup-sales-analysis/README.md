# 🧸 SQL Case Study – ToysGroup Sales Analysis

Progetto SQL completo per la simulazione di un’azienda multinazionale, **ToysGroup**, specializzata nella vendita di articoli per bambini in diverse regioni del mondo. Il lavoro prevede l’intero ciclo di progettazione e analisi dei dati: dal modello concettuale alla realizzazione fisica del database e all’analisi delle vendite.

---

## 🎯 Obiettivo

Costruire un database relazionale efficiente per modellare le vendite dei prodotti in diverse aree geografiche, minimizzando la ridondanza dei dati e garantendo l’integrità referenziale. Il progetto include anche lo sviluppo di query analitiche per rispondere a specifici quesiti di business.

---

## 🧱 Architettura del database

- **Entità principali**: `Product`, `Category`, `Sales`, `Country`, `Region`
- **Relazioni**:
  - Ogni `Product` appartiene a una `Category`
  - Ogni `Sales` è collegata a un `Product` e a un `Country`
  - Ogni `Country` appartiene a una `Region`
- **Struttura implementata**:
  - Modello E/R (entità e relazioni)
  - Schema relazionale (chiavi primarie, esterne, tipi dati)
  - Script DDL + INSERT

---

## 📂 File inclusi

| File | Descrizione |
|------|-------------|
| `Modello ER_SALVATORE_FORNARO.pdf` | Diagramma E/R |
| `Modello Concettuale e Logico SALVATORE_FORNARO.pdf` | Progettazione concettuale e schema relazionale |
| `Script_implementazione_tabelle.sql` | Script DDL per creazione tabelle e vincoli |
| `Script_inserimento_record.sql` | Script per popolamento iniziale delle tabelle |
| `Script_inserimento_aggiuntivo_record.sql` | Dati aggiuntivi per testing |
| `Script_Task4.sql` | Query analitiche e viste richieste |

---

## 🔍 Query sviluppate (Task 4)

1. Verifica dell’unicità delle chiavi primarie
2. Elenco vendite con dettagli prodotto, stato, regione e flag giorni >180
3. Prodotti con vendite sopra la media dell’ultimo anno censito
4. Fatturato per prodotto per anno
5. Fatturato per stato per anno (ordinato)
6. Categoria più richiesta dal mercato
7. Prodotti invenduti (2 approcci distinti)
8. Vista denormalizzata sui prodotti
9. Vista sulle informazioni geografiche

---

## 🛠️ Strumenti utilizzati

- **SQL Server / MySQL**
- **DDL / DML**
- **JOIN, GROUP BY, CASE, DATE_DIFF, AVG, VIEW**

---

## 💡 Competenze dimostrate

- Progettazione concettuale e logica di database
- Implementazione fisica con vincoli e relazioni
- Sviluppo query analitiche per scenari reali
- Ottimizzazione per integrità e consistenza del dato
