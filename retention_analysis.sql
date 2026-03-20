SELECT
    signup_date,
    COUNT(DISTINCT user_id) AS total_users,
    COUNT(DISTINCT CASE 
        WHEN activity_date = signup_date + INTERVAL '1 day' 
        THEN user_id END) AS day_1_retained,
    COUNT(DISTINCT CASE 
        WHEN activity_date = signup_date + INTERVAL '7 day' 
        THEN user_id END) AS day_7_retained
FROM user_activity
GROUP BY signup_date
ORDER BY signup_date;
