---
title: Tagi | Oldschoolprogrammer
author: Antek
description: Tagi
tag: tagi
layout: default
---
{% assign tags = site.tags | sort: "title" %}
    {% for tag in tags %}
      [ {{ tag.title }} ]( {{ tag.url | relative_url }} )
      {{ tag.content }}
    {% endfor %}