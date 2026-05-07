SELECT
    SUBSTR(created_date, 1, 7) AS month,
    COUNT(*) AS total_deployments
    FROM jira_data
    GROUP BY month
    ORDER BY month ASC;
SELECT
    ROUND(AVG(total_duration), 1) AS avg_total_duration,
    ROUND(AVG(active_duration), 1) AS avg_active_duration,
    ROUND(AVG(total_duration - active_duration), 1) AS avg_idle_tim
    FROM jira_data;
SELECT
    'iOS' AS platform, SUM(ios) AS total_deployments FROM jira_data
UNION ALL
SELECT 'Android', SUM(android) FROM jira_data
UNION ALL
SELECT 'Android TV', SUM(androidtv) FROM jira_data
UNION ALL
SELECT 'Fire TV', SUM(firetv) FROM jira_data
UNION ALL
SELECT 'Roku', SUM(roku) FROM jira_data
UNION ALL
SELECT 'Xbox', SUM(xbox) FROM jira_data
UNION ALL
SELECT 'tvOS', SUM(tvos) FROM jira_data
UNION ALL
SELECT 'Tizen', SUM(tizen) FROM jira_data
ORDER BY total_deployments DESC;
SELECT
    key,
    created_date,
    num_of_apps,
    total_duration
FROM jira_data
ORDER BY num_of_apps DESC
LIMIT 10;
SELECT
    'Design Changes' AS change_type, SUM(design_changes) AS total FROM jira_data
UNION ALL
SELECT 'Config Changes', SUM(config_changes) FROM jira_data
UNION ALL
SELECT 'Store Changes', SUM(store_changes) FROM jira_data;
SELECT
    key,
    created_date,
    total_duration,
    active_duration,
    num_of_apps,
    (total_duration - active_duration) AS idle_time
FROM jira_data
ORDER BY total_duration DESC
LIMIT 10;
SELECT
    num_of_apps AS platforms_covered,
    COUNT(*) AS deployment_count,
    ROUND(AVG(total_duration), 1) AS avg_total_duration
FROM jira_data
GROUP BY num_of_apps
ORDER BY num_of_apps ASC;
SELECT
    COUNT(*) AS complex_deployments
FROM jira_data
WHERE design_changes > 0
  AND config_changes > 0
  AND store_changes > 0; i have them all in one page
