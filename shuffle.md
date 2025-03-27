---
layout: none
title: Shuffle
permalink: /shuffle/
---

<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Shuffling Cards</title>
  <link rel="stylesheet" href="{{ '/assets/css/deck.css' | relative_url }}">
  <style>
    body {
      margin: 0;
      height: 100vh;
      display: flex;
      justify-content: center;
      align-items: center;
    }

    .shuffle-container {
      position: relative;
      width: 200px;
      height: 200px;
      display: flex;
      justify-content: center;
      align-items: center;
    }

    .card {
      position: absolute;
      width: 63.5mm;
      height: 88.9mm;
	  border-radius: 5mm;
	  border: solid black 0.1mm;
      opacity: 1;
      animation: shuffle 1.5s infinite;
    }

    .card:nth-child(1) {
      background-color: #f8f9fa;
      animation-delay: 0.6s;
    }

    .card:nth-child(2) {
	  background: #ffd93d;
      animation-delay: 0.4s;
    }

    .card:nth-child(3) {
	  background-color: #00d4ff;
      animation-delay: 0.2s;
    }

    .card:nth-child(4) {
      background: #ff6b6b;
      animation-delay: 0.0s;
    }

    @keyframes shuffle {
      0% {
        transform: scale(1) rotate(0deg);
        opacity: 1;
      }
      50% {
        transform: scale(1) rotate(180deg);
        opacity: 1;
      }
      100% {
        transform: scale(1) rotate(360deg);
        opacity: 1;
      }
    }

    /* Fullscreen Overlay */
    .loading-text {
      position: absolute;
      bottom: 20px;
      color: #333;
      font-size: 18px;
      text-align: center;
      font-weight: bold;
    }
  </style>
</head>
<body>
  <div class="shuffle-container">
    <!-- Card Elements -->
    <div class="card"></div>
    <div class="card"></div>
    <div class="card"></div>
    <div class="card"></div>
    <div class="loading-text">Shuffling cards... Redirecting shortly...</div>
  </div>

  <script>
    // Function to get a random card URL and redirect after animation
    function getRandomCard() {
      // List of your card URLs
            const cardUrls = [
                {% for card in site.the-patterns %} "{{ card.url | relative_url}}", {% endfor %}
            ];

      // Get a random card URL
      const randomCard = cardUrls[Math.floor(Math.random() * cardUrls.length)];

      // Redirect to the random card after the animation (2.5s)
      setTimeout(() => {
        window.location.href = randomCard+"?view=card";
      }, 500);  // Match the timing of the animation
    }

    // Start the random card redirection after the page loads
    window.onload = function () {
      setTimeout(getRandomCard, 500);  // Wait for animation to play
    };
  </script>
</body>
</html>