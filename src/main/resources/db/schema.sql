USE `dicegame`;

DROP TABLE IF EXISTS PLAYER;

CREATE TABLE IF NOT EXISTS PLAYER (
  `player_id` BIGINT PRIMARY KEY AUTO_INCREMENT,
  `player_name` VARCHAR(45),
  `password` VARCHAR(45),
  `win_rate` DOUBLE,
  `registration_date` TIMESTAMP DEFAULT CURRENT_TIMESTAMP);

DROP TABLE IF EXISTS DICEROLL;

CREATE TABLE IF NOT EXISTS DICEROLL (
  `diceRoll_id` BIGINT PRIMARY KEY AUTO_INCREMENT,
  `d1` INT(55),
  `d2` INT(55),
  `result` VARCHAR(45),
  `player_id` BIGINT NOT NULL);
  
ALTER TABLE DICEROLL
ADD constraint FK_PLAYER_ID  FOREIGN KEY (player_id) 
      REFERENCES PLAYER (player_id);
