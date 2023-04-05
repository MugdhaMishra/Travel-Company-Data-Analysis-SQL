-- 4.Write a query to count the number of flight and hotel bookings in each user segments for the year 2022.

Select u.segment, 
	COUNT(line_of_business = 'flight') As No_of_flight,
    COUNT(line_of_business ='Hote') As No_of_hotel
From booking_table b
INNER JOIN user_table u
ON b.user_id=u.user_id
Group By segment;

Select segment, 
	SUM( CASE WHEN line_of_business = 'flight' THEN 1 Else 0 END) As No_of_flight,
    SUM( CASE WHEN line_of_business ='Hote' THEN 1 ELse 0 END ) As No_of_hotel
From  booking_table b
INNER JOIN user_table u
ON b.user_id=u.user_id
Group By segment;