---
title: Strona kategorii kulisy | Oldschoolprogrammer
author: Antek
layout: default
description: Kategoria kulisy
category: kulisy
---
# Dla osób ciekawych, co się znajduje za kulisami umożliwiam dostęp do tych plików
-----

{% for post in site.categories.kulisy %}
    - [{{ post.title }}]({{ post.url }})
###### {{ post.date | date: "%b %-d, %Y" }}
{% endfor %}
