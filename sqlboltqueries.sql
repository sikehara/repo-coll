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

"
AS helps process data in the query
-
SELECT col_expression AS expr_description, …
FROM mytable;
-
SELECT column AS better_column_name, …
FROM a_long_widgets_table_name AS mywidgets
INNER JOIN widget_sales
  ON mywidgets.id = widget_sales.widget_id;
"

"
SELECT AGG_FUNC(column_or_expression) AS aggregate_description, …
FROM mytable
WHERE constraint_expression;
-
Includes COUNT(*)/COUNT(col), MIN(col), MAX(col), AVG(col), SUM(col)
"

"
GROUP BY groups rows that have the same value in the column specified
-
SELECT AGG_FUNC(column_or_expression) AS aggregate_description, …
FROM mytable
WHERE constraint_expression
GROUP BY column;
"

"
Having allows filtering of groups as group by comes after where conditions are set
SELECT group_by_column, AGG_FUNC(column_expression) AS aggregate_result_alias, …
FROM mytable
WHERE condition
GROUP BY column
HAVING group_condition;
"

"
COMPLETE QUERY
-
SELECT DISTINCT column, AGG_FUNC(column_or_expression), …
FROM mytable
    JOIN another_table
      ON mytable.column = another_table.column
    WHERE constraint_expression
    GROUP BY column
    HAVING constraint_expression
    ORDER BY column ASC/DESC
    LIMIT count OFFSET COUNT;
"

"
Insert statement with values for all columns
-
INSERT INTO mytable
VALUES (value_or_expr, another_value_or_expr, …),
       (value_or_expr_2, another_value_or_expr_2, …),
       …;
"

"
Insert statement with specific columns
-
INSERT INTO mytable
(column, another_column, …)
VALUES (value_or_expr, another_value_or_expr, …),
      (value_or_expr_2, another_value_or_expr_2, …),
      …;
"

"
Update statement with values
always write the constraint first and test it in a
SELECT query to make sure you are updating the right rows,
and only then writing the column/value pairs to update
-
UPDATE mytable
SET column = value_or_expr, 
    other_column = another_value_or_expr, 
    …
WHERE condition;
"

"
Delete statement with condition
run the constraint in a SELECT query first
to ensure that you are removing the right rows
-
DELETE FROM mytable
WHERE condition;
"

"
Create table statement w/ optional table constraint and default value
-
CREATE TABLE IF NOT EXISTS mytable (
    column DataType TableConstraint DEFAULT default_value,
    another_column DataType TableConstraint DEFAULT default_value,
    …
);
-
EXAMPLE: Movies table schema
CREATE TABLE movies (
    id INTEGER PRIMARY KEY,
    title TEXT,
    director TEXT,
    year INTEGER, 
    length_minutes INTEGER
);
"

"
Altering table to add new column(s)
In some databases like MySQL, you can even
specify where to insert the new column using
the FIRST or AFTER clauses, though this is not
a standard feature
-
ALTER TABLE mytable
ADD column DataType OptionalTableConstraint 
    DEFAULT default_value;
"

"
Altering table to remove column(s)
some databases don't support this feature; instead
create a new table and migrate the data over
-
ALTER TABLE mytable
DROP column_to_be_deleted;"

"
Altering table name
-
ALTER TABLE mytable
RENAME TO new_table_name;
"

"
Drop table statement
-
DROP TABLE IF EXISTS mytable;
"