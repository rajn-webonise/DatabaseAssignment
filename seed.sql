INSERT INTO USERS(NAME, EMAIL, ADDRESS) VALUES ('Raj', 'raj@gmail.com', 'Wakad, Pune');
INSERT INTO USERS(NAME, EMAIL, ADDRESS) VALUES('Riya', 'riya@gmail.com', 'Goa');
INSERT INTO USERS(NAME, EMAIL, ADDRESS) VALUES('Sumit K', 'su@yahoo.com', 'PS, Bihar');
INSERT INTO USERS(NAME, EMAIL, ADDRESS) VALUES('Nishant', 'nish@gmail.com', 'Street 11, Wakad' );
INSERT INTO USERS(NAME, EMAIL, ADDRESS) VALUES('Amrita', 'amy@gmail.com', 'NV, U.S.');
INSERT INTO USERS(NAME, EMAIL, ADDRESS) VALUES('Nomad', 'nm@gmail.com', 'Mars');

INSERT INTO BUYERS(BUYER_ID) VALUES(1);
INSERT INTO BUYERS(BUYER_ID) VALUES(2);
INSERT INTO BUYERS(BUYER_ID) VALUES(3);
INSERT INTO BUYERS(BUYER_ID) VALUES(6);

INSERT INTO SELLERS(SELLER_ID) VALUES(4);
INSERT INTO SELLERS(SELLER_ID) VALUES(5);

INSERT INTO PRODUCTS(NAME, DESCRIPTION) VALUES('Laptop', 'use as a computer!');
INSERT INTO PRODUCTS(NAME, DESCRIPTION) VALUES('Football', 'Outdoor games!');
INSERT INTO PRODUCTS(NAME, DESCRIPTION) VALUES('iPhone 6s', 'Best Apple product');
INSERT INTO PRODUCTS(NAME, DESCRIPTION) VALUES('Hoodie jacket', 'Gift it!');

INSERT INTO COLORS(HEX_VALUE) VALUES('Black');
INSERT INTO COLORS(HEX_VALUE) VALUES('Blue');
INSERT INTO COLORS(HEX_VALUE) VALUES('White');
INSERT INTO COLORS(HEX_VALUE) VALUES('Red');
INSERT INTO COLORS(HEX_VALUE) VALUES('Magenta');
INSERT INTO COLORS(HEX_VALUE) VALUES('Cyan');

INSERT INTO INVENTORY(PRODUCT_ID, PRICE, QUANTITY, COLOR_ID, SELLER_ID) VALUES(2, 21, 5, 6, 4);
INSERT INTO INVENTORY(PRODUCT_ID, PRICE, QUANTITY, COLOR_ID, SELLER_ID) VALUES(1, 1, 31, 3, 4);
INSERT INTO INVENTORY(PRODUCT_ID, PRICE, QUANTITY, COLOR_ID, SELLER_ID) VALUES(3, 98, 32, 3, 4);
INSERT INTO INVENTORY(PRODUCT_ID, PRICE, QUANTITY, COLOR_ID, SELLER_ID) VALUES(2, 3, 65, 5, 5);
INSERT INTO INVENTORY(PRODUCT_ID, PRICE, QUANTITY, COLOR_ID, SELLER_ID) VALUES(4, 232, 6, 1, 5);
INSERT INTO INVENTORY(PRODUCT_ID, PRICE, QUANTITY, COLOR_ID, SELLER_ID) VALUES(4, 115, 4, 2, 5);

INSERT INTO PAYMENTGATEWAYS(NAME, TYPE) VALUES('Paytm', 'Online Wallet');
INSERT INTO PAYMENTGATEWAYS(NAME, TYPE) VALUES('ICIC', 'Debit Card');
INSERT INTO PAYMENTGATEWAYS(NAME, TYPE) VALUES('HDFC', 'Credit Card');

INSERT INTO DISCOUNTS(HASH_CODE, PERCENT_DISCOUNT) VALUES('None', 0);
INSERT INTO DISCOUNTS(HASH_CODE, PERCENT_DISCOUNT) VALUES('SUMMER50', 50);
INSERT INTO DISCOUNTS(HASH_CODE, PERCENT_DISCOUNT) VALUES('NEW10', 10);

INSERT INTO CARTS(INVENTORY_ID, BUYER_ID) VALUES(1, 6);
INSERT INTO CARTS(INVENTORY_ID, BUYER_ID) VALUES(3, 2);
INSERT INTO CARTS(INVENTORY_ID, BUYER_ID) VALUES(2, 1);
INSERT INTO CARTS(INVENTORY_ID, BUYER_ID) VALUES(4, 2);
INSERT INTO CARTS(INVENTORY_ID, BUYER_ID) VALUES(4, 2);
INSERT INTO CARTS(INVENTORY_ID, BUYER_ID) VALUES(5, 1);
INSERT INTO CARTS(INVENTORY_ID, BUYER_ID) VALUES(6, 3);
INSERT INTO CARTS(INVENTORY_ID, BUYER_ID) VALUES(5, 2);


INSERT INTO TRANSACTIONS(BUYER_ID, SELLER_ID, INVENTORY_ID, DISCOUNT_ID, PAYMENT_ID, TIMESTAMP ) VALUES(1, 5, 5, 1, 2, current_date);
INSERT INTO TRANSACTIONS(BUYER_ID, SELLER_ID, INVENTORY_ID, DISCOUNT_ID, PAYMENT_ID, TIMESTAMP ) VALUES(3, 4, 6, 1, 2, current_date);
INSERT INTO TRANSACTIONS(BUYER_ID, SELLER_ID, INVENTORY_ID, DISCOUNT_ID, PAYMENT_ID, TIMESTAMP ) VALUES(2, 4, 3, 1, 1, current_date);
