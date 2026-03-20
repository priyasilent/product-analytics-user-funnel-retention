SELECT
    onboarding_step,
    COUNT(DISTINCT user_id) AS users,
    ROUND(
        COUNT(DISTINCT user_id) * 100.0 / 
        SUM(COUNT(DISTINCT user_id)) OVER (), 
    2) AS percentage_of_total
FROM user_onboarding
GROUP BY onboarding_step
ORDER BY onboarding_step;
