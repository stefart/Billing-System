 # Billing System
## Panoramica Generale
L’applicazione è stata sviluppata per fornire un sistema di elenco e gestione delle fatture verso i clienti. Di seguito vengono elencate le caratteristiche di tutti i principali componenti che caratterizzano l’applicazione:

## Cliente
Una volta eseguita l’applicazione, la prima schermata che l’utente incontra è la schermata riassuntiva dei clienti e del loro saldo attuale. Vengono visualizzato immediatamente i clienti non ancora fatturati o che non hanno nessuna fattura a loro carico.
L’oggetto cliente viene inizializzato dall’apposita schermata tramite l’inserimento di:
-Nome
-Cognome
-Indirizzo di Residenza
-Numero di Telefono
Non è possibile omettere uno di questi campi ed è possibile editarli in qualunque momento, una volta creato l’account, sempre collegandosi all’apposita schermata di modifica tramite il pulsante “Modifica” posto vicino ciascuna voce cliente .

![Client Preview 1](https://raw.githubusercontent.com/stefart/Billing-System/master/images/clients_1.png)
![Client Preview 2](https://raw.githubusercontent.com/stefart/Billing-System/master/images/clients_2.png)
![Client Preview 3](https://raw.githubusercontent.com/stefart/Billing-System/master/images/clients_3.png)

## Fattura
La fattura è composta da voce, numero di ore effettuate, e tariffa oraria. E’ possibile inserire più di una fattura per utente, ma ogni fattura può contenere una sola voce di addebito. Cliccando sull’utente per visualizzarne il relativo stato, è possibile inoltre visualizzare la singola fattura o una lista contenente tutte le fatture collegate all’utente, le relative voci, quantità d’ore e tariffe orarie. Viene visualizzato anche il totale e un riassunto dei dati del cliente.

![Bill Preview 1](https://raw.githubusercontent.com/stefart/Billing-System/master/images/bill_1.png)
![Bill Preview 1](https://raw.githubusercontent.com/stefart/Billing-System/master/images/bill_2.png)
![Bill Preview 1](https://raw.githubusercontent.com/stefart/Billing-System/master/images/bill_3.png)


## Tariffa Oraria
E’ possibile visualizzare la tariffa oraria cliccando il pulsante “Tariffa Oraria” dalla schermata iniziale. Successivamente è possibile impostarla cliccando sul pulsante “Modifica”. La tariffa oraria una volta impostata sarà valida per tutte le successive fatture.

![Tariffa Oraria Preview 1](https://raw.githubusercontent.com/stefart/Billing-System/master/images/tariffa_1.png)
![Tariffa Oraria Preview 2](https://raw.githubusercontent.com/stefart/Billing-System/master/images/tariffa_2.png)

-------------
Il risultato del test di copertura è riassunto in /coverage/index.html. Si tenga presente che il test effettuato sulla creazione della fattura fallisce a causa di un problema di cucumber nell'interpretazione del codice sorgente, nel momento in cui recupera la variabile della tariffa oraria.
Rendendo il codice interpretabile (inserendo una tariffa oraria costante a soli fini di test, in quanto una tariffa oraria impostata come costante nel codice sorgente rende l'intero progetto inutilizzabile) la copertura passa dal [75%](https://github.com/stefart/Billing-System/commit/891d6e7c4f20a5d0989048ab7f1dd46656d9078e) all' [80%](https://github.com/stefart/Billing-System/commit/891d6e7c4f20a5d0989048ab7f1dd46656d9078e).
