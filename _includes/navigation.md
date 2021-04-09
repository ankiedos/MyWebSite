<h4>
  {% for item in site.data.navigation %}
    <a href="{{ item.link }}"{% if page.url == item.link %} class="current" {% endif %}>{{ item.name }}</a>
                       <!-- ^~~{% if page.url == item.link %} class="current" {% endif %} -->
  {% endfor %}
</h4>
