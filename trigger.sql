CREATE OR REPLACE FUNCTION trig_func()
  RETURNS trigger AS
$$
DECLARE cost float; max_price float; qty INT;
BEGIN
	 select stock into qty from sells where new.store_id=sells.store_id and new.drug_id=sells.drug_id;

	 if qty=0 then
		RAISE EXCEPTION 'Not enough in stock';
	 end if;

	 update sells set stock=stock-1 where new.store_id=sells.store_id and new.drug_id=sells.drug_id;

         select selling_price into cost from sells where new.store_id=sells.store_id and new.drug_id=sells.drug_id;
	 update buys_from set price=price+cost where new.patient_id=buys_from.patient_id;

	 select max(price) into max_price from buys_from where new.patient_id=buys_from.patient_id;
	 update buys_from set price=max_price where new.patient_id=buys_from.patient_id;

	 RETURN NEW;
END;
$$
LANGUAGE 'plpgsql';

CREATE OR REPLACE TRIGGER bill_update
AFTER INSERT ON buys_from
FOR EACH ROW
EXECUTE PROCEDURE trig_func();

