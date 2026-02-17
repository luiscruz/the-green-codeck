---
layout: default
title: All Patterns
---
<link rel="stylesheet" href="{{ '/assets/css/card.css' | relative_url }}">

Here is a catalog of **{{ site.the-patterns | size }} energy patterns** that you can use to improve the energy efficiency of your code. All these patterns are provided in the latest edition of **The Green Codeck**.

<a href="{{ '/shuffle' | relative_url }}" class="btn"><span>&#8635;</span> Shuffle a random pattern</a>

{% for category in site.data.categories %}
{% assign cat_patterns = site.the-patterns | where: "category", category.name %}
<h3><span style="display:inline-block;width:12px;height:12px;border-radius:50%;background-color:#{{ category.background }};margin-right:6px;vertical-align:middle;"></span>{{ category.suit }} {{ category.name }} ({{ cat_patterns | size }})</h3>

{% for pattern in cat_patterns %}
{% assign slugified_name = pattern.name | slugify %}
- [{{ pattern.name }}]({{ '/the-patterns/' | append: slugified_name | relative_url }})
{% endfor %}

{% endfor %}

Know a pattern that's missing? [Contribute on GitHub](https://github.com/{{ site.github_username }}/the-green-codeck).
