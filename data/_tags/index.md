---
title: Tagi | Oldschoolprogrammer
author: Antek
description: Tagi na blogu {{ site.brand }}
layout: default
permalink: /tags/index
---
<ul>
{% for tag in site.tags -%}
    {% unless tag.permalink == '/tags/index' -%}
    <li><h4><a href="{{ tag.permalink }}">{{ tag.tag }}</a></h4></li>
    {%- endunless %}
{%- endfor %}
</ul>