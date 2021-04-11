---
title: Artykuły \| Oldschoolprogrammer
author: Antek
description: Artykuły
layout: default
---

{%- for post in site.posts -%}

- [{{ post.title }}]({{ post.url | relative_url }}) - {{ post.date | date: "%Y-%m-%d" }}, autor: {{ post.author }}
    {{ post.excerpt }}
{%- endfor -%}