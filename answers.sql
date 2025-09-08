
SELECT 
    paymentDate,
    SUM(amount) AS total_payment
FROM payments
GROUP BY paymentDate
ORDER BY paymentDate DESC
LIMIT 5;

SELECT 
    customerName,
    country,
    AVG(creditLimit) AS avg_credit_limit
FROM customers
GROUP BY customerName, country;

SELECT 
    productCode,
    quantityOrdered,
    SUM(quantityOrdered * priceEach) AS total_price
FROM orderdetails
GROUP BY productCode, quantityOrdered;
SELECT 
    checkNumber,
    MAX(amount) AS highest_payment
FROM payments
GROUP BY checkNumber;

