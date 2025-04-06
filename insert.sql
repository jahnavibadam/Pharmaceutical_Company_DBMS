COPY DRUG FROM 'D:\\COLLEGE\\DBMS_Minors\\Mini_Project\\drug.txt' (DELIMITER('|'));

INSERT into PHARMACY values(1,'St. Paul MN',18883647,'customercare@abcpharma1.com');
INSERT into PHARMACY values(2,'Hauppauge NY',66319523,'customercare@abcpharma2.com');
INSERT into PHARMACY values(3,'9488 Trail Road Hoschton GA',17606684,'customercare@abcpharma3.com');
INSERT into PHARMACY values(4,'Abbott Park Illinois',22466766,'customercare@abcpharma4.com');
INSERT into PHARMACY values(5,'1N Waukegan Road NC Illinois',86006339,'customercare@abcpharma5.com');
INSERT into PHARMACY values(6,'11158 Air Park Rd Ashland',85546615,'customercare@abcpharma6.com');

INSERT into EMPLOYEE values(1,'Jennifer H Watkins','F','450 Stone MN',18976334,1350,'1985-11-10',1);
INSERT into EMPLOYEE values(2,'Robert L Pearson','M','731 Fondren NY',63126781,1300,'1978-2-10',2);
INSERT into EMPLOYEE values(3,'Ramesh Narayan','M','638 voss Hoschton GA',17087897,1350,'1988-5-5',3);
INSERT into EMPLOYEE values(4,'Muskan Amin','F','3321 Castle Soring Illinois',22456765,1250,'1994-08-04',4);
INSERT into EMPLOYEE values(5,'Neil Harris','M','291 Berry Bellaire Illinois',81782763,1300,'1984-11-09',5);
INSERT into EMPLOYEE values(6,'Paul Monatana','M','975 Fire Oak Humble Ashland',87667387,1350,'1969-03-02',6);

INSERT into PHARMACEUTICAL_COMPANY values(100,'Aqua Pharmaceuticals LLC','2624 Lillehsammer Norway',47612470);
INSERT into PHARMACEUTICAL_COMPANY values(108,'MERCK and Co.','Readington Township New Jersey',63167421);
INSERT into PHARMACEUTICAL_COMPANY values(654,'McNeil Consumer Products Co.','Fort Washington PA',21527389);
INSERT into PHARMACEUTICAL_COMPANY values(878,'Akorn Inc.','Lake Forest,Illinois',18009325);
INSERT into PHARMACEUTICAL_COMPANY values(775,'Wyeth Pharmaceuticals','Forestville Philadelphia PA',18007656);
INSERT into PHARMACEUTICAL_COMPANY values(123,'Pfizer Pharmaceuticals','235 East 42nd Street NY',18008793);

INSERT into PATIENT values(200,'Alicia Mendes','aliciam@gmail.com',25,'F',87576951,'St. George MN');
INSERT into PATIENT values(201,'Sean Peters','speters2@gmail.com',47,'M',76752431,'Ginne Pier NY');
INSERT into PATIENT values(202,'Scott Evans','sevans34@gmail.com',35,'M',97527976,'9488 Trail Road Hoschton GA');
INSERT into PATIENT values(203,'Millie K Bennet','mkb143@gmail.com',18,'F',93689745,'Grand Pret Illinois');
INSERT into PATIENT values(204,'Kylie Gomez','kylgomez@gmail.com',28,'F',87123456,'1N Waukegan Road NC Illinois');
INSERT into PATIENT values(205,'John Waters','johnwaters@gmail.com',34,'M',76324518,'11158 Air Park Rd Ashland');

INSERT into MANUFACTURES values(80,001,100);
INSERT into MANUFACTURES values(16.50,002,108);
INSERT into MANUFACTURES values(4.99,003,654);
INSERT into MANUFACTURES values(7.99,004,878);
INSERT into MANUFACTURES values(9.65,005,775);
INSERT into MANUFACTURES values(12.75,006,123);

INSERT into SELLS values(109,1,001,5);
INSERT into SELLS values(20,1,002,4);
INSERT into SELLS values(6.99,1,003,8);
INSERT into SELLS values(15,1,004,2);
INSERT into SELLS values(23,1,005,1);
INSERT into SELLS values(42,1,006,3);

INSERT into SELLS values(120,2,001,4);
INSERT into SELLS values(15,2,002,4);
INSERT into SELLS values(5,2,003,6);
INSERT into SELLS values(20,2,004,7);
INSERT into SELLS values(20,2,005,9);
INSERT into SELLS values(50,2,006,2);

INSERT into SELLS values(125,3,001,3);
INSERT into SELLS values(16,3,002,2);
INSERT into SELLS values(10,3,003,10);
INSERT into SELLS values(25,3,004,15);
INSERT into SELLS values(30,3,005,3);
INSERT into SELLS values(50,3,006,6);

INSERT into SELLS values(109,4,001,7);
INSERT into SELLS values(21,4,002,3);
INSERT into SELLS values(20,4,003,4);
INSERT into SELLS values(10,4,004,8);
INSERT into SELLS values(25,4,005,15);
INSERT into SELLS values(60,4,006,12);

INSERT into SELLS values(130,5,001,0);
INSERT into SELLS values(24.45,5,002,1);
INSERT into SELLS values(23,5,003,3);
INSERT into SELLS values(15.60,5,004,5);
INSERT into SELLS values(40,5,005,4);
INSERT into SELLS values(70,5,006,3);

INSERT into SELLS values(109,6,001,2);
INSERT into SELLS values(30,6,002,5);
INSERT into SELLS values(6.99,6,003,7);
INSERT into SELLS values(34,6,004,20);
INSERT into SELLS values(9.65,6,005,2);
INSERT into SELLS values(45,6,006,1);

INSERT into SUPPLIES values(001,100,1);
INSERT into SUPPLIES values(001,100,4);
INSERT into SUPPLIES values(001,100,6);
INSERT into SUPPLIES values(002,108,1);
INSERT into SUPPLIES values(002,108,3);
INSERT into SUPPLIES values(003,654,1);
INSERT into SUPPLIES values(003,654,2);
INSERT into SUPPLIES values(003,654,4);
INSERT into SUPPLIES values(003,654,6);
INSERT into SUPPLIES values(004,878,2);
INSERT into SUPPLIES values(004,878,5);
INSERT into SUPPLIES values(005,775,2);
INSERT into SUPPLIES values(005,775,4);
INSERT into SUPPLIES values(005,775,6);
INSERT into SUPPLIES values(006,123,3);
INSERT into SUPPLIES values(006,123,5);

INSERT into BUYS_FROM values(200,1,002);
INSERT into BUYS_FROM values(201,2,001);
INSERT into BUYS_FROM values(202,3,003);
INSERT into BUYS_FROM values(203,4,006);
INSERT into BUYS_FROM values(204,5,004);
INSERT into BUYS_FROM values(205,6,005);
