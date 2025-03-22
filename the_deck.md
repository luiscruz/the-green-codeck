---
---
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Software Design Patterns Deck</title>
    <style>
        @page {
            size: A4 portrait;
            margin: 10mm;
        }

        body {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            align-items: center;
            background-color: lightgreen;
            padding: 20px;
        }

        .deck {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(63.5mm, 1fr));
            gap: 8mm;
            justify-content: center;
        }

.card {
    width: 63.5mm;
    height: 88.9mm;
    background-color: white;
    border-radius: 5mm;
    display: flex;
    flex-direction: column;
    justify-content: space-between;
    padding: 10mm;
    text-align: center;
    font-family: "Arial", sans-serif;
    /*box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);*/
    /*border: 1mm solid;*/
    position: relative;
    page-break-inside: avoid;
}

.top-left, .bottom-right {
    position: absolute;
    font-size: 6mm;
    font-weight: bold;
    text-transform: uppercase;
}

.top-left {
    top: 4mm;
    left: 6mm;
}

.bottom-right {
    bottom: 4mm;
    right: 6mm;
    transform: rotate(180deg);
}

.suit {
    font-size: 15mm;
    font-weight: bold;
    margin-top: 15mm;
}

.pattern-name {
    font-size: 16px;
    font-weight: bold;
    margin-top: 0mm;
}

.pattern-desc {
    font-size: 12px;
    /*color: #333;*/
    margin-bottom: 8mm;
    padding: 0 5mm;
}

.ui.card{
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
}

.creational.card{
             background-color: #f8f9fa;
            border: 1px solid rgba(255, 255, 255, 0.3);
}
.behavioral.card{
    background-color: #1a1a1a;
    color: #ffffff;
}
.behavioral .pattern-desc{
color: lightgray
}

        /* PRINT STYLING */
        @media print {
            body { background-color: white; padding: 0; }
            .deck { gap: 2mm; }
        }
    </style>
</head>
<body>
    <div class="deck">
        {% for pattern in site.data.patterns.patterns %}
        <div class="card {{pattern.category | slugify}}">
            <div class="top-left">{{ pattern.category }} {{ pattern.suit }}</div>
            <div class="suit" >{{ pattern.suit }}</div>
            <div class="pattern-name">{{ pattern.name }}</div>
            <div class="pattern-desc">{{ pattern.description }}</div>
            <div class="bottom-right">{{ pattern.category }} {{ pattern.suit }}</div>
        </div>
        {% endfor %}
    </div>
</body>

