---
title: Blog | Oldschoolprogrammer
author: Antek
description: Blog
category: strona
tags: strona blog
---
# Artykuły

  {% for post in site.posts %}
- ## [ {{ post.title }} ]( {{ post.url }} )
-----
	{{ post.excerpt }}
  {% endfor %}
