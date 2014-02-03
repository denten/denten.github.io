---
layout: cats
permalink: /publications/
title: publications 
---

Test. 7.

<div class="page">
{% for post in site.categories[page.title] %}
{% if post.title != null %}

    <li itemprop="name">
         <a href="{{ post.url }}" itemprop="url">{{ post.title | capitalize }}</a>
    </li>

{% endif %}
{% endfor %}
</div>
