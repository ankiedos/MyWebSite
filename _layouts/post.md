---
layout: default
---
<h1>{{ page.title }}</h1>
<p class="view"><small>{{ page.date | date_to_string }}</small> - {{ page.author }}</p>

<p>{{ content }}</p>

{% if page.tags %}
  <small>tagi:
  {%- for tag in page.tags -%}
  <em><a href="{{ '/tags/' | relative_url | append: tag }}">{{ tag }}</a> </em>
  {%- endfor -%}
  </small>
{% endif %}