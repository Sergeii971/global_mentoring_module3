CREATE OR REPLACE FUNCTION update_updated_datetime()
RETURNS TRIGGER AS $$
BEGIN
  NEW.updated_datetime = NOW();
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER update_updated_datetime_on
    BEFORE INSERT
    ON
      student
    FOR EACH ROW
EXECUTE PROCEDURE update_updated_datetime();

insert into student (name, surname, birthday, phoneNumber, primarySkill, created_datetime, updated_datetime) values ('Jule', 'Haddon', '1981-12-10T13:20:03Z', '652-06-2210', 'Personal Training', '2019-06-30 07:32:36', '2020-11-23 00:22:26');

