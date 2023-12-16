show databases;
use mindanaoproject;

-- 1. CRUD (Read)
SELECT UserID FROM User WHERE 'FirstName' = 'Juancho';
SELECT * FROM Review WHERE UserID = 1;

-- 2. Inner Join
SELECT LastName, ReviewType, Rating FROM User
 JOIN Review ON Review.UserID = User.UserID;

-- 3.
SELECT FirstName, LastName, CommentType, CommentText FROM User
 JOIN Comment ON Comment.UserID = User.UserID;
 
 -- 4. Inner Join With Group By
 SELECT 
    FirstName, LastName, AVG(Rating) AS 'Average Rate'
FROM
    User
        JOIN
    Review ON Review.UserID = User.UserID
GROUP BY FirstName , LastName;

-- 5. Left Join (Admin: Sorting data to see who hasn't commented yet)
SELECT FirstName, LastName, CommentType, CommentText FROM User
 LEFT JOIN Comment ON Comment.UserID = User.UserID;
 
  -- 6. Left Join With Group By (Admin: Replacing NULL with 0)
SELECT FirstName, LastName, IFNULL(CommentType, 0) AS Category, IFNULL(CommentText, '0') AS 'Comment'
FROM User
LEFT JOIN Comment ON User.UserID = Comment.UserID;

-- 7. Many to Many Join
-- Combing TV Episodes & Ratings
SELECT * FROM TVEpisode
JOIN Review ON TVEpisode.EpisodeID = Review.EpisodeID;

-- 8. Score With The Title
SELECT 
    EpisodeTitle, Rating
FROM
    TVEpisode
        JOIN
    Review ON TVEpisode.EpisodeID = Review.EpisodeID;
    
-- 9. Average Sorted
SELECT 
    EpisodeTitle, ROUND(AVG(Rating), 2) AS Avg_Rating
FROM
    TVEpisode JOIN Review ON TVEpisode.EpisodeID = Review.EpisodeID
GROUP BY EpisodeTitle
ORDER BY Avg_Rating DESC;

-- 10. Selecting Unreviewed Characters (LEFT JOIN)
SELECT 
	Name AS Unreviewed_Character
FROM
    `Character`
        LEFT JOIN
    Comment ON `Character`.CharacterID  = Comment.CharacterID
WHERE
    CommentText IS NULL;
 
 -- 11. Selecting Unreviewed Characters (RIGHT JOIN)
SELECT 
     Name AS Unreviewed_Character
FROM
    Comment
        RIGHT JOIN
    `Character` ON `Character`.CharacterID  = Comment.CharacterID
WHERE 
	CommentText IS NULL;
 
 
-- 12. USING IF (Analyzing Users if Active/Not Based on Reviews)
SELECT 
    FirstName,
    LastName,
    COUNT(Rating) AS Count,
    IFNULL(MIN(rating), 0) AS Min,
    IFNULL(MAX(rating), 0) AS Max,
    ROUND(IFNULL(AVG(rating), 0), 2) AS Average,
    IF(COUNT(rating) > 0,
        'ACTIVE',
        'INACTIVE') AS status
FROM
    User
        LEFT JOIN
    Review ON User.UserID = Review.UserID
GROUP BY FirstName , LastName;


 
 -- 13. Selecting Episodes and Rating from User (Whole Name)
SELECT 
    EpisodeTitle,
    Rating,
    CONCAT(FirstName, ' ', LastName) AS reviewer
FROM
    User
        INNER JOIN
    Review ON Review.UserID = User.UserID
        INNER JOIN
    TVEpisode ON Review.EpisodeID = TVEpisode.EpisodeID;