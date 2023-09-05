Julia just finished conducting a coding contest, and she needs your help assembling the leaderboard! 
Write a query to print the respective hacker_id and name of hackers who achieved full scores for more than one challenge. 
Order your output in descending order by the total number of challenges in which the hacker earned a full score. 
If more than one hacker received full scores in same number of challenges, then sort them by ascending hacker_id.

SELECT s.hacker_id, h.name FROM Submissions s
JOIN Hackers h ON h.hacker_id = s.hacker_id
JOIN Challenges c ON c.challenge_id = s.challenge_id
JOIN Difficulty d ON c.difficulty_level = d.difficulty_level
WHERE s.score = d.score
GROUP BY hacker_id, h.name
        HAVING(COUNT(h.name)>1)
ORDER BY COUNT(h.name) DESC, s.hacker_id ASC ;