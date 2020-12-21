---
title: Strona tagu strona | Oldschoolprogrammer
author: Antek
description: Tag strona
tag: paq
layout: default
---
Wszystko, co dotyczy potencjalnie zadawanych pytań (PAQ)
-----
{% assign paq = site.tags.paq | sort "date" %}
{% for post in paq %}
    - [ {{ post.title }} ]( {{ post.url }} )
###### {{ post.date | date: "%b %-d, %Y" }}
{% endfor %}