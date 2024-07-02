USE expense_tracker;
-- PART ONE
-- 1.1 Retrieving all the expenses
SELECT * FROM expenses;

-- 1.2 Retrieve specific columns
 SELECT amount, date, category FROM expenses;
 
 -- 1.3 Filtering by date range (FROM January 2022 to December 2023)
 SELECT date, amount FROM expenses WHERE date BETWEEN '2022-01-01' AND '2023-12-31' ORDER BY date ASC;
 
 -- PART TWO: FILTERING WITH WHERE CLAUSE
 -- 2.1: Filtering by category
 SELECT * FROM expenses WHERE category = 'Entertainment';
 SELECT * FROM expenses WHERE category = 'Transportation';
 SELECT * FROM expenses WHERE category = 'Other';
 SELECT * FROM expenses WHERE category = 'Groceries';
 
 -- 2.2 Filtering by comparison operators.ALTER
 SELECT * FROM expenses WHERE amount > 50;
 
 -- 2.3 Combining filters (AND)
 SELECT * FROM expenses WHERE amount > 50 AND category = 'Entertainment';
 
 -- 2.4 Combining filters (OR)
 SELECT * FROM  expenses WHERE amount > 50 OR category = 'Transportation';
 
 -- 2.5 Filtering with NOT.
 SELECT * FROM expenses WHERE category NOT LIKE 'Transportation';
 
 -- PART THREE: SORTING THE RETRIEVED DATA
 -- 3.1 Sorting by amount.
 -- sorting the amount in ascending order
SELECT * FROM expenses ORDER BY amount ASC; 

 -- sorting the amount in descending order
SELECT * FROM expenses ORDER BY amount DESC;

-- 3.2 Sorting by date and category
SELECT * FROM expenses ORDER BY date DESC, category ASC;

-- PART 4: DATABASE UPGRADE
-- 4.1 creating an additional table 
CREATE TABLE IF NOT EXISTS Income (
	income_id INT NOT NULL AUTO_INCREMENT,
    amount DECIMAL(10, 2) NOT NULL,
    date DATE NOT NULL,
    source VARCHAR(50) NOT NULL,
    PRIMARY KEY (income_id)
);

-- 4.2 Adding another column category.
ALTER TABLE Income 
ADD COLUMN category VARCHAR(50) NOT NULL;

-- 4.3 Dropping the column 'source' from the table
ALTER TABLE Income
DROP COLUMN source;
 