create table department(
department_id INT primary key not null,
department_name VARCHAR(100) unique not null,
dep_loc_id INT, 
phone_number VARCHAR(100) unique not null,
patient_capacity INT not null,
foreign key (dep_loc_id) references dep_loc(dep_loc_id)  
)


create table doctor_level(
doctor_level_id INT primary key not null,
level VARCHAR(50) unique not null
)

create table shift(
shift_id INT primary key not null,
shift_type VARCHAR(100) not null
)

CREATE TABLE doctor_schedule (
  schedule_id INT PRIMARY KEY NOT NULL,
  doctor_id INT,
  work_date DATE NOT NULL,
  start_time TIME NOT NULL,
  end_time TIME NOT NULL
);

create table doctor(
doctor_id INT primary key not null,
name VARCHAR(100) not null,
specialization_id INT, 
phone_number VARCHAR(100) unique not null,
email VARCHAR(100) unique not null,
department_id INT,
shift_id INT,
doctor_level_id INT,
schedule_id INT,
foreign key (specialization_id) references dep_loc(dep_loc_id),
foreign key (department_id) references department(department_id),
foreign key (shift_id) references shift(shift_id),
foreign key (doctor_level_id) references doctor_level(doctor_level_id),
foreign key (schedule_id) references doctor_schedule(schedule_id)
);

--Add foreign key constraint to doctor_schedule (now that doctor exists)
ALTER TABLE doctor_schedule
ADD CONSTRAINT fk_doctor_id
FOREIGN KEY (doctor_id) REFERENCES doctor(doctor_id);


create table emergency_state(
state_id INT primary key,
state_color VARCHAR(50) not null
)


create table nurse_specialisation(
spec_id INT primary key not null,
spec_name VARCHAR(100) unique not null
);

create table nurse_schedule(
schedule_id INT primary key not null,
nurse_id INT,--foreign key
work_date DATE not null,
start_time TIME not null,
end_time TIME not null
);


create table nurse(
nurse_id INT primary key not null,
name VARCHAR(100),
shift_id INT, --foreign key
nurse_specialisation_id INT, --foreign key
nurse_schedule_id INT, --foreign key
department_id INT, --foreign key

foreign key (shift_id) references shift(shift_id),
foreign key (nurse_specialisation_id) references nurse_specialisation(spec_id),
foreign key (nurse_schedule_id) references nurse_schedule(schedule_id),
foreign key (department_id) references department(department_id)
);

--Add foreign key constraint to nurse_schedule (now that nurse exists)
ALTER TABLE nurse_schedule
ADD CONSTRAINT fk_nurse_id
FOREIGN KEY (nurse_id) REFERENCES nurse(nurse_id);

create table blood_type(
blood_type_id INT primary key not null,
blood_type_info VARCHAR(50) not null 
);


create table patient(
patient_id INT primary key not null,
name VARCHAR(100) not null, 
date_of_birth DATE not null,
gender VARCHAR(20) not null,
address VARCHAR(200) not null,
phone_number VARCHAR(20),
emergency_state_id INT not null, --foreign key
insurance_number VARCHAR(50) unique not null,
diagnose TEXT not null,
contact_person_number VARCHAR(20) not null, 
infection_status VARCHAR(50) not null,
blood_type_id INT, --foreign key
foreign key (blood_type_id)  references blood_type(blood_type_id),
foreign key (emergency_state_id)  references emergency_state(state_id)
);


create table patient_transport(
transport_employee_id INT primary key not null,
shift_id INT, -- foreign key
transport_employee_name VARCHAR(100) not null,
patient_id INT, --foreign key 
pick_up_dep_id INT, --foreign key
drop_dep_id INT, --foreign key
pick_up_time TIME not null, 
pick_up_priority VARCHAR(50) not null,
transport_type VARCHAR(50) not null, 
one_way_two_way VARCHAR(20) not null,
transport_body_type VARCHAR(50) not null,
foreign key (shift_id) references shift(shift_id),
foreign key (patient_id) references patient(patient_id),
foreign key(pick_up_dep_id) references department(department_id),
foreign key(drop_dep_id) references department(department_id)
);

create table Apotheke(
medicament_id INT primary key not null,
in_stock INT not null, 
delivery_time TIME not null, 
medicament_name VARCHAR(100) not null
);

create table patient_food(
food_id INT primary key not null,
meal_time TIME not null, 
meal_type VARCHAR(50), 
patient_id INT, --foreign key 
department_id INT, --foreign key
food_sort VARCHAR(50) not null,
foreign key(patient_id) references patient(patient_id),
foreign key(department_id) references department(department_id)
);


create table nurse_specialisation(
spec_id INT primary key not null, 
spec_name VARCHAR(100)
);


create table doctor_specialisation(
specialisation_id INT primary key not null, 
spec_name VARCHAR(100) unique not null
);

create table doctor_patient_nurse(
dpn_id INT primary key not null,
doctor_id INT not null, --foreign key
patient_id INT not null, --foreign key
nurse_id INT not null, --foreign key 
department_id INT not null, --foreign key
shift_id INT not null, --foreign key
medication_given TEXT not null,
care_date DATE not null,
foreign key(doctor_id) references doctor(doctor_id),
foreign key(patient_id) references patient(patient_id),
foreign key(nurse_id) references nurse(nurse_id),
foreign key(department_id) references department(department_id),
foreign key(shift_id) references shift (shift_id)
);



