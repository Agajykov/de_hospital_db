-- First create all base/reference tables (no dependencies)

CREATE TABLE dep_loc (
  dep_loc_id SERIAL PRIMARY KEY,
  location_name VARCHAR(100) NOT NULL
);

CREATE TABLE doctor_level (
  doctor_level_id SERIAL PRIMARY KEY,
  level VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE shift (
  shift_id SERIAL PRIMARY KEY,
  shift_type VARCHAR(100) NOT NULL
);

CREATE TABLE emergency_state (
  state_id SERIAL PRIMARY KEY,
  state_color VARCHAR(50) NOT NULL
);

CREATE TABLE nurse_specialisation (
  spec_id SERIAL PRIMARY KEY,
  spec_name VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE doctor_specialisation (
  specialisation_id SERIAL PRIMARY KEY,
  spec_name VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE blood_type (
  blood_type_id SERIAL PRIMARY KEY,
  blood_type_info VARCHAR(50) NOT NULL
);

-- Now Creation of  tables that depend on the above tables

CREATE TABLE department (
  department_id SERIAL PRIMARY KEY,
  department_name VARCHAR(100) UNIQUE NOT NULL,
  dep_loc_id INT,
  phone_number VARCHAR(100) UNIQUE NOT NULL,
  patient_capacity INT NOT NULL,
  FOREIGN KEY (dep_loc_id) REFERENCES dep_loc(dep_loc_id)
);

CREATE TABLE doctor_schedule (
  schedule_id SERIAL PRIMARY KEY,
  doctor_id INT,
  work_date DATE NOT NULL,
  start_time TIME NOT NULL,
  end_time TIME NOT NULL
);

CREATE TABLE doctor (
  doctor_id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  specialization_id INT,
  phone_number VARCHAR(100) UNIQUE NOT NULL,
  email VARCHAR(100) UNIQUE NOT NULL,
  department_id INT,
  shift_id INT,
  doctor_level_id INT,
  schedule_id INT,
  FOREIGN KEY (specialization_id) REFERENCES doctor_specialisation(specialisation_id),
  FOREIGN KEY (department_id) REFERENCES department(department_id),
  FOREIGN KEY (shift_id) REFERENCES shift(shift_id),
  FOREIGN KEY (doctor_level_id) REFERENCES doctor_level(doctor_level_id),
  FOREIGN KEY (schedule_id) REFERENCES doctor_schedule(schedule_id)
);

ALTER TABLE doctor_schedule
ADD CONSTRAINT fk_doctor_id FOREIGN KEY (doctor_id) REFERENCES doctor(doctor_id);

CREATE TABLE nurse_schedule (
  schedule_id SERIAL PRIMARY KEY,
  nurse_id INT,
  work_date DATE NOT NULL,
  start_time TIME NOT NULL,
  end_time TIME NOT NULL
);

CREATE TABLE nurse (
  nurse_id SERIAL PRIMARY KEY,
  name VARCHAR(100),
  shift_id INT,
  nurse_specialisation_id INT,
  nurse_schedule_id INT,
  department_id INT,
  FOREIGN KEY (shift_id) REFERENCES shift(shift_id),
  FOREIGN KEY (nurse_specialisation_id) REFERENCES nurse_specialisation(spec_id),
  FOREIGN KEY (nurse_schedule_id) REFERENCES nurse_schedule(schedule_id),
  FOREIGN KEY (department_id) REFERENCES department(department_id)
);

ALTER TABLE nurse_schedule
ADD CONSTRAINT fk_nurse_id FOREIGN KEY (nurse_id) REFERENCES nurse(nurse_id);

CREATE TABLE patient (
  patient_id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  date_of_birth DATE NOT NULL,
  gender VARCHAR(20) NOT NULL,
  address VARCHAR(200) NOT NULL,
  phone_number VARCHAR(20),
  emergency_state_id INT NOT NULL,
  insurance_number VARCHAR(50) UNIQUE NOT NULL,
  diagnose TEXT NOT NULL,
  contact_person_number VARCHAR(20) NOT NULL,
  infection_status VARCHAR(50) NOT NULL,
  blood_type_id INT,
  FOREIGN KEY (blood_type_id) REFERENCES blood_type(blood_type_id),
  FOREIGN KEY (emergency_state_id) REFERENCES emergency_state(state_id)
);

CREATE TABLE patient_transport (
  transport_employee_id SERIAL PRIMARY KEY,
  shift_id INT,
  transport_employee_name VARCHAR(100) NOT NULL,
  patient_id INT,
  pick_up_dep_id INT,
  drop_dep_id INT,
  pick_up_time TIME NOT NULL,
  pick_up_priority VARCHAR(50) NOT NULL,
  transport_type VARCHAR(50) NOT NULL,
  one_way_two_way VARCHAR(20) NOT NULL,
  transport_body_type VARCHAR(50) NOT NULL,
  FOREIGN KEY (shift_id) REFERENCES shift(shift_id),
  FOREIGN KEY (patient_id) REFERENCES patient(patient_id),
  FOREIGN KEY (pick_up_dep_id) REFERENCES department(department_id),
  FOREIGN KEY (drop_dep_id) REFERENCES department(department_id)
);

CREATE TABLE Apotheke (
  medicament_id SERIAL PRIMARY KEY,
  in_stock INT NOT NULL,
  delivery_time TIME NOT NULL,
  medicament_name VARCHAR(100) NOT NULL
);

CREATE TABLE patient_food (
  food_id SERIAL PRIMARY KEY,
  meal_time TIME NOT NULL,
  meal_type VARCHAR(50),
  patient_id INT,
  department_id INT,
  food_sort VARCHAR(50) NOT NULL,
  FOREIGN KEY (patient_id) REFERENCES patient(patient_id),
  FOREIGN KEY (department_id) REFERENCES department(department_id)
);

CREATE TABLE doctor_patient_nurse (
  dpn_id SERIAL PRIMARY KEY,
  doctor_id INT NOT NULL,
  patient_id INT NOT NULL,
  nurse_id INT NOT NULL,
  department_id INT NOT NULL,
  shift_id INT NOT NULL,
  medication_given TEXT NOT NULL,
  care_date DATE NOT NULL,
  FOREIGN KEY (doctor_id) REFERENCES doctor(doctor_id),
  FOREIGN KEY (patient_id) REFERENCES patient(patient_id),
  FOREIGN KEY (nurse_id) REFERENCES nurse(nurse_id),
  FOREIGN KEY (department_id) REFERENCES department(department_id),
  FOREIGN KEY (shift_id) REFERENCES shift(shift_id)
);
