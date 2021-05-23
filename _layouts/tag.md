---
layout: default
tag: {{ page.tag }}
---
<div>
  {%- include breadcrumbs.html %}
  {{ content }}
  <h1>Tag: {{ page.tag }}</h1>
  <ul>
    {% for post in site.posts %}
    {%- if post.tags contains page.tag %}
    <li>
        <a href="{{ post.url | relative_url }}">{{ post.title }}</a> - {{ post.date | date: "%Y-%m-%d" }}, autor: {{ post.author }}
        <br>
        {{ post.excerpt | markdownify }}
    </li>
    {%- comment -%}
    <!-- <dd>
      {% assign tags = post.tags | sort %}
      Tagi:
      {% for tag in tags %}
      <a href="{{ site.baseurl }}/tags/{{ tag }}">{{ tag }}</a>
      {% endfor %}
    </dd> -->
    {%- endcomment -%}
    {% endif -%}
    {%- endfor %}
  </ul>
</div>