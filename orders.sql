/*select transactions.id, transactions.timestamp, products.name, inventory.price, users.email
from transactions
   join inventory
      on transactions.inventory_id = inventory.id
   join users
      on transactions.seller_id = users.id
   join products
      on transactions.inventory_id = products.id

WHERE current_date - 30 < transactions.timestamp
*/

SELECT ORDERS.ID, ORDERS.ORDER_TOTAL, ORDERS.TIMESTAMP, DISCOUNTS.HASH_CODE, PAYMENTGATEWAYS.NAME, ORDERS.PAYMENT_STATUS
FROM ORDERS
	INNER JOIN DISCOUNTS
		ON ORDERS.DISCOUNT_ID = DISCOUNTS.ID
	INNER JOIN PAYMENTGATEWAYS
		ON ORDERS.PAYMENT_ID = PAYMENTGATEWAYS.ID
WHERE current_date - 30 < ORDERS.TIMESTAMP
;

