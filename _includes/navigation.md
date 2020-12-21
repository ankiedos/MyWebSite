{% for item in site.data.navigation %}
#### [{{ item.name }}]({{ item.link }} {% if page.url == item.link %} "class=\"current\"{% endif %}")<br>
{% endfor %}
