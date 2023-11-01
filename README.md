# Wspaniałe zadanie na Centrum przetwarzania baz danych

Rozwiązanie zadania domowego zadanego przez Pana Dr Inż Wojciecha Thomasa
***Szczególnie polecam korzystanie z terminala SSH np. PuTTy (ułatwia to kopiowanie i wklejanie)***
1. Na maszynie PhotonOS nie ma zainstalowanego Gita, dlatego można to zrobić komendą `sudo yum install git`
2. Aby skopiować repozytorium należy użyć komendy `git clone <Link>`
3. Po skopiowaniu możemy sprawdzić, znajdujący się wewnątrz skrypt. Aby go uruchomić należy nadać mu uprawnienia `sudo chmod +x ./skrypt.sh` a następnie włączyć komendą `./skrypt.sh`. Skrypt update'uje naszego photona oraz instaluje docker composera

- Apache2
  Aby uruchomić naszą stronę, należy na początku w folderze o tej samej nazwie uruchomić komendę `docker build -t apache2 .` **ważna jest kropka na końcu** która to stworzy obraz, a następnie włączyć kontener komendą `docker run -d --name <nazwa> -p 8080:80 apache2`
Możemy zobaczyć naszą stronę w przeglądarce poprzez adres `localhost:88` po uprzednim przekierowaniu portów.
Kontener wyłączyć możemy poprzez komendę `docker stop <nazwa>`

- Skrypt Pythona
  Podobnie jak w przypadku strony Apache2, warunkami początkowymi jest bycie w odpowiednim katalogu (tutaj nazwanym composetest). Po upewnieniu się, że jesteśmy w odpowiednim folderze, możemy uruchomić zbiór kontenerów komendą `docker-compose run`. Po pobraniu wszelkich plików, możemy sprawdzić nasz skrypt w przeglądarce korzystając z adresu `localhost:80`. Zbiór kontenerów możemy wyłączyć za pomocą kombinacji klawiszy `ctrl+c` w okienku z pracującymi kontenerami.
  
- Wordpress z MariaDB oraz PHPMyAdmin
  Tutaj tak samo jak w przypadku skryptu pythona, musimy być w odpowiedniej lokalizacji (nazwanej w tym repo WordMariaPHP), a następnie przy pomocy komendy `docker-compose run` uruchomić kontenery. Po wstępnej konfiguracji możemy wejść na stronę tytułową Wordpressa pod adresem `localhost:81`, natomiast strona tytułowa PHPMyAdmin znajduje sie pod adresem 'localhost:82'. Aby wyłączyć działania kontenerów, należy użyć kombinacji `ctrl+c`.

|Nazwa| Port Hosta/Host Port | Port Gościa/ Guest Port |
|-----|----------------------|-------------------------|
|HTTP Apache2| 88 | 8080|
|HTTP Python|  80 | 8000|
|PHPMyAdmin| 82| 8002|
|SSH| 2022| 22|
|Wordpress| 81 | 8001|


Garść przydatnych komend:
- cd .. - wyjście z obecnej biblioteki wyżej
- sudo -i - wejście w tryb root
- docker-compose -v - wyświetlenie wersji docker composera
- docker ps - wyświetlenie aktywnych kontenerów (flaga -a wyświetla wszystkie, nawet te nieaktywne)
- docker rm - usuwanie kontenerów

Kącik PuTTy:
Wklejanie -> Prawy przycisk myszy (WAŻNE! należy skopiować tekst z np.przeglądarki ctrl+c, a nie myszą)
Kopiowanie -> Po zaznaczeniu wybranego tekstu naciśnij enter
