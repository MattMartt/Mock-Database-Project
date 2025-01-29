CREATE TABLE Participant(
participantID CHAR(10) NOT NULL,
email VARCHAR (40) NOT NULL,
fname VARCHAR(25) NOT NULL,
lname VARCHAR(25) NOT NULL,
affiliation VARCHAR(25) NOT NULL,
phoneNum CHAR (10) NOT NULL,
PRIMARY KEY(participantID));



CREATE TABLE Workshop(
workshopID CHAR(10) NOT NULL,
WS_Name VARCHAR (50) NOT NULL,
WS_Date DATE NOT NULL, 
startTime TIME NOT NULL,
endTime TIME NOT NULL,
WS_Room VARCHAR(40) NOT NULL,
part_ID CHAR (10) NOT NULL,
PRIMARY KEY (workshopID),
FOREIGN KEY (part_ID) REFERENCES Participant(participantID));


CREATE TABLE ws_topic(
ws_topic VARCHAR(50) NOT NULL,
ws_Id CHAR(10) NOT NULL ,
FOREIGN KEY (ws_Id) REFERENCES Workshop(workshopID),
PRIMARY KEY (ws_Id, ws_topic));



CREATE TABLE Committee(
committeeID CHAR (10) NOT NULL,
committeeName VARCHAR(40) NOT NULL,
ws_Id CHAR(10) NOT NULL,
FOREIGN KEY (ws_Id) REFERENCES Workshop(workshopID),
PRIMARY KEY(committeeID));


CREATE TABLE Papers(
paperID CHAR (10) NOT NULL, 
year CHAR (4) NOT NULL,
title VARCHAR (40) NOT NULL,
partID CHAR (10) NOT NULL,
sessionID CHAR (10) NOT NULL,
PRIMARY KEY(paperID));

ALTER TABLE Papers
ADD FOREIGN KEY(partID) REFERENCES Participant(participantID),
ADD FOREIGN KEY(sessionID) REFERENCES Session(sessionID);

CREATE TABLE writes(
ppr_Id CHAR(10) NOT NULL,
part_Id CHAR(10) NOT NULL,
FOREIGN KEY(part_Id) REFERENCES Participant(participantId),
PRIMARY KEY(ppr_Id, part_Id));

CREATE TABLE reviews(
ppr_Id CHAR(10) NOT NULL,
part_Id CHAR(10) NOT NULL,
FOREIGN KEY(part_Id) REFERENCES Participant(participantId),
PRIMARY KEY(ppr_Id, part_Id));


CREATE TABLE Session(
sessionID CHAR (10) NOT NULL,
sessionType VARCHAR (20) NOT NULL,
sessionDATE DATE NOT NULL,
sessionRoom VARCHAR (30) NOT NULL,
startTime TIME NOT NULL,
endTime TIME NOT NULL,
sponsID CHAR (10) NOT NULL,
wkspID CHAR (10) NOT NULL,
PRIMARY KEY(sessionID));

ALTER TABLE Session
ADD FOREIGN KEY(sponsID) REFERENCES Sponsor(sponsorID),
ADD FOREIGN KEY(wkspID) REFERENCES Workshop(workshopID);

CREATE TABLE Award(
awardID CHAR (10) NOT NULL,
awardTitle VARCHAR (30) NOT NULL, 
paperName VARCHAR (40) NOT NULL,
PRIMARY KEY(awardID));

CREATE TABLE awarded_paper(
aw_Id CHAR(10) NOT NULL,
ppr_Id CHAR(10) NOT NULL,
FOREIGN KEY(aw_Id) REFERENCES Award(awardID),
FOREIGN KEY(ppr_Id) REFERENCES Papers(paperID),
PRIMARY KEY(aw_Id, ppr_Id));

CREATE TABLE Sponsor(
sponsorID CHAR (10) NOT NULL,
minDonation FLOAT NOT NULL,
sponsorLvl CHAR (10) NOT NULL,
companyName VARCHAR (30) NOT NULL,
partID CHAR (10) NOT NULL,
sessionID CHAR (10) NOT NULL, 
PRIMARY KEY(sponsorID),
FOREIGN KEY(partID) REFERENCES Participant(participantID),
FOREIGN KEY(sessionID) REFERENCES Session(sessionID));

CREATE TABLE Travel_Grant(
grantId CHAR (10) NOT NULL,
funder VARCHAR (40) NOT NULL,
eligibleApplicant VARCHAR (40) NOT NULL,
grantAmount FLOAT NOT NULL,
expenses_Covered FLOAT NOT NULL,
PRIMARY KEY(grantID));

CREATE TABLE Registrant(
registrantID CHAR (10) NOT NULL,
datePaid DATE NOT NULL,
address VARCHAR (40) NOT NULL,
reg_amount VARCHAR(30) NOT NULL,
reg_type VARCHAR (30) NOT NULL,
partID CHAR(10) NOT NULL,
grt_Id CHAR(10) NOT NULL,
PRIMARY KEY(registrantID), 
FOREIGN KEY(partID) REFERENCES Participant(participantID),
FOREIGN KEY(grt_Id) REFERENCES Travel_Grant(grantID));
