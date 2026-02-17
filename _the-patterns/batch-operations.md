---
name: "Batch Operations"
category: "General"
description: |
  Combine multiple tasks into a single operation instead of executing each one independently. 
  Repeatedly triggering individual background tasks or API calls can lead to inefficient use of energy, especially when it causes systems to exit low-power states unnecessarily.
  When tasks are not time-sensitive, deferring and bundling them helps reduce both direct and tail energy consumption.
  This pattern is useful for systems that support job scheduling or similar mechanisms to group operations and optimize resource usage.
sources:
  - 'Cruz, L. and Abreu, R. Energy Patterns for Mobile Apps. <https://tqrg.github.io/energy-patterns>'
  - 'Li, D. and Halfond, W. G. J. "An Investigation into Energy-Saving Programming Practices for Android Smartphone App Development." <https://doi.org/10.1145/2593743.2593750>'
  - 'Cai, H. et al. "DelayDroid: Reducing Tail-Time Energy by Refactoring Android Apps." <https://doi.org/10.1145/2875913.2875915>'
---
