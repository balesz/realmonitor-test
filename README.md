# Realmonitor teszt feladat

Az feladat architektúrájának alapja a [riverpod](https://pub.dev/packages/riverpod) reaktív állapotkezelő csomag. Ez véleményem szerint a legrugalmasabb állapotkezelő megoldás jelenleg. Azokat a widget-eket, amelyek használhatják az üzleti logikát leíró riverpod-os provider-eket view-nak hívom. View lehet egy teljes képernyő, de lehet annak csak egy része is. Azokat a widget-eket fogom widget-nek hívni, melyek csak az átadoott paraméterektől függnek és a nincsenek bennük használva provider-ek. 

A `task.sh` állományban találhatóak a projekt kezeléséhez szükséges alapvető parancsok. Erre a feladatra általában a [taskfile](https://taskfile.dev) nevű alkalmazást használom, de nem akartam extra függőséggel terhelni a projektet. A `./task.sh run` parancs indításával fut az alkalmazás. Ezen parancs futtatásához szükség van egy `.env` állományra is, amiben a `TOKEN` kulcsnak kell szerepelnie. Értékének pedig az általatok adott link url-jében szereplő `token` query paraméter értékének kell lennie. Feltételezem, hogy ez a query paraméter szolgál az autentikáláshoz, ami nem egy biztonságos megoldást. Főleg akkor nem, ha kiteszem a kódot github-ra egy publikus repository-ba. Ezért tettem külön `.env` fájlba, amit nem teszek fel github-ra.

## Projekt struktúra

A `lib` könyvtárban a következő struktúra található:

- api: itt van a REST API eléréshez szükséges class
- controller: itt az adott kepernyő, vagy funkcionalitás interakcióihoz köthető hívásokat tartalmazó controller-ek vannak
- data: itt azon provider-ek vannak definiálva, melyek az api-ban definiált hívásokat használva elérhetővé teszik a rendszer számára a nyers adatokat reaktív módon
- model/api: itt vannak definiálva a REST híváskhoz szükséges request/response data class-ok 
- model/state: itt vannak a felhasználói felület működtetéséhez szükséges state definíciók
- presentation: az alkalmazás ui specifikus állományai kerülnek ide mint például a view-k vagy widget-ek
- state: az alkalmazás állapotkezeléséhez szükséges provider-ek kerülnek ide

### Api

Mivel ez egy teszt feladat így egy nagyon egyszerű REST API réteg lett csak implementálva. Valódi alkalmazásnál a [chopper](https://pub.dev/packages/chopper) generátort használnám a REST API kliens generálásához. A model/api könyvtárban lévő adat osztály definíciókat az <https://app.quicktype.io/> segítségével generáltam le. Normál esetben ehhez a [freezed](https://pub.dev/packages/freezed) generátort használnám, de itt a teszt miatt egyszerűbb volt a json alapján generálni.

### Data

A data könyvtárban vannak az adatelkérést elvégző provider-ek. Az állapotkezelő provider-ek ezek alapján tudják majd előállítani a saját állapotterüket. Ha frissíteni kell az UI állapotterét, akkor az itt megtalálható megfleleő provider-eket kell frissíteni ahhoz, hogy minden az adott data provider-hez kapcsolt állapotkezelő provider reaktívan frissüljön.

### State

Az egész alkalmazás legfontosabb része a state réteg. Ebben a rétegen hozzuk létre azokat a provider-eket, amelyek meghatározzák, hogy hogyan viselkedjen az adott view. Csak ez a réteg használhatja a data rétegben definiált provider-eket.

### Controller

A controller rétegben definiáljuk azokat az osztályokat, meleyeket a view-k használnak arra, hogy valamilyen action-t - például frissítés - indítsanak. Az action-nek általában valamilyen hatása van az állapottérre. Ez a hatás lehet csak lokális, de lehet olyan is, ami egy távoli hívás eredményétől függően frissíti az állapotteret.

### Presentation

Ide kerülnek a view-k és widget-ek. A teszt feladathoz nem bontottam még további alkönyvtárakba, de több funkciónál külön könyvtárakba érdemes bontani a view-kat. Az általános widget-eket is ebben a könyvtárban érdemes tárolni egy widgets alkönyvtárba. Az általános widget-eknek nem szabad provider-eket használni. Azoknak pure flutter widget-eknek kell lenniük. így egyszerűbben lehet az üzleti logikától függetlenül fejleszteni/tesztelni őket.
