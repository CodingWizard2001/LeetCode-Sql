-- Table: Person

-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | id          | int     |
-- | email       | varchar |
-- +-------------+---------+

-- id is the primary key (column with unique values) for this table. Each row of this table contains an email. The emails will not contain uppercase letters.
 

-- Write a solution to report all the duplicate emails. Note that it's guaranteed that the email field is not NULL. Return the result table in any order.




-- Approach 1
-- SELECT DISTINCT P1.email AS Email
-- FROM Person P1,Person P2
-- WHERE P1.id <> P2.id AND P1.email = P2.email;


-- Approach 2
SELECT email AS Email
FROM Person 
GROUP BY email
HAVING COUNT(email) > 1;