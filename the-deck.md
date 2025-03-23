---
---
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Software Design Patterns Deck</title>
	<link rel="stylesheet" href="{{ '/assets/css/deck.css' | relative_url }}">
</head>
<body>
    <div class="deck">
        {% for pattern in site.the-patterns%}
        {% include pattern_card.html pattern=pattern %}
        {% endfor %}
    </div>
</body>

