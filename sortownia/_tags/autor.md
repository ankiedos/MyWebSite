---
title: Strona tagu autor | Oldschoolprogrammer
author: Antek
description: Tag autor
tag: autor
layout: default
---
Wszytko, co dotyczy autorów strony
-----
{% assign autor = site.tags.autor | sort "date" %}
{% for post in autor %}
    {% if post.author == %}
    - [ {{ post.title }} ]( {{ post.url }} )
###### {{ post.date | date: "%b %-d, %Y" }}
{% endfor %}