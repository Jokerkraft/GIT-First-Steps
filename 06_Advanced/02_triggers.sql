CREATE TABLE `hello_mysql`.`email_history` (
  `email_historyid` INT NOT NULL AUTO_INCREMENT,
  `user_id` INT NOT NULL,
  `email` VARCHAR(100) NULL,
  PRIMARY KEY (`email_historyid`),
  UNIQUE INDEX `email_historyid_UNIQUE` (`email_historyid` ASC) VISIBLE);

  delimiter |

CREATE TRIGGER tg_email 
AFTER UPDATE ON users
FOR EACH ROW
BEGIN
	IF OLD.email <> NEW.email THEN
		INSERT INTO email_history(user_Id, email)
        VALUES (OLD.user_id, OLD.email);
	END IF;
END;

|

delimiter ;

UPDATE users SET email = 'oskar2016cch@gmail.com' WHERE user_id = 1

DROP TRIGGER tg_email
