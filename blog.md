---
title: Artykuły \| Oldschoolprogrammer
author: Antek
description: Artykuły
tag: strona
layout: default
permalink: /articles
---
<ul>
{%- for post in site.posts -%}
  <li>
    <a href="{{ post.url | relative_url }}">{{ post.title }}</a> - {{ post.date | date: "%Y-%m-%d" }}, autor: {{ post.author }}
    <br>
    {{ post.excerpt | markdownify}}
  </li>
{%- endfor -%}
</ul>