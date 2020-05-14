# Analisi di un Sistema M/M/1+G Gestito Secondo la Politica FCFS con Exact Admission Control

Il modello di simulazione studiato è una variante del modello riportato in nella sezione 2 dell'articolo "Analysis of an M/M/1+G System Operated under the FCFS Policy with Exact Admission Control". A tale
scopo è stata utilizzata la piattaforma OMNeT++ 5.6.1 modificando opportunamente alcuni moduli
presenti nella libreria 'queueinglib'. La nuova libreria, utilizzata nella fase di simulazione, è stata chiamata
'pssqueueinglib'.

## Contenuti

- Introduzione
- Modello
  - Rete
  - Configurazioni
- Misure di Prestazione
- Risultati Sperimentali
  - Numero di Rilevazioni
  - Transiente Iniziale
  - Analisi dei Valori
  - Tempo di Risposta
  - Tempo di Permanenza
    - Minimo
    - Massimo
    - Medio
  - Job non Serviti
- Conclusioni
  - lambda = 1.0, mu = 4.0
  - lambda = 2.0, mu = 3.0
  - Analisi dei Risultati
- Codice Sorgente
  - network.ned
  - omnetpp.ini
  - Job (pssqueueinglib)
    - Job.h
    - Job.cc
  - Source (pssqueueinglib)
    - Source.ned
    - Source.cc
  - Router (pssqueueinglib)
    - Router.ned
    - Router.h
    - Router.cc
  - SelectionStrategies (pssqueueinglib)
    - SelectionStrategies.h
    - SelectionStrategies.cc
  - Server (pssqueueinglib)
    - Server.ned
    - Server.h
    - Server.cc
- Grafici
  - Network.sink.lifeTime:vector \[medie\]
  - Network.passiveQueue*.queueLength:vector \[medie\]
- Configurazioni

## Repository

- [progettoss](https://github.com/samueleevangelisti/ProgettoSS/tree/master/progettoss): progetto del sistema creato utilizzando OMNeT++
- [pssqueueinglib](https://github.com/samueleevangelisti/ProgettoSS/tree/master/pssqueueinglib): libreria ottenuta personalizzando la libreria queueinglib aggiungendo le funzionalità necessarie alla simulazione della rete
- [csvresults](https://github.com/samueleevangelisti/ProgettoSS/tree/master/csvresults): risultati delle simulazioni per ogni configurazione convertiti in .csv
- [Notebook.ipynb](https://github.com/samueleevangelisti/ProgettoSS/blob/master/Notebook.ipynb): notebook utilizzato per analizzare i dati ottenuti
- [Relazione.pdf](https://github.com/samueleevangelisti/ProgettoSS/blob/master/Relazione.pdf): relazione sulla simulazione effettuata
- [Presentazione.pdf](https://github.com/samueleevangelisti/ProgettoSS/blob/master/Presentazione.pdf): presentazione della relazione e dei risultati ottenuti

## Riferimenti

- [Sudipta Das, Debasis Sengupta and Lawrence Jenkins, Analysis of an M/M/1+G System Operated under the FCFS Policy with Exact Admission Control, 2012.](http://www.isical.ac.in/~asu/TR/TechRepASU201207.pdf)
