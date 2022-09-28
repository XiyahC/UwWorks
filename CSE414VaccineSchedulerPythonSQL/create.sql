CREATE TABLE Caregivers (
    Username varchar(255) PRIMARY KEY,
    Salt BINARY(16),
    Hash BINARY(16)
)

CREATE TABLE Patients (
    pUsername varchar(255) PRIMARY KEY,
    Salt BINARY(16),
    Hash BINARY(16)
)

CREATE TABLE Vaccines (
    Name varchar(255) PRIMARY KEY,
    Doses intA
)

CREATE TABLE Availabilities (
    Time date,
    cUsername varchar(255) REFERENCES Caregivers(Username),
    PRIMARY KEY (Time, cUsername)
)

CREATE TABLE Reservations (
    ID int IDENTITY(1,1) PRIMARY KEY,
    cUsername varchar(255),
    pUsername varchar(255) REFERENCES Patients(pUsername),
    vName varchar(255) REFERENCES Vaccines(Name),
    aTime date,
    FOREIGN KEY(aTime, cUsername) REFERENCES Availabilities(Time, cUsername)
)
