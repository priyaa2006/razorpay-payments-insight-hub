CREATE DATABASE razorpay_analytics;

USE razorpay_analytics;
SELECT COUNT(*) AS total_transactions
FROM razorpay_working_dataset;
SELECT *
FROM razorpay_working_dataset
LIMIT 10;