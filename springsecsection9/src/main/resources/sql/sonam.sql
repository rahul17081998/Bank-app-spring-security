{
  "name": "Sonam",
  "email": "sonam@example.com",
  "mobileNumber": "9340486876",
  "pwd": "sonam@12345",
  "role": "ADMIN"
}


 INSERT INTO `accounts` (`customer_id`, `account_number`, `account_type`, `branch_address`, `create_dt`)
  VALUES (14, 1865764301, 'Savings', 'Kharadi, Pune', CURDATE());

-- Account Transactions for Account ID 14
INSERT INTO `account_transactions` (`transaction_id`, `account_number`, `customer_id`, `transaction_dt`, `transaction_summary`, `transaction_type`, `transaction_amt`, `closing_balance`, `create_dt`)
VALUES
(UUID(), 1865764301, 14, DATE_SUB(CURDATE(), INTERVAL 10 DAY), 'Supermarket', 'Withdrawal', 250, 47000, DATE_SUB(CURDATE(), INTERVAL 10 DAY)),
(UUID(), 1865764301, 14, DATE_SUB(CURDATE(), INTERVAL 9 DAY), 'Salary Credit', 'Deposit', 6000, 53000, DATE_SUB(CURDATE(), INTERVAL 9 DAY)),
(UUID(), 1865764301, 14, DATE_SUB(CURDATE(), INTERVAL 7 DAY), 'Utility Bill', 'Withdrawal', 900, 52100, DATE_SUB(CURDATE(), INTERVAL 7 DAY)),
(UUID(), 1865764301, 14, DATE_SUB(CURDATE(), INTERVAL 6 DAY), 'Mobile Recharge', 'Withdrawal', 200, 51900, DATE_SUB(CURDATE(), INTERVAL 6 DAY)),
(UUID(), 1865764301, 14, DATE_SUB(CURDATE(), INTERVAL 4 DAY), 'Self Deposit', 'Deposit', 1500, 53400, DATE_SUB(CURDATE(), INTERVAL 4 DAY)),
(UUID(), 1865764301, 14, DATE_SUB(CURDATE(), INTERVAL 3 DAY), 'ATM Withdrawal', 'Withdrawal', 600, 52800, DATE_SUB(CURDATE(), INTERVAL 3 DAY)),
(UUID(), 1865764301, 14, DATE_SUB(CURDATE(), INTERVAL 1 DAY), 'Online Shopping', 'Withdrawal', 800, 52000, DATE_SUB(CURDATE(), INTERVAL 1 DAY));

-- Loans for Customer ID 14
INSERT INTO `loans` (`customer_id`, `start_dt`, `loan_type`, `total_loan`, `amount_paid`, `outstanding_amount`, `create_dt`)
VALUES
(14, '2021-06-15', 'Education', 120000, 30000, 90000, '2021-06-15'),
(14, '2022-04-10', 'Vehicle', 270000, 60000, 210000, '2022-04-10'),
(14, '2023-02-01', 'Home', 650000, 100000, 550000, '2023-02-01'),
(14, '2020-09-10', 'Personal', 60000, 25000, 35000, '2020-09-10');

-- Credit Cards for Customer ID 14
INSERT INTO `cards` (`card_number`, `customer_id`, `card_type`, `total_limit`, `amount_used`, `available_amount`, `create_dt`)
VALUES
('2345XXXX6789', 14, 'Credit', 16000, 3500, 12500, CURDATE()),
('8765XXXX4321', 14, 'Credit', 26000, 9000, 17000, CURDATE()),
('5678XXXX9101', 14, 'Credit', 32000, 17000, 15000, CURDATE()),
('7654XXXX3297', 14, 'Credit', 11000, 2500, 8500, CURDATE());

-- Notice for New Home Loan Features
INSERT INTO `notice_details` (`notice_summary`, `notice_details`, `notice_beg_dt`, `notice_end_dt`, `create_dt`, `update_dt`)
VALUES
('New Home Loan Features', 'We have introduced new home loan features with lower interest rates and flexible repayment options. Available to all new customers starting today.',
CURDATE(), CURDATE() + INTERVAL 90 DAY, CURDATE(), null);

-- Notice for Special Savings Account Offer
INSERT INTO `notice_details` (`notice_summary`, `notice_details`, `notice_beg_dt`, `notice_end_dt`, `create_dt`, `update_dt`)
VALUES
('Special Savings Account Offer', 'Get 5% interest on your savings account balance for the first 6 months. Open a savings account before the end of the month to avail this offer.',
CURDATE(), '2024-12-31', CURDATE(), null);

-- Notice for Scheduled System Maintenance
INSERT INTO `notice_details` (`notice_summary`, `notice_details`, `notice_beg_dt`, `notice_end_dt`, `create_dt`, `update_dt`)
VALUES
('Scheduled System Maintenance', 'Our online banking services will be down for scheduled maintenance from 1 AM to 3 AM on 12/22/2024. Please plan accordingly.',
'2024-12-22', '2024-12-22', CURDATE(), null);

-- Notice for Branch Holiday
INSERT INTO `notice_details` (`notice_summary`, `notice_details`, `notice_beg_dt`, `notice_end_dt`, `create_dt`, `update_dt`)
VALUES
('Branch Holiday Notice', 'Please be informed that all EazyBank branches will remain closed on 12/25/2024 for the Christmas holiday. Transactions can be performed via online banking.',
'2024-12-25', '2024-12-25', CURDATE(), null);

-- Notice for Credit Card Reward Program
INSERT INTO `notice_details` (`notice_summary`, `notice_details`, `notice_beg_dt`, `notice_end_dt`, `create_dt`, `update_dt`)
VALUES
('Credit Card Reward Program', 'Earn up to 10% cashback on all purchases made with your EazyBank credit card between 01/01/2025 and 03/31/2025.',
'2025-01-01', '2025-03-31', CURDATE(), null);

-- Notice for New Loan Product: Education Loan
INSERT INTO `notice_details` (`notice_summary`, `notice_details`, `notice_beg_dt`, `notice_end_dt`, `create_dt`, `update_dt`)
VALUES
('New Loan Product: Education Loan', 'EazyBank is now offering education loans at competitive interest rates to help you achieve your academic goals. Apply online today!',
CURDATE(), CURDATE() + INTERVAL 180 DAY, CURDATE(), null);

-- Notice for Customer Feedback Request
INSERT INTO `notice_details` (`notice_summary`, `notice_details`, `notice_beg_dt`, `notice_end_dt`, `create_dt`, `update_dt`)
VALUES
('Customer Feedback Request', 'We value your feedback. Please take a moment to complete our customer satisfaction survey. Your feedback helps us improve our services.',
CURDATE(), '2024-12-31', CURDATE(), null);

-- Authorities for Customer ID 14
INSERT INTO `authorities` (`customer_id`, `name`)
VALUES (14, 'ROLE_USER');

INSERT INTO `authorities` (`customer_id`, `name`)
VALUES (14, 'ROLE_ADMIN');