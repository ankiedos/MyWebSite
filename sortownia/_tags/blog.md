---
title: Strona tagu blog | Oldschoolprogrammer
author: Antek
description: Tag blog
tag: blog
layout: default
---
Wszytko, co dotyczy bloga
-----
{% assign blog = site.tags.blog | sort "date" %}
{% for blog_ in blog %}
    - [ {{ post.title }} ]( {{ post.url }} )
###### {{ post.date | date: "%b %-d, %Y" }}
{% endfor %}