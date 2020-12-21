---
title: O mnie - Antek | Oldscoolprogrammer
author: Antek
description: O autorze - Antek
category: strona
tags: strona autor
layout: default
---

# O Autorze
- Jeszcze nie jestem programistą z zawodu, ale umiem dużo jeśli chodzi o programowanie... Inaczej bym tej strony nie napisał :)
Chociaż w sumie ani [HTML](https://pl.wikipedia.org/wiki/HTML), ani [Markdown](https://pl.wikipedia.org/wiki/Markdown) to nie programowanie.
- Najbardziej znam się na językach:
  - C,
  - C++,
  - HTML,
  - CSS,
  - Markdown,
  - C#,
  - oraz Fortran
- Strasznie nie lubię języków:
  - Java,
  - JavaScript
  - i Python
- Rozwijam się w kierunku:
  - Q#,
  - CPL (ten stary, z połowy XX wieku, a nie [to coś](https://cplcode.net)),
  - BCPL,
  - D,
  - języków asemblera,
  - administracji systemami operacyjnymi
- Jeszcze jedno: jestem na profilu rozszerzonym z matematyki i fizyki, więc nie jest tutaj tylko o informatyce
-----
# Artykuły
{% for post in site.posts %}
  {% if post.author == "Antek" %}
  - [{{ post.title }}]({{post.url }})
  ###### {{ post.date | date: "%b %-d, %Y" }}
  {% endif %}
{% endfor %}
