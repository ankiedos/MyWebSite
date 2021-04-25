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
    {% if post.release_date and post.release_date != post.date %}
    <a href="{{ post.url | relative_url }}">{{ post.title }}</a> - od {{ post.date | date: "%Y-%m-%d" }} do {{ post.release_date | date: "%Y-%m-%d" }}, autor: {{ post.author }}
    {% else %}
    <a href="{{ post.url | relative_url }}">{{ post.title }}</a> - {{ post.date | date: "%Y-%m-%d" }}, autor: {{ post.author }}
    {% endif %}
    <br>
    {{ post.excerpt | markdownify}}
  </li>
{%- endfor -%}
</ul>