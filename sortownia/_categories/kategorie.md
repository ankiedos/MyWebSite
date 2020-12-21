---
title: Kategorie | Oldschoolprogrammer
author: Antek
description: Kategorie
category: kategorie
---
{% assign categories = site.categories | sort: "title" %}
{% for cat in categories %}
    [{{ cat.title }}]({{ cat.url | relative_url }})
    {{ cat.content }}
{% endfor %}
