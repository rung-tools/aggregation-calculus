# Aggregation Calculus

> λ-calculus (Ramda like) derived implementation of functional aggregations over Mongo. Write Ramda with the performance of aggregations!

Mongo aggregations are hard to write by hand, and they can easily become really
complex in even simple tasks. This is an attempt to make writing aggregations a
bit less painful. As long as Mongo aggregations can be seen as a pure
stream-based functional language (λ-calculus derived), we can then implement
a subset of [Ramda](https://github.com/ramda/ramda) functions that compile to
plain aggregation objects!
