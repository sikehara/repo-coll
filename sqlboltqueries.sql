"used to retrieve data: SELECT query

SELECT col, another_col, ...
FROM mytable
"

"The SELECT query for all columns should look like

SELECT *
FROM mytable
"

"WHERE clause chooses conditions to narrow down the columns and rows being returned

SELECT col, another_col, ...
FROM mytable
WHERE condition
    AND/OR another_condition
    AND/OR ...;"

"The DISTINCT keyword us used to discard rows with a duplicate column value

SELECT DISTINCT col, another_col, ...
FROM mytable
WHERE condition(s);
"

"Since most databases come in unordered, used the query ORDER BY

SELECT col, another_col, ...
FROM mytable
WHERE condition(s)
ORDER BY col ASC/DESC;
"

"The LIMIT will reduce the number of rows to return
OFFSET is optional and specifies where to begin counting the number rows from

SELECT col, another_col, ...
FROM mytable
WHERE condition(s)
ORDER BY col ASC/DESC
LIMIT num_limit OFFSET num_offset;
"