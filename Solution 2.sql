# 2.Write a query to identify users whose first booking was a hotel booking.

Select * FROM
	( Select *, 
		Rank() Over(Partition By user_id Order By booking_date ASC) As rn
	From booking_table) a
	Where rn=1 and line_of_business = 'Hotel';
    
# 2nd Method

Select Distinct user_id FROM
	( Select *, 
		First_value(line_of_business) Over(Partition By user_id Order By booking_date ASC) As first_booking
	From booking_table) a
	Where first_booking = 'Hotel';
