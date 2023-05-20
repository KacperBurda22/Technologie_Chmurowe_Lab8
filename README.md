Polecenie utworzenia wolumenu : 
    docker volume create RedisRob

Uruchomienie servera redis:
    docker run -d --name redis-server -v RedisRob:/data redis:latest

Sprawdzenie poprawnosci: 
    docker ps

Polecenie budowania obrazu: 
    docker build -f Dockerfile -t lab8docker .

Uruchomienie kontenera limit512: 
    docker run -d --name limit512 -v RemoteVol:/logi --memory=512m lab8docker

Sprawdzenie zawartości pliku "info.log" na wolumenie "RemoteVol" w systemie plików : 
    cat /ścieżka/do/wolumenu/RemoteVol/info.log

Sprawdzenie informacji o ograniczeniach pamięci RAM dla kontenera "limit512":
    docker stats limit512