EXERCISE 1:
//salesman table

create table salesman(
salesman_id int primary key,
name varchar(30),
city varchar(30),
comission float
);

insert into salesman (salesman_id,name,city,comission)
values
(5001,"James Hoog","New York",0.15),
(5002,"Nail Knite","Paris",0.13),
(5005,"Pit Alex","London",0.11),
(5006,"MC Lyon","Paris",0.14),
(5003,"Lauson Hen",null,0.12),
(5007,"Paul Adam","Rome",0.13);

//customer table

create table customer1(
customer_id int,
customer_name varchar(30),
city varchar(30),
grade int,
salesman_id int,
primary key (customer_id),
foreign key (salesman_id) references salesman (salesman_id)
);

insert into customer1(customer_id,customer_name,city,grade,salesman_id)
values
(3002,"Nick Rimando","New York",100,5001),
(3005,"Graham Zusi","California",200,5002),
(3001,"Brad Guzan","London",null,null),
(3004,"Fabian Johns","Paris",300,5006),
(3007,"Brad Davis","New York",200,5001),
(3009,"Geoff Camero","Berlin",100,null),
(3008,"Julian Green","London",300,5002),
(3003,"Jozy Altidor","Mancow",200,5007);


//order table

create table order1(
order_no int,
purch_no float,
order_date date,
customer_id int,
salesman_id int
);
insert into order1(order_no,purch_no,order_date,customer_id,salesman_id)
values
(70001,150.5,"2016-10-05",3005,5002),
(70009,270.5,"2016-09-10",3001,null),
(70002,65.5,"2016-10-05",3002,5001),
(70004,110.5,"2016-08-17",3009,null),
(7007,948.5,"2016-09-10",3005,5002),
(70005,2400.6,"2016-07-27",3007,5001),
(70008,5760,"2016-09-10",3002,5001),
(70010,19830.43,"2016-10-10",3004,5006),
(70003,2480,"2016-10-10",3009,null),
(700012,250.45,"2016-06-27",3008,5002),
(700011,75.5,"2016-05-17",3003,5007);

//nobel_win table

create table nobel_win (
year year,
subject varchar(25),
winner varchar(50),
country varchar(30),
category varchar(30));


insert into nobel_win values(1994,'literature','kenzaburo oe','Japan','linguiest');
insert into nobel_win values(1994,'Economics','Reinhard Selten','Germany','Economist');
insert into nobel_win values(1987,'Chemistry','Donald J. Cram','USA','Scientist');
insert into nobel_win values(1987,'Chemistry','Jean-Marie Lehn','France','Scientist');
insert into nobel_win values(1987,'Literature','Joseph Brodsky','Russia','Linguist');
insert into nobel_win values(1987,'Economics','Robert Solow','USA','Economist');
insert into nobel_win values(1971,'Chemistry','Gerhard Herzberg','Germany','scientist');
insert into nobel_win values(1971,'Literature','Pablo Neruda','Chile','Linguist');
insert into nobel_win values(1971,'Economics','Simon Kuznets','Russia','Economist');
insert into nobel_win values(1970,'Literature','Aleksandr Solzhenitsyn','Russia','Linguist');
insert into nobel_win values(1970,'Chemistry','Luis Federico Leloir','France','Linguist');
insert into nobel_win values(1970,'Economics','Paul Samuelson','USA','Economist');




Queries:

1.Display name and commission of all the salesmen.

SELECT name, commission
FROM salesman;

Output:


 (James Hoog  ,     0.15 )
 (Nail Knite       ,   0.13 )
 (Lauson Hen   ,   0.12 )
 (Pit Alex          ,   0.11 )
 (MC Lyon        ,   0.14 )
 (Paul Adam    ,    0.13 )


2.Retrieve salesman id of all salesmen from orders table without any
repeats.

SELECT DISTINCT salesman_id
FROM orders;

output:
+-------------+
|salesman_id|
+-------------+
|        5002    |
|        NULL |
|        5001    |
|        5006    |
|        5007    |
+-------------+

3.Display names and city of salesman, who belongs to the city of Paris.

SELECT name,city
FROM salesman
WHERE city='Paris';

output:



(Nail Knite ,Paris )
(MC Lyon   ,Paris )


4.Display all the information for those customers with a
grade of 200.

SELECT *
FROM customer1
WHERE grade = 200;


output:
        ( 3003 | Jozy Altidor  | Mancow     |   200 |       5007 )
        (3005 | Graham Zusi| California  |   200 |        5002 )
        (3007 | Brad Davis    | New York  |   200 |        5001 )

5.Display the order number, order date and the purchase amount for order(s) which will be delivered by the salesman with ID 5001.

SELECT order_no, order_date, purch_no
FROM order1
WHERE salesman_id = 5001;

output:


  ( 70002 | 2016-10-05 |   65.5 )
  (70005 | 2016-07-27 |   2400.6 )
  (70008 | 2016-09-10 |   5760 )


6.Show the winner of the 1971 prize for Literature.

SELECT winner
FROM nobel_win
WHERE year = 1971
AND subject = 'Literature';

output:
+-----------------+
| winner            |
+-----------------+
|Pablo Neruda |
+-----------------+

7.Show all the details of the winners with first name Louis.

SELECT *
FROM nobel_win
WHERE winner LIKE 'Luis%';


output:

+------+-----------+----------------------+---------+-----------------+
| year | subject   |          winner               | country | category |
+------+-----------+----------------------+---------+-----------------+
| 1970 | Chemistry| Luis Federico Leloir | France| Linguist|
+------+-----------+----------------------+---------+-----------------+

8.Show all the winners in Physics for 1970 together with the winner of Economics for 1971.

SELECT *
FROM nobel_win
WHERE (subject = 'Physics' AND year = 1970)
UNION
(SELECT *
FROM nobel_win
WHERE (subject = 'Economics' AND year = 1971)
);

output:

+------+-----------+---------------+---------+----------------------+
| year | subject    |           winner         | country | category    |
+------+-----------+---------------+---------+----------------------+
| 1971 | Economics | Simon Kuznets | Russia  | Economist |
+------+-----------+---------------+---------+----------------------+
9.Show all the winners of Nobel prize in the year 1970 except the subject Physiology and Economics.

SELECT *
FROM nobel_win
WHERE year = 1970
AND subject NOT IN ('Physiology','Economics');

output:

+------+------------+------------------------+---------+---------------------+
| year | subject       |             winner                   | country | category |
+------+------------+------------------------+---------+---------------------+
| 1970 | Literature | Aleksandr Solzhenitsyn | Russia  | Linguist |
| 1970 | Chemistry  | Luis Federico Leloir      | France  | Linguist |
+------+------------+------------------------+---------+---------------------+

10.Find all the details of the Nobel winners for the subject not started with the letter 'P' and arranged the list as the most recent comes first, then by name in order.

SELECT *
FROM nobel_win
WHERE subject NOT LIKE 'P%'
ORDER BY year DESC, winner;


output:

+------+------------+------------------------+---------+----------------+
| year | subject    | winner                      | country | category      |
+------+------------+------------------------+---------+-----------------+
| 1994 | literature | kenzaburo oe         | Japan   | linguist        |
| 1994 | Economics  | Reinhard Selten | Germany|Economist |
| 1987 | Chemistry  | Donald J. Cram  | USA      | Scientist     |
| 1987 | Chemistry  | Jean-Marie Lehn| France  | Scientist     |
| 1987 | Literature  | Joseph Brodsky   | Russia  | Linguist     |
| 1987 | Economics  | Robert Solow       | USA      | Economist |
| 1971 | Chemistry  |Gerhard Herzberg| Germany| scientist  |
| 1971 | Literature | Pablo Neruda         | Chile   | Linguist      |
| 1971 | Economics  | Simon Kuznets     | Russia  | Economist |
| 1970 | Literature | Aleksandr Solzhenitsy| Russia| Linguist |
| 1970 | Chemistry  | Luis Federico Leloir| France  | Linguist |
| 1970 | Economics  | Paul Samuelson    | USA     | Economist |
+------+------------+------------------------+---------+----------------+
