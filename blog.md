---
title: Artykuły | Oldschoolprogrammer
author: Antek
description: Artykuły
layout: default
---

{% for post in site.posts %}
[{{ post.title }}]({{ post.url }}) - {{ post.date }}, autor: {{ post.author }}
{% endfor %}