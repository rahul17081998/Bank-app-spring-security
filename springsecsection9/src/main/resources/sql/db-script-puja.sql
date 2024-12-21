 INSERT INTO `accounts` (`customer_id`, `account_number`, `account_type`, `branch_address`, `create_dt`)
  VALUES (13, 1865764511, 'Savings', 'Kharadi, Pune', CURDATE());



INSERT INTO `account_transactions` (`transaction_id`, `account_number`, `customer_id`, `transaction_dt`, `transaction_summary`, `transaction_type`, `transaction_amt`,
`closing_balance`, `create_dt`)
VALUES
(UUID(), 1865764511, 13, DATE_SUB(CURDATE(), INTERVAL 10 DAY), 'Grocery Store', 'Withdrawal', 200, 48000, DATE_SUB(CURDATE(), INTERVAL 10 DAY)),
(UUID(), 1865764511, 13, DATE_SUB(CURDATE(), INTERVAL 9 DAY), 'Salary Credit', 'Deposit', 5000, 53000, DATE_SUB(CURDATE(), INTERVAL 9 DAY)),
(UUID(), 1865764511, 13, DATE_SUB(CURDATE(), INTERVAL 7 DAY), 'Electricity Bill', 'Withdrawal', 800, 52200, DATE_SUB(CURDATE(), INTERVAL 7 DAY)),
(UUID(), 1865764511, 13, DATE_SUB(CURDATE(), INTERVAL 6 DAY), 'Mobile Recharge', 'Withdrawal', 150, 52050, DATE_SUB(CURDATE(), INTERVAL 6 DAY)),
(UUID(), 1865764511, 13, DATE_SUB(CURDATE(), INTERVAL 4 DAY), 'Self Deposit', 'Deposit', 1000, 53050, DATE_SUB(CURDATE(), INTERVAL 4 DAY)),
(UUID(), 1865764511, 13, DATE_SUB(CURDATE(), INTERVAL 3 DAY), 'ATM Withdrawal', 'Withdrawal', 500, 52550, DATE_SUB(CURDATE(), INTERVAL 3 DAY)),
(UUID(), 1865764511, 13, DATE_SUB(CURDATE(), INTERVAL 1 DAY), 'Online Shopping', 'Withdrawal', 700, 51850, DATE_SUB(CURDATE(), INTERVAL 1 DAY));


-- Loans for Customer ID 13
INSERT INTO `loans` (`customer_id`, `start_dt`, `loan_type`, `total_loan`, `amount_paid`, `outstanding_amount`, `create_dt`)
VALUES
(13, '2021-05-15', 'Education', 100000, 20000, 80000, '2021-05-15'),
(13, '2022-03-20', 'Vehicle', 250000, 50000, 200000, '2022-03-20'),
(13, '2023-01-10', 'Home', 600000, 150000, 450000, '2023-01-10'),
(13, '2020-08-05', 'Personal', 50000, 20000, 30000, '2020-08-05');



INSERT INTO `cards` (`card_number`, `customer_id`, `card_type`, `total_limit`, `amount_used`, `available_amount`, `create_dt`)
VALUES
('1234XXXX5678', 13, 'Credit', 15000, 3000, 12000, CURDATE()),
('9876XXXX5432', 13, 'Credit', 25000, 8000, 17000, CURDATE()),
('4567XXXX8912', 13, 'Credit', 30000, 15000, 15000, CURDATE()),
('6543XXXX2198', 13, 'Credit', 10000, 2000, 8000, CURDATE());




-- Notice for new home loan features
INSERT INTO `notice_details` (`notice_summary`, `notice_details`, `notice_beg_dt`, `notice_end_dt`, `create_dt`, `update_dt`)
VALUES
('New Home Loan Features', 'We have introduced new home loan features with lower interest rates and flexible repayment options. Available to all new customers starting today.',
CURDATE(), CURDATE() + INTERVAL 90 DAY, CURDATE(), null);

-- Notice for special savings account offer
INSERT INTO `notice_details` (`notice_summary`, `notice_details`, `notice_beg_dt`, `notice_end_dt`, `create_dt`, `update_dt`)
VALUES
('Special Savings Account Offer', 'Get 5% interest on your savings account balance for the first 6 months. Open a savings account before the end of the month to avail this offer.',
CURDATE(), '2024-12-31', CURDATE(), null);

-- Notice for scheduled system maintenance
INSERT INTO `notice_details` (`notice_summary`, `notice_details`, `notice_beg_dt`, `notice_end_dt`, `create_dt`, `update_dt`)
VALUES
('Scheduled System Maintenance', 'Our online banking services will be down for scheduled maintenance from 1 AM to 3 AM on 12/22/2024. Please plan accordingly.',
'2024-12-22', '2024-12-22', CURDATE(), null);

-- Notice for branch holiday
INSERT INTO `notice_details` (`notice_summary`, `notice_details`, `notice_beg_dt`, `notice_end_dt`, `create_dt`, `update_dt`)
VALUES
('Branch Holiday Notice', 'Please be informed that all EazyBank branches will remain closed on 12/25/2024 for the Christmas holiday. Transactions can be performed via online banking.',
'2024-12-25', '2024-12-25', CURDATE(), null);

-- Notice for credit card reward program
INSERT INTO `notice_details` (`notice_summary`, `notice_details`, `notice_beg_dt`, `notice_end_dt`, `create_dt`, `update_dt`)
VALUES
('Credit Card Reward Program', 'Earn up to 10% cashback on all purchases made with your EazyBank credit card between 01/01/2025 and 03/31/2025.',
'2025-01-01', '2025-03-31', CURDATE(), null);

-- Notice for new loan product
INSERT INTO `notice_details` (`notice_summary`, `notice_details`, `notice_beg_dt`, `notice_end_dt`, `create_dt`, `update_dt`)
VALUES
('New Loan Product: Education Loan', 'EazyBank is now offering education loans at competitive interest rates to help you achieve your academic goals. Apply online today!',
CURDATE(), CURDATE() + INTERVAL 180 DAY, CURDATE(), null);

-- Notice for customer feedback request
INSERT INTO `notice_details` (`notice_summary`, `notice_details`, `notice_beg_dt`, `notice_end_dt`, `create_dt`, `update_dt`)
VALUES
('Customer Feedback Request', 'We value your feedback. Please take a moment to complete our customer satisfaction survey. Your feedback helps us improve our services.',
CURDATE(), '2024-12-31', CURDATE(), null);





 INSERT INTO `authorities` (`customer_id`, `name`)
  VALUES (1, 'ROLE_USER');

 INSERT INTO `authorities` (`customer_id`, `name`)
  VALUES (1, 'ROLE_ADMIN');