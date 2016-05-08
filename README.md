#Architektura serwisów internetowych 2015/16

### Marcin Szpaderski

<b>1. Zaliczenie:</b>
 - [x] [Pomysły na fabułę](https://github.com/jgodziuk/ASI/tree/master/notebooks)
 - [x] [link do wdrożonej na zewnętrznym serwerze aplikacji](https://notebooks-jgodziuk.c9users.io/)
 
| Wersja Ruby   | Wersja Rails   | Baza danych |
|------------|---------|-------------|
|    2.2.4p230   | 5.0.0.beta1.1  | MySQL  |

- Opis aplikacji: Baza danych pomysłów na fabułę do sesji gier RPG</br>
Aby sprawić że MySQL będzie działać na Heroku wystarczy dodać bazę (w moim przypadku) ClearDB MySQL, na przykład z lini poleceń.</br>
$ heroku addons:create cleardb:ignite</br>
Oraz skonfigurować DATABASE_URL, wpierw trzeba poznać URL ClearDB</br>
$ heroku config | grep CLEARDB_DATABASE_URL</br>
Da nam to URL ClearDB, trzeba uważać jakiego GEMa MySQLa się używa ponieważ domyślnie produkuje link 'mysql://...', czyli dla gemu mysql, jeśli korzystamy z gemu mysql2(tak jak w moim projekcie) należy link zmienić na 'mysql2://...'</br>
Po czym musimy wymusić pobieranie bazy danych z mysqla a nie domyślnego adresu:</br>
$ heroku config:set DATABASE_URL='mysql2://...'</br>
</br>
Potrzebujemy jeszcze:</br>
$ heroku run rake db:migrate</br>
Ale to chyba na wszystkich bazach trzeba zrobić tak samo.</br>


<b>2. Egzamin:</b>
 - [ ] [nazwa aplikacji](egzamin)
 - [ ] [link do wdrożonej na zewnętrznym serwerze aplikacji](/)

| Wersja Ruby   | Wersja Rails   | Baza danych |
|------------|---------|-------------|
| - | -  | -  |

- Opis aplikacji: