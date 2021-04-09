---
title: "Artykuły | Oldschoolprogrammer"
author: Antek
description: Artykuły
layout: default
---

{%- for post in site.posts -%}

[{{ post.title | truncatewords 3, "" }}]({{ post.url | relative_url }}) - {{ post.date }}, autor: {{ post.author }}

{%- endfor -%}