# 🏬 SQL Build Week – Sistema Restock per VendiCose SpA

Progetto SQL sviluppato per simulare un sistema gestionale di vendite e rifornimenti per VendiCose SpA, una catena di supermercati. Il progetto riproduce fedelmente il flusso dati tra magazzini, punti vendita, prodotti e categorie, con logica di gestione stock e soglie di riordino automatiche.

---

## 🎯 Obiettivo

Costruire un database normalizzato per monitorare dinamicamente le quantità di prodotti nei magazzini, aggiornare gli stock in seguito a transazioni nei negozi, e gestire il rifornimento automatico quando la quantità scende sotto una soglia predefinita per categoria.

---

## 📐 Progettazione

- **Modello concettuale**: disegnato tramite E-R diagramma
- **Modello logico**: struttura relazionale con chiavi primarie/esterne e tipi dati
- **Focus**:
  - Minimizzazione della ridondanza
  - Gerarchie e relazioni 1:N e N:1 tra le entità
  - Normalizzazione dei dati

---

## 📂 File inclusi

| File | Descrizione |
|------|-------------|
| `Modello_ER.png` | Diagramma E/R concettuale del database |
| `Implementazione.png` | Modello logico relazionale con chiavi e relazioni |
| `Query_SQL.sql` | Script con query avanzate: vendita, media, restock |

---

## 🧱 Struttura del database

**Tabelle principali:**
- `Prodotto`: catalogo articoli, con costo e categoria
- `Categoria`: definizione categorie prodotto e soglia di restock
- `Vendite`: transazioni nei punti vendita
- `Negozio`: negozi fisici con riferimento al magazzino
- `Magazzino`: centri di stoccaggio per prodotti
- `Area`: suddivisione geografica dei magazzini
- `StockLevel`: tracciamento quantità prodotti per magazzino

---

## 🔍 Query principali (da `Query_SQL.sql`)

- 🔄 **Gestione vendita**: update automatico delle quantità in stock dopo una transazione
- 📊 **Media vendite per categoria**
- ⚠️ **Individuazione prodotti sotto soglia restock**
- ♻️ **Restock automatizzato per categoria** con soglie personalizzate
- ✅ **Verifica post-operazione di rifornimento**

---

## 🛠️ Tecnologie utilizzate

- SQL (DDL + DML + transazioni)
- Modellazione dati relazionale
- JOIN complesse
- Funzioni condizionali (`CASE`, `AVG`)
- Gestione `START TRANSACTION`, `ROLLBACK`, `COMMIT`

---

## 👨‍💻 Contributo personale

Salvatore Fornaro – progettazione E/R, schema logico, implementazione SQL, scrittura query transazionali e ottimizzazione del processo di restock.
