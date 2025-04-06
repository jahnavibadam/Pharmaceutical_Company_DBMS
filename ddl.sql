drop database project;
create database project;
\c project

CREATE TABLE Patient
(
  Patient_ID INT NOT NULL,
  Patient_Name VARCHAR(30) NOT NULL,
  Patient_Email VARCHAR(50) NOT NULL,
  Patient_Age INT NOT NULL,
  Patient_Gender CHAR(1) NOT NULL,
  Patient_Phone INT NOT NULL,
  Patient_Address VARCHAR(50) NOT NULL,
  PRIMARY KEY (Patient_ID)
);

CREATE TABLE Pharmacy
(
  Store_ID INT NOT NULL,
  Store_Location VARCHAR(50) NOT NULL,
  Store_Phone INT NOT NULL,
  Store_Email VARCHAR(50) NOT NULL,
  PRIMARY KEY (Store_ID)
);

CREATE TABLE Drug
(
  Drug_ID INT NOT NULL,
  Drug_Name VARCHAR(30) NOT NULL,
  Manufacturer VARCHAR(30) NOT NULL,
  Composition TEXT NOT NULL,
  PRIMARY KEY (Drug_ID)
);

CREATE TABLE Pharmaceutical_Company
(
  Company_ID INT NOT NULL,
  Company_Name VARCHAR(50) NOT NULL,
  Company_Location VARCHAR(50) NOT NULL,
  Company_Phone INT NOT NULL,
  PRIMARY KEY (Company_ID)
);

CREATE TABLE Buys_From
(
  Patient_ID INT NOT NULL,
  Store_ID INT NOT NULL,
  Drug_ID INT NOT NULL,
  Price FLOAT NOT NULL Default 0,
  PRIMARY KEY (Patient_ID, Store_ID, Drug_ID),
  FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID),
  FOREIGN KEY (Store_ID) REFERENCES Pharmacy(Store_ID),
  FOREIGN KEY (Drug_ID) REFERENCES Drug(Drug_ID)
);

CREATE TABLE Sells
(
  Selling_Price FLOAT NOT NULL,
  Store_ID INT NOT NULL,
  Drug_ID INT NOT NULL,
  Stock INT,
  PRIMARY KEY (Store_ID, Drug_ID),
  FOREIGN KEY (Store_ID) REFERENCES Pharmacy(Store_ID),
  FOREIGN KEY (Drug_ID) REFERENCES Drug(Drug_ID)
);

CREATE TABLE Manufactures
(
  Cost_Price FLOAT NOT NULL,
  Drug_ID INT NOT NULL,
  Company_ID INT NOT NULL,
  PRIMARY KEY (Drug_ID, Company_ID),
  FOREIGN KEY (Drug_ID) REFERENCES Drug(Drug_ID),
  FOREIGN KEY (Company_ID) REFERENCES Pharmaceutical_Company(Company_ID)
);

CREATE TABLE Supplies
(
  Drug_ID INT NOT NULL,
  Company_ID INT NOT NULL,
  Store_ID INT NOT NULL,
  PRIMARY KEY (Company_ID, Store_ID),
  FOREIGN KEY (Company_ID) REFERENCES Pharmaceutical_Company(Company_ID),
  FOREIGN KEY (Store_ID) REFERENCES Pharmacy(Store_ID)
);

CREATE TABLE Employee
(
  Emp_ID INT NOT NULL,
  Emp_Name VARCHAR(50) NOT NULL,
  Emp_Gender CHAR(1) NOT NULL,
  Emp_Address VARCHAR(50) NOT NULL,
  Emp_Phone INT NOT NULL,
  Emp_Salary INT NOT NULL,
  Emp_DOB DATE NOT NULL,
  Store_ID INT NOT NULL,
  PRIMARY KEY (Emp_ID),
  FOREIGN KEY (Store_ID) REFERENCES Pharmacy(Store_ID)
);

\i 'D:\\COLLEGE\\DBMS_Minors\\Mini_Project\\trigger.sql'
\i 'D:\\COLLEGE\\DBMS_Minors\\Mini_Project\\insert.sql'