CREATE DATABASE IF NOT EXISTS sas_eleven;
USE sas_eleven;

-- Admin Table
CREATE TABLE `tbladmin` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `emailAddress` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`Id`)
);

INSERT INTO `tbladmin` (`firstName`, `lastName`, `emailAddress`, `password`) VALUES
('Super', 'Admin', 'super@admin', 'admin'),
('Admin', 'SAS Six', 'admin@eleven', 'admin');

-- Class Table
CREATE TABLE `tblclass` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `className` varchar(255) NOT NULL,
  PRIMARY KEY (`Id`)
);

INSERT INTO `tblclass` (`className`) VALUES ('6');

-- Class Teacher Table
CREATE TABLE `tblclassteacher` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `emailAddress` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phoneNo` varchar(50) NOT NULL,
  `classId` varchar(10) NOT NULL,
  `dateCreated` varchar(50) NOT NULL,
  PRIMARY KEY (`Id`)
);

INSERT INTO `tblclassteacher` (`firstName`, `lastName`, `emailAddress`, `password`, `phoneNo`, `classId`, `dateCreated`) VALUES
('Amit', 'Sharma', 'amit@eleven', 'pass123', '9876543210', '6', '2024-11-02');

-- Student Table
CREATE TABLE `tblstudents` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `admissionNumber` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `classId` varchar(10) NOT NULL,
  `dateCreated` varchar(50) NOT NULL,
  PRIMARY KEY (`Id`)
);

INSERT INTO `tblstudents` (`firstName`, `lastName`, `admissionNumber`, `password`, `classId`, `dateCreated`) VALUES
('Rohan', 'Mehta', '20240001', '12345', '6', '2024-11-02'),
('Priya', 'Verma', '20240002', '12345', '6', '2024-11-02'),
('Aarav', 'Sharma', '20240003', '12345', '6', '2024-11-02'),
('Sneha', 'Gupta', '20240004', '12345', '6', '2024-11-02'),
('Karthik', 'Iyer', '20240005', '12345', '6', '2024-11-02'),
('Ananya', 'Singh', '20240006', '12345', '6', '2024-11-02'),
('Vikram', 'Joshi', '20240007', '12345', '6', '2024-11-02'),
('Tanvi', 'Chopra', '20240008', '12345', '6', '2024-11-02'),
('Siddharth', 'Kapoor', '20240009', '12345', '6', '2024-11-02'),
('Neha', 'Bansal', '20240010', '12345', '6', '2024-11-02'),
('Manish', 'Rao', '20240011', '12345', '6', '2024-11-02'),
('Riya', 'Malhotra', '20240012', '12345', '6', '2024-11-02'),
('Arjun', 'Nair', '20240013', '12345', '6', '2024-11-02'),
('Pooja', 'Das', '20240014', '12345', '6', '2024-11-02'),
('Harsh', 'Patel', '20240015', '12345', '6', '2024-11-02'),
('Ishita', 'Saxena', '20240016', '12345', '6', '2024-11-02'),
('Kabir', 'Chatterjee', '20240017', '12345', '6', '2024-11-02'),
('Swati', 'Mishra', '20240018', '12345', '6', '2024-11-02'),
('Rahul', 'Tiwari', '20240019', '12345', '6', '2024-11-02'),
('Nidhi', 'Agarwal', '20240020', '12345', '6', '2024-11-02');
