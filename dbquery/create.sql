CREATE TABLE IF NOT EXISTS student (
id  SERIAL NOT NULL,
name VARCHAR(100) NOT NULL,
surname VARCHAR(100) NOT NULL,
birthday DATE,
phoneNumber VARCHAR(100),
primarySkill VARCHAR(100) NOT NULL,
created_datetime TIMESTAMP NOT NULL,
updated_datetime TIMESTAMP NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS subject (
id  SERIAL NOT NULL,
name VARCHAR(100) NOT NULL,
tutor VARCHAR(100) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS exam_result (
id  SERIAL NOT NULL,
student_id INT,
subject_id INT,
mark INT NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (student_id) REFERENCES student(id),
FOREIGN KEY (subject_id) REFERENCES subject(id)
);
