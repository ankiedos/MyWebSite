---
title: "Pierwszy post"
author: Antek
description: "Pierwszy post na blogu"
category: Blog
tags: blog jekyll gh-pages
layout: post
---

### Cześć!
Post trochę spóźniony, bo około 4 godziny wcześniej go napisałem, ale strona się nie budowała. To jest pierwszy post na blogu {{ site.brand }}. Będzie w nim conieco o programowaniu, systemach operacyjnych, stronach internetowych, w tym o Jekyllu oraz o samym blogu.

<!--excerpt-->

Na imię mam Antek, jestem w {{ site.my_grade }} {% if site.my_school == "liceum" -%} klasie liceum na profilu matematyczno-informatycznym grupa fizyczna{% else -%} roku studiów na kierunku informatyka{%- endif -%}.

Swoją przyszłość wiążę z C++ i Haskellem, oprócz tego rozwijam język [C++Script](https://github.com/cpp-script-lang).

W C++ rozwijam projekty takie, jak [silnik do gier konsolowych](https://github.com/ankiedos/Console-Game-Engine), czy też [rozszerzenie do biblioteki standardowej tego języka](https://github.com/ankiedos/library-plus-plus).

Interesuję się informatyką teoretyczną, informatyką kwantową, administracją serwerami Apache i mechaniką kwantową.

### Bardziej informatycznie
Bloga tworzyłem od grudnia 2020 (175 razy coś zmieniałem i dopiero wtedy wstawiłem pierwszy post), ale coś się ciągle psuło. Udało mi się to naprawić dopiero wczoraj.

Opowiem Wam o rozwiązaniu tego problemu, abyście nie musieli się tyle denerwować.

Jeśli tworzycie stronę na GitHub Pages i korzystacie z któregoś tam dostępnego szablonu, a jednocześnie uczycie się Jekylla z [ich oficjalnej strony](https://jekyllrb.com), to zanim stworzycie jakikolwiek styl lub layout, **przeczytajcie informację zawartą w pliku README.md w repozytorium tego szablonu**. Na przykład ja korzystam z szablonu `hacker`, którego strona to https://github.com/pages-themes/hacker.