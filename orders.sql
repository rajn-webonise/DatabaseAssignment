select transactions.id, transactions.timestamp, products.name, inventory.price, users.email
from transactions
   join inventory
      on transactions.inventory_id = inventory.id
   join users
      on transactions.seller_id = users.id
   join products
      on transactions.inventory_id = products.id

WHERE current_date - 30 < transactions.timestamp

