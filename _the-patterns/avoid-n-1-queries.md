---
name: "Avoid N+1 Queries"
category: "Database"
description: >
  Prevent unnecessary repeated database queries by addressing the N+1 query problem in application logic.
  This pattern occurs when a query retrieves a list of records (e.g., users), and for each record, another query fetches related data (e.g., posts per user).
  This results in 1 query for the list and N additional queries for the related items—often leading to dozens or hundreds of extra round-trips to the database,
  consuming more energy and significantly increasing load times.

  Instead, use query optimization techniques such as eager loading, joins, or batch fetching to retrieve all necessary data in a minimal number of queries.
  Most modern frameworks and ORMs provide built-in support to address this pattern (e.g., `select_related` or `prefetch_related` in Django, eager loading in Hibernate).

  Reducing the number of round-trips and redundant data access helps cut down CPU cycles, memory usage, and I/O operations—leading to a more energy-efficient
  and performant system.
---
