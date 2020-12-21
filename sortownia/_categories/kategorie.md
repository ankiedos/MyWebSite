---
title: Kategorie | Oldschoolprogrammer
author: Antek
description: Kategorie
category: kategorie
layout: default
---
{% assign categories = site.categories | sort: "title" %}
    {% for cat in categories %}
      [ {{ cat.title }} ]( {{ cat.url | relative_url }} )
      {{ cat.content }}
    {% endfor %}