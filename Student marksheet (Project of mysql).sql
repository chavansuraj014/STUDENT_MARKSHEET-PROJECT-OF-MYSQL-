USE school_management_system;

show tables;

select * from exam_info;
select * from subject_info;
select * from student_info;
select * from marks_info;


select roll_no,subject ,sum(Midterm_2018) as Midterm_2018 , sum(Final_2018) Final_2018 , sum(Midterm_2019) Midterm_2019,
sum(Final_2019)Final_2019,sum(Midterm_2020) Midterm_2020, sum(Final_2020)Final_2020, sum(Midterm_2021) Midterm_2021, 
sum(Final_2021)Final_2021,sum(Midterm_2022) Midterm_2022, sum(Final_2022)Final_2022,sum(Midterm_2023) Midterm_2023, 
sum(Final_2023) Final_2023 from(
select m.roll_no as roll_no,s.subject_name as subject,sum(m.marks) Midterm_2018 ,0 Final_2018,0 Midterm_2019 ,0 Final_2019
,0 Midterm_2020 ,0 Final_2020,0 Midterm_2021 ,0 Final_2021,0 Midterm_2022 ,0 Final_2022,0 Midterm_2023 ,0 Final_2023
from subject_info as s
join marks_info as m
on s.subject_id=m.subject_id
join exam_info as e
on m.exam_id=e.exam_id
group by s.subject_name ,e.exam_title,m.roll_no,e.exam_year,m.roll_no
having e.Exam_title ='midterm' and m.roll_no=1 and e.exam_year = 2018
union
select m.roll_no as roll_no,s.subject_name as subject, 0 Midterm_2018,sum(m.marks) Final_2018 ,0 Midterm_2019 ,0 Final_2019
,0 Midterm_2020 ,0 Final_2020,0 Midterm_2021 ,0 Final_2021,0 Midterm_2022 ,0 Final_2022,0 Midterm_2023 ,0 Final_2023
from subject_info as s
join marks_info as m
on s.subject_id=m.subject_id
join exam_info as e
on m.exam_id=e.exam_id
group by s.subject_name ,e.exam_title,m.roll_no,e.exam_year,m.roll_no
having e.Exam_title ='Final' and m.roll_no=1 and e.exam_year = 2018
union
select m.roll_no,s.subject_name,0 Midterm_2018 ,0 Final_2018,sum(m.marks) Midterm_2019 ,0 Final_2019
,0 Midterm_2020 ,0 Final_2020,0 Midterm_2021 ,0 Final_2021,0 Midterm_2022 ,0 Final_2022,0 Midterm_2023 ,0 Final_2023
from subject_info as s
join marks_info as m
on s.subject_id=m.subject_id
join exam_info as e
on m.exam_id=e.exam_id
group by s.subject_name ,e.exam_title,m.roll_no,e.exam_year,m.roll_no
having e.Exam_title ='midterm' and m.roll_no=1 and e.exam_year = 2019
union
select m.roll_no,s.subject_name, 0 Midterm_2018,0 Final_2018 ,0 Midterm_2019 ,sum(m.marks) Final_2019
,0 Midterm_2020 ,0 Final_2020,0 Midterm_2021 ,0 Final_2021,0 Midterm_2022 ,0 Final_2022,0 Midterm_2023 ,0 Final_2023
from subject_info as s
join marks_info as m
on s.subject_id=m.subject_id
join exam_info as e
on m.exam_id=e.exam_id
group by s.subject_name ,e.exam_title,m.roll_no,e.exam_year,m.roll_no
having e.Exam_title ='Final' and m.roll_no=1 and e.exam_year = 2019
union
select m.roll_no as roll_no,s.subject_name as subject,0 Midterm_2018 ,0 Final_2018,0 Midterm_2019,0 Final_2019,
sum(m.marks) Midterm_2020,0 Final_2020,0 Midterm_2021 ,0 Final_2021,0 Midterm_2022 ,0 Final_2022,0 Midterm_2023,0 Final_2023
from subject_info as s
join marks_info as m
on s.subject_id=m.subject_id
join exam_info as e
on m.exam_id=e.exam_id
group by s.subject_name ,e.exam_title,m.roll_no,e.exam_year,m.roll_no
having e.Exam_title ='midterm' and m.roll_no=1 and e.exam_year = 2020
union
select m.roll_no as roll_no,s.subject_name as subject, 0 Midterm_2018,0 Final_2018 ,0 Midterm_2019 ,0 Final_2019
,0 Midterm_2020,sum(m.marks) Final_2020,0 Midterm_2021 ,0 Final_2021,0 Midterm_2022 ,0 Final_2022,0 Midterm_2023 ,0 Final_2023
from subject_info as s
join marks_info as m
on s.subject_id=m.subject_id
join exam_info as e
on m.exam_id=e.exam_id
group by s.subject_name ,e.exam_title,m.roll_no,e.exam_year,m.roll_no
having e.Exam_title ='Final' and m.roll_no=1 and e.exam_year = 2020
union

select m.roll_no,s.subject_name,0 Midterm_2018 ,0 Final_2018,0 Midterm_2019 ,0 Final_2019
,0 Midterm_2020 ,0 Final_2020,sum(m.marks) Midterm_2021 ,0 Final_2021,0 Midterm_2022 ,0 Final_2022,0 Midterm_2023,0 Final_2023
from subject_info as s
join marks_info as m
on s.subject_id=m.subject_id
join exam_info as e
on m.exam_id=e.exam_id
group by s.subject_name ,e.exam_title,m.roll_no,e.exam_year,m.roll_no
having e.Exam_title ='midterm' and m.roll_no=1 and e.exam_year = 2021
union
select m.roll_no,s.subject_name, 0 Midterm_2018,0 Final_2018 ,0 Midterm_2019 ,0 Final_2019
,0 Midterm_2020 ,0 Final_2020,0 Midterm_2021 ,sum(m.marks) Final_2021,0 Midterm_2022 ,0 Final_2022,0 Midterm_2023,0 Final_2023
from subject_info as s
join marks_info as m
on s.subject_id=m.subject_id
join exam_info as e
on m.exam_id=e.exam_id
group by s.subject_name ,e.exam_title,m.roll_no,e.exam_year,m.roll_no
having e.Exam_title ='Final' and m.roll_no=1 and e.exam_year = 2021
union
select m.roll_no as roll_no,s.subject_name as subject,0 Midterm_2018 ,0 Final_2018,0 Midterm_2019 ,0 Final_2019
,0 Midterm_2020 ,0 Final_2020,0 Midterm_2021 ,0 Final_2021,sum(m.marks) Midterm_2022 ,0 Final_2022,0 Midterm_2023,0 Final_2023
from subject_info as s
join marks_info as m
on s.subject_id=m.subject_id
join exam_info as e
on m.exam_id=e.exam_id
group by s.subject_name ,e.exam_title,m.roll_no,e.exam_year,m.roll_no
having e.Exam_title ='midterm' and m.roll_no=1 and e.exam_year = 2022
union
select m.roll_no as roll_no,s.subject_name as subject, 0 Midterm_2018,0 Final_2018 ,0 Midterm_2019 ,0 Final_2019
,0 Midterm_2020 ,0 Final_2020,0 Midterm_2021 ,0 Final_2021,0 Midterm_2022 ,sum(m.marks) Final_2022,0 Midterm_2023 ,0 Final_2023
from subject_info as s
join marks_info as m
on s.subject_id=m.subject_id
join exam_info as e
on m.exam_id=e.exam_id
group by s.subject_name ,e.exam_title,m.roll_no,e.exam_year,m.roll_no
having e.Exam_title ='Final' and m.roll_no=1 and e.exam_year = 2022
union

select m.roll_no,s.subject_name,0 Midterm_2018 ,0 Final_2018,0 Midterm_2019 ,0 Final_2019
,0 Midterm_2020 ,0 Final_2020,0 Midterm_2021 ,0 Final_2021,0 Midterm_2022 ,0 Final_2022,sum(m.marks) Midterm_2023,0 Final_2023
from subject_info as s
join marks_info as m
on s.subject_id=m.subject_id
join exam_info as e
on m.exam_id=e.exam_id
group by s.subject_name ,e.exam_title,m.roll_no,e.exam_year,m.roll_no
having e.Exam_title ='midterm' and m.roll_no=1 and e.exam_year = 2023
union
select m.roll_no,s.subject_name, 0 Midterm_2018,0 Final_2018 ,0 Midterm_2019 ,0 Final_2019
,0 Midterm_2020 ,0 Final_2020,0 Midterm_2021 ,0 Final_2021,0 Midterm_2022 ,0 Final_2022,0 Midterm_2023,sum(m.marks) Final_2023
from subject_info as s
join marks_info as m
on s.subject_id=m.subject_id
join exam_info as e
on m.exam_id=e.exam_id
group by s.subject_name ,e.exam_title,m.roll_no,e.exam_year,m.roll_no
having e.Exam_title ='Final' and m.roll_no=1 and e.exam_year = 2023) as t
group by subject,roll_no

union

select roll_no,subject ,sum(Midterm_2018) as Midterm_2018 , sum(Final_2018) Final_2018 , sum(Midterm_2019) Midterm_2019,sum(Final_2019)Final_2019
, sum(Midterm_2020) Midterm_2020, sum(Final_2020)Final_2020, sum(Midterm_2021) Midterm_2021, sum(Final_2021)Final_2021,
 sum(Midterm_2022) Midterm_2022, sum(Final_2022)Final_2022,sum(Midterm_2023) Midterm_2023, sum(Final_2023) Final_2023 from(
select m.roll_no as roll_no,s.subject_name as subject,sum(m.marks) Midterm_2018 ,0 Final_2018,0 Midterm_2019 ,0 Final_2019
,0 Midterm_2020 ,0 Final_2020,0 Midterm_2021 ,0 Final_2021,0 Midterm_2022 ,0 Final_2022,0 Midterm_2023 ,0 Final_2023
from subject_info as s
join marks_info as m
on s.subject_id=m.subject_id
join exam_info as e
on m.exam_id=e.exam_id
group by s.subject_name ,e.exam_title,m.roll_no,e.exam_year,m.roll_no
having e.Exam_title ='midterm' and m.roll_no=2 and e.exam_year = 2018
union
select m.roll_no as roll_no,s.subject_name as subject, 0 Midterm_2018,sum(m.marks) Final_2018 ,0 Midterm_2019 ,0 Final_2019
,0 Midterm_2020 ,0 Final_2020,0 Midterm_2021 ,0 Final_2021,0 Midterm_2022 ,0 Final_2022,0 Midterm_2023 ,0 Final_2023
from subject_info as s
join marks_info as m
on s.subject_id=m.subject_id
join exam_info as e
on m.exam_id=e.exam_id
group by s.subject_name ,e.exam_title,m.roll_no,e.exam_year,m.roll_no
having e.Exam_title ='Final' and m.roll_no=2 and e.exam_year = 2018
union

select m.roll_no,s.subject_name,0 Midterm_2018 ,0 Final_2018,sum(m.marks) Midterm_2019 ,0 Final_2019
,0 Midterm_2020 ,0 Final_2020,0 Midterm_2021 ,0 Final_2021,0 Midterm_2022 ,0 Final_2022,0 Midterm_2023 ,0 Final_2023
from subject_info as s
join marks_info as m
on s.subject_id=m.subject_id
join exam_info as e
on m.exam_id=e.exam_id
group by s.subject_name ,e.exam_title,m.roll_no,e.exam_year,m.roll_no
having e.Exam_title ='midterm' and m.roll_no=2 and e.exam_year = 2019
union
select m.roll_no,s.subject_name, 0 Midterm_2018,0 Final_2018 ,0 Midterm_2019 ,sum(m.marks) Final_2019
,0 Midterm_2020 ,0 Final_2020,0 Midterm_2021 ,0 Final_2021,0 Midterm_2022 ,0 Final_2022,0 Midterm_2023 ,0 Final_2023
from subject_info as s
join marks_info as m
on s.subject_id=m.subject_id
join exam_info as e
on m.exam_id=e.exam_id
group by s.subject_name ,e.exam_title,m.roll_no,e.exam_year,m.roll_no
having e.Exam_title ='Final' and m.roll_no=2 and e.exam_year = 2019
union
select m.roll_no as roll_no,s.subject_name as subject,0 Midterm_2018 ,0 Final_2018,0 Midterm_2019 ,0 Final_2019
,sum(m.marks) Midterm_2020 ,0 Final_2020,0 Midterm_2021 ,0 Final_2021,0 Midterm_2022 ,0 Final_2022,0 Midterm_2023 ,0 Final_2023
from subject_info as s
join marks_info as m
on s.subject_id=m.subject_id
join exam_info as e
on m.exam_id=e.exam_id
group by s.subject_name ,e.exam_title,m.roll_no,e.exam_year,m.roll_no
having e.Exam_title ='midterm' and m.roll_no=2 and e.exam_year = 2020
union
select m.roll_no as roll_no,s.subject_name as subject, 0 Midterm_2018,0 Final_2018 ,0 Midterm_2019 ,0 Final_2019
,0 Midterm_2020 ,sum(m.marks) Final_2020,0 Midterm_2021 ,0 Final_2021,0 Midterm_2022 ,0 Final_2022,0 Midterm_2023 ,0 Final_2023
from subject_info as s
join marks_info as m
on s.subject_id=m.subject_id
join exam_info as e
on m.exam_id=e.exam_id
group by s.subject_name ,e.exam_title,m.roll_no,e.exam_year,m.roll_no
having e.Exam_title ='Final' and m.roll_no=2 and e.exam_year = 2020
union

select m.roll_no,s.subject_name,0 Midterm_2018 ,0 Final_2018,0 Midterm_2019 ,0 Final_2019
,0 Midterm_2020 ,0 Final_2020,sum(m.marks) Midterm_2021 ,0 Final_2021,0 Midterm_2022 ,0 Final_2022,0 Midterm_2023 ,0 Final_2023
from subject_info as s
join marks_info as m
on s.subject_id=m.subject_id
join exam_info as e
on m.exam_id=e.exam_id
group by s.subject_name ,e.exam_title,m.roll_no,e.exam_year,m.roll_no
having e.Exam_title ='midterm' and m.roll_no=2 and e.exam_year = 2021
union
select m.roll_no,s.subject_name, 0 Midterm_2018,0 Final_2018 ,0 Midterm_2019 ,0 Final_2019
,0 Midterm_2020 ,0 Final_2020,0 Midterm_2021 ,sum(m.marks) Final_2021,0 Midterm_2022 ,0 Final_2022,0 Midterm_2023 ,0 Final_2023
from subject_info as s
join marks_info as m
on s.subject_id=m.subject_id
join exam_info as e
on m.exam_id=e.exam_id
group by s.subject_name ,e.exam_title,m.roll_no,e.exam_year,m.roll_no
having e.Exam_title ='Final' and m.roll_no=2 and e.exam_year = 2021
union
select m.roll_no as roll_no,s.subject_name as subject,0 Midterm_2018 ,0 Final_2018,0 Midterm_2019 ,0 Final_2019
,0 Midterm_2020 ,0 Final_2020,0 Midterm_2021 ,0 Final_2021,sum(m.marks) Midterm_2022 ,0 Final_2022,0 Midterm_2023 ,0 Final_2023
from subject_info as s
join marks_info as m
on s.subject_id=m.subject_id
join exam_info as e
on m.exam_id=e.exam_id
group by s.subject_name ,e.exam_title,m.roll_no,e.exam_year,m.roll_no
having e.Exam_title ='midterm' and m.roll_no=2 and e.exam_year = 2022
union
select m.roll_no as roll_no,s.subject_name as subject, 0 Midterm_2018,0 Final_2018 ,0 Midterm_2019 ,0 Final_2019
,0 Midterm_2020 ,0 Final_2020,0 Midterm_2021 ,0 Final_2021,0 Midterm_2022 ,sum(m.marks) Final_2022,0 Midterm_2023 ,0 Final_2023
from subject_info as s
join marks_info as m
on s.subject_id=m.subject_id
join exam_info as e
on m.exam_id=e.exam_id
group by s.subject_name ,e.exam_title,m.roll_no,e.exam_year,m.roll_no
having e.Exam_title ='Final' and m.roll_no=2 and e.exam_year = 2022
union

select m.roll_no,s.subject_name,0 Midterm_2018 ,0 Final_2018,0 Midterm_2019 ,0 Final_2019
,0 Midterm_2020 ,0 Final_2020,0 Midterm_2021 ,0 Final_2021,0 Midterm_2022 ,0 Final_2022,sum(m.marks) Midterm_2023 ,0 Final_2023
from subject_info as s
join marks_info as m
on s.subject_id=m.subject_id
join exam_info as e
on m.exam_id=e.exam_id
group by s.subject_name ,e.exam_title,m.roll_no,e.exam_year,m.roll_no
having e.Exam_title ='midterm' and m.roll_no=2 and e.exam_year = 2023
union
select m.roll_no,s.subject_name, 0 Midterm_2018,0 Final_2018 ,0 Midterm_2019 ,0 Final_2019
,0 Midterm_2020 ,0 Final_2020,0 Midterm_2021 ,0 Final_2021,0 Midterm_2022 ,0 Final_2022,0 Midterm_2023 ,sum(m.marks) Final_2023
from subject_info as s
join marks_info as m
on s.subject_id=m.subject_id
join exam_info as e
on m.exam_id=e.exam_id
group by s.subject_name ,e.exam_title,m.roll_no,e.exam_year,m.roll_no
having e.Exam_title ='Final' and m.roll_no=2 and e.exam_year = 2023) as t
group by subject,roll_no

union


select roll_no,subject ,sum(Midterm_2018) as Midterm_2018 , sum(Final_2018) Final_2018 , sum(Midterm_2019) Midterm_2019,sum(Final_2019)Final_2019
, sum(Midterm_2020) Midterm_2020, sum(Final_2020)Final_2020, sum(Midterm_2021) Midterm_2021, sum(Final_2021)Final_2021,
 sum(Midterm_2022) Midterm_2022, sum(Final_2022)Final_2022,sum(Midterm_2023) Midterm_2023, sum(Final_2023) Final_2023 from(
select m.roll_no as roll_no,s.subject_name as subject,sum(m.marks) Midterm_2018 ,0 Final_2018,0 Midterm_2019 ,0 Final_2019
,0 Midterm_2020 ,0 Final_2020,0 Midterm_2021 ,0 Final_2021,0 Midterm_2022 ,0 Final_2022,0 Midterm_2023 ,0 Final_2023
from subject_info as s
join marks_info as m
on s.subject_id=m.subject_id
join exam_info as e
on m.exam_id=e.exam_id
group by s.subject_name ,e.exam_title,m.roll_no,e.exam_year,m.roll_no
having e.Exam_title ='midterm' and m.roll_no=3 and e.exam_year = 2018
union
select m.roll_no as roll_no,s.subject_name as subject, 0 Midterm_2018,sum(m.marks) Final_2018 ,0 Midterm_2019 ,0 Final_2019
,0 Midterm_2020 ,0 Final_2020,0 Midterm_2021 ,0 Final_2021,0 Midterm_2022 ,0 Final_2022,0 Midterm_2023 ,0 Final_2023
from subject_info as s
join marks_info as m
on s.subject_id=m.subject_id
join exam_info as e
on m.exam_id=e.exam_id
group by s.subject_name ,e.exam_title,m.roll_no,e.exam_year,m.roll_no
having e.Exam_title ='Final' and m.roll_no=3 and e.exam_year = 2018
union

select m.roll_no,s.subject_name,0 Midterm_2018 ,0 Final_2018,sum(m.marks) Midterm_2019 ,0 Final_2019
,0 Midterm_2020 ,0 Final_2020,0 Midterm_2021 ,0 Final_2021,0 Midterm_2022 ,0 Final_2022,0 Midterm_2023 ,0 Final_2023
from subject_info as s
join marks_info as m
on s.subject_id=m.subject_id
join exam_info as e
on m.exam_id=e.exam_id
group by s.subject_name ,e.exam_title,m.roll_no,e.exam_year,m.roll_no
having e.Exam_title ='midterm' and m.roll_no=3 and e.exam_year = 2019
union
select m.roll_no,s.subject_name, 0 Midterm_2018,0 Final_2018 ,0 Midterm_2019 ,sum(m.marks) Final_2019
,0 Midterm_2020 ,0 Final_2020,0 Midterm_2021 ,0 Final_2021,0 Midterm_2022 ,0 Final_2022,0 Midterm_2023 ,0 Final_2023
from subject_info as s
join marks_info as m
on s.subject_id=m.subject_id
join exam_info as e
on m.exam_id=e.exam_id
group by s.subject_name ,e.exam_title,m.roll_no,e.exam_year,m.roll_no
having e.Exam_title ='Final' and m.roll_no=3 and e.exam_year = 2019
union
select m.roll_no as roll_no,s.subject_name as subject,0 Midterm_2018 ,0 Final_2018,0 Midterm_2019 ,0 Final_2019
,sum(m.marks) Midterm_2020 ,0 Final_2020,0 Midterm_2021 ,0 Final_2021,0 Midterm_2022 ,0 Final_2022,0 Midterm_2023 ,0 Final_2023
from subject_info as s
join marks_info as m
on s.subject_id=m.subject_id
join exam_info as e
on m.exam_id=e.exam_id
group by s.subject_name ,e.exam_title,m.roll_no,e.exam_year,m.roll_no
having e.Exam_title ='midterm' and m.roll_no=3 and e.exam_year = 2020
union
select m.roll_no as roll_no,s.subject_name as subject, 0 Midterm_2018,0 Final_2018 ,0 Midterm_2019 ,0 Final_2019
,0 Midterm_2020 ,sum(m.marks) Final_2020,0 Midterm_2021 ,0 Final_2021,0 Midterm_2022 ,0 Final_2022,0 Midterm_2023 ,0 Final_2023
from subject_info as s
join marks_info as m
on s.subject_id=m.subject_id
join exam_info as e
on m.exam_id=e.exam_id
group by s.subject_name ,e.exam_title,m.roll_no,e.exam_year,m.roll_no
having e.Exam_title ='Final' and m.roll_no=3 and e.exam_year = 2020
union

select m.roll_no,s.subject_name,0 Midterm_2018 ,0 Final_2018,0 Midterm_2019 ,0 Final_2019
,0 Midterm_2020 ,0 Final_2020,sum(m.marks) Midterm_2021 ,0 Final_2021,0 Midterm_2022 ,0 Final_2022,0 Midterm_2023 ,0 Final_2023
from subject_info as s
join marks_info as m
on s.subject_id=m.subject_id
join exam_info as e
on m.exam_id=e.exam_id
group by s.subject_name ,e.exam_title,m.roll_no,e.exam_year,m.roll_no
having e.Exam_title ='midterm' and m.roll_no=3 and e.exam_year = 2021
union
select m.roll_no,s.subject_name, 0 Midterm_2018,0 Final_2018 ,0 Midterm_2019 ,0 Final_2019
,0 Midterm_2020 ,0 Final_2020,0 Midterm_2021 ,sum(m.marks) Final_2021,0 Midterm_2022 ,0 Final_2022,0 Midterm_2023 ,0 Final_2023
from subject_info as s
join marks_info as m
on s.subject_id=m.subject_id
join exam_info as e
on m.exam_id=e.exam_id
group by s.subject_name ,e.exam_title,m.roll_no,e.exam_year,m.roll_no
having e.Exam_title ='Final' and m.roll_no=3 and e.exam_year = 2021
union
select m.roll_no as roll_no,s.subject_name as subject,0 Midterm_2018 ,0 Final_2018,0 Midterm_2019 ,0 Final_2019
,0 Midterm_2020 ,0 Final_2020,0 Midterm_2021 ,0 Final_2021,sum(m.marks) Midterm_2022 ,0 Final_2022,0 Midterm_2023 ,0 Final_2023
from subject_info as s
join marks_info as m
on s.subject_id=m.subject_id
join exam_info as e
on m.exam_id=e.exam_id
group by s.subject_name ,e.exam_title,m.roll_no,e.exam_year,m.roll_no
having e.Exam_title ='midterm' and m.roll_no=3 and e.exam_year = 2022
union
select m.roll_no as roll_no,s.subject_name as subject, 0 Midterm_2018,0 Final_2018 ,0 Midterm_2019 ,0 Final_2019
,0 Midterm_2020 ,0 Final_2020,0 Midterm_2021 ,0 Final_2021,0 Midterm_2022 ,sum(m.marks) Final_2022,0 Midterm_2023 ,0 Final_2023
from subject_info as s
join marks_info as m
on s.subject_id=m.subject_id
join exam_info as e
on m.exam_id=e.exam_id
group by s.subject_name ,e.exam_title,m.roll_no,e.exam_year,m.roll_no
having e.Exam_title ='Final' and m.roll_no=3 and e.exam_year = 2022
union

select m.roll_no,s.subject_name,0 Midterm_2018 ,0 Final_2018,0 Midterm_2019 ,0 Final_2019
,0 Midterm_2020 ,0 Final_2020,0 Midterm_2021 ,0 Final_2021,0 Midterm_2022 ,0 Final_2022,sum(m.marks) Midterm_2023 ,0 Final_2023
from subject_info as s
join marks_info as m
on s.subject_id=m.subject_id
join exam_info as e
on m.exam_id=e.exam_id
group by s.subject_name ,e.exam_title,m.roll_no,e.exam_year,m.roll_no
having e.Exam_title ='midterm' and m.roll_no=3 and e.exam_year = 2023
union
select m.roll_no,s.subject_name, 0 Midterm_2018,0 Final_2018 ,0 Midterm_2019 ,0 Final_2019
,0 Midterm_2020 ,0 Final_2020,0 Midterm_2021 ,0 Final_2021,0 Midterm_2022 ,0 Final_2022,0 Midterm_2023 ,sum(m.marks) Final_2023
from subject_info as s
join marks_info as m
on s.subject_id=m.subject_id
join exam_info as e
on m.exam_id=e.exam_id
group by s.subject_name ,e.exam_title,m.roll_no,e.exam_year,m.roll_no
having e.Exam_title ='Final' and m.roll_no=3 and e.exam_year = 2023) as t
group by subject,roll_no

union

select roll_no,subject ,sum(Midterm_2018) as Midterm_2018 , sum(Final_2018) Final_2018 , sum(Midterm_2019) Midterm_2019,sum(Final_2019)Final_2019
, sum(Midterm_2020) Midterm_2020, sum(Final_2020)Final_2020, sum(Midterm_2021) Midterm_2021, sum(Final_2021)Final_2021,
 sum(Midterm_2022) Midterm_2022, sum(Final_2022)Final_2022,sum(Midterm_2023) Midterm_2023, sum(Final_2023) Final_2023 from(
select m.roll_no as roll_no,s.subject_name as subject,sum(m.marks) Midterm_2018 ,0 Final_2018,0 Midterm_2019 ,0 Final_2019
,0 Midterm_2020 ,0 Final_2020,0 Midterm_2021 ,0 Final_2021,0 Midterm_2022 ,0 Final_2022,0 Midterm_2023 ,0 Final_2023
from subject_info as s
join marks_info as m
on s.subject_id=m.subject_id
join exam_info as e
on m.exam_id=e.exam_id
group by s.subject_name ,e.exam_title,m.roll_no,e.exam_year,m.roll_no
having e.Exam_title ='midterm' and m.roll_no=4 and e.exam_year = 2018
union
select m.roll_no as roll_no,s.subject_name as subject, 0 Midterm_2018,sum(m.marks) Final_2018 ,0 Midterm_2019 ,0 Final_2019
,0 Midterm_2020 ,0 Final_2020,0 Midterm_2021 ,0 Final_2021,0 Midterm_2022 ,0 Final_2022,0 Midterm_2023 ,0 Final_2023
from subject_info as s
join marks_info as m
on s.subject_id=m.subject_id
join exam_info as e
on m.exam_id=e.exam_id
group by s.subject_name ,e.exam_title,m.roll_no,e.exam_year,m.roll_no
having e.Exam_title ='Final' and m.roll_no=4 and e.exam_year = 2018
union

select m.roll_no,s.subject_name,0 Midterm_2018 ,0 Final_2018,sum(m.marks) Midterm_2019 ,0 Final_2019
,0 Midterm_2020 ,0 Final_2020,0 Midterm_2021 ,0 Final_2021,0 Midterm_2022 ,0 Final_2022,0 Midterm_2023 ,0 Final_2023
from subject_info as s
join marks_info as m
on s.subject_id=m.subject_id
join exam_info as e
on m.exam_id=e.exam_id
group by s.subject_name ,e.exam_title,m.roll_no,e.exam_year,m.roll_no
having e.Exam_title ='midterm' and m.roll_no=4 and e.exam_year = 2019
union
select m.roll_no,s.subject_name, 0 Midterm_2018,0 Final_2018 ,0 Midterm_2019 ,sum(m.marks) Final_2019
,0 Midterm_2020 ,0 Final_2020,0 Midterm_2021 ,0 Final_2021,0 Midterm_2022 ,0 Final_2022,0 Midterm_2023 ,0 Final_2023
from subject_info as s
join marks_info as m
on s.subject_id=m.subject_id
join exam_info as e
on m.exam_id=e.exam_id
group by s.subject_name ,e.exam_title,m.roll_no,e.exam_year,m.roll_no
having e.Exam_title ='Final' and m.roll_no=4 and e.exam_year = 2019
union
select m.roll_no as roll_no,s.subject_name as subject,0 Midterm_2018 ,0 Final_2018,0 Midterm_2019 ,0 Final_2019
,sum(m.marks) Midterm_2020 ,0 Final_2020,0 Midterm_2021 ,0 Final_2021,0 Midterm_2022 ,0 Final_2022,0 Midterm_2023 ,0 Final_2023
from subject_info as s
join marks_info as m
on s.subject_id=m.subject_id
join exam_info as e
on m.exam_id=e.exam_id
group by s.subject_name ,e.exam_title,m.roll_no,e.exam_year,m.roll_no
having e.Exam_title ='midterm' and m.roll_no=4 and e.exam_year = 2020
union
select m.roll_no as roll_no,s.subject_name as subject, 0 Midterm_2018,0 Final_2018 ,0 Midterm_2019 ,0 Final_2019
,0 Midterm_2020 ,sum(m.marks) Final_2020,0 Midterm_2021 ,0 Final_2021,0 Midterm_2022 ,0 Final_2022,0 Midterm_2023 ,0 Final_2023
from subject_info as s
join marks_info as m
on s.subject_id=m.subject_id
join exam_info as e
on m.exam_id=e.exam_id
group by s.subject_name ,e.exam_title,m.roll_no,e.exam_year,m.roll_no
having e.Exam_title ='Final' and m.roll_no=4 and e.exam_year = 2020
union

select m.roll_no,s.subject_name,0 Midterm_2018 ,0 Final_2018,0 Midterm_2019 ,0 Final_2019
,0 Midterm_2020 ,0 Final_2020,sum(m.marks) Midterm_2021 ,0 Final_2021,0 Midterm_2022 ,0 Final_2022,0 Midterm_2023 ,0 Final_2023
from subject_info as s
join marks_info as m
on s.subject_id=m.subject_id
join exam_info as e
on m.exam_id=e.exam_id
group by s.subject_name ,e.exam_title,m.roll_no,e.exam_year,m.roll_no
having e.Exam_title ='midterm' and m.roll_no=4 and e.exam_year = 2021
union
select m.roll_no,s.subject_name, 0 Midterm_2018,0 Final_2018 ,0 Midterm_2019 ,0 Final_2019
,0 Midterm_2020 ,0 Final_2020,0 Midterm_2021 ,sum(m.marks) Final_2021,0 Midterm_2022 ,0 Final_2022,0 Midterm_2023 ,0 Final_2023
from subject_info as s
join marks_info as m
on s.subject_id=m.subject_id
join exam_info as e
on m.exam_id=e.exam_id
group by s.subject_name ,e.exam_title,m.roll_no,e.exam_year,m.roll_no
having e.Exam_title ='Final' and m.roll_no=4 and e.exam_year = 2021
union
select m.roll_no as roll_no,s.subject_name as subject,0 Midterm_2018 ,0 Final_2018,0 Midterm_2019 ,0 Final_2019
,0 Midterm_2020 ,0 Final_2020,0 Midterm_2021 ,0 Final_2021,sum(m.marks) Midterm_2022 ,0 Final_2022,0 Midterm_2023 ,0 Final_2023
from subject_info as s
join marks_info as m
on s.subject_id=m.subject_id
join exam_info as e
on m.exam_id=e.exam_id
group by s.subject_name ,e.exam_title,m.roll_no,e.exam_year,m.roll_no
having e.Exam_title ='midterm' and m.roll_no=4 and e.exam_year = 2022
union
select m.roll_no as roll_no,s.subject_name as subject, 0 Midterm_2018,0 Final_2018 ,0 Midterm_2019 ,0 Final_2019
,0 Midterm_2020 ,0 Final_2020,0 Midterm_2021 ,0 Final_2021,0 Midterm_2022 ,sum(m.marks) Final_2022,0 Midterm_2023 ,0 Final_2023
from subject_info as s
join marks_info as m
on s.subject_id=m.subject_id
join exam_info as e
on m.exam_id=e.exam_id
group by s.subject_name ,e.exam_title,m.roll_no,e.exam_year,m.roll_no
having e.Exam_title ='Final' and m.roll_no=4 and e.exam_year = 2022
union

select m.roll_no,s.subject_name,0 Midterm_2018 ,0 Final_2018,0 Midterm_2019 ,0 Final_2019
,0 Midterm_2020 ,0 Final_2020,0 Midterm_2021 ,0 Final_2021,0 Midterm_2022 ,0 Final_2022,sum(m.marks) Midterm_2023 ,0 Final_2023
from subject_info as s
join marks_info as m
on s.subject_id=m.subject_id
join exam_info as e
on m.exam_id=e.exam_id
group by s.subject_name ,e.exam_title,m.roll_no,e.exam_year,m.roll_no
having e.Exam_title ='midterm' and m.roll_no=4 and e.exam_year = 2023
union
select m.roll_no,s.subject_name, 0 Midterm_2018,0 Final_2018 ,0 Midterm_2019 ,0 Final_2019
,0 Midterm_2020 ,0 Final_2020,0 Midterm_2021 ,0 Final_2021,0 Midterm_2022 ,0 Final_2022,0 Midterm_2023 ,sum(m.marks) Final_2023
from subject_info as s
join marks_info as m
on s.subject_id=m.subject_id
join exam_info as e
on m.exam_id=e.exam_id
group by s.subject_name ,e.exam_title,m.roll_no,e.exam_year,m.roll_no
having e.Exam_title ='Final' and m.roll_no=4 and e.exam_year = 2023) as t
group by subject,roll_no

union

select roll_no,subject ,sum(Midterm_2018) as Midterm_2018 , sum(Final_2018) Final_2018 , sum(Midterm_2019) Midterm_2019,sum(Final_2019)Final_2019
, sum(Midterm_2020) Midterm_2020, sum(Final_2020)Final_2020, sum(Midterm_2021) Midterm_2021, sum(Final_2021)Final_2021,
 sum(Midterm_2022) Midterm_2022, sum(Final_2022)Final_2022,sum(Midterm_2023) Midterm_2023, sum(Final_2023) Final_2023 from(
select m.roll_no as roll_no,s.subject_name as subject,sum(m.marks) Midterm_2018 ,0 Final_2018,0 Midterm_2019 ,0 Final_2019
,0 Midterm_2020 ,0 Final_2020,0 Midterm_2021 ,0 Final_2021,0 Midterm_2022 ,0 Final_2022,0 Midterm_2023 ,0 Final_2023
from subject_info as s
join marks_info as m
on s.subject_id=m.subject_id
join exam_info as e
on m.exam_id=e.exam_id
group by s.subject_name ,e.exam_title,m.roll_no,e.exam_year,m.roll_no
having e.Exam_title ='midterm' and m.roll_no=5 and e.exam_year = 2018
union
select m.roll_no as roll_no,s.subject_name as subject, 0 Midterm_2018,sum(m.marks) Final_2018 ,0 Midterm_2019 ,0 Final_2019
,0 Midterm_2020 ,0 Final_2020,0 Midterm_2021 ,0 Final_2021,0 Midterm_2022 ,0 Final_2022,0 Midterm_2023 ,0 Final_2023
from subject_info as s
join marks_info as m
on s.subject_id=m.subject_id
join exam_info as e
on m.exam_id=e.exam_id
group by s.subject_name ,e.exam_title,m.roll_no,e.exam_year,m.roll_no
having e.Exam_title ='Final' and m.roll_no=5 and e.exam_year = 2018
union

select m.roll_no,s.subject_name,0 Midterm_2018 ,0 Final_2018,sum(m.marks) Midterm_2019 ,0 Final_2019
,0 Midterm_2020 ,0 Final_2020,0 Midterm_2021 ,0 Final_2021,0 Midterm_2022 ,0 Final_2022,0 Midterm_2023 ,0 Final_2023
from subject_info as s
join marks_info as m
on s.subject_id=m.subject_id
join exam_info as e
on m.exam_id=e.exam_id
group by s.subject_name ,e.exam_title,m.roll_no,e.exam_year,m.roll_no
having e.Exam_title ='midterm' and m.roll_no=5 and e.exam_year = 2019
union
select m.roll_no,s.subject_name, 0 Midterm_2018,0 Final_2018 ,0 Midterm_2019 ,sum(m.marks) Final_2019
,0 Midterm_2020 ,0 Final_2020,0 Midterm_2021 ,0 Final_2021,0 Midterm_2022 ,0 Final_2022,0 Midterm_2023 ,0 Final_2023
from subject_info as s
join marks_info as m
on s.subject_id=m.subject_id
join exam_info as e
on m.exam_id=e.exam_id
group by s.subject_name ,e.exam_title,m.roll_no,e.exam_year,m.roll_no
having e.Exam_title ='Final' and m.roll_no=5 and e.exam_year = 2019
union
select m.roll_no as roll_no,s.subject_name as subject,0 Midterm_2018 ,0 Final_2018,0 Midterm_2019 ,0 Final_2019
,sum(m.marks) Midterm_2020 ,0 Final_2020,0 Midterm_2021 ,0 Final_2021,0 Midterm_2022 ,0 Final_2022,0 Midterm_2023 ,0 Final_2023
from subject_info as s
join marks_info as m
on s.subject_id=m.subject_id
join exam_info as e
on m.exam_id=e.exam_id
group by s.subject_name ,e.exam_title,m.roll_no,e.exam_year,m.roll_no
having e.Exam_title ='midterm' and m.roll_no=5 and e.exam_year = 2020
union
select m.roll_no as roll_no,s.subject_name as subject, 0 Midterm_2018,0 Final_2018 ,0 Midterm_2019 ,0 Final_2019
,0 Midterm_2020 ,sum(m.marks) Final_2020,0 Midterm_2021 ,0 Final_2021,0 Midterm_2022 ,0 Final_2022,0 Midterm_2023 ,0 Final_2023
from subject_info as s
join marks_info as m
on s.subject_id=m.subject_id
join exam_info as e
on m.exam_id=e.exam_id
group by s.subject_name ,e.exam_title,m.roll_no,e.exam_year,m.roll_no
having e.Exam_title ='Final' and m.roll_no=5 and e.exam_year = 2020
union

select m.roll_no,s.subject_name,0 Midterm_2018 ,0 Final_2018,0 Midterm_2019 ,0 Final_2019
,0 Midterm_2020 ,0 Final_2020,sum(m.marks) Midterm_2021 ,0 Final_2021,0 Midterm_2022 ,0 Final_2022,0 Midterm_2023 ,0 Final_2023
from subject_info as s
join marks_info as m
on s.subject_id=m.subject_id
join exam_info as e
on m.exam_id=e.exam_id
group by s.subject_name ,e.exam_title,m.roll_no,e.exam_year,m.roll_no
having e.Exam_title ='midterm' and m.roll_no=5 and e.exam_year = 2021
union
select m.roll_no,s.subject_name, 0 Midterm_2018,0 Final_2018 ,0 Midterm_2019 ,0 Final_2019
,0 Midterm_2020 ,0 Final_2020,0 Midterm_2021 ,sum(m.marks) Final_2021,0 Midterm_2022 ,0 Final_2022,0 Midterm_2023 ,0 Final_2023
from subject_info as s
join marks_info as m
on s.subject_id=m.subject_id
join exam_info as e
on m.exam_id=e.exam_id
group by s.subject_name ,e.exam_title,m.roll_no,e.exam_year,m.roll_no
having e.Exam_title ='Final' and m.roll_no=5 and e.exam_year = 2021
union
select m.roll_no as roll_no,s.subject_name as subject,0 Midterm_2018 ,0 Final_2018,0 Midterm_2019 ,0 Final_2019
,0 Midterm_2020 ,0 Final_2020,0 Midterm_2021 ,0 Final_2021,sum(m.marks) Midterm_2022 ,0 Final_2022,0 Midterm_2023 ,0 Final_2023
from subject_info as s
join marks_info as m
on s.subject_id=m.subject_id
join exam_info as e
on m.exam_id=e.exam_id
group by s.subject_name ,e.exam_title,m.roll_no,e.exam_year,m.roll_no
having e.Exam_title ='midterm' and m.roll_no=5 and e.exam_year = 2022
union
select m.roll_no as roll_no,s.subject_name as subject, 0 Midterm_2018,0 Final_2018 ,0 Midterm_2019 ,0 Final_2019
,0 Midterm_2020 ,0 Final_2020,0 Midterm_2021 ,0 Final_2021,0 Midterm_2022 ,sum(m.marks) Final_2022,0 Midterm_2023 ,0 Final_2023
from subject_info as s
join marks_info as m
on s.subject_id=m.subject_id
join exam_info as e
on m.exam_id=e.exam_id
group by s.subject_name ,e.exam_title,m.roll_no,e.exam_year,m.roll_no
having e.Exam_title ='Final' and m.roll_no=5 and e.exam_year = 2022
union

select m.roll_no,s.subject_name,0 Midterm_2018 ,0 Final_2018,0 Midterm_2019 ,0 Final_2019
,0 Midterm_2020 ,0 Final_2020,0 Midterm_2021 ,0 Final_2021,0 Midterm_2022 ,0 Final_2022,sum(m.marks) Midterm_2023 ,0 Final_2023
from subject_info as s
join marks_info as m
on s.subject_id=m.subject_id
join exam_info as e
on m.exam_id=e.exam_id
group by s.subject_name ,e.exam_title,m.roll_no,e.exam_year,m.roll_no
having e.Exam_title ='midterm' and m.roll_no=5 and e.exam_year = 2023
union
select m.roll_no,s.subject_name, 0 Midterm_2018,0 Final_2018 ,0 Midterm_2019 ,0 Final_2019
,0 Midterm_2020 ,0 Final_2020,0 Midterm_2021 ,0 Final_2021,0 Midterm_2022 ,0 Final_2022,0 Midterm_2023 ,sum(m.marks) Final_2023
from subject_info as s
join marks_info as m
on s.subject_id=m.subject_id
join exam_info as e
on m.exam_id=e.exam_id
group by s.subject_name ,e.exam_title,m.roll_no,e.exam_year,m.roll_no
having e.Exam_title ='Final' and m.roll_no=5 and e.exam_year = 2023) as t
group by subject,roll_no;



