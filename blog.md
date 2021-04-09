---
title: "Artykuły | Oldschoolprogrammer"
author: Antek
description: Artykuły
layout: default
---

<ul>
{%- for post in site.posts -%}
    <li>
        [{{ post.title }}]({{ post.url | relative_url }}) - {{ post.date | date: "%Y-%m-%d" }}, autor: {{ post.author }}
        {{ post.excerpt }}
    </li>
{%- endfor -%}
</ul>