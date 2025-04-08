---
name: Cache 
category: General
category2: Runtime Efficiency
description: |
  Reduce unnecessary operations by storing and reusing previously retrieved or computed data.

  This pattern is as obvious as it sounds.
  Repeatedly fetching the same information – especially over the network – can lead to avoidable energy use and longer response times.
  Implement caching mechanisms to temporarily store data and avoid redundant processing or communication. 
  Where applicable, validate whether data has changed before triggering updates or downloads.
  This pattern is especially effective in read-heavy systems or when dealing with remote resources.
---
