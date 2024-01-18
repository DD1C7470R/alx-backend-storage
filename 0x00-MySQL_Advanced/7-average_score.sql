-- SQL script that creates a stored procedure ComputeAverageScoreForUser that computes
DROP PROCEDURE IF EXISTS ComputeAverageScoreForUser;

DELIMITER $$

CREATE PROCEDURE ComputeAverageScoreForUser (IN user_id CHAR(255))
BEGIN
	SET @score = (SELECT AVG(score) FROM corrections WHERE corrections.user_id = user_id GROUP BY user_id);
    UPDATE users SET users.average_score = @score WHERE users.id = user_id;
END;
$$

DELIMITER ;
