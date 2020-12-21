---
title: Strona tagu blog | Oldschoolprogrammer
author: Antek
description: Tag blog
tag: blog
---
Wszytko, co dotyczy bloga
-----

{% for blog_ in site.tags.blog %}
    - [ {{ blog_.title }} ]( {{ blog_.url }} )
###### {{ blog_.date | date: "%b %-d, %Y" }}
{% endfor %}
