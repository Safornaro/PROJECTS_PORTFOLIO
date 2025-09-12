# 📊 Fintech Customer Churn Analysis: From Historical Insights to Predictive Modeling and Clustering

Il mio lavoro ha avuto come obiettivo l’analisi di un **dataset bancario** che ho associato ad una fintech immaginaria da me ideata, chiamata **N Finance**.  
L’intero progetto è stato costruito per analizzare i clienti che hanno abbandonato l'azienda, **identificare i clienti a rischio abbandono**, comprenderne i motivi attraverso l’analisi dei loro comportamenti  e sviluppare un **modello di machine learning** capace di prevedere con accuratezza i futuri churn.  

Infine, ho realizzato una **dashboard interattiva in Power BI**, pensata per supportare i **decision maker dell’azienda** nel monitoraggio continuo dei clienti e nella definizione di strategie di fidelizzazione mirate.

Il lavoro è stato svolto con un approccio end-to-end, che parte da un dataset grezzo, prosegue con la pulizia, ingegnerizzazione delle variabili, modellazione predittiva, clustering e si conclude con la realizzazione di un **report interattivo in Power BI**.

---

## 📁 Dataset

- **Fonte**: [Bank Customer Churn Prediction Dataset – Kaggle](https://www.kaggle.com/datasets/saurabhbadole/bank-customer-churn-prediction-dataset)
- Prima dell’analisi, è stata aggiunta **una colonna chiamata `LastTransactionDate`** per simulare la data dell’ultima transazione e **permettere l’analisi RFM**.
- Sono presenti circa **10.000 clienti**, con variabili come:
  - `CreditScore`, `Age`, `Tenure`, `Balance`, `NumOfProducts`, `HasCrCard`, `IsActiveMember`, `EstimatedSalary`, `Exited` (churn).

---

## 🎯 Obiettivi del Progetto

1. Esplorare e analizzare il dataset per comprendere la distribuzione dei clienti e le principali dinamiche di abbandono.
2. Applicare l’analisi RFM per classificare e targettizzare i clienti in base al loro comportamento storico.
3. Sviluppare un modello di Machine Learning per stimare il rischio di churn su base individuale.
4. Interpretare e spiegare le predizioni del modello tramite i valori SHAP, evidenziando le feature che influenzano maggiormente l’abbandono.
5. Segmentare la customer base in gruppi omogenei attraverso algoritmi di clustering (K-Means).
6. Presentare l’intera analisi tramite un report interattivo realizzato in Power BI, pensato per i decision maker dell’azienda.

---

## 🔧 Panoramica delle fasi

### 1. 🧮 Analisi RFM (Recency, Frequency, Monetary)

- Calcolo delle 3 componenti RFM a partire da `LastTransactionDate`.
- Costruzione dello score `RFM_Score` (es: 523).
- Calcolo della probabilità media di abbandono per ogni score.
- Assegnazione del livello di rischio: **Basso / Medio / Alto**.

Output:
- `RFM_Score`, `RFM_Churn_Risk`, `RFM_ChurnRisk_level`

---

### 2. 🤖 Machine Learning – XGBoost

- Dopo un primo test con il modello **Logistic Regression**, ho scelto di utilizzare il modello **XGBoost** per via delle migliori performance di accuratezza.
- Feature usate per addestrare il modello:
  `CreditScore`, `Age`, `Tenure`, `Balance`, `NumOfProducts`, `HasCrCard`, `IsActiveMember`, `EstimatedSalary`, `Recency`
- Target: `Exited`

#### 📈 Prestazioni di XGBoost sul test set:
Accuracy 91.3% 
ROC AUC score 0.975

Output nel dataset:
- `XGBoost_Churn_Risk` (probabilità)
- `XGB_ChurnRisk_level` (Basso / Medio / Alto)
- `Risk_Comparison` tra approccio RFM e ML

---

### 3. 🧠 Explainability con SHAP

- Ho utilizzato `SHAP.TreeExplainer()` per spiegare le predizioni del modello XGBoost.
- Effettuato un analisi globale delle feature più importanti (grafici barplot e beeswarm).
- Effettuato un analisi locale per singolo cliente: per spiegare graficamento il "motivo" per cui un cliente è considerato a rischio.

Output:
- Tabella `shap_explanations` contenente per ogni cliente il contributo (positivo o negativo) di ogni feature alla probabilità di churn.

---

### 4. 👥 Segmentazione clienti con modello di Clustering (K-Means)

- Selezione delle feature più significative per il clustering:
  `CreditScore`, `Age`, `Balance`, `Tenure`, `NumOfProducts`, `EstimatedSalary`, `Recency`
- Standardizzazione delle variabili
- Riduzione dimensionale con **PCA** (2 componenti) per visualizzazione
- Clustering con **K-Means** in 4 cluster utilizzando il metodo Elbow

Output:
- `Cluster` (etichetta)
- `PCA_x`, `PCA_y` (per grafico a dispersione)
- Analisi descrittiva per ogni cluster

---

### 5. 📊 Report Interattivo in Power BI

Il progetto si conclude con la creazione di un **report interattivo in Power BI** strutturato in **più pagine tematiche**, che permette a manager e stakeholder aziendali di esplorare facilmente insight, rischi, segmentazioni e profili clienti.

#### 📂 Struttura del Report:

1. **Homepage**  
   → Pagina di introduzione al report, logo aziendale, pulsante “Get started”

2. **Customer Overview**  
   → KPI, Overview dei clienti, distribuzioni per età, credit score, nazione, prodotti, saldo

3. **Churn Analysis**  
   → Analisi storica dei clienti churned, percentuale di abbandono per segmento, comportamento pre-abbandono

4. **Churn Prediction**  
   → Confronto tra previsione di rischio RFM e previsione di rischio del modello XGBoost, percentuali clienti ad alto rischio

5. **SHAP Explanation**  
   → Visualizzazioni delle feature più influenti e dei singoli clienti con spiegazione

6. **Cluster & Target**  
   → Analisi per cluster, KPI aggregati, churn rate per segmento, PCA scatterplot

7. **Customer Profile**  
   → Scheda cliente interattiva con dettaglio dei dati, rischio, cluster, driver churn

---

## 🧠 Tecnologie utilizzate

| Linguaggio / Tool    | Utilizzo principale |
|----------------------|---------------------|
| **Python**           | Analisi dati, RFM, ML, SHAP, Clustering |
| **Pandas / NumPy**   | Manipolazione dati |
| **Scikit-learn**     | Preprocessing, PCA, Clustering |
| **XGBoost**          | Addestramento modello predittivo |
| **SHAP**             | Explainable AI |
| **Power BI**         | Report interattivo e visualizzazione finale |

---

## ✅ Risultati principali

- Raggiunta un’**accuracy del 91.3%** nella previsione dei clienti a rischio.
- **XGBoost outperform** rispetto alla regressione logistica iniziale.
- Individuati **cluster chiave** per targettizzazione clienti.
- Realizzata un’interfaccia chiara e moderna, utile per l’uso business.
- Approccio completo: dalla data engineering al delivery di insight.

---

## 🏁 Conclusioni

Questo progetto mostra come sia possibile combinare **analisi descrittiva**, **modelli predittivi**, **tecniche di interpretabilità** e **clustering** per trasformare dati grezzi in **decisioni strategiche** orientate al cliente.

Attraverso una dashboard chiara e navigabile, i decision maker possono:
- Monitorare i segnali di abbandono in tempo reale  
- Capire perché un cliente sta per lasciare  
- Segmentare la clientela per valore e rischio  
- Attivare campagne mirate di retention

---

📌 *Progetto sviluppato da [Salvatore Fornaro](https://www.linkedin.com/in/salvatore-fornaro/) – Data Analyst & BI Specialist*
