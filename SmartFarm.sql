DROP DATABASE SmartFarm;
CREATE DATABASE SmartFarm;

USE SmartFarm;

CREATE TABLE User(
    UserID VARCHAR(50) NOT NULL,
    Name VARCHAR(100),
    Password VARCHAR(100),
    CONSTRAINT PRIMARY KEY(UserID)
);

CREATE TABLE Farm(
    FarmID VARCHAR(50) NOT NULL,
    UserID VARCHAR(50) NOT NULL,
    Description VARCHAR(100),
    CONSTRAINT PRIMARY KEY(FarmID),
    CONSTRAINT FOREIGN KEY(UserID) REFERENCES User(UserID)
	ON UPDATE CasCADE ON DELETE CasCADE
);

CREATE TABLE AverageDailyDetails(
	DateSaved DATE NOT NULL,
	AvgTemp INT(5) NOT NULL,
	AvgHum INT(30) NOT NULL,
	WaterUsage DECIMAL(10,2),
	CONSTRAINT PRIMARY KEY (DateSaved)
);

CREATE TABLE TodayWeatherDetail(
	TimeSaved TIME NOT NULL,
	DateSaved DATE NOT NULL,
	FarmID VARCHAR(30) NOT NULL,
	Temperature INT(5),
    Humidity INT(5),
	CONSTRAINT PRIMARY KEY (TimeSaved),
    CONSTRAINT FOREIGN KEY(DateSaved) REFERENCES AverageDailyDetails(DateSaved)
	ON UPDATE CasCADE ON DELETE CasCADE,
    CONSTRAINT FOREIGN KEY(FarmID) REFERENCES Farm(FarmID)
	ON UPDATE CasCADE ON DELETE CasCADE
);