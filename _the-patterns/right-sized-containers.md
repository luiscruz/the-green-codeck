---
name: "Right-Sized Containers"
category: "DevOps"
description: |
  Use Docker images that match the runtime and resource needs of the application to reduce unnecessary bloat and improve efficiency.
  Avoid using general-purpose or heavyweight base images when a minimal one will suffice. Leaner containers start faster, consume fewer resources, and reduce the total data transfer and storage required across development and deployment pipelines.
  Choose slim or minimal variants of official images (e.g., Alpine-based) when possible, and remove unused packages or dependencies during the image build process.
  This pattern contributes to lower compute costs, faster CI/CD workflows, and reduced carbon impact in cloud environments.
example: |
  Instead of using a full image like `python:3.11`, which includes build tools and other extras, prefer `python:3.11-slim` when the application doesn't require compiling dependencies. These alternatives are significantly smaller and better optimized for runtime-only usage.
---
