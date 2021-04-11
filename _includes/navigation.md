<h4>
  {%- for item in site.data.navigation -%}
    <a href="{%- if ghp -%}{{ item.link | prepend: "https://ankiedos.github.io/" }}{%- else -%}{{ item.link }}{%- endif -%}"{% if page.url == item.link | prepend: "https://ankiedos.github.io/" or page.url == item.link | prepend: "http://127.0.0.1:4000/" %} class="current" {% endif %}>{{ item.name }}</a>
                       <!-- ^~~{% if page.url == item.link %} class="current" {% endif %} -->
  {%- endfor -%}
</h4>
