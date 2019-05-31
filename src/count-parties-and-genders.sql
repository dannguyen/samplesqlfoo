SELECT
    gender
    , party
    , COUNT(1) as count
FROM legislator
WHERE
    birthday > '1950'
GROUP BY
    gender, party
ORDER BY
    party, gender;
