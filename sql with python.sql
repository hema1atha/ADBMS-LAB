import mysql.connector as con
mydb = con.connect(
  host="localhost",
  user="root",
  password="root",
  database='student2'
    ) 

mycursor = mydb.cursor()


mycursor.execute("create table instructor(id int not null,name varchar(30),dept_name varchar(20),salary int,primary key(id))")
#print("created")

mycursor.execute("describe instructor")
mycursor.execute("INSERT INTO instructor (id,name,dept_name,salary)values(%s,%s,%s,%s)",(98345, 'kim', 'elec.eng',80000))
mydb.commit()
mycursor.execute("select * from  instructor")

for x in mycursor:
    #print(x)

mycursor.execute("create table teaches(id int not null,course_id varchar(30),sec_id int,semester char(15),year year)")
print("created")

mycursor.execute("describe teaches")

  //exercises
  
mycursor.execute("INSERT INTO into instructor (id,name,dept_name,salary)values(10211,'smith','biology',66000));
select * from instructor;))
mydb.commit()
mycursor.execute("select * from  teaches")

for x in mycursor:
    #print(x)

  output:

  +-------+------------+-----------+--------+
| id    | name       | dept_name | salary |
+-------+------------+-----------+--------+
| 10101 | srinivasan |comp.sci|65000 |
| 10211 | smith      | biology   |  66000 |
| 12121 | wu         | finance     |  65000 |
| 15151 | mozart     | music    |  40000 |
| 22222 | einstein   | physics  |  95000 |
| 32343 | eisaid     | history    |  60000 |
| 33456 | gold       | physics    |  87000 |
| 58583 | califieri  | history    |  65000 |
| 76543 | singh      | finance   |  80000 |
| 76766 | crick      | biology    |  72000 |
| 83821 | brandt  | comp.sci  |  95000 |
| 98345 | kim        | elec.eng   |  80000 |
+-------+------------+-----------+--------+



mycursor.execute(" delete from instructor where id=10211 ")
mydb.commit()
mycursor.execute("select * from  instructor")

for x in mycursor:
    print(x)

  output:

  +-------+------------+-----------+--------+
| id    | name       | dept_name | salary |
+-------+------------+-----------+--------+
| 10101 | srinivasan | comp.sci  |65000 |
| 12121 | wu         | finance   | 65000|
| 15151 | mozart     | music     |40000 |
| 22222 | einstein   | physics   |95000 |
| 32343 | eisaid     | history   |60000 |
| 33456 | gold       | physics   |87000 |
| 58583 | califieri  | history   |65000 |
| 76543 | singh      | finance   |80000 |
| 76766 | crick      | biology   |72000 |
| 83821 | brandt     | comp.sci  |95000 |
| 98345 | kim        | elec.eng  |80000 |
+-------+------------+-----------+--------+




mycursor.execute("select * from instructor where dept_name='history'")
 
print("\n 3. tuples from instructor  where dept_name='history' ")
for x in mycursor:
    print(x)

output:

+-------+-----------+-----------+--------+
| id    | name      | dept_name | salary |
+-------+-----------+-----------+--------+
| 32343 | eisaid    | history   |  60000 |
| 58583 | califieri | history   |  65000 |
+-------+-----------+-----------+--------+


mycursor.execute("select *  from instructor,teaches")
 
print("\n 4. find cartesian product instructor*teaches ")
for x in mycursor:
    print(x)

  output:

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
| 83821 | brandt     | comp.sci  |  95000 | 12121 | fin-201   |      1 | spring   | 2018 |
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

mycursor.execute("select *  from instructor inner join teaches on instructor.id=teaches.id")
 
print("\n 5.find the names of all instructors who have taught some course and course_id ")
for x in mycursor:
    print(x)

  output:

  +-------+------------+-----------+--------+-------+-----------+--------+----------+------+
| id    | name       | dept_name | salary | id    | course_id | sec_id | semester | year |
+-------+------------+-----------+--------+-------+-----------+--------+----------+------+
| 10101 | srinivasan | comp.sci  |  65000 | 10101 | cs-101     |1       | fall    | 2017 |
| 10101 | srinivasan | comp.sci  |  65000 | 10101 | cs-315     |1       | spring  | 2018 |
| 10101 | srinivasan | comp.sci  |  65000 | 10101 | cs-347     |1       | fall    | 2017 |
| 12121 | wu         | finance   |  65000 | 12121 | fin-201    |   1    | spring  | 2018 |
| 22222 | einstein   | physics   |  95000 | 22222 | phy-101    |1       | fall    | 2017 |
| 32343 | eisaid     | history   |  60000 | 32343 | his-351    |   1    | spring  | 2018 |
| 76766 | crick      | biology   |  72000 | 76766 | bio-101    |  1     | summer  | 2017 |
| 76766 | crick      | biology   |  72000 | 76766 | bio-301    |  1     | summer  | 2018 |
| 83821 | brandt     | comp.sci  |  95000 | 83821 | cs-190     | 1      | spring  | 2017 |
| 83821 | brandt     | comp.sci  |  95000 | 83821 | cs-190     | 2      | spring  | 2017 |
| 83821 | brandt     | comp.sci  |  95000 | 83821 | cs-319     | 2      | spring  | 2018 |
| 98345 | kim        | elec.eng  |  80000 | 98345 | ee-181     |  1     | spring  | 2017 |
+-------+------------+-----------+--------+-------+-----------+--------+----------+------+



mycursor.execute("select name from instructor where name like '%t'")
 
print("\n 6.find the names of ll instructors whose name includes the substring 'dar' ")
for x in mycursor:
    print(x)
  



mycursor.execute("select name from instructor where salary BETWEEN 90000 AND 100000 order by salary desc")

print("\n 7. find the names of all instructors with salary between 90,000 and 100,000  ") 
for x in mycursor:
    print(x)

  output:

+----------+
| name     |
+----------+
| einstein |
| brandt   |
+----------+



mycursor.execute("select * from instructor order by salary")
print("\n 1. order the tuples in the instructors relation as per their salary  ") 
 
 
for x in mycursor:
    print(x)


  output:
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
| 22222 | einstein   | physics   |  95000 |
| 83821 | brandt     | comp.sci  |  95000 |
+-------+------------+-----------+--------+



mycursor.execute("select distinct course_id from teaches where(semester='fall' and year=2017) or (semester='spring' and year=2018)")
print("\n 2. find the courses that ran in fall 2017 or spring 2018 ") 
 
for x in mycursor:
    print(x)

  output:

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



mycursor.execute("select distinct course_id from teaches where(semester='fall' and year=2017) and (semester='spring' and year=2018)")
print("\n 3. find the courses that ran in fall 2017 and spring 2018  ") 
 
for x in mycursor:
    print(x)


  output:

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




mycursor.execute("select  course_id from teaches where semester='spring' and not  semester='fall'")
print("\n 4. find the courses that ran in fall 2017 but not in spring 2018  ") 
 
for x in mycursor:
    print(x)

  output:

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



mycursor.execute("INSERT INTO instructor (id,name,dept_name,salary)values(%s,%s,%s,%s)",(10261, 'tom', 'biology',0))
mydb.commit()
for x in mycursor:
    print(x)

mycursor.execute("select * from instructor where salary = 0")
print("\n6. find all instructors whose salary is null")
for x in mycursor:
    print(x)


mycursor.execute("select avg(salary)from instructor where dept_name='comp.sci'")
print("\n 7. find average salary  of instructors in the computer science department ")

for x in mycursor:
    print(x)

  output:

+-------------+
| avg(salary) |
+-------------+
|80000.0000   |
+-------------+




mycursor.execute("select count(distinct id) from teaches where semester='spring' and year=2018")
print("\n 8.find the total number of instructors who teach a course in the spring 2018 semester.")

 
for x in mycursor:
    print(x)

  output:

+--------------------+
| count(distinct id) |
+--------------------+
|            5       |
+--------------------+




mycursor.execute("select count(*) from teaches")
print("\n 9. find the number of tuples in the teaches realation")

for x in mycursor:
    print(x)

  output:

+----------+
| count(*) |
+----------+
|    14    |
+----------+


mycursor.execute("select dept_name,avg(salary) as avg_salary  from instructor group by dept_name")
print("\n 10. find the average salary  of instructors in each deprtment")

 
for x in mycursor:
    print(x)

  output:

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




mycursor.execute("select dept_name,avg(salary) from instructor  group by dept_name having avg(salary)>42000")
print("\n 11. find the names and average salary of all departments  whose verage salary is greater than 42000")

 
for x in mycursor:
    print(x)

  output:

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




mycursor.execute("select name from instructor where name not in ('mozart','einstein')")
print("\n 12. name all instructors whose name is neither 'mozart' nor 'einstein' ")

 
for x in mycursor:
    print(x)

output:

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



mycursor.execute("select name from instructor where salary>(select salary from  instructor where dept_name='biology' and name='crick')")
print("\n 13. find the names of all instructor with salary greater than that of some instructor in the biology department")

 
for x in mycursor:
    print(x)


  output:

+----------+
| name     |
+----------+
| einstein |
| gold     |
| singh    |
| brandt   |
| kim      |
+----------+



mycursor.execute("select avg(salary) from instructor  where salary>(select max(salary) from instructor where dept_name='biology')")
print("\n  14. find the names of all instructor whose  salary is  greater than the salary of  all instructors in the biology department")

 
for x in mycursor:
    print(x)

  output:

+----------+
| name     |
+----------+
| einstein |
| gold     |
| singh    |
| brandt   |
| kim      |
+----------+



mycursor.execute("select dept_name,avg(salary) as avg_sal from instructor group by dept_name having avg(salary)>42000")
print("\n 15. find the average instructors salaries of those departments where the avaerage salary is greater than 42000 ")
 
for x in mycursor:
    print(x)

  output:

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


mycursor.execute("select i.name,i.id from instructor i join teaches t on i.id=t.id group by i.id,i.dept_name")
print("\n 17. list the names of instructors along with the course id of the course they taught ")
 
for x in mycursor:
    print(x)

output:

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

mycursor.execute("select T.name,S.course_id from instructor as T, teaches as S WHERE T.id=S.id")
print("\n 18. list the name of instructors along with the course id  of the courses they taught in case  n instructor teachesmno courses keep the course id as 0 ")
 
for x in mycursor:
    print(x)

output:

+------------+-----------+
| name      | course_id |
+------------+-----------+
| srinivasan | cs-101   |
| srinivasan | cs-315   |
| srinivasan | cs-347   |
| wu         | fin-201  |
| einstein   | phy-101  |
| eisaid     | his-351  |
| crick      | bio-101  |
| crick      | bio-301  |
| brandt     | cs-190   |
| brandt     | cs-190   |
| brandt     | cs-319   |
| kim        | ee-181   |
+------------+-----------+  



mydb.close()







