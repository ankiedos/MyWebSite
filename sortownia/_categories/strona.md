---
title: Strona kategorii strona | Oldschoolprogrammer
author: Antek
description: Kategoria strona
category: strona
layout: default
---
Wszystko, co jest rdzeniem witryny
-----
{% assign strona = site.categories.strona | sort "date" %}
{% for post in strona %}
    - [ {{ post.title }} ]( {{ post.url }} )
###### {{ post.date | date: "%b %-d, %Y" }}
{% endfor %}