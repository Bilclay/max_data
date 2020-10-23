SELECT ts_month, COUNT(DISTINCT u.userid)
FROM raw_data.user_session_channel u
JOIN (
    SELECT to_char(ts, 'YYYY-MM') as ts_month, sessionid
    FROM raw_data.session_timestamp       
) t
ON t.sessionid = u.sessionid 
GROUP BY 1
ORDER BY 1
