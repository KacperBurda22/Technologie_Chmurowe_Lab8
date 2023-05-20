#!/bin/bash

# Pobieramy aktualną datę i czas
current_date=$(date)

# Pobieramy dostępną ilość pamięci
available_memory=$(free -m | awk '/^Mem/ {print $7}')

# Tworzymy plik info.log i zapisujemy w nim dane
echo "Data utworzenia: $current_date" > /logi/info.log
echo "Dostępna pamięć: $available_memory MB" >> /logi/info.log

# Wyświetlamy zawartość pliku info.log
cat /logi/info.log
