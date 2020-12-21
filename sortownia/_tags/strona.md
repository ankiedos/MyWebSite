---
title: Strona tagu strona | Oldschoolprogrammer
author: Antek
description: Tag strona
tag: strona
---
Wszystko, co jest rdzeniem całej strony
-----

{% for post in site.tags.strona %}
    - [ {{ post.title }} ]( {{ post.url }} )
###### {{ post.date | date: "%b %-d, %Y" }}
{% endfor %}
