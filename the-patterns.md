---
layout: default
title: The Green Patterns
---

Here is a catalog of energy patterns that you can use to improve the energy efficiency of your code. All these patterns are provided in the latest edition of **The Green Codeck**.

{% for pattern in site.the-patterns %}
{% assign slugified_name = pattern.name | slugify %}
- [{{pattern.name}}]({{ '/the-patterns/' | append: slugified_name | relative_url }})
{% endfor %}


