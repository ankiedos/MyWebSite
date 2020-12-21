---
title: Strona kategorii kulisy | Oldschoolprogrammer
author: Antek
layout: default
description: Kategoria kulisy
category: kulisy
---
Dla osób ciekawych, co się znajduje za kulisami umożliwiam dostęp do tych plików
-----
{% assign kulisy = site.categories.kulisy | sort "date" %}
{% for post in kulisy %}
    - [ {{ post.title }} ]( {{ post.url }} )
###### {{ post.date | date: "%b %-d, %Y" }}
{% endfor %}