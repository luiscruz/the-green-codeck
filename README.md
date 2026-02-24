# The Green Codeck

> Greening the codebase, one card at a time.

**The Green Codeck** is a collection of energy-efficient software design patterns, presented as a browsable and printable deck of cards. Each card describes a pattern that helps developers write code with a lower environmental impact.

🌐 **Live site:** https://luiscruz.github.io/the-green-codeck

---

## Patterns

26 patterns across 7 categories:

| Category | Suit |
|----------|------|
| AI | ※ |
| Database | ⌗ |
| UI | ♦ |
| General | ♣ |
| Cloud | ☁︎ |
| DevOps | ∞ |
| Organization | ♥ |

---

## Development

**Prerequisites:** Ruby and Bundler.

```bash
git clone https://github.com/luiscruz/the-green-codeck.git
cd the-green-codeck
bundle install
bundle exec jekyll serve
```

Open http://localhost:4000/the-green-codeck/ in your browser.

---

## Adding a Pattern

Create a new file in `_the-patterns/`:

```yaml
---
name: "My Pattern"
category: "General"
description: |
  A concise description of the pattern.
---
```

The `category` must match one of the seven categories in `_data/categories.yml`. The pattern will automatically appear in the index, shuffle pool, and printable deck.

---

## Contributing

Contributions are welcome — new patterns, design improvements, or bug fixes.

1. Fork the repository
2. Create a branch (`git checkout -b my-feature`)
3. Make your changes
4. Open a pull request

---

## Support

If you find The Green Codeck useful, consider [sponsoring the project](https://github.com/sponsors/luiscruz).
