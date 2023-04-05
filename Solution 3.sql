-- 3.Write a query to calculate the days between first and last booking of each user.

Select user_id,
Datediff(Max(booking_date),Min(booking_date)) As Days_diff
FROM booking_table
Group By user_id;