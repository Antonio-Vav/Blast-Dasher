
CREATE DATABASE IF NOT EXISTS blast_dasher_db;
USE blast_dasher_db;

-- Create the USER table first.
CREATE TABLE IF NOT EXISTS `USER` (
    UserID INT NOT NULL AUTO_INCREMENT,
    Username VARCHAR(50) NOT NULL,
    Email VARCHAR(255) NOT NULL,
    `Password` VARCHAR(255) NOT NULL,
    DateCreated DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT pk_user PRIMARY KEY (UserID),
    CONSTRAINT uq_user_username UNIQUE (Username),
    CONSTRAINT uq_user_email UNIQUE (Email),

    CONSTRAINT chk_user_username_not_empty
        CHECK (CHAR_LENGTH(TRIM(Username)) > 0),

    CONSTRAINT chk_user_email_not_empty
        CHECK (CHAR_LENGTH(TRIM(Email)) > 0)
) ENGINE=InnoDB;

-- Create the related Highscore table second.
CREATE TABLE IF NOT EXISTS Highscore (
    HighscoreID INT NOT NULL AUTO_INCREMENT,
    HighScoreValue INT NOT NULL,
    SurvivalTime INT NOT NULL,
    DateAchieved DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    UserID INT NOT NULL,

    CONSTRAINT pk_highscore PRIMARY KEY (HighscoreID),
    CONSTRAINT uq_highscore_user UNIQUE (UserID),

    CONSTRAINT chk_highscore_nonnegative
        CHECK (HighScoreValue >= 0),

    CONSTRAINT chk_survival_time_nonnegative
        CHECK (SurvivalTime >= 0),

    CONSTRAINT fk_highscore_user
        FOREIGN KEY (UserID)
        REFERENCES `USER` (UserID)
) ENGINE=InnoDB;
