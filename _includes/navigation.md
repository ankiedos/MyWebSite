---
title: navigation.md | Oldschoolprogrammer
author: Antek
description: pasek nawigacji
category: kulisy
---
<h4>{% for item in site.data.navigation %}
        <a href="{{ item.link }}" {% if page.url == item.link %} class="current"{% endif %}>
            {{ item.name }}
        </a>
    {% endfor %}
</h4>