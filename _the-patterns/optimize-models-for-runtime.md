---
name: "Optimize Models for Runtime"
category: "AI"
description: >
  Apply model optimization techniques – such as quantization, pruning, and distillation – to reduce energy consumption during inference, especially when the model is expected to serve a high volume of predictions.

  These optimization methods can significantly reduce the size and computational requirements of machine learning models, leading to faster execution and lower operational energy costs. However, they typically involve an additional training or conversion phase, which also consumes energy.

  Therefore, the environmental benefit of optimization increases with the number of inferences performed over the model’s lifetime. For long-lived, production-grade systems or edge deployments, the energy savings during inference generally outweigh the one-time optimization cost.

  Use this pattern when models are expected to run at scale or be deployed on resource-constrained environments, and balance accuracy trade-offs against carbon efficiency.
---