
 create database Patient_Diagnosis_Report;
 show databases;
 use Patient_Diagnosis_Report;
  /* 1. 	Write a query to create a patients table with the fields such as date, patient id, patient name, age, weight, gender, 
              location, phone number, disease, doctor name, and doctor id.*/
 
 create Table patients_table
 (date, patient_id varchar(15),  patient_name text, age year, weight int, gender text, location text,
 phone_number int, disease text, doctor_name text, doctor_id int);
 
 alter table patients_table 
 modify column date text; 
 
update patients_table

set age ='2075'
where patient_name = 'Aaron';




 -- 2. Write a query to insert values into the patients table.
 -- completed.
 
 -- 3. Write a query to display the total number of patients in the table.

select * from patients_table;

select count(patient_id)
from patients_table;
-- 8
 
 -- 4. Write a query to display the patient id, patient name, gender, and disease of the patient whose age is maximum.
select patient_id, patient_name, gender, disease 
from patients_table
where age =(select max(age) from patients_table);

-- 5. Write a query to display patient id and patient name with the current date.
select patient_id, patient_name , now()
from patients_table ;

-- 6. Write a query to display the old patient’s name and new patient's name in uppercase.
select  upper(patient_name) 
from patients_table; 

-- 7. Write a query to display the patient’s name along with the length of their name.
select patient_name, length(patient_name) as name_length
from patients_table;

-- 8. Write a query to display the patient’s name, and the gender of the patient must be mentioned as M or F.

select patient_name, 
(case when  gender ='Male' then 'M' when  gender='Female'  then 'F' 
end) as gender 
from patients_table;

-- 9. Write a query to combine the names of the patient and the doctor in a new column. 
select concat(patient_name, doctor_name) as conct_name 
from patients_table;


-- 10. Write a query to display the patients’ age along with the logarithmic value (base 10) of their age.


NA


-- 11. Write a query to extract the year from the given date in a separate column.
select patient_name , YEAR( date) as year_column
from patients_table;

-- 12. Write a query to return NULL if the patient’s name and doctor’s name are similar else return the patient’s name.
select patient_id, patient_name
from patients_table 
where patient_name not in (select doctor_name from patients_table);


-- 13. Write a query to return Yes if the patient’s age is greater than 40 else return No.



-- 14. Write a query to display the doctor’s duplicate name from the table.

