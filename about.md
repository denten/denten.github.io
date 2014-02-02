---
layout: page
title: About
---

<p class="message">
  Hey there! This page is included as an example. Feel free to customize it for your own use upon downloading. Carry on!
</p>

In the novel, *The Strange Case of Dr. Jeykll and Mr. Hyde*, Mr. Poole is Dr. Jekyll's virtuous and loyal butler. Similarly, Poole is an upstanding and effective butler that helps you build Jekyll themes. It's made by [@mdo](https://twitter.com/mdo).

<h2 itemprop="headline">{{ page.title }}</h2>
{% if site.categories != empty %}
    <ul id="categories-list" class="clearfix" itemscope itemtype="http://schema.org/BlogPosting">
        {% for category in site.categories %}
            <li itemprop="name">
                <a class="category" href="#{{ category[0] | cgi_escape }}" itemprop="url">{{ category[0] | capitalize }}
                <span class="size" title="number of posts" itemprop="contentRating">{{ category[1].size }}</span></a>
            </li>
        {% endfor %}
    </ul>
    {% for category in site.categories %}
    <section id="{{ category[0] | cgi_escape }}" itemprop="blogPosts">
        <h3 itemprop="name">{{ category[0] | capitalize }}</h3>
        <ul itemscope itemtype="http://schema.org/BlogPosting">
        {% for post in category[1] %}
            {% if post.title != null %}
                <li itemprop="name">
                    <time datetime="{{ post.date | date_to_xmlschema }}" itemprop="datePublished">
                        {{ post.date | date_to_long_string }}
                    </time>
                    &raquo; <a href="{{ post.url }}" itemprop="url">{{ post.title | capitalize }}</a>
                </li>
            {% endif %}
        {% endfor %}
        </ul>
    </section>
    {% endfor %}
{% else %}
    <span itemprop="text">No categories</span>
{% endif %}
