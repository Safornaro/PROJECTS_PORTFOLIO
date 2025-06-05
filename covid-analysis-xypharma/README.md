# 🦠 Progetto Excel – Analisi COVID-19 per XYFARMA

Progetto realizzato in team durante la Build Week del corso, con l’obiettivo di fornire un’analisi strategica dei dati COVID-19 all’azienda farmaceutica XYFARMA, per supportare la decisione sullo sviluppo di un nuovo vaccino.

## 📌 Obiettivo

Analizzare i dati ufficiali COVID-19 in Italia dal 2020 al 2025, focalizzandosi sull’andamento di contagi, guarigioni, decessi e vaccinazioni. L’analisi è orientata a valutare l’utilità dello sviluppo di un nuovo vaccino per contrastare eventuali nuove varianti.

## 🗂️ File inclusi

- `DataVisualisation_XyPharma_Survey.xlsx` → Report Excel con maschere, tabelle e grafici pivot
- `RelazioneCovid.docx` → Relazione tecnica sull'origine dei dati e struttura delle entità
- `Relazione_Finale.docx` → Relazione conclusiva con interpretazione strategica per il cliente

---

## 🔧 Attività svolte

### 🔹 Fase 1 – Acquisizione e documentazione dei dati
- Recupero dati da fonti ufficiali (curaitalia.it, Protezione Civile, Ministero della Salute)
- Analisi dei metadati
- Classificazione della qualità delle fonti
- Identificazione di entità e attributi descrittivi

### 🔹 Fase 2 – Preparazione dei dati
- Pulizia e standardizzazione tramite **Power Query**
  - Uniformazione nomi regioni (es. Trentino, Friuli)
  - Verifica dei formati
  - Rimozione dati inutili
  - Creazione campo calcolato VACCINATI/DECEDUTI

### 🔹 Fase 3 – Modellazione dati
- Collegamento delle tabelle in **Power Pivot**
- Creazione del modello dati relazionale

### 🔹 Fase 4 – Visualizzazione
- Report suddiviso in fogli:
  - Andamento di contagiati, guariti e deceduti
  - Rapporti Contagiati/Vaccinati, Contagiati/Guariti, Contagiati/Deceduti
  - Effetto dei vaccini sui guariti nel tempo
- Filtro per **regione** e **trimestre**
- Formattazione per stampa su **A4 (PDF)**
- Inserimento logo del Ministero della Salute

---

## 🎯 Risultato

Dall’analisi emerge che:
- Il picco dell’emergenza si è concluso ufficialmente nel maggio 2023
- L’efficacia dei vaccini esistenti rimane elevata, ma potrebbe ridursi con nuove varianti
- I dati **non supportano l’urgenza** di un nuovo vaccino in questo momento

---

## 👨‍🔬 Competenze sviluppate

- Power Query
- Power Pivot
- Modellazione relazionale in Excel
- Data storytelling con tabelle e grafici pivot
- Lavoro in team su briefing aziendale simulato

---

## 🧠 Contributo personale

Salvatore Fornaro – analisi dati, modellazione, redazione relazioni tecniche e costruzione maschere pivot.

