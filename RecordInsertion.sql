
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

