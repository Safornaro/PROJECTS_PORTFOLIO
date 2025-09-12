# 🏨 Progetto Excel – Gestione strutture ricettive Regione Marche

Progetto realizzato come esercitazione finale per il modulo Excel del corso in Data Analytics.

## 📌 Obiettivo

Supportare la Regione Marche nella gestione delle strutture ricettive del territorio, sviluppando un sistema che analizzi e visualizzi:
- L’elenco completo delle strutture
- I prezzi medi per città
- La relazione tra categoria e numero di strutture per città

## 🗂️ File utilizzati

- `ELENCOSTRUTTURE.xlsx`: dati completi delle strutture (nome, città, categoria, ecc.)
- `PREZZIMEDI.csv`: elenco dei prezzi medi delle strutture per città
- `MODELLO DATI.xlsx`: file finale con modello relazionale e trasformazioni applicate

---

## 🔧 Attività svolte

### 🟡 Esercizio 1 – Ricerca dinamica
- Inserito menù a tendina in `C3` per selezionare il nome della struttura
- Popolate dinamicamente le celle azzurre con informazioni sulla struttura selezionata (nome, categoria, città, ecc.)
- Calcolati:
  - Totale delle strutture in regione
  - Numero di strutture nella stessa città della struttura selezionata

### 🟢 Esercizio 2 – Tabella Pivot
- Creata tabella pivot in un foglio chiamato `PIVOT`
- Visualizzato il numero di strutture per **categoria**
- Aggiunto filtro dinamico per **città**

### 🔵 Esercizio 3 – Power Query + Power Pivot
- Importati i dati da `ELENCOSTRUTTURE` e `PREZZIMEDI`
- Eseguite trasformazioni:
  - Rimozione righe vuote
  - Normalizzazione maiuscole/minuscole
  - Pulizia degli spazi
- Caricate entrambe le tabelle nel **modello dati**
- Creata relazione tra le due tabelle (Città)
- Pronto per analisi con Power Pivot e visualizzazioni future

---

## 🎯 Competenze applicate

- Excel avanzato
- Power Query
- Power Pivot
- Modellazione dati relazionale
- Tabelle pivot
- Formule dinamiche e riferimenti incrociati

---

## 🧠 Note

Progetto pensato per simulare un'esigenza reale di gestione dati nel settore turistico pubblico, con particolare attenzione all'automazione e all'integrità del modello dati.


