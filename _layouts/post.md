---
layout: default
---
<h1>{{ page.title }}</h1>

{%- if page.release_date and page.release_date != page.date %}
<p class="view"><small>od {{ page.date | date_to_string }} do {{ page.release_date | date_to_string }}</small> - {{ page.author }}</p>
{% else %}
<p class="view"><small>{{ page.date | date_to_string }}</small> - {{ page.author }}</p>
{% endif %}
<p>{{ content }}</p>

{% if page.tags %}
  <small>tagi:
  {%- for tag in page.tags -%}
  <em><a href="{{ '/tags/' | relative_url | append: tag }}">{{ tag }}</a> </em>
  {%- endfor -%}
  </small>
{% endif %}