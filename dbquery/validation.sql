ALTER TABLE student
ADD CONSTRAINT chk_name
CHECK (name NOT LIKE '%@%' 
	   AND name NOT LIKE '%#%' 
	   AND name NOT LIKE '%$%');
	   
	  
insert into student (name, surname, birthday, phoneNumber, primarySkill, created_datetime, updated_datetime) values ('Jule@', 'Haddon', '1981-12-10T13:20:03Z', '652-06-2210', 'Personal Training', '2019-06-30 07:32:36', '2020-11-23 00:22:26');
