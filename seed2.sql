--  \i /home/raj/raj/DatabaseAssignment/seed.sql;

UPDATE ORDERS SET PAYMENT_STATUS=1, PAYMENT_ID=1 WHERE BUYER_ID=2;

UPDATE ORDERS SET PAYMENT_STATUS=1, PAYMENT_ID=1 WHERE BUYER_ID=3;

UPDATE ORDERS SET PAYMENT_STATUS=1, PAYMENT_ID=2, DISCOUNT_ID=3 WHERE BUYER_ID=6;

UPDATE ORDERS SET DISCOUNT_ID=3 WHERE BUYER_ID=2;

