# Używamy obrazu bazowego Alpine
FROM alpine

# Instalujemy polecenia i narzędzia potrzebne do pracy w kontenerze
RUN apk update && apk add --no-cache bash

# Dodajemy skrypt pluto.sh do kontenera
COPY pluto.sh /pluto.sh

# Nadajemy uprawnienia do wykonania skryptu
RUN chmod +x /pluto.sh

# Uruchamiamy skrypt pluto.sh przy starcie kontenera
CMD ["/pluto.sh"]
