CREATE ROLE read_user;
CREATE ROLE write_user;
CREATE ROLE admin_user;

GRANT SELECT ON order_product TO read_user;
GRANT SELECT ON orders TO read_user;
GRANT SELECT ON product TO read_user;

GRANT SELECT, UPDATE, INSERT ON order_product TO write_user;
GRANT SELECT, UPDATE, INSERT ON orders TO write_user;
GRANT SELECT, UPDATE, INSERT ON product TO write_user;

GRANT ALL ON order_product TO admin_user;
GRANT ALL ON orders TO admin_user;
GRANT ALL ON product TO admin_user;


--GRANT SELECT ON product, orders, order_product TO read_user;
--GRANT USAGE ON product, orders, order_product TO read_user;

--GRANT SELECT, INSERT, UPDATE, DELETE, TRUNCATE ON product, orders, order_product TO write_user;
--GRANT USAGE, SELECT ON ALL SEQUENCES IN product, orders, order_product TO write_user;

--GRANT ALL ON product, orders, order_product TO admin_user;
--GRANT ALL ON ALL SEQUENCES IN SCHEMA public TO admin_user;
