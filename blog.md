---
title: "Artykuły | Oldschoolprogrammer"
author: Antek
description: Artykuły
layout: default
---

{%- for post in site.posts -%}

[{{ post.title | remove " | Oldschoolprogrammer" }}]({{ post.url | relative_url }}) - {{ post.date }}, autor: {{ post.author }}

{%- endfor -%}