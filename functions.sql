-- \i /home/raj/raj/DatabaseAssignment/schema.sql;


CREATE OR REPLACE FUNCTION addFromCartToOrder() RETURNS TRIGGER AS $$
DECLARE
	total integer;
	BEGIN
		SELECT sum(PRICE) INTO total FROM INVENTORY WHERE INVENTORY.ID = new.INVENTORY_ID;
		UPDATE ORDERS SET ORDER_TOTAL = (ORDER_TOTAL+total) WHERE BUYER_ID = new.BUYER_ID;		
		INSERT INTO ORDERS(BUYER_ID, ORDER_TOTAL, TIMESTAMP ) SELECT new.BUYER_ID, total, null WHERE NOT EXISTS (SELECT 1 FROM ORDERS WHERE BUYER_ID=new.BUYER_ID);
		RETURN NEW;
	END;
$$ LANGUAGE plpgsql;

-- DROP TRIGGER cart_to_order_trigger ON CARTS;
CREATE TRIGGER cart_to_order_trigger AFTER INSERT ON CARTS FOR EACH ROW EXECUTE PROCEDURE addFromCartToOrder();

CREATE OR REPLACE FUNCTION sale_confirm() RETURNS TRIGGER AS $$
	BEGIN
	   UPDATE CARTS SET SOLD_ORDER_ID = new.ID WHERE BUYER_ID = new.BUYER_ID;
		PERFORM subract_quantity(INVENTORY_ID) FROM CARTS WHERE SOLD_ORDER_ID = new.ID;
		UPDATE ORDERS SET TIMESTAMP=current_date WHERE ID=new.ID;
      RETURN NEW;
	END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION subract_quantity(IID integer) RETURNS VOID AS $$
	BEGIN
		UPDATE INVENTORY SET QUANTITY = (QUANTITY-1) WHERE ID = IID;
	END;
$$ LANGUAGE plpgsql;

-- DROP TRIGGER sale_confirm_trigger ON ORDERS;
CREATE TRIGGER sale_confirm_trigger AFTER UPDATE OF PAYMENT_STATUS ON ORDERS FOR EACH ROW EXECUTE PROCEDURE sale_confirm();


CREATE OR REPLACE FUNCTION add_discount() RETURNS TRIGGER AS $$
	DECLARE
		discount_order_id integer;
		percent_off integer;			
	BEGIN
		SELECT PERCENT_DISCOUNT INTO percent_off FROM DISCOUNTS WHERE DISCOUNTS.ID = new.DISCOUNT_ID;
		SELECT ID INTO discount_order_id FROM ORDERS WHERE ORDERS.ID = new.ID; 
		UPDATE CARTS SET DISCOUNT_OFFERED = (ORIGINAL_PRICE*percent_off/100)  WHERE CARTS.SOLD_ORDER_ID = discount_order_id;
		RETURN NEW;
	END;
$$ LANGUAGE plpgsql;



--DROP TRIGGER add_discount_trigger ON ORDERS;
CREATE TRIGGER add_discount_trigger AFTER UPDATE OF DISCOUNT_ID ON ORDERS FOR EACH ROW EXECUTE PROCEDURE add_discount();

