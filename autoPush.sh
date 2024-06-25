#!/bin/bash

# Esegui il comando per ottenere l'indirizzo IP pubblico
IP_PUBBLICO=$(dig +short myip.opendns.com @resolver1.opendns.com)

# Creare un file di testo chiamato "my-ip.txt"
echo -n "$IP_PUBBLICO" > my-ip.txt

# Aggiungere il file al repository Git
git add my-ip.txt

# Committare i cambiamenti con un messaggio descrittivo
git commit -m "Inserito l'indirizzo IP pubblico nel file my-ip.txt"

# Pushare il mio repository su GitHub
git push --all 

