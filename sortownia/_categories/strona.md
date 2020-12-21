---
title: Strona kategorii strona | Oldschoolprogrammer
author: Antek
description: Kategoria strona
category: strona
---
# Wszystko, co jest rdzeniem witryny
-----

{% for post in site.categories.strona %}
    - [{{ post.title }}]({{ post.url }})
###### {{ post.date | date: "%b %-d, %Y" }}
{% endfor %}
