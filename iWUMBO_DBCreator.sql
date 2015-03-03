use mgautam; -- TODO Change this to correct schema 


-- Create Table Users
DROP TABLE IF EXISTS Users;
CREATE TABLE Users (
UserID INT PRIMARY KEY AUTO_INCREMENT,
Username VARCHAR(20) UNIQUE,
Rating FLOAT,
ProfilePicture VARCHAR(100),
Password CHAR(25),
Email VARCHAR(100) UNIQUE NOT NULL,
PreferredGym VARCHAR (50));

-- Create Event
DROP TABLE IF EXISTS Events;
CREATE TABLE Events (
EventID INT PRIMARY KEY AUTO_INCREMENT,
Creator INT REFERENCES Users(UserID),
Partner INT DEFAULT NULL REFERENCES Users(UserID),
EventLocation VARCHAR(100) NOT NULL,
EventTime TimeStamp NOT NULL,
Active BOOL DEFAULT TRUE);


-- Select Statements
Select * FROM Events;
SELECT * FROM Users;




