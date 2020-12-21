---
title: Strona tagu strona | Oldschoolprogrammer
author: Antek
description: Tag strona
tag: strona
layout: default
---
Wszystko, co jest rdzeniem całej strony
-----
{% assign strona = site.tags.strona | sort "date" %}
{% for post in strona %}
    - [ {{ post.title }} ]( {{ post.url }} )
###### {{ post.date | date: "%b %-d, %Y" }}
{% endfor %}