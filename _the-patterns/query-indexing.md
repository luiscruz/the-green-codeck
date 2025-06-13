---
name: "Query Indexing"
category: "Database"
description: >
  Add indexes to columns that are often used in filtering, sorting, or join operations to reduce the energy and time required to execute queries.
  Without proper indexing, database engines must scan entire tables to retrieve matching rows, which is inefficient for both performance and energy consumption—especially
  as data grows.

  Indexing helps the database engine locate data more quickly and with fewer computational resources. While indexes do consume additional disk space and require
  maintenance during writes, their impact on reducing CPU, disk I/O, and query time for read-heavy workloads usually outweighs these costs.

  Consider indexing columns commonly used in `WHERE`, `JOIN`, or `ORDER BY` clauses. Regularly review and maintain indexes to balance performance and energy
  efficiency based on actual query patterns.

---
