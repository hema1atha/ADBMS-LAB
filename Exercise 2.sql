Advanced DBMS 

Experiment 1: Accessing the database

1.

CREATE TABLE instructor (
  id INTEGER not null,
  name varchar(30),
  dept_name varchar(20),
  salary int,
  PRIMARY KEY(id)
);

INSERT INTO instructor VALUES (10101, 'srinivasan', 'comp.sci',65000);

INSERT INTO instructor VALUES (12121, 'wu', 'finance',65000);

INSERT INTO instructor VALUES (15151, 'mozart', 'music',40000);

INSERT INTO instructor VALUES (22222, 'einstein', 'physics',95000);

INSERT INTO instructor VALUES (32343, 'eisaid', 'history',60000);

INSERT INTO instructor VALUES (33456, 'gold', 'physics',87000);

INSERT INTO instructor VALUES (58583, 'califieri', 'history',65000);

INSERT INTO instructor VALUES (76543, 'singh', 'finance',80000);

INSERT INTO instructor VALUES (76766, 'crick', 'biology',72000);

INSERT INTO instructor VALUES (83821, 'brandt', 'comp.sci',95000);

INSERT INTO instructor VALUES (98345, 'kim', 'elec.eng',80000);

select* from instructor;


+-------+------------+-----------+--------+
| id    | name       | dept_name | salary|
+-------+------------+-----------+--------+
| 10101 | srinivasan|comp.sci     | 65000  |
| 12121 | wu         | finance    |  65000 |
| 15151 | mozart     | music      |  40000 |
| 22222 | einstein   | physics    |  95000 | 
| 32343 | eisaid     | history    |  60000 |
| 33456 | gold       | physics    |  87000 |
| 58583 | califieri  | history    |  65000 |
| 76543 | singh      | finance    |  80000 |
| 76766 | crick      | biology    |  72000 |
| 83821 | brandt     | comp.sci   |  95000 |
| 98345 | kim        | elec.eng   |  80000 |
+-------+------------+-----------+--------+

2.

create table teaches(
id int not null,
course_id varchar(30),
sec_id int,
semester char(15),
year year
);

insert into teaches values(10101,'cs-101',1,'fall',2017);

insert into teaches values(10101,'cs-315',1,'spring',2018);

insert into teaches values(10101,'cs-347',1,'fall',2017);

insert into teaches values(12121,'fin-201',1,'spring',2018);

insert into teaches values(22222,'phy-101',1,'fall',2017);

insert into teaches values(32343,'his-351',1,'spring',2018);

insert into teaches values(45565,'cs-101',1,'spring',2018);

insert into teaches values(45565,'cs-319',1,'spring',2018);

insert into teaches values(76766,'bio-101',1,'summer',2017);

insert into teaches values(76766,'bio-301',1,'summer',2018);

insert into teaches values(83821,'cs-190',1,'spring',2017);

insert into teaches values(83821,'cs-190',2,'spring',2017);

insert into teaches values(83821,'cs-319',2,'spring',2018);

insert into teaches values(98345,'ee-181',1,'spring',2017);

select * from teaches;

+-------+-----------+--------+----------+----------+
| id    | course_id | sec_id | semester |  year   |
+-------+-----------+--------+----------+----------+
| 10101 | cs-101    |      1 | fall     | 2017    |
| 10101 | cs-315    |      1 | spring   | 2018    |
| 10101 | cs-347    |      1 | fall     |2017     |
| 12121 | fin-201   |      1 | spring   | 2018    |
| 22222 | phy-101   |      1 | fall     | 2017    |
| 32343 | his-351   |      1 | spring   |2018     |
| 45565 | cs-101    |      1 | spring   | 2018    |
| 45565 | cs-319    |      1 | spring   | 2018    |
| 76766 | bio-101   |      1 | summer   | 2017    |
| 76766 | bio-301   |      1 | summer   | 2018    |
| 83821 | cs-190    |      1 | spring   | 2017    |
| 83821 | cs-190    |      2 | spring   | 2017    |
| 83821 | cs-319    |      2 | spring   | 2018    |
| 98345 | ee-181    |      1 | spring   | 2017    |
+-------+-----------+--------+----------+------+


3.insert the following additional tuple in instructor('10211','smith','biology',66000)

insert into instructor values(10211,'smith','biology',66000);
select * from instructor;

+-------+------------+-----------+--------+
| id    | name       | dept_name | salary |
+-------+------------+-----------+--------+
| 10101 | srinivasan |comp.sci   |65000   |
| 10211 | smith      | biology   |  66000 |
| 12121 | wu         | finance   |  65000 |
| 15151 | mozart     | music     |  40000 |
| 22222 | einstein   | physics   |  95000 |
| 32343 | eisaid     | history   |  60000 |
| 33456 | gold       | physics   |  87000 |
| 58583 | califieri  | history   |  65000 |
| 76543 | singh      | finance   |  80000 |
| 76766 | crick      | biology   |  72000 |
| 83821 | brandt     | comp.sci  |  95000 |
| 98345 | kim        | elec.eng  |  80000 |
+-------+------------+-----------+--------+

4.delete this tuple from instructor('10211','smith','biology',66000)

delete from instructor where id=10211 ;


+-------+------------+-----------+--------+
| id    | name       | dept_name | salary |
+-------+------------+-----------+--------+
| 10101 | srinivasan | comp.sci   |65000 |
| 12121 | wu         | finance    |65000 |
| 15151 | mozart     | music      |40000 |
| 22222 | einstein   | physics    |95000 |
| 32343 | eisaid     | history    |60000 |
| 33456 | gold       | physics    |87000 |
| 58583 | califieri  | history    |65000 |
| 76543 | singh      | finance    |80000 |
| 76766 | crick      | biology    |72000 |
| 83821 | brandt     | comp.sci   |95000 |
| 98345 | kim        | elec.eng   |80000 |
+-------+------------+-----------+--------+

5.select tuples from instructor  where dept_name='history' .

select * from instructor where dept_name='history';

+-------+-----------+-----------+--------+
| id    | name      | dept_name | salary |
+-------+-----------+-----------+--------+
| 32343 | eisaid    | history   |  60000 |
| 58583 | califieri | history   |  65000 |
+-------+-----------+-----------+--------+

6.find cartesian product instructor*teaches.

select *  from instructor CROSS JOIN teaches;

+-------+------------+-----------+--------+-------+-----------+--------+----------+------+
| id    | name       | dept_name | salary | id    | course_id | sec_id | semester | year |
+-------+------------+-----------+--------+-------+-----------+--------+----------+------+
| 98345 | kim        | elec.eng  |  80000 | 10101 | cs-101    |      1 | fall     | 2017 |
| 83821 | brandt     | comp.sci  |  95000 | 10101 | cs-101    |      1 | fall     | 2017 |
| 76766 | crick      | biology   |  72000 | 10101 | cs-101    |      1 | fall     | 2017 |
| 76543 | singh      | finance   |  80000 | 10101 | cs-101    |      1 | fall     | 2017 |
| 58583 | califieri  | history   |  65000 | 10101 | cs-101    |      1 | fall     | 2017 |
| 33456 | gold       | physics   |  87000 | 10101 | cs-101    |      1 | fall     | 2017 |
| 32343 | eisaid     | history   |  60000 | 10101 | cs-101    |      1 | fall     | 2017 |
| 22222 | einstein   | physics   |  95000 | 10101 | cs-101    |      1 | fall     | 2017 |
| 15151 | mozart     | music     |  40000 | 10101 | cs-101    |      1 | fall     | 2017 |
| 12121 | wu         | finance   |  65000 | 10101 | cs-101    |      1 | fall     | 2017 |
| 10101 | srinivasan | comp.sci  |  65000 | 10101 | cs-101    |      1 | fall     | 2017 |
| 98345 | kim        | elec.eng  |  80000 | 10101 | cs-315    |      1 | spring   | 2018 |
| 83821 | brandt     | comp.sci  |  95000 | 10101 | cs-315    |      1 | spring   | 2018 |
| 76766 | crick      | biology   |  72000 | 10101 | cs-315    |      1 | spring   | 2018 |
| 76543 | singh      | finance   |  80000 | 10101 | cs-315    |      1 | spring   | 2018 |
| 58583 | califieri  | history   |  65000 | 10101 | cs-315    |      1 | spring   | 2018 |
| 33456 | gold       | physics   |  87000 | 10101 | cs-315    |      1 | spring   | 2018 |
| 32343 | eisaid     | history   |  60000 | 10101 | cs-315    |      1 | spring   | 2018 |
| 22222 | einstein   | physics   |  95000 | 10101 | cs-315    |      1 | spring   | 2018 |
| 15151 | mozart     | music     |  40000 | 10101 | cs-315    |      1 | spring   | 2018 |
| 12121 | wu         | finance   |  65000 | 10101 | cs-315    |      1 | spring   | 2018 |
| 10101 | srinivasan | comp.sci  |  65000 | 10101 | cs-315    |      1 | spring   | 2018 |
| 98345 | kim        | elec.eng  |  80000 | 10101 | cs-347    |      1 | fall     | 2017 |
| 83821 | brandt     | comp.sci  |  95000 | 10101 | cs-347    |      1 | fall     | 2017 |
| 76766 | crick      | biology   |  72000 | 10101 | cs-347    |      1 | fall     | 2017 |
| 76543 | singh      | finance   |  80000 | 10101 | cs-347    |      1 | fall     | 2017 |
| 58583 | califieri  | history   |  65000 | 10101 | cs-347    |      1 | fall     | 2017 |
| 33456 | gold       | physics   |  87000 | 10101 | cs-347    |      1 | fall     | 2017 |
| 32343 | eisaid     | history   |  60000 | 10101 | cs-347    |      1 | fall     | 2017 |
| 22222 | einstein   | physics   |  95000 | 10101 | cs-347    |      1 | fall     | 2017 |
| 15151 | mozart     | music     |  40000 | 10101 | cs-347    |      1 | fall     | 2017 |
| 12121 | wu         | finance   |  65000 | 10101 | cs-347    |      1 | fall     | 2017 |
| 10101 | srinivasan | comp.sci  |  65000 | 10101 | cs-347    |      1 | fall     | 2017 |
| 98345 | kim        | elec.eng  |  80000 | 12121 | fin-201   |      1 | spring   | 2018 |
| 83821 | brandt     | comp.sci  |  95000 | 12121 | fin-201   |    1 | spring     | 2018 |
| 76766 | crick      | biology   |  72000 | 12121 | fin-201   |      1 | spring   | 2018 |
| 76543 | singh      | finance   |  80000 | 12121 | fin-201   |      1 | spring   | 2018 |
| 58583 | califieri  | history   |  65000 | 12121 | fin-201   |      1 | spring   | 2018 |
| 33456 | gold       | physics   |  87000 | 12121 | fin-201   |      1 | spring   | 2018 |
| 32343 | eisaid     | history   |  60000 | 12121 | fin-201   |      1 | spring   | 2018 |
| 22222 | einstein   | physics   |  95000 | 12121 | fin-201   |      1 | spring   | 2018 |
| 15151 | mozart     | music     |  40000 | 12121 | fin-201   |      1 | spring   | 2018 |
| 12121 | wu         | finance   |  65000 | 12121 | fin-201   |      1 | spring   | 2018 |
| 10101 | srinivasan | comp.sci  |  65000 | 12121 | fin-201   |      1 | spring   | 2018 |
| 98345 | kim        | elec.eng  |  80000 | 22222 | phy-101   |      1 | fall     | 2017 |
| 83821 | brandt     | comp.sci  |  95000 | 22222 | phy-101   |      1 | fall     | 2017 |
| 76766 | crick      | biology   |  72000 | 22222 | phy-101   |      1 | fall     | 2017 |
| 76543 | singh      | finance   |  80000 | 22222 | phy-101   |      1 | fall     | 2017 |
| 58583 | califieri  | history   |  65000 | 22222 | phy-101   |      1 | fall     | 2017 |
| 33456 | gold       | physics   |  87000 | 22222 | phy-101   |      1 | fall     | 2017 |
| 32343 | eisaid     | history   |  60000 | 22222 | phy-101   |      1 | fall     | 2017 |
| 22222 | einstein   | physics   |  95000 | 22222 | phy-101   |      1 | fall     | 2017 |
| 15151 | mozart     | music     |  40000 | 22222 | phy-101   |      1 | fall     | 2017 |
| 12121 | wu         | finance   |  65000 | 22222 | phy-101   |      1 | fall     | 2017 |
| 10101 | srinivasan | comp.sci  |  65000 | 22222 | phy-101   |      1 | fall     | 2017 |
| 98345 | kim        | elec.eng  |  80000 | 32343 | his-351   |      1 | spring   | 2018 |
| 83821 | brandt     | comp.sci  |  95000 | 32343 | his-351   |      1 | spring   | 2018 |
| 76766 | crick      | biology   |  72000 | 32343 | his-351   |      1 | spring   | 2018 |
| 76543 | singh      | finance   |  80000 | 32343 | his-351   |      1 | spring   | 2018 |
| 58583 | califieri  | history   |  65000 | 32343 | his-351   |      1 | spring   | 2018 |
| 33456 | gold       | physics   |  87000 | 32343 | his-351   |      1 | spring   | 2018 |
| 32343 | eisaid     | history   |  60000 | 32343 | his-351   |      1 | spring   | 2018 |
| 22222 | einstein   | physics   |  95000 | 32343 | his-351   |      1 | spring   | 2018 |
| 15151 | mozart     | music     |  40000 | 32343 | his-351   |      1 | spring   | 2018 |
| 12121 | wu         | finance   |  65000 | 32343 | his-351   |      1 | spring   | 2018 |
| 10101 | srinivasan | comp.sci  |  65000 | 32343 | his-351   |      1 | spring   | 2018 |
| 98345 | kim        | elec.eng  |  80000 | 45565 | cs-101    |      1 | spring   | 2018 |
| 83821 | brandt     | comp.sci  |  95000 | 45565 | cs-101    |      1 | spring   | 2018 |
| 76766 | crick      | biology   |  72000 | 45565 | cs-101    |      1 | spring   | 2018 |
| 76543 | singh      | finance   |  80000 | 45565 | cs-101    |      1 | spring   | 2018 |
| 58583 | califieri  | history   |  65000 | 45565 | cs-101    |      1 | spring   | 2018 |
| 33456 | gold       | physics   |  87000 | 45565 | cs-101    |      1 | spring   | 2018 |
| 32343 | eisaid     | history   |  60000 | 45565 | cs-101    |      1 | spring   | 2018 |
| 22222 | einstein   | physics   |  95000 | 45565 | cs-101    |      1 | spring   | 2018 |
| 15151 | mozart     | music     |  40000 | 45565 | cs-101    |      1 | spring   | 2018 |
| 12121 | wu         | finance   |  65000 | 45565 | cs-101    |      1 | spring   | 2018 |
| 10101 | srinivasan | comp.sci  |  65000 | 45565 | cs-101    |      1 | spring   | 2018 |
| 98345 | kim        | elec.eng  |  80000 | 45565 | cs-319    |      1 | spring   | 2018 |
| 83821 | brandt     | comp.sci  |  95000 | 45565 | cs-319    |      1 | spring   | 2018 |
| 76766 | crick      | biology   |  72000 | 45565 | cs-319    |      1 | spring   | 2018 |
| 76543 | singh      | finance   |  80000 | 45565 | cs-319    |      1 | spring   | 2018 |
| 58583 | califieri  | history   |  65000 | 45565 | cs-319    |      1 | spring   | 2018 |
| 33456 | gold       | physics   |  87000 | 45565 | cs-319    |      1 | spring   | 2018 |
| 32343 | eisaid     | history   |  60000 | 45565 | cs-319    |      1 | spring   | 2018 |
| 22222 | einstein   | physics   |  95000 | 45565 | cs-319    |      1 | spring   | 2018 |
| 15151 | mozart     | music     |  40000 | 45565 | cs-319    |      1 | spring   | 2018 |
| 12121 | wu         | finance   |  65000 | 45565 | cs-319    |      1 | spring   | 2018 |
| 10101 | srinivasan | comp.sci  |  65000 | 45565 | cs-319    |      1 | spring   | 2018 |
| 98345 | kim        | elec.eng  |  80000 | 76766 | bio-101   |      1 | summer   | 2017 |
| 83821 | brandt     | comp.sci  |  95000 | 76766 | bio-101   |      1 | summer   | 2017 |
| 76766 | crick      | biology   |  72000 | 76766 | bio-101   |      1 | summer   | 2017 |
| 76543 | singh      | finance   |  80000 | 76766 | bio-101   |      1 | summer   | 2017 |
| 58583 | califieri  | history   |  65000 | 76766 | bio-101   |      1 | summer   | 2017 |
| 33456 | gold       | physics   |  87000 | 76766 | bio-101   |      1 | summer   | 2017 |
| 32343 | eisaid     | history   |  60000 | 76766 | bio-101   |      1 | summer   | 2017 |
| 22222 | einstein   | physics   |  95000 | 76766 | bio-101   |      1 | summer   | 2017 |
| 15151 | mozart     | music     |  40000 | 76766 | bio-101   |      1 | summer   | 2017 |
| 12121 | wu         | finance   |  65000 | 76766 | bio-101   |      1 | summer   | 2017 |
| 10101 | srinivasan | comp.sci  |  65000 | 76766 | bio-101   |      1 | summer   | 2017 |
| 98345 | kim        | elec.eng  |  80000 | 76766 | bio-301   |      1 | summer   | 2018 |
| 83821 | brandt     | comp.sci  |  95000 | 76766 | bio-301   |      1 | summer   | 2018 |
| 76766 | crick      | biology   |  72000 | 76766 | bio-301   |      1 | summer   | 2018 |
| 76543 | singh      | finance   |  80000 | 76766 | bio-301   |      1 | summer   | 2018 |
| 58583 | califieri  | history   |  65000 | 76766 | bio-301   |      1 | summer   | 2018 |
| 33456 | gold       | physics   |  87000 | 76766 | bio-301   |      1 | summer   | 2018 |
| 32343 | eisaid     | history   |  60000 | 76766 | bio-301   |      1 | summer   | 2018 |
| 22222 | einstein   | physics   |  95000 | 76766 | bio-301   |      1 | summer   | 2018 |
| 15151 | mozart     | music     |  40000 | 76766 | bio-301   |      1 | summer   | 2018 |
| 12121 | wu         | finance   |  65000 | 76766 | bio-301   |      1 | summer   | 2018 |
| 10101 | srinivasan | comp.sci  |  65000 | 76766 | bio-301   |      1 | summer   | 2018 |
| 98345 | kim        | elec.eng  |  80000 | 83821 | cs-190    |      1 | spring   | 2017 |
| 83821 | brandt     | comp.sci  |  95000 | 83821 | cs-190    |      1 | spring   | 2017 |
| 76766 | crick      | biology   |  72000 | 83821 | cs-190    |      1 | spring   | 2017 |
| 76543 | singh      | finance   |  80000 | 83821 | cs-190    |      1 | spring   | 2017 |
| 58583 | califieri  | history   |  65000 | 83821 | cs-190    |      1 | spring   | 2017 |
| 33456 | gold       | physics   |  87000 | 83821 | cs-190    |      1 | spring   | 2017 |
| 32343 | eisaid     | history   |  60000 | 83821 | cs-190    |      1 | spring   | 2017 |
| 22222 | einstein   | physics   |  95000 | 83821 | cs-190    |      1 | spring   | 2017 |
| 15151 | mozart     | music     |  40000 | 83821 | cs-190    |      1 | spring   | 2017 |
| 12121 | wu         | finance   |  65000 | 83821 | cs-190    |      1 | spring   | 2017 |
| 10101 | srinivasan | comp.sci  |  65000 | 83821 | cs-190    |      1 | spring   | 2017 |
| 98345 | kim        | elec.eng  |  80000 | 83821 | cs-190    |      2 | spring   | 2017 |
| 83821 | brandt     | comp.sci  |  95000 | 83821 | cs-190    |      2 | spring   | 2017 |
| 76766 | crick      | biology   |  72000 | 83821 | cs-190    |      2 | spring   | 2017 |
| 76543 | singh      | finance   |  80000 | 83821 | cs-190    |      2 | spring   | 2017 |
| 58583 | califieri  | history   |  65000 | 83821 | cs-190    |      2 | spring   | 2017 |
| 33456 | gold       | physics   |  87000 | 83821 | cs-190    |      2 | spring   | 2017 |
| 32343 | eisaid     | history   |  60000 | 83821 | cs-190    |      2 | spring   | 2017 |
| 22222 | einstein   | physics   |  95000 | 83821 | cs-190    |      2 | spring   | 2017 |
| 15151 | mozart     | music     |  40000 | 83821 | cs-190    |      2 | spring   | 2017 |
| 12121 | wu         | finance   |  65000 | 83821 | cs-190    |      2 | spring   | 2017 |
| 10101 | srinivasan | comp.sci  |  65000 | 83821 | cs-190    |      2 | spring   | 2017 |
| 98345 | kim        | elec.eng  |  80000 | 83821 | cs-319    |      2 | spring   | 2018 |
| 83821 | brandt     | comp.sci  |  95000 | 83821 | cs-319    |      2 | spring   | 2018 |
| 76766 | crick      | biology   |  72000 | 83821 | cs-319    |      2 | spring   | 2018 |
| 76543 | singh      | finance   |  80000 | 83821 | cs-319    |      2 | spring   | 2018 |
| 58583 | califieri  | history   |  65000 | 83821 | cs-319    |      2 | spring   | 2018 |
| 33456 | gold       | physics   |  87000 | 83821 | cs-319    |      2 | spring   | 2018 |
| 32343 | eisaid     | history   |  60000 | 83821 | cs-319    |      2 | spring   | 2018 |
| 22222 | einstein   | physics   |  95000 | 83821 | cs-319    |      2 | spring   | 2018 |
| 15151 | mozart     | music     |  40000 | 83821 | cs-319    |      2 | spring   | 2018 |
| 12121 | wu         | finance   |  65000 | 83821 | cs-319    |      2 | spring   | 2018 |
| 10101 | srinivasan | comp.sci  |  65000 | 83821 | cs-319    |      2 | spring   | 2018 |
| 98345 | kim        | elec.eng  |  80000 | 98345 | ee-181    |      1 | spring   | 2017 |
| 83821 | brandt     | comp.sci  |  95000 | 98345 | ee-181    |      1 | spring   | 2017 |
| 76766 | crick      | biology   |  72000 | 98345 | ee-181    |      1 | spring   | 2017 |
| 76543 | singh      | finance   |  80000 | 98345 | ee-181    |      1 | spring   | 2017 |
| 58583 | califieri  | history   |  65000 | 98345 | ee-181    |      1 | spring   | 2017 |
| 33456 | gold       | physics   |  87000 | 98345 | ee-181    |      1 | spring   | 2017 |
| 32343 | eisaid     | history   |  60000 | 98345 | ee-181    |      1 | spring   | 2017 |
| 22222 | einstein   | physics   |  95000 | 98345 | ee-181    |      1 | spring   | 2017 |
| 15151 | mozart     | music     |  40000 | 98345 | ee-181    |      1 | spring   | 2017 |
| 12121 | wu         | finance   |  65000 | 98345 | ee-181    |      1 | spring   | 2017 |
| 10101 | srinivasan | comp.sci  |  65000 | 98345 | ee-181    |      1 | spring   | 2017 |
+-------+------------+-----------+--------+-------+-----------+--------+----------+------+



7.find the names of all instructors who have taught some course and course_id .

select *  from instructor inner join teaches on instructor.id=teaches.id;

+-------+------------+-----------+--------+-------+-----------+--------+----------+------+
| id    | name       | dept_name | salary | id    | course_id | sec_id | semester | year |
+-------+------------+-----------+--------+-------+-----------+--------+----------+------+
| 10101 | srinivasan | comp.sci  |  65000 | 10101 | cs-101     |1      |  fall    | 2017 |
| 10101 | srinivasan | comp.sci  |  65000 | 10101 | cs-315     |1      | spring   | 2018 |
| 10101 | srinivasan | comp.sci  |  65000 | 10101 | cs-347     |1      | fall     | 2017 |
| 12121 | wu         | finance   |  65000 | 12121 | fin-201    |1      | spring   | 2018 |
| 22222 | einstein   | physics   |  95000 | 22222 | phy-101    |1      | fall     | 2017 |
| 32343 | eisaid     | history   |  60000 | 32343 | his-351    |1      | spring   | 2018 |
| 76766 | crick      | biology   |  72000 | 76766 | bio-101    |1      | summer   | 2017 |
| 76766 | crick      | biology   |  72000 | 76766 | bio-301    |1      | summer   | 2018 |
| 83821 | brandt     | comp.sci  |  95000 | 83821 | cs-190     |1      | spring   | 2017 |
| 83821 | brandt     | comp.sci  |  95000 | 83821 | cs-190     |2      | spring   | 2017 |
| 83821 | brandt     | comp.sci  |  95000 | 83821 | cs-319     |2      | spring   | 2018 |
| 98345 | kim        | elec.eng  |  80000 | 98345 | ee-181     |1      | spring   | 2017 |
+-------+------------+-----------+--------+-------+-----------+--------+----------+------+

8.find the names of ll instructors whose name includes the substring 'dar'.

select name from instructor where name like '%dar%';

9.find the names of all instructors with salary between 90,000 and 100,000.

select name from instructor where salary BETWEEN 90000 AND 100000 order by salary desc;

+----------+
| name     |
+----------+
| einstein |
| brandt   |
+----------+

EXPERIMENT 2: BASIC SQL

1. order the tuples in the instructors relation as per their salary.

select * from instructor order by salary;

+-------+------------+-----------+--------+
| id    | name       | dept_name | salary |
+-------+------------+-----------+--------+
| 15151 | mozart     | music     |  40000 |
| 32343 | eisaid     | history   |  60000 |
| 10101 | srinivasan |comp.sci   |  65000 |
| 12121 | wu         | finance   |  65000 |
| 58583 | califieri  | history   |  65000 |
| 76766 | crick      | biology   |  72000 |
| 76543 | singh      | finance   |  80000 |
| 98345 | kim        | elec.eng  |  80000 |
| 33456 | gold       | physics   |  87000 |
| 22222 | einstein   | physics   | 95000  |
| 83821 | brandt     | comp.sci  | 95000  |
+-------+------------+-----------+--------+

2.find the courses that ran in fall 2017 or spring 2018.

select distinct course_id from teaches where(semester='fall' and year=2017) or (semester='spring' and year=2018);

+-----------+
| course_id |
+-----------+
| cs-101    |
| cs-315    |
| cs-347    |
| fin-201   |
| phy-101   |
| his-351   |
| cs-319    |
+-----------+

3.find the courses that ran in fall 2017 and spring 2018.

select distinct course_id from teaches where(semester='fall' and year=2017) and (semester='spring' and year=2018);

+-----------+
| course_id|
+-----------+
| cs-101    |
| cs-315    |
| cs-347    |
| fin-201   |
| phy-101   |
| his-351   |
| cs-319    |
+-----------+

4.find the courses that ran in fall 2017 but not in spring 2018 .

select  course_id from teaches where semester='spring' and not  semester='fall';

+-----------+
| course_id |
+-----------+
| cs-315    |
| fin-201   |
| his-351   |
| cs-101    |
| cs-319    |
| cs-190    |
| cs-190    |
| cs-319    |
| ee-181    |
+-----------+

6. find all instructors whose salary is null.

select * from instructor where salary = null;

7.find average salary  of instructors in the computer science department.

select avg(salary)from instructor where dept_name='comp.sci';

+-------------+
| avg(salary) |
+-------------+
|80000.0000   |
+-------------+

EXPERIMENT 3:Intermediate SQL

1.find the total number of instructors who teach a course in the spring 2018 semester.

select count(distinct id) from teaches where semester='spring' and year=2018;

+--------------------+
| count(distinct id) |
+--------------------+
|                  5 |
+--------------------+
2.find the number of tuples in the teaches realation.

select count(*) from teaches;

+----------+
| count(*) |
+----------+
|       14 |
+----------+

3.find the average salary  of instructors in each deprtment.

select dept_name,avg(salary) as avg_salary  from instructor group by dept_name;

+-----------+------------+
| dept_name | avg_salary |
+-----------+------------+
| comp.sci  | 80000.0000 |
| finance   | 72500.0000 |
| music     | 40000.0000 |
| physics   | 91000.0000 |
| history   | 62500.0000 |
| biology   | 72000.0000 |
| elec.eng  | 80000.0000 |
+-----------+------------+

4.find the names and average salary of all departments  whose verage salary is greater than 42000.

select dept_name,avg(salary) from instructor  group by dept_name having avg(salary)>42000;

+-----------+-------------+
| dept_name | avg(salary) |
+-----------+-------------+
| comp.sci  |  80000.0000 |
| finance   |  72500.0000 |
| physics   |  91000.0000 |
| history   |  62500.0000 |
| biology   |  72000.0000 |
| elec.eng  |  80000.0000 |
+-----------+-------------+

5.name all instructors whose name is neither 'mozart' nor 'einstein' .

select name from instructor where name not in ('mozart','einstein');

+------------+
| name       |
+------------+
| srinivasan |
| wu         |
| eisaid     |
| gold       |
| califieri  |
| singh      |
| crick      |
| brandt     |
| kim        |
+------------+

6. find the names of all instructor with salary greater than that of some instructor in the biology department.

select name from instructor where salary>(select salary from  instructor where dept_name='biology' and name='crick')

+----------+
| name     |
+----------+
| einstein |
| gold     |
| singh    |
| brandt   |
| kim      |
+----------+

7.find the names of all instructor whose  salary is  greater than the salary of  all instructors in the biology department.

select name from instructor  where salary>(select max(salary) from instructor where dept_name='biology');

+----------+
| name     |
+----------+
| einstein |
| gold     |
| singh    |
| brandt   |
| kim      |
+----------+


8.find the average instructors salaries of those departments where the avaerage salary is greater than 42000 .

select dept_name,avg(salary) as avg_sal from instructor group by dept_name having avg(salary)>42000;

+-----------+------------+
| dept_name | avg_sal    |
+-----------+------------+
| comp.sci | 80000.0000 |
| finance   | 72500.0000 |
| physics   | 91000.0000 |
| history   | 62500.0000 |
| biology   | 72000.0000 |
| elec.eng  | 80000.0000 |
+-----------+------------+

EXPERIMENT  4:

1.

2.list the names of instructors along with the course id of the course they taught.

select i.name,i.id from instructor i join teaches t on i.id=t.id group by i.id,i.dept_name;

+------------+-------+
| name       | id    |
+------------+-------+
| srinivasan | 10101 |
| wu         | 12121 |
| einstein   | 22222 |
| eisaid     | 32343 |
| crick      | 76766 |
| brandt     | 83821 |
| kim        | 98345 |
+------------+-------+

3.list the name of instructors along with the course id  of the courses they taught in case  n instructor teachesmno courses keep the course id as 0 .

select T.name,S.course_id from instructor as T, teaches as S WHERE T.id=S.id;

+------------+-----------+
| name       | course_id |
+------------+-----------+
| srinivasan | cs-101    |
| srinivasan | cs-315    |
| srinivasan | cs-347    |
| wu         | fin-201   |
| einstein   | phy-101   |
| eisaid     | his-351   |
| crick      | bio-101   |
| crick      | bio-301   |
| brandt     | cs-190    |
| brandt     | cs-190    |
| brandt     | cs-319    |
| kim        | ee-181    |
+------------+-----------+  

4. Create a view of instructor without their salary csalled faculty

create view faculty as select id,name,dept_name from instructor;
select* from faculty;

+-------+------------+-----------+
| id    | name       | dept_name |
+-------+------------+-----------+
| 10101 | srinivasan | comp.sci  |
| 12121 | wu         | finance   |
| 15151 | mozart     | music     |
| 22222 | einstein   | physics   |
| 32343 | eisaid     | history   |
| 33456 | gold       | physics   |
| 58583 | califieri  | history   |
| 76543 | singh      | finance   |
| 76766 | crick      | biology   |
| 83821 | brandt     | comp.sci  |
| 98345 | kim        | elec.eng  |
+-------+------------+-----------+

5.Give select previleges on the view faculty to new  user.

grant select on faculty to new user;


EXPERIMENT: 5 ADVANCED SQL

1.Create a view of instructor without their salary called faculty.

create view faculty as select id,name,dept_name from instructor;

2.create a view of department salary totals

create view departments_total_salary(dept_name,total_salary)as select dept_name,sum(salary)
from instructor group by dept_name;

select * from departments_total_salary;

+-----------+--------------+
| dept_name | total_salary |
+-----------+--------------+
| comp.sci  |     160000   |
| finance   |      145000  |
| music     |        40000 |
| physics   |      182000  |
| history   |      125000  |
| biology   |       72000  |
| elec.eng  |       80000  |
+-----------+--------------+

3.Create a role of student.

create role student;

4.Give select privileges on the view faculty to the role student.

grant select  on faculty to student;

5.Create new user  and assign her the role of student.

create user new _user identified by 'password';

6.Login as the new user and find all instructors in the biology department.

select name from instructor where dept_name='biology'

7.Revoke privileges of the new user.

revoke student from new_user;

8.Remove the role of student.

drop role student;

9.Give select privileges on the view faculty to the new user.

grant select on faculty to new_user;

10.Login as the new user and find all instructors in the finance department.

select * from instructor where dept_name = 'finance';

11.Login again as root user.

select host,user,plugin from  MySQL.user;

12Create table teaches2 with the same same column as teaches but with additional additional constraint that the semester is one fall,winter,spring or summer.

 select * from Teacher 2;

13.Create index id column of teaches.compare the difference in time to obtain query results with or without index. create index 

create index teacher_Id_index on teacher (ID);

14.Drop the index to fre up the space

drop index teacher_id_index ;











