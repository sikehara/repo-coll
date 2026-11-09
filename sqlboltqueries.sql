"used to retrieve data: SELECT query
-
SELECT col, another_col, ...
FROM mytable
"

"The SELECT query for all columns should look like
-
SELECT *
FROM mytable
"

"WHERE clause chooses conditions to narrow down the columns and rows being returned
-
SELECT col, another_col, ...
FROM mytable
WHERE condition
    AND/OR another_condition
    AND/OR ...;"

"The DISTINCT keyword us used to discard rows with a duplicate column value
-
SELECT DISTINCT col, another_col, ...
FROM mytable
WHERE condition(s);
"

"Since most databases come in unordered, used the query ORDER BY
-
SELECT col, another_col, ...
FROM mytable
WHERE condition(s)
ORDER BY col ASC/DESC;
"

"The LIMIT will reduce the number of rows to return
OFFSET is optional and specifies where to begin counting the number rows from
-
SELECT col, another_col, ...
FROM mytable
WHERE condition(s)
ORDER BY col ASC/DESC
LIMIT num_limit OFFSET num_offset;
"

"
For dataset A and B

INNER JOIN = only data matching in A and B
matches rows from the first table and the second table
which have the same key (as defined by the ON constraint)
to create a result row with the combined columns from both tables
-
SELECT col, another_table_col, …
FROM mytable
INNER JOIN another_table 
    ON mytable.id = another_table.id
WHERE condition(s)
ORDER BY column, … ASC/DESC
LIMIT num_limit OFFSET num_offset;

OUTER JOIN = all data in A and B
rows from both tables are kept, regardless of
whether a matching row exists in the other table
-
SELECT col, another_table_col, …
FROM mytable
FULL JOIN another_table 
    ON mytable.id = another_table.id
WHERE condition(s)
ORDER BY column, … ASC/DESC
LIMIT num_limit OFFSET num_offset;

LEFT JOIN = all data in A and what's matching in B
simply includes rows from A regardless of whether
a matching row is found in B
-
SELECT col, another_table_col, …
FROM mytable
LEFT JOIN another_table 
    ON mytable.id = another_table.id
WHERE condition(s)
ORDER BY column, … ASC/DESC
LIMIT num_limit OFFSET num_offset;

RIGHT JOIN = all data in B and what's matching in A
keeps rows in B regardless of whether a match is found in A
-
SELECT col, another_table_col, …
FROM mytable
RIGHT JOIN another_table 
    ON mytable.id = another_table.id
WHERE condition(s)
ORDER BY column, … ASC/DESC
LIMIT num_limit OFFSET num_offset;
"

"
NULL values in SQL
you can test a column for NULL values in a
WHERE clause by using either the IS NULL or
IS NOT NULL constraint
-
SELECT column, another_column, …
FROM mytable
WHERE column IS/IS NOT NULL
AND/OR another_condition
AND/OR …;
"