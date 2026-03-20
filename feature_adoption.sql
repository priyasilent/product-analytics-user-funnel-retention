SELECT
    onboarding_step,
    COUNT(DISTINCT user_id) AS users_at_step
FROM user_onboarding
GROUP BY onboarding_step
ORDER BY onboarding_step;
