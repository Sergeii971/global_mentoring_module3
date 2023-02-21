CREATE TABLE IF NOT EXISTS student_adress(
id SERIAL NOT NULL,
adress VARCHAR(200),
PRIMARY KEY (id)
);

INSERT INTO student_adress(adress) VALUES('14 street');
INSERT INTO student_adress(adress) VALUES('13 street');


create function check_student_adress_change() returns trigger language plpgsql as $$
begin
  IF new.id <> old.id THEN
  RAISE EXCEPTION 'cannot change the fields of this table'; 
        END IF;
        RETURN NEW;
end $$;


CREATE TRIGGER student_adress_update_trigger AFTER UPDATE ON student_adress FOR EACH ROW
      EXECUTE PROCEDURE check_student_adress_change()