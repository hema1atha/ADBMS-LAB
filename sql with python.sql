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

mycursor.execute("INSERT INTO teaches (id,course_id,sec_id,semester,year)values(%s,%s,%s,%s,%s)",(98345,'ee-181',1,'spring',2017))
mydb.commit()
mycursor.execute("select * from  teaches")

for x in mycursor:
    #print(x)

mycursor.execute(" delete from instructor where id=10211 ")
mydb.commit()
mycursor.execute("select * from  instructor")

for x in mycursor:
    print(x)




mycursor.execute("select * from instructor where dept_name='history'")
 
print("\n 3. tuples from instructor  where dept_name='history' ")
for x in mycursor:
    print(x)



mycursor.execute("select *  from instructor,teaches")
 
print("\n 4. find cartesian product instructor*teaches ")
for x in mycursor:
    print(x)

mycursor.execute("select *  from instructor inner join teaches on instructor.id=teaches.id")
 
print("\n 5.find the names of all instructors who have taught some course and course_id ")
for x in mycursor:
    print(x)



mycursor.execute("select name from instructor where name like '%t'")
 
print("\n 6.find the names of ll instructors whose name includes the substring 'dar' ")
for x in mycursor:
    print(x)



mycursor.execute("select name from instructor where salary BETWEEN 90000 AND 100000 order by salary desc")

print("\n 7. find the names of all instructors with salary between 90,000 and 100,000  ") 
for x in mycursor:
    print(x)


mycursor.execute("select * from instructor order by salary")
print("\n 1. order the tuples in the instructors relation as per their salary  ") 
 
 
for x in mycursor:
    print(x)


mycursor.execute("select distinct course_id from teaches where(semester='fall' and year=2017) or (semester='spring' and year=2018)")
print("\n 2. find the courses that ran in fall 2017 or spring 2018 ") 
 
for x in mycursor:
    print(x)


mycursor.execute("select distinct course_id from teaches where(semester='fall' and year=2017) and (semester='spring' and year=2018)")
print("\n 3. find the courses that ran in fall 2017 and spring 2018  ") 
 
for x in mycursor:
    print(x)



mycursor.execute("select  course_id from teaches where semester='spring' and not  semester='fall'")
print("\n 4. find the courses that ran in fall 2017 but not in spring 2018  ") 
 
for x in mycursor:
    print(x)

mycursor.execute("INSERT INTO instructor (id,name,dept_name,salary)values(%s,%s,%s,%s)",(1051, 'smith', 'biology',66000))
mydb.commit()
mycursor.execute("select * from  instructor")
for x in mycursor:
    print(x)


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



mycursor.execute("select count(distinct id) from teaches where semester='spring' and year=2018")
print("\n 8.find the total number of instructors who teach a course in the spring 2018 semester.")

 
for x in mycursor:
    print(x)



mycursor.execute("select count(*) from teaches")
print("\n 9. find the number of tuples in the teaches realation")

for x in mycursor:
    print(x)


mycursor.execute("select dept_name,avg(salary) as avg_salary  from instructor group by dept_name")
print("\n 10. find the average salary  of instructors in each deprtment")

 
for x in mycursor:
    print(x)



mycursor.execute("select dept_name,avg(salary) from instructor  group by dept_name having avg(salary)>42000")
print("\n 11. find the names and average salary of all departments  whose verage salary is greater than 42000")

 
for x in mycursor:
    print(x)



mycursor.execute("select name from instructor where name not in ('mozart','einstein')")
print("\n 12. name all instructors whose name is neither 'mozart' nor 'einstein' ")

 
for x in mycursor:
    print(x)


mycursor.execute("select name from instructor where salary>(select salary from  instructor where dept_name='biology' and name='crick')")
print("\n 13. find the names of all instructor with salary greater than that of some instructor in the biology department")

 
for x in mycursor:
    print(x)


mycursor.execute("select avg(salary) from instructor  where salary>(select max(salary) from instructor where dept_name='biology')")
print("\n  14. find the names of all instructor whose  salary is  greater than the salary of  all instructors in the biology department")

 
for x in mycursor:
    print(x)


mycursor.execute("select dept_name,avg(salary) as avg_sal from instructor group by dept_name having avg(salary)>42000")
print("\n 15. find the average instructors salaries of those departments where the avaerage salary is greater than 42000 ")
 
for x in mycursor:
    print(x)


mycursor.execute("select i.name,i.id from instructor i join teaches t on i.id=t.id group by i.id,i.dept_name")
print("\n 17. list the names of instructors along with the course id of the course they taught ")
 
for x in mycursor:
    print(x)


mycursor.execute("select T.name,S.course_id from instructor as T, teaches as S WHERE T.id=S.id")
print("\n 18. list the name of instructors along with the course id  of the courses they taught in case  n instructor teachesmno courses keep the course id as 0 ")
 
for x in mycursor:
    print(x)


mydb.close()







