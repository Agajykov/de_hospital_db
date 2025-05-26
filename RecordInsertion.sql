
--Record insertion dep_loc table
INSERT INTO dep_loc (location_name) VALUES ('Neurology Department');
INSERT INTO dep_loc (location_name) VALUES ('Cardiology Unit');
INSERT INTO dep_loc (location_name) VALUES ('Oncology Ward');
INSERT INTO dep_loc (location_name) VALUES ('Pediatrics Wing');
INSERT INTO dep_loc (location_name) VALUES ('Radiology Center');
INSERT INTO dep_loc (location_name) VALUES ('Emergency Room');
INSERT INTO dep_loc (location_name) VALUES ('Surgical Operating Area');
INSERT INTO dep_loc (location_name) VALUES ('Intensive Care Unit');
INSERT INTO dep_loc (location_name) VALUES ('Gynecology Section');
INSERT INTO dep_loc (location_name) VALUES ('Outpatient Services');
INSERT INTO dep_loc (location_name) VALUES ('Physiotherapy Room');
INSERT INTO dep_loc (location_name) VALUES ('Pharmacy');
INSERT INTO dep_loc (location_name) VALUES ('Orthopedics Clinic');
INSERT INTO dep_loc (location_name) VALUES ('Anesthesiology Support');
INSERT INTO dep_loc (location_name) VALUES ('ENT Room'); -- Ear, Nose, Throat
INSERT INTO dep_loc (location_name) VALUES ('Urology Office');
INSERT INTO dep_loc (location_name) VALUES ('Dermatology Clinic');
INSERT INTO dep_loc (location_name) VALUES ('Pathology Lab');
INSERT INTO dep_loc (location_name) VALUES ('Psychiatric Ward');



--Record insertion for doctor_level table
INSERT INTO doctor_level (level) VALUES ('Assistant Doctor'); --Assistenzarzt
insert into doctor_level (level) values ('Senior Doctor');    --Oberarzt
insert into doctor_level (level) values ('Leading Doctor');	  --Leitender Arzt	
insert into doctor_level (level) values ('Medical Direcotor'); --Chefarzt

--Record insertion for shift table
insert into shift(shift_type) values ('Morning');
insert into shift(shift_type) values ('Afternoon');
insert into shift(shift_type) values ('Night');

--Record insertion for emergency_state table
insert into emergency_state(state_color) values ('Green');
insert into emergency_state(state_color) values ('Yellow');
insert into emergency_state (state_color) values('Red');


--Record insertion for nurse_specialisation table

insert into nurse_specialisation (spec_name) values('Cardiology');
insert into nurse_specialisation (spec_name) values('Neurology');
insert into nurse_specialisation (spec_name) values('Oncology');
insert into nurse_specialisation (spec_name) values('Pediatric');
insert into nurse_specialisation (spec_name) values('Radiology');
insert into nurse_specialisation (spec_name) values('Emergency');
insert into nurse_specialisation (spec_name) values('Operating');
insert into nurse_specialisation (spec_name) values('Intensive Care');
insert into nurse_specialisation (spec_name) values('Maternity');
insert into nurse_specialisation (spec_name) values('Administrative');
insert into nurse_specialisation (spec_name) values('Outpatient'); --Ambulante Pflege
insert into nurse_specialisation (spec_name) values('Physiotherapy');
insert into nurse_specialisation (spec_name) values('Pharmacy');
insert into nurse_specialisation (spec_name) values('Orthopedic');
insert into nurse_specialisation (spec_name) values('Anesthesia');
insert into nurse_specialisation (spec_name) values('ENT'); --Hals-nasen-Ohren-Heiljunde
insert into nurse_specialisation (spec_name) values('Urology');
insert into nurse_specialisation (spec_name) values('Dermatology');
insert into nurse_specialisation (spec_name) values('Pathology'); --Lab
insert into nurse_specialisation (spec_name) values('Psychiatric');


--Record insertion for doctor_specialisation table 
insert into doctor_specialisation (spec_name) values('Neurologist');
insert into doctor_specialisation (spec_name) values('Cardiologist');
insert into doctor_specialisation (spec_name) values('Oncologist');
insert into doctor_specialisation (spec_name) values('Pediatrician');
insert into doctor_specialisation (spec_name) values('Radiologist');
insert into doctor_specialisation (spec_name) values('Emergency');
insert into doctor_specialisation (spec_name) values('Surgeon');
insert into doctor_specialisation (spec_name) values('Intensive Care');
insert into doctor_specialisation (spec_name) values('Gynecologist');
insert into doctor_specialisation (spec_name) values('Outpatient'); --Ambulante Pflege
insert into doctor_specialisation (spec_name) values('Physiotherapy');
insert into doctor_specialisation (spec_name) values('Pharmacist');
insert into doctor_specialisation (spec_name) values('Orthopedic');
insert into doctor_specialisation (spec_name) values('Anesthesiologist');
insert into doctor_specialisation (spec_name) values('ENT'); --Hals-nasen-Ohren-Heiljunde
insert into doctor_specialisation (spec_name) values('Urologist');
insert into doctor_specialisation (spec_name) values('Dermatologist');
insert into doctor_specialisation (spec_name) values('Pathologist'); --Lab
insert into doctor_specialisation (spec_name) values('Psychiatrist');

--Record insertion for blood_type table 
INSERT INTO blood_type (blood_type_info) VALUES 
  ('A+'),
  ('A-'),
  ('B+'),
  ('B-'),
  ('AB+'),
  ('AB-'),
  ('O+'),
  ('O-');

INSERT INTO department (department_name, dep_loc_id, phone_number, patient_capacity) VALUES 
('Neurology Department', 50, '+49-30-10001', 60),
('Cardiology Unit', 51, '+49-30-10002', 70),
('Oncology Ward', 52, '+49-30-10003', 80),
('Pediatrics Wing', 53, '+49-30-10004', 65),
('Radiology Center', 54, '+49-30-10005', 40),
('Emergency Room', 55, '+49-30-10006', 100),
('Surgical Department', 56, '+49-30-10007', 50),
('Intensive Care Unit', 57, '+49-30-10008', 30),
('Gynecology Section', 58, '+49-30-10009', 55),
('Outpatient Services', 59, '+49-30-10010', 90),
('Physiotherapy Department', 60, '+49-30-10011', 25),
('Hospital Pharmacy', 61, '+49-30-10012', 10),
('Orthopedics Clinic', 62, '+49-30-10013', 50),
('Anesthesiology Unit', 63, '+49-30-10014', 15),
('ENT Department', 64, '+49-30-10015', 35),
('Urology Office', 65, '+49-30-10016', 30),
('Dermatology Clinic', 66, '+49-30-10017', 40),
('Pathology Lab', 67, '+49-30-10018', 20),
('Psychiatric Ward', 68, '+49-30-10019', 45);

INSERT INTO doctor_schedule (schedule_id, doctor_id, work_date, start_time, end_time) VALUES
(1, 1, '2025-09-15', '08:00:00', '16:00:00'),
(2, 2, '2025-09-16', '09:00:00', '17:00:00'),
(3, 3, '2025-09-17', '10:00:00', '18:00:00'),
(4, 4, '2025-09-18', '08:00:00', '16:00:00'),
(5, 5, '2025-09-19', '09:00:00', '17:00:00'),
(6, 6, '2025-09-20', '10:00:00', '18:00:00'),
(7, 7, '2025-09-21', '08:00:00', '16:00:00'),
(8, 8, '2025-09-22', '09:00:00', '17:00:00'),
(9, 9, '2025-09-23', '10:00:00', '18:00:00'),
(10, 10, '2025-09-24', '08:00:00', '16:00:00'),
(11, 11, '2025-09-25', '09:00:00', '17:00:00'),
(12, 12, '2025-09-26', '10:00:00', '18:00:00'),
(13, 13, '2025-09-27', '08:00:00', '16:00:00'),
(14, 14, '2025-09-28', '09:00:00', '17:00:00'),
(15, 15, '2025-09-29', '10:00:00', '18:00:00'),
(16, 16, '2025-09-30', '08:00:00', '16:00:00'),
(17, 17, '2025-10-01', '09:00:00', '17:00:00'),
(18, 18, '2025-10-02', '10:00:00', '18:00:00'),
(19, 19, '2025-10-03', '08:00:00', '16:00:00'),
(20, 20, '2025-10-04', '09:00:00', '17:00:00'),
(21, 21, '2025-10-05', '10:00:00', '18:00:00'),
(22, 22, '2025-10-06', '08:00:00', '16:00:00'),
(23, 23, '2025-10-07', '09:00:00', '17:00:00'),
(24, 24, '2025-10-08', '10:00:00', '18:00:00'),
(25, 25, '2025-10-09', '08:00:00', '16:00:00'),
(26, 26, '2025-10-10', '09:00:00', '17:00:00'),
(27, 27, '2025-10-11', '10:00:00', '18:00:00'),
(28, 28, '2025-10-12', '08:00:00', '16:00:00'),
(29, 29, '2025-10-13', '09:00:00', '17:00:00'),
(30, 30, '2025-10-14', '10:00:00', '18:00:00'),
(31, 31, '2025-10-15', '08:00:00', '16:00:00'),
(32, 32, '2025-10-16', '09:00:00', '17:00:00'),
(33, 33, '2025-10-17', '10:00:00', '18:00:00'),
(34, 34, '2025-10-18', '08:00:00', '16:00:00'),
(35, 35, '2025-10-19', '09:00:00', '17:00:00'),
(36, 36, '2025-10-20', '10:00:00', '18:00:00'),
(37, 37, '2025-10-21', '08:00:00', '16:00:00'),
(38, 38, '2025-10-22', '09:00:00', '17:00:00'),
(39, 39, '2025-10-23', '10:00:00', '18:00:00'),
(40, 40, '2025-10-24', '08:00:00', '16:00:00');


INSERT INTO doctor (doctor_id, name, specialization_id, phone_number, email, department_id, shift_id, doctor_level_id, schedule_id) VALUES
(1, 'Olivia Müller', 2, '+49-30-25614226', 'olivia.müller1@hospital.de', 2, 4, 6, 1),
(2, 'Olivia Schwarz', 3, '+49-30-22458591', 'olivia.schwarz2@medcare.de', 3, 5, 5, 2),
(3, 'John Schneider', 4, '+49-30-24668136', 'john.schneider3@hospital.de', 4, 7, 5, 3),
(4, 'Harper Wagner', 5, '+49-30-28038374', 'harper.wagner4@hospital.de', 5, 5, 7, 4),
(5, 'John Meyer', 6, '+49-30-28090293', 'john.meyer5@clinic.de', 6, 5, 6, 5),
(6, 'Elijah Koch', 7, '+49-30-22714803', 'elijah.koch6@hospital.de', 7, 5, 5, 6),
(7, 'Mia Bauer', 8, '+49-30-25437923', 'mia.bauer7@hospital.de', 8, 7, 8, 7),
(8, 'Harper Fischer', 9, '+49-30-27350753', 'harper.fischer8@hospital.de', 9, 7, 7, 8),
(9, 'Evelyn Bauer', 10, '+49-30-24226067', 'evelyn.bauer9@medcare.de', 10, 4, 5, 9),
(10, 'Sophia Schäfer', 11, '+49-30-22338687', 'sophia.schäfer10@hospital.de', 11, 4, 8, 10),
(11, 'William Schröder', 12, '+49-30-28754191', 'william.schröder11@clinic.de', 12, 7, 5, 11),
(12, 'Lucas Schwarz', 13, '+49-30-28407255', 'lucas.schwarz12@medcare.de', 13, 5, 8, 12),
(13, 'Isabella Wolf', 14, '+49-30-26272034', 'isabella.wolf13@hospital.de', 14, 5, 7, 13),
(14, 'Charlotte Neumann', 15, '+49-30-24233394', 'charlotte.neumann14@hospital.de', 15, 7, 8, 14),
(15, 'James Klein', 16, '+49-30-23422261', 'james.klein15@hospital.de', 16, 4, 5, 15),
(16, 'Emma Koch', 17, '+49-30-22041275', 'emma.koch16@hospital.de', 17, 5, 5, 16),
(17, 'Lucas Müller', 18, '+49-30-24801940', 'lucas.müller17@hospital.de', 18, 5, 6, 17),
(18, 'Charlotte Richter', 19, '+49-30-28604087', 'charlotte.richter18@hospital.de', 19, 5, 8, 18),
(19, 'Benjamin Bauer', 1, '+49-30-28028230', 'benjamin.bauer19@hospital.de', 1, 5, 7, 19),
(20, 'Evelyn Meyer', 2, '+49-30-29054486', 'evelyn.meyer20@hospital.de', 2, 7, 5, 20),
(21, 'Henry Zimmermann', 3, '+49-30-25912206', 'henry.zimmermann21@clinic.de', 3, 4, 6, 21),
(22, 'Benjamin Braun', 4, '+49-30-25263373', 'benjamin.braun22@medcare.de', 4, 5, 8, 22),
(23, 'William Weber', 5, '+49-30-27302632', 'william.weber23@hospital.de', 5, 4, 5, 23),
(24, 'Amelia Wolf', 6, '+49-30-25203391', 'amelia.wolf24@hospital.de', 6, 5, 6, 24),
(25, 'Elijah Schröder', 7, '+49-30-23531356', 'elijah.schröder25@hospital.de', 7, 5, 8, 25),
(26, 'John Fischer', 8, '+49-30-23785766', 'john.fischer26@hospital.de', 8, 5, 7, 26),
(27, 'Ava Richter', 9, '+49-30-25992733', 'ava.richter27@hospital.de', 9, 7, 5, 27),
(28, 'Lucas Braun', 10, '+49-30-24920533', 'lucas.braun28@hospital.de', 10, 7, 6, 28),
(29, 'Liam Schwarz', 11, '+49-30-27301293', 'liam.schwarz29@hospital.de', 11, 4, 5, 29),
(30, 'Emma Koch', 12, '+49-30-26763079', 'emma.koch30@hospital.de', 12, 5, 7, 30),
(31, 'William Meyer', 13, '+49-30-26136361', 'william.meyer31@hospital.de', 13, 7, 6, 31),
(32, 'Isabella Wolf', 14, '+49-30-25560691', 'isabella.wolf32@hospital.de', 14, 4, 8, 32),
(33, 'Liam Schröder', 15, '+49-30-25370610', 'liam.schröder33@hospital.de', 15, 5, 5, 33),
(34, 'Mia Klein', 16, '+49-30-22820500', 'mia.klein34@hospital.de', 16, 5, 5, 34),
(35, 'Emma Wagner', 17, '+49-30-26933633', 'emma.wagner35@hospital.de', 17, 4, 8, 35),
(36, 'Amelia Weber', 18, '+49-30-22060755', 'amelia.weber36@hospital.de', 18, 4, 6, 36),
(37, 'Benjamin Müller', 19, '+49-30-22660147', 'benjamin.müller37@hospital.de', 19, 5, 7, 37),
(38, 'Evelyn Schwarz', 1, '+49-30-28210562', 'evelyn.schwarz38@hospital.de', 1, 5, 5, 38),
(39, 'Charlotte Meyer', 2, '+49-30-25280964', 'charlotte.meyer39@hospital.de', 2, 5, 8, 39),
(40, 'Sophia Klein', 3, '+49-30-23788812', 'sophia.klein40@hospital.de', 3, 5, 6, 40);



INSERT INTO nurse (nurse_id, name, shift_id, nurse_specialisation_id, nurse_schedule_id, department_id) VALUES
(1, 'Alice Meier', 4, 1, 1, 2),
(2, 'Bob Schneider', 5, 2, 2, 1),
(3, 'Clara Fischer', 7, 3, 3, 3),
(4, 'David Weber', 4, 4, 4, 4),
(5, 'Eva Braun', 5, 5, 5, 5),
(6, 'Felix Neumann', 7, 6, 6, 6),
(7, 'Greta Klein', 4, 7, 7, 7),
(8, 'Hannah Richter', 5, 8, 8, 8),
(9, 'Isabel König', 7, 9, 9, 9),
(10, 'Jonas Scholz', 4, 10, 10, 10),
(11, 'Katharina Paul', 5, 11, 11, 10),
(12, 'Leon Müller', 7, 12, 12, 11),
(13, 'Maria Berg', 4, 13, 13, 12),
(14, 'Noah Wolf', 5, 14, 14, 13),
(15, 'Olivia Hartmann', 7, 16, 15, 14),
(16, 'Paul Becker', 4, 17, 16, 15),
(17, 'Quirin Lange', 5, 18, 17, 16),
(18, 'Rosa Busch', 7, 19, 18, 17),
(19, 'Sebastian Hahn', 4, 20, 19, 18),
(20, 'Theresa Krüger', 5, 21, 20, 19),
(21, 'Uwe Vogt', 7, 1, 21, 2),
(22, 'Valentina Lorenz', 4, 2, 22, 1),
(23, 'Willi Maier', 5, 3, 23, 3),
(24, 'Xenia Arnold', 7, 4, 24, 4),
(25, 'Yasmin Albrecht', 4, 5, 25, 5),
(26, 'Zeno Stein', 5, 6, 26, 6),
(27, 'Annika Fuchs', 7, 7, 27, 7),
(28, 'Bastian Krämer', 4, 8, 28, 8),
(29, 'Carla Dietrich', 5, 9, 29, 9),
(30, 'Daniel Engel', 7, 10, 30, 10),
(31, 'Emilia Pfeiffer', 4, 11, 31, 10),
(32, 'Fabian Kurz', 5, 12, 32, 11),
(33, 'Gisela Horn', 7, 13, 33, 12),
(34, 'Heinz Graf', 4, 14, 34, 13),
(35, 'Ines Baum', 5, 16, 35, 14),
(36, 'Jürgen Adler', 7, 17, 36, 15),
(37, 'Klara Möller', 4, 18, 37, 16),
(38, 'Lars Zimmer', 5, 19, 38, 17),
(39, 'Mira Scholz', 7, 20, 39, 18),
(40, 'Niklas Otto', 4, 21, 40, 19);


INSERT INTO patient (
  patient_id, name, date_of_birth, gender, address, phone_number, emergency_state_id,
  insurance_number, diagnose, contact_person_number, infection_status, blood_type_id
) VALUES
(1, 'Anna Becker', '1985-06-12', 'Female', 'Main Street 1, Berlin', '015112345678', 4, 'INS-001', 'Hypertension', '015198765432', 'Negative', 1),
(2, 'Max Müller', '1990-02-28', 'Male', 'Lindenweg 5, Hamburg', '015212345679', 5, 'INS-002', 'Asthma', '015198765433', 'Negative', 3),
(3, 'Lisa Schneider', '2001-11-03', 'Female', 'Bergstraße 9, Munich', '015312345680', 6, 'INS-003', 'COVID-19', '015198765434', 'Positive', 6),
(4, 'Tom Fischer', '1978-07-19', 'Male', 'Hauptstraße 18, Cologne', '015412345681', 4, 'INS-004', 'Diabetes Type 2', '015198765435', 'Negative', 7),
(5, 'Emma Wagner', '1964-01-14', 'Female', 'Wiesenweg 3, Stuttgart', '015512345682', 5, 'INS-005', 'Stroke', '015198765436', 'Negative', 2),
(6, 'David Schulz', '1955-03-29', 'Male', 'Seestraße 7, Frankfurt', '015612345683', 6, 'INS-006', 'Heart Attack', '015198765437', 'Positive', 4),
(7, 'Julia Hoffmann', '2003-09-23', 'Female', 'Goethestraße 12, Leipzig', '015712345684', 5, 'INS-007', 'Pneumonia', '015198765438', 'Negative', 8),
(8, 'Felix Braun', '1999-12-11', 'Male', 'Kaiserstraße 4, Dresden', '015812345685', 4, 'INS-008', 'Fractured Leg', '015198765439', 'Negative', 1),
(9, 'Marie König', '1988-08-08', 'Female', 'Rathausplatz 6, Düsseldorf', '015912345686', 4, 'INS-009', 'Migraine', '015198765440', 'Negative', 5),
(10, 'Leon Weber', '1975-04-30', 'Male', 'Parkallee 15, Bremen', '016012345687', 6, 'INS-010', 'Kidney Failure', '015198765441', 'Positive', 3);

INSERT INTO patient_food (
  food_id, meal_time, meal_type, patient_id, department_id, food_sort
) VALUES
(1, '08:00:00', 'Food', 1, 2, 'Low-Sodium'),           -- Hypertension → Cardiology
(2, '12:30:00', 'Drink', 2, 15, 'Standard'),           -- Asthma → ENT
(3, '18:30:00', 'Food', 3, 6, 'Vegan'),                -- COVID-19 → Emergency Room
(4, '08:00:00', 'Food', 4, 2, 'Diabetic-Friendly'),    -- Diabetes → Cardiology
(5, '12:30:00', 'Drink', 5, 2, 'Vegetarian'),          -- Stroke → Cardiology
(6, '18:30:00', 'Food', 6, 2, 'Muslim'),               -- Heart Attack → Cardiology
(7, '08:00:00', 'Drink', 7, 4, 'Standard'),            -- Pneumonia (child) → Pediatrics
(8, '12:30:00', 'Food', 8, 13, 'High-Calcium'),        -- Fractured Leg → Orthopedics
(9, '18:30:00', 'Drink', 9, 1, 'Vegetarian'),          -- Migraine → Neurology
(10, '08:00:00', 'Food', 10, 2, 'Low-Protein');        -- Kidney Failure → Cardiology



