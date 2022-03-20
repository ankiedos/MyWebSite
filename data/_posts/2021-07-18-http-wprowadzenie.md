---
title: HTTP - wprowadzenie
author: Antek
description: Wprowadzenie do protokołu HTTP
tags: webdev http
layout: post
permalink: /blog/2021/07/18/http-wprowadzenie
release_date: 2021-11-26
---

### Cześć wszystkim!
Na wstępie chciałbym oznajmić, że za niedługo layout strony będzie inny i możliwe, że nawigacja również się trochę zmieni.
Oraz przepraszam za tak długą przerwę...
<!--excerpt-->
# HTTP
HTTP (*Hyper Text Transfer Protocol*), jak sama nazwa mówi, jest protokołem transferu hipertekstu (dokumentów HTML, ***Hyper Text** Markup Language*). Oczywiście można za jego pomocą dokonywać transferu wielu innych zasobów (dokumenty XML, JSON, pliki tekstowe, wykonywalne, archiwa, itd.).
# Metody HTTP
Dzięki HTTP maszyny mogą wykonywać wiele operacji na innych maszynach. Jest to możliwe poprzez liczne <!--czy aby na pewno liczne?--> metody, jakie udostępnia ten protokół.
Są to:
- `GET`
- `POST`
- `PUT`
- `DELETE`
- `PATCH`
## `GET`
Zapytanie `GET` (pol.: dostać) polega na prośbie uzyskania dostępu do określonego zasobu. Zatem nazwa powinna brzmieć `GIVE` (pol.: dać), ponieważ klent prosi serwer, aby "użyczył" (**dał**) jakiś zasób.
## `POST`
Metoda `POST` (pol.: umieścić) polega na prośbie zamieszczenia zasobu pod określonym adresem URI.
## `PUT`
Metoda `PUT` (położyć) ma na celu nadpisanie zasobu.
## `DELETE`
Polega na prośbie o usunięcie zasobu.
## `PATCH`
Metoda mająca na celu "załatanie" (*patching*) zasobu.

# Zakończenie
Myślę, że zajmę się w przyszłych wpisach informatyką teoretyczną i C++, a HTTP, Sinatrę, itp. zostawię na razie.