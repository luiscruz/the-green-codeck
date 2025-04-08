---
name: Dynamic Retry Delay
category: "General"
description: |
  Whenever an attempt to access a resource has failed, increase the interval of time waited before asking access to that same resource.

  Imagine for example that a client application needs to collect data from the server. If by some reason, the server is unavailable, the application will unnecessarily try to connect the resource for a number of times, leading to unnecessary power consumption.
  Increase the delay before trying to reconnect after each failed connection. The increase can be either a linear or exponential and can be reset upon a successful connection or a given change in the context (e.g., network status)).
sources:
    - Energy Patterns for Mobile Apps <https://tqrg.github.io/energy-patterns/#/patterns/Dynamic_Retry_Delay>
---
