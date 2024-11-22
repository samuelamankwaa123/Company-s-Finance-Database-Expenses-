-- Create a new database
CREATE DATABASE my_company_finances;

-- Switch to the new database
USE my_company_finances;

-- Create a new table for expenses
CREATE TABLE expenses (
    expense_id INT PRIMARY KEY,              -- Unique ID for each expense
    category VARCHAR(50) NOT NULL,          -- Expense category (e.g., Office Supplies, Marketing)
    amount DECIMAL(10, 2) NOT NULL,         -- Expense amount
    expense_date DATE NOT NULL,             -- Date of the expense
    description TEXT                        -- Optional description of the expense
);
-- Insert sample data into the expenses table
INSERT INTO expenses (expense_id, category, amount, expense_date, description) VALUES
(1, 'Office Supplies', 150.75, '2024-01-15', 'Purchase of stationery and office supplies'),
(2, 'Marketing', 5000.00, '2024-01-20', 'Digital marketing campaign expenses'),
(3, 'Travel', 1250.50, '2024-01-25', 'Flight and accommodation for business trip'),
(4, 'Utilities', 300.00, '2024-02-01', 'Monthly electricity and internet bills'),
(5, 'Software', 750.00, '2024-02-10', 'Subscription fees for business tools');
SELECT SUM(amount) AS TotalExpenses FROM expenses;
SELECT category, SUM(amount) AS TotalAmount
FROM expenses
GROUP BY category;
SELECT *
FROM expenses
ORDER BY expense_date DESC
--we limit by choice
LIMIT 4;

SELECT *
FROM expenses
WHERE amount > 1000;
