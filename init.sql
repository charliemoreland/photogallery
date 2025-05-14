-- Create a new database
CREATE DATABASE IF NOT EXISTS photo_gallery;

-- Switch to the newly created database
USE photo_gallery;

-- init.sql
-- DROP existing tables (reverse dependency order)
DROP TABLE IF EXISTS `Community`;
DROP TABLE IF EXISTS `Services`;
DROP TABLE IF EXISTS `Jobs`;
DROP TABLE IF EXISTS `Housing`;
DROP TABLE IF EXISTS `ForSale`;
DROP TABLE IF EXISTS `users`;

-- Create Community
CREATE TABLE `Community` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `Type` varchar(50) NULL,
  `Title` VARCHAR(100) NULL,
  `Date` DATE NULL,
  `Location` VARCHAR(150) NULL,
  `AgeRange` VARCHAR(50) NULL,
  `Price` DECIMAL(10,2) NULL,
  `Description` TEXT NULL,
  `Organizer` VARCHAR(100) NULL,
  `ContactInfo` VARCHAR(50) NULL,
  `City` VARCHAR(100) NULL,
  `PhoneNumber` VARCHAR(20) NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Create ForSale
CREATE TABLE `ForSale` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `Type` varchar(50) NULL,
  `YearBuilt` INT NULL,
  `MakeModel` VARCHAR(100) NULL,
  `Color` VARCHAR(50) NULL,
  `SubType` VARCHAR(50) NULL,
  `ItemCondition` VARCHAR(50) NULL,
  `Price` DECIMAL(10,2) NULL,
  `Description` TEXT NULL,
  `City` VARCHAR(100) NULL,
  `PhoneNumber` VARCHAR(20) NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Create Housing
CREATE TABLE `Housing` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `Type` varchar(50) NULL,
  `YearBuilt` INT NULL,
  `MakeModel` VARCHAR(100) NULL,
  `Color` VARCHAR(50) NULL,
  `SubType` VARCHAR(50) NULL,
  `ItemCondition` VARCHAR(50) NULL,
  `Price` DECIMAL(10,2) NULL,
  `Description` TEXT NULL,
  `City` VARCHAR(100) NULL,
  `PhoneNumber` VARCHAR(20) NULL,
  `Bedrooms` INT NULL,
  `Bathrooms` INT NULL,
  `SquareFeet` INT NULL,
  `LotSize` DECIMAL(10,2) NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Create Jobs
CREATE TABLE `Jobs` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `Type` varchar(50) NULL,
  `YearStarted` INT NULL,
  `Title` VARCHAR(100) NULL,
  `SubType` VARCHAR(50) NULL,
  `ItemCondition` VARCHAR(50) NULL,
  `Price` DECIMAL(10,2) NULL,
  `Description` TEXT NULL,
  `City` VARCHAR(100) NULL,
  `PhoneNumber` VARCHAR(20) NULL,
  `Availability` VARCHAR(100) NULL,
  `ExperienceYears` INT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Create Services
CREATE TABLE `Services` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `Type` varchar(50) NULL,
  `YearStarted` INT NULL,
  `MakeModel` VARCHAR(100) NULL,
  `Color` VARCHAR(50) NULL,
  `SubType` VARCHAR(50) NULL,
  `ItemCondition` VARCHAR(50) NULL,
  `Price` DECIMAL(10,2) NULL,
  `Description` TEXT NULL,
  `City` VARCHAR(100) NULL,
  `PhoneNumber` VARCHAR(20) NULL,
  `Availability` VARCHAR(100) NULL,
  `ExperienceYears` INT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 7) Create Users
CREATE TABLE `users` (
  `user_id`   INT            NOT NULL AUTO_INCREMENT,
  `username`  VARCHAR(50)    NOT NULL,
  `password`  VARCHAR(255)   NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `uq_username` (`username`)
) ENGINE=InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;

-- 8) Seed a test user
INSERT INTO `users` (`user_id`, `username`, `password`)
VALUES (1, 'test', 'test');


-- ─────────────────────────────────────────────────────────────
--  Community (3× Workshop, Festival, Cleanup, Fundraiser, Children)
-- ─────────────────────────────────────────────────────────────
INSERT INTO `Community` (`Type`,`Title`,`Date`,`Location`,`AgeRange`,`Price`,`Description`,`Organizer`,`ContactInfo`) VALUES
('Workshop','Pottery Basics','2025-06-10','Art Center','All','15.00','Hands-on clay wheel experience.','Jane Doe','jane@example.com');

INSERT INTO `Community` (`Type`,`Title`,`Date`,`Location`,`AgeRange`,`Price`,`Description`,`Organizer`,`ContactInfo`) VALUES
('Workshop','Intro to Photography','2025-07-02','Community Hall','Teens','10.00','Learn DSLR fundamentals.','John Smith','(555)123-4567');

INSERT INTO `Community` (`Type`,`Title`,`Date`,`Location`,`AgeRange`,`Price`,`Description`,`Organizer`,`ContactInfo`) VALUES
('Workshop','Beginner Woodworking','2025-08-15','Woodshop','Adults','20.00','Build a small box.','Sara Lee','sara@crafts.org');

INSERT INTO `Community` (`Type`,`Title`,`Date`,`Location`,`AgeRange`,`Price`,`Description`,`Organizer`,`ContactInfo`) VALUES
('Festival','Summer Street Fair','2025-06-21','Main Street','All','0.00','Vendors, music, food trucks.','City Council','info@city.gov');

INSERT INTO `Community` (`Type`,`Title`,`Date`,`Location`,`AgeRange`,`Price`,`Description`,`Organizer`,`ContactInfo`) VALUES
('Festival','Harvest Celebration','2025-09-30','Town Square','All','5.00','Pumpkin carving & live bands.','Chamber of Commerce','(555)987-6543');

INSERT INTO `Community` (`Type`,`Title`,`Date`,`Location`,`AgeRange`,`Price`,`Description`,`Organizer`,`ContactInfo`) VALUES
('Festival','Film Under the Stars','2025-07-18','Riverside Park','All','7.50','Outdoor movie night with snacks.','Park Dept.','park@parks.org');

INSERT INTO `Community` (`Type`,`Title`,`Date`,`Location`,`AgeRange`,`Price`,`Description`,`Organizer`,`ContactInfo`) VALUES
('Cleanup','Riverbank Cleanup','2025-05-25','East Bank','All','0.00','Help remove trash & debris.','GreenTeam','green@example.com');

INSERT INTO `Community` (`Type`,`Title`,`Date`,`Location`,`AgeRange`,`Price`,`Description`,`Organizer`,`ContactInfo`) VALUES
('Cleanup','Beach Volunteer Day','2025-06-12','Sunset Beach','All','0.00','Coastal cleanup event.','SeaSave','volunteer@seasave.org');

INSERT INTO `Community` (`Type`,`Title`,`Date`,`Location`,`AgeRange`,`Price`,`Description`,`Organizer`,`ContactInfo`) VALUES
('Cleanup','Neighborhood Park Tidy','2025-07-05','Oak Park','All','0.00','Bring gloves and water.','Neighbors United','contact@neighbors.net');

INSERT INTO `Community` (`Type`,`Title`,`Date`,`Location`,`AgeRange`,`Price`,`Description`,`Organizer`,`ContactInfo`) VALUES
('Fundraiser','Charity 5K Run','2025-05-30','City Stadium','All','25.00','Proceeds to local shelter.','RunForHope','run@charity.org');

INSERT INTO `Community` (`Type`,`Title`,`Date`,`Location`,`AgeRange`,`Price`,`Description`,`Organizer`,`ContactInfo`) VALUES
('Fundraiser','Art Auction','2025-08-08','Museum Gallery','Adults','50.00','Silent auction of local art.','Arts Council','arts@council.org');

INSERT INTO `Community` (`Type`,`Title`,`Date`,`Location`,`AgeRange`,`Price`,`Description`,`Organizer`,`ContactInfo`) VALUES
('Fundraiser','Bake Sale','2025-06-27','Community Center','All','0.00','Homemade treats for sale.','PTA','pta@example.com');

INSERT INTO `Community` (`Type`,`Title`,`Date`,`Location`,`AgeRange`,`Price`,`Description`,`Organizer`,`ContactInfo`) VALUES
('Children','Kids Coding Camp','2025-07-14','Tech Hub','8-12','100.00','Intro to Scratch.','Code4Kids','code@4kids.org');

INSERT INTO `Community` (`Type`,`Title`,`Date`,`Location`,`AgeRange`,`Price`,`Description`,`Organizer`,`ContactInfo`) VALUES
('Children','Storytime in the Park','2025-06-05','Elm Park','3-7','0.00','Outdoor story circle.','Library','story@library.org');

INSERT INTO `Community` (`Type`,`Title`,`Date`,`Location`,`AgeRange`,`Price`,`Description`,`Organizer`,`ContactInfo`) VALUES
('Children','Junior Gardening','2025-08-22','Plant Nursery','6-10','12.00','Pot and take home a plant.','Garden Club','garden@club.org');

-- ─────────────────────────────────────────────────────────────
--  ForSale (3× Boat, Car, Motorcycle, Book, Furniture)
-- ─────────────────────────────────────────────────────────────
INSERT INTO `ForSale` (`Type`,`YearBuilt`,`MakeModel`,`Color`,`SubType`,`ItemCondition`,`Price`,`Description`,`City`,`PhoneNumber`) VALUES
('Boat',2010,'Seafarer 20','White','Sailboat','Good','8000.00','20ft daysailer, needs new sails.','Marina City','(555)111-2222');

INSERT INTO `ForSale` (`Type`,`YearBuilt`,`MakeModel`,`Color`,`SubType`,`ItemCondition`,`Price`,`Description`,`City`,`PhoneNumber`) VALUES
('Boat',2018,'Bass Hunter','Blue','Fishing','Excellent','15000.00','Center console, 40hp motor.','Lakeside','(555)333-4444');

INSERT INTO `ForSale` (`Type`,`YearBuilt`,`MakeModel`,`Color`,`SubType`,`ItemCondition`,`Price`,`Description`,`City`,`PhoneNumber`) VALUES
('Boat',2005,'Wave Rider','Red','Jet Ski','Fair','3000.00','Runs but needs tune-up.','Oceanview','(555)555-6666');

INSERT INTO `ForSale` (`Type`,`YearBuilt`,`MakeModel`,`Color`,`SubType`,`ItemCondition`,`Price`,`Description`,`City`,`PhoneNumber`) VALUES
('Car',2012,'Toyota Camry','Silver','Sedan','Good','7500.00','120k miles, well-maintained.','Metro City','(555)777-8888');

INSERT INTO `ForSale` (`Type`,`YearBuilt`,`MakeModel`,`Color`,`SubType`,`ItemCondition`,`Price`,`Description`,`City`,`PhoneNumber`) VALUES
('Car',2020,'Honda Civic','Black','Coupe','Excellent','13500.00','Low miles, like new.','Uptown','(555)999-0000');

INSERT INTO `ForSale` (`Type`,`YearBuilt`,`MakeModel`,`Color`,`SubType`,`ItemCondition`,`Price`,`Description`,`City`,`PhoneNumber`) VALUES
('Car',2008,'Ford Focus','Blue','Hatchback','Fair','3200.00','Needs new brakes.','Downtown','(555)121-3434');

INSERT INTO `ForSale` (`Type`,`YearBuilt`,`MakeModel`,`Color`,`SubType`,`ItemCondition`,`Price`,`Description`,`City`,`PhoneNumber`) VALUES
('Motorcycle',2015,'Harley-Davidson Sportster','Black','Cruiser','Good','7000.00','Low miles, garage kept.','Riverside','(555)565-6767');

INSERT INTO `ForSale` (`Type`,`YearBuilt`,`MakeModel`,`Color`,`SubType`,`ItemCondition`,`Price`,`Description`,`City`,`PhoneNumber`) VALUES
('Motorcycle',2021,'Yamaha R3','Blue','Sport','Excellent','5500.00','Under warranty.','Highway Town','(555)787-8989');

INSERT INTO `ForSale` (`Type`,`YearBuilt`,`MakeModel`,`Color`,`SubType`,`ItemCondition`,`Price`,`Description`,`City`,`PhoneNumber`) VALUES
('Motorcycle',2003,'Suzuki Boulevard','Red','Cruiser','Fair','2500.00','Runs, but needs carb clean.','Eastside','(555)909-1010');

INSERT INTO `ForSale` (`Type`,`YearBuilt`,`MakeModel`,`Color`,`SubType`,`ItemCondition`,`Price`,`Description`,`City`,`PhoneNumber`) VALUES
('Book',0,'The Great Gatsby','N/A','Paperback','New','8.99','Classic novel.','Booktown','(555)212-1212');

INSERT INTO `ForSale` (`Type`,`YearBuilt`,`MakeModel`,`Color`,`SubType`,`ItemCondition`,`Price`,`Description`,`City`,`PhoneNumber`) VALUES
('Book',0,'Data Structures in Python','N/A','Hardcover','Like New','25.00','College textbook.','Uni City','(555)323-2323');

INSERT INTO `ForSale` (`Type`,`YearBuilt`,`MakeModel`,`Color`,`SubType`,`ItemCondition`,`Price`,`Description`,`City`,`PhoneNumber`) VALUES
('Book',0,'Cooking 101','N/A','Paperback','Used','5.50','Some notes inside.','Homeville','(555)434-3434');

INSERT INTO `ForSale` (`Type`,`YearBuilt`,`MakeModel`,`Color`,`SubType`,`ItemCondition`,`Price`,`Description`,`City`,`PhoneNumber`) VALUES
('Furniture',2019,'Ikea Billy Shelf','White','Bookshelf','Excellent','60.00','Assembled once.','Suburbia','(555)545-4545');

INSERT INTO `ForSale` (`Type`,`YearBuilt`,`MakeModel`,`Color`,`SubType`,`ItemCondition`,`Price`,`Description`,`City`,`PhoneNumber`) VALUES
('Furniture',2010,'Leather Sofa','Brown','Couch','Good','300.00','Minor wear on arms.','City Loft','(555)656-5656');

INSERT INTO `ForSale` (`Type`,`YearBuilt`,`MakeModel`,`Color`,`SubType`,`ItemCondition`,`Price`,`Description`,`City`,`PhoneNumber`) VALUES
('Furniture',2000,'Oak Dining Table','Natural','Table','Fair','120.00','Needs refinishing.','Old Town','(555)767-6767');

-- ─────────────────────────────────────────────────────────────
--  Housing (3× House, Condo, Apartment, Townhouse, Studio)
-- ─────────────────────────────────────────────────────────────
INSERT INTO `Housing` (`Type`,`YearBuilt`,`MakeModel`,`Color`,`SubType`,`ItemCondition`,`Price`,`Description`,`City`,`PhoneNumber`,`Bedrooms`,`Bathrooms`,`SquareFeet`,`LotSize`) VALUES
('House',1995,'N/A','Blue','Detached','Good','250000.00','3 bed, 2 bath, big yard.','Greenville','(555)101-2020',3,2,1800,0.50);

INSERT INTO `Housing` (`Type`,`YearBuilt`,`MakeModel`,`Color`,`SubType`,`ItemCondition`,`Price`,`Description`,`City`,`PhoneNumber`,`Bedrooms`,`Bathrooms`,`SquareFeet`,`LotSize`) VALUES
('House',2005,'N/A','Beige','Ranch','Excellent','320000.00','4 bed, 3 bath, modern kitchen.','Lakeview','(555)303-4040',4,3,2200,0.75);

INSERT INTO `Housing` (`Type`,`YearBuilt`,`MakeModel`,`Color`,`SubType`,`ItemCondition`,`Price`,`Description`,`City`,`PhoneNumber`,`Bedrooms`,`Bathrooms`,`SquareFeet`,`LotSize`) VALUES
('House',1980,'N/A','Yellow','Cottage','Fair','185000.00','2 bed, 1 bath, needs TLC.','Countryside','(555)505-6060',2,1,1200,0.30);

INSERT INTO `Housing` (`Type`,`YearBuilt`,`MakeModel`,`Color`,`SubType`,`ItemCondition`,`Price`,`Description`,`City`,`PhoneNumber`,`Bedrooms`,`Bathrooms`,`SquareFeet`,`LotSize`) VALUES
('Condo',2018,'N/A','Gray','High-rise','Excellent','200000.00','2 bed, 2 bath, city view.','Downtown','(555)707-8080',2,2,900,0.00);

INSERT INTO `Housing` (`Type`,`YearBuilt`,`MakeModel`,`Color`,`SubType`,`ItemCondition`,`Price`,`Description`,`City`,`PhoneNumber`,`Bedrooms`,`Bathrooms`,`SquareFeet`,`LotSize`) VALUES
('Condo',2012,'N/A','White','Loft','Good','175000.00','Open plan, 1 bed, 1 bath.','Midtown','(555)909-0001',1,1,750,0.00);

INSERT INTO `Housing` (`Type`,`YearBuilt`,`MakeModel`,`Color`,`SubType`,`ItemCondition`,`Price`,`Description`,`City`,`PhoneNumber`,`Bedrooms`,`Bathrooms`,`SquareFeet`,`LotSize`) VALUES
('Condo',2020,'N/A','Beige','Town Plaza','Excellent','225000.00','3 bed, 2 bath, amenities.','Uptown','(555)111-2223',3,2,1100,0.00);

INSERT INTO `Housing` (`Type`,`YearBuilt`,`MakeModel`,`Color`,`SubType`,`ItemCondition`,`Price`,`Description`,`City`,`PhoneNumber`,`Bedrooms`,`Bathrooms`,`SquareFeet`,`LotSize`) VALUES
('Apartment',2015,'N/A','Cream','Mid-rise','Good','1200.00','Monthly rent, 1 bed.','CityCenter','(555)222-3334',1,1,650,0.00);

INSERT INTO `Housing` (`Type`,`YearBuilt`,`MakeModel`,`Color`,`SubType`,`ItemCondition`,`Price`,`Description`,`City`,`PhoneNumber`,`Bedrooms`,`Bathrooms`,`SquareFeet`,`LotSize`) VALUES
('Apartment',2019,'N/A','Gray','Studio','Excellent','900.00','Monthly rent, open layout.','Downtown','(555)333-4445',0,1,450,0.00);

INSERT INTO `Housing` (`Type`,`YearBuilt`,`MakeModel`,`Color`,`SubType`,`ItemCondition`,`Price`,`Description`,`City`,`PhoneNumber`,`Bedrooms`,`Bathrooms`,`SquareFeet`,`LotSize`) VALUES
('Apartment',2008,'N/A','Blue','Garden','Fair','800.00','Monthly rent, ground floor.','Westside','(555)444-5556',2,1,800,0.00);

INSERT INTO `Housing` (`Type`,`YearBuilt`,`MakeModel`,`Color`,`SubType`,`ItemCondition`,`Price`,`Description`,`City`,`PhoneNumber`,`Bedrooms`,`Bathrooms`,`SquareFeet`,`LotSize`) VALUES
('Townhouse',2010,'N/A','Red','Row','Good','180000.00','3 bed, 2.5 bath, small yard.','Suburbia','(555)555-6667',3,2,1400,0.10);

INSERT INTO `Housing` (`Type`,`YearBuilt`,`MakeModel`,`Color`,`SubType`,`ItemCondition`,`Price`,`Description`,`City`,`PhoneNumber`,`Bedrooms`,`Bathrooms`,`SquareFeet`,`LotSize`) VALUES
('Townhouse',2022,'N/A','White','End Unit','Excellent','210000.00','4 bed, 3 bath, garage.','Garden District','(555)666-7778',4,3,1600,0.15);

INSERT INTO `Housing` (`Type`,`YearBuilt`,`MakeModel`,`Color`,`SubType`,`ItemCondition`,`Price`,`Description`,`City`,`PhoneNumber`,`Bedrooms`,`Bathrooms`,`SquareFeet`,`LotSize`) VALUES
('Townhouse',2000,'N/A','Tan','Historic','Fair','140000.00','2 bed, 1.5 bath, character.','Old Town','(555)777-8889',2,1,1300,0.08);

INSERT INTO `Housing` (`Type`,`YearBuilt`,`MakeModel`,`Color`,`SubType`,`ItemCondition`,`Price`,`Description`,`City`,`PhoneNumber`,`Bedrooms`,`Bathrooms`,`SquareFeet`,`LotSize`) VALUES
('Studio',2021,'N/A','Light Gray','Micro','Excellent','850.00','Monthly rent, kitchenette.','City Heights','(555)888-9990',0,1,350,0.00);

INSERT INTO `Housing` (`Type`,`YearBuilt`,`MakeModel`,`Color`,`SubType`,`ItemCondition`,`Price`,`Description`,`City`,`PhoneNumber`,`Bedrooms`,`Bathrooms`,`SquareFeet`,`LotSize`) VALUES
('Studio',2017,'N/A','White','Loft','Good','780.00','Monthly rent, high ceilings.','Art District','(555)999-0002',0,1,400,0.00);

INSERT INTO `Housing` (`Type`,`YearBuilt`,`MakeModel`,`Color`,`SubType`,`ItemCondition`,`Price`,`Description`,`City`,`PhoneNumber`,`Bedrooms`,`Bathrooms`,`SquareFeet`,`LotSize`) VALUES
('Studio',2013,'N/A','Beige','Corner','Fair','650.00','Monthly rent, corner unit.','East Village','(555)000-1113',0,1,300,0.00);

-- ─────────────────────────────────────────────────────────────
--  Jobs (3× Full-Time, Part-Time, Internship, Co-op, Seasonal)
-- ─────────────────────────────────────────────────────────────
INSERT INTO `Jobs` (`Type`,`YearStarted`,`Title`,`SubType`,`ItemCondition`,`Price`,`Description`,`City`,`PhoneNumber`,`Availability`,`ExperienceYears`) VALUES
('Full-Time',2024,'Software Engineer','Backend','N/A','0.00','Develop REST APIs.','Techville','(555)121-2121','M–F','2');

INSERT INTO `Jobs` (`Type`,`YearStarted`,`Title`,`SubType`,`ItemCondition`,`Price`,`Description`,`City`,`PhoneNumber`,`Availability`,`ExperienceYears`) VALUES
('Full-Time',2023,'Marketing Manager','Digital','N/A','0.00','Lead social media campaigns.','Metro','(555)232-3232','M–F','3');

INSERT INTO `Jobs` (`Type`,`YearStarted`,`Title`,`SubType`,`ItemCondition`,`Price`,`Description`,`City`,`PhoneNumber`,`Availability`,`ExperienceYears`) VALUES
('Full-Time',2025,'Accountant','Tax','N/A','0.00','Handle monthly closings.','Finance City','(555)343-4343','M–F','1');

INSERT INTO `Jobs` (`Type`,`YearStarted`,`Title`,`SubType`,`ItemCondition`,`Price`,`Description`,`City`,`PhoneNumber`,`Availability`,`ExperienceYears`) VALUES
('Part-Time',2025,'Barista','Coffee Shop','N/A','0.00','Serve drinks & manage register.','Cafe Town','(555)454-5454','Weekends','0');

INSERT INTO `Jobs` (`Type`,`YearStarted`,`Title`,`SubType`,`ItemCondition`,`Price`,`Description`,`City`,`PhoneNumber`,`Availability`,`ExperienceYears`) VALUES
('Part-Time',2024,'Retail Associate','Clothing','N/A','0.00','Customer service & restocking.','Mall City','(555)565-6565','Evenings','1');

INSERT INTO `Jobs` (`Type`,`YearStarted`,`Title`,`SubType`,`ItemCondition`,`Price`,`Description`,`City`,`PhoneNumber`,`Availability`,`ExperienceYears`) VALUES
('Part-Time',2023,'Tutor','Math','N/A','0.00','1-on-1 algebra help.','Uni Town','(555)676-7676','M/W/F','2');

INSERT INTO `Jobs` (`Type`,`YearStarted`,`Title`,`SubType`,`ItemCondition`,`Price`,`Description`,`City`,`PhoneNumber`,`Availability`,`ExperienceYears`) VALUES
('Internship',2025,'Software Intern','Full Stack','N/A','0.00','3-month coding internship.','Startup City','(555)787-8787','Summer','0');

INSERT INTO `Jobs` (`Type`,`YearStarted`,`Title`,`SubType`,`ItemCondition`,`Price`,`Description`,`City`,`PhoneNumber`,`Availability`,`ExperienceYears`) VALUES
('Internship',2024,'Marketing Intern','Content','N/A','0.00','Assist with blog writing.','Media Town','(555)898-9898','Fall','0');

INSERT INTO `Jobs` (`Type`,`YearStarted`,`Title`,`SubType`,`ItemCondition`,`Price`,`Description`,`City`,`PhoneNumber`,`Availability`,`ExperienceYears`) VALUES
('Internship',2023,'Finance Intern','Audit','N/A','0.00','Support audit team.','BigCorp','(555)909-0909','Summer','0');

INSERT INTO `Jobs` (`Type`,`YearStarted`,`Title`,`SubType`,`ItemCondition`,`Price`,`Description`,`City`,`PhoneNumber`,`Availability`,`ExperienceYears`) VALUES
('Co-op',2025,'Engineering Co-op','Mechanical','N/A','0.00','6-month rotation.','AutoWorks','(555)010-1010','Full Term','1');

INSERT INTO `Jobs` (`Type`,`YearStarted`,`Title`,`SubType`,`ItemCondition`,`Price`,`Description`,`City`,`PhoneNumber`,`Availability`,`ExperienceYears`) VALUES
('Co-op',2024,'IT Co-op','Network','N/A','0.00','Assist with LAN setup.','NetCorp','(555)121-2123','Spring','1');

INSERT INTO `Jobs` (`Type`,`YearStarted`,`Title`,`SubType`,`ItemCondition`,`Price`,`Description`,`City`,`PhoneNumber`,`Availability`,`ExperienceYears`) VALUES
('Co-op',2023,'Design Co-op','Graphic','N/A','0.00','Create marketing assets.','DesignHub','(555)232-3234','Summer','1');

INSERT INTO `Jobs` (`Type`,`YearStarted`,`Title`,`SubType`,`ItemCondition`,`Price`,`Description`,`City`,`PhoneNumber`,`Availability`,`ExperienceYears`) VALUES
('Seasonal',2025,'Lifeguard','Pool','N/A','0.00','Guard the pool area.','Beachside','(555)343-4345','Summer','0');

INSERT INTO `Jobs` (`Type`,`YearStarted`,`Title`,`SubType`,`ItemCondition`,`Price`,`Description`,`City`,`PhoneNumber`,`Availability`,`ExperienceYears`) VALUES
('Seasonal',2024,'Ski Instructor','Winter Resort','N/A','0.00','Teach skiing basics.','SnowTown','(555)454-5456','Winter','2');

INSERT INTO `Jobs` (`Type`,`YearStarted`,`Title`,`SubType`,`ItemCondition`,`Price`,`Description`,`City`,`PhoneNumber`,`Availability`,`ExperienceYears`) VALUES
('Seasonal',2023,'Farmhand','Harvest','N/A','0.00','Help with crop picking.','AgriVille','(555)565-6567','Fall','0');

-- ─────────────────────────────────────────────────────────────
--  Services (3× Plumbing, Tutoring, Handyman, Landscaping, Snow Removal)
-- ─────────────────────────────────────────────────────────────
INSERT INTO `Services` (`Type`,`YearStarted`,`MakeModel`,`Color`,`SubType`,`ItemCondition`,`Price`,`Description`,`City`,`PhoneNumber`,`Availability`,`ExperienceYears`) VALUES
('Plumbing',2010,'N/A','N/A','Residential','Licensed','75.00','Fix leaks & clogs.','Plumb City','(555)111-1212','M–F','10');

INSERT INTO `Services` (`Type`,`YearStarted`,`MakeModel`,`Color`,`SubType`,`ItemCondition`,`Price`,`Description`,`City`,`PhoneNumber`,`Availability`,`ExperienceYears`) VALUES
('Plumbing',2018,'N/A','N/A','Commercial','Certified','95.00','Pipe installation.','Metro','(555)222-2323','M–Sa','5');

INSERT INTO `Services` (`Type`,`YearStarted`,`MakeModel`,`Color`,`SubType`,`ItemCondition`,`Price`,`Description`,`City`,`PhoneNumber`,`Availability`,`ExperienceYears`) VALUES
('Plumbing',2005,'N/A','N/A','Emergency','Bonded','150.00','24/7 service.','QuickFix','(555)333-3434','24/7','15');

INSERT INTO `Services` (`Type`,`YearStarted`,`MakeModel`,`Color`,`SubType`,`ItemCondition`,`Price`,`Description`,`City`,`PhoneNumber`,`Availability`,`ExperienceYears`) VALUES
('Tutoring',2021,'N/A','N/A','Math','Experienced','40.00','Algebra & calculus help.','Uni Town','(555)444-4545','Evenings','3');

INSERT INTO `Services` (`Type`,`YearStarted`,`MakeModel`,`Color`,`SubType`,`ItemCondition`,`Price`,`Description`,`City`,`PhoneNumber`,`Availability`,`ExperienceYears`) VALUES
('Tutoring',2020,'N/A','N/A','English','Certified','35.00','Reading & writing skills.','Readerville','(555)555-5656','Weekdays','4');

INSERT INTO `Services` (`Type`,`YearStarted`,`MakeModel`,`Color`,`SubType`,`ItemCondition`,`Price`,`Description`,`City`,`PhoneNumber`,`Availability`,`ExperienceYears`) VALUES
('Tutoring',2019,'N/A','N/A','Science','PhD','50.00','Biology & chemistry.','Lab City','(555)666-6767','M–F','5');

INSERT INTO `Services` (`Type`,`YearStarted`,`MakeModel`,`Color`,`SubType`,`ItemCondition`,`Price`,`Description`,`City`,`PhoneNumber`,`Availability`,`ExperienceYears`) VALUES
('Handyman',2015,'N/A','N/A','General','Insured','45.00','Odd jobs & repairs.','FixIt','(555)777-7878','Weekdays','6');

INSERT INTO `Services` (`Type`,`YearStarted`,`MakeModel`,`Color`,`SubType`,`ItemCondition`,`Price`,`Description`,`City`,`PhoneNumber`,`Availability`,`ExperienceYears`) VALUES
('Handyman',2012,'N/A','N/A','Painting','Bonded','60.00','Interior/exterior paint.','PaintPros','(555)888-8989','M–Sa','8');

INSERT INTO `Services` (`Type`,`YearStarted`,`MakeModel`,`Color`,`SubType`,`ItemCondition`,`Price`,`Description`,`City`,`PhoneNumber`,`Availability`,`ExperienceYears`) VALUES
('Handyman',2008,'N/A','N/A','Carpentry','Licensed','70.00','Custom woodwork.','WoodWorks','(555)999-9090','M–F','12');

INSERT INTO `Services` (`Type`,`YearStarted`,`MakeModel`,`Color`,`SubType`,`ItemCondition`,`Price`,`Description`,`City`,`PhoneNumber`,`Availability`,`ExperienceYears`) VALUES
('Landscaping',2017,'N/A','N/A','Design','Licensed','55.00','Garden layout & installation.','GreenScape','(555)000-0101','M–F','7');

INSERT INTO `Services` (`Type`,`YearStarted`,`MakeModel`,`Color`,`SubType`,`ItemCondition`,`Price`,`Description`,`City`,`PhoneNumber`,`Availability`,`ExperienceYears`) VALUES
('Landscaping',2013,'N/A','N/A','Maintenance','Bonded','40.00','Mowing & pruning.','YardCare','(555)101-1213','Sa','10');

INSERT INTO `Services` (`Type`,`YearStarted`,`MakeModel`,`Color`,`SubType`,`ItemCondition`,`Price`,`Description`,`City`,`PhoneNumber`,`Availability`,`ExperienceYears`) VALUES
('Landscaping',2009,'N/A','N/A','Hardscape','Insured','80.00','Patios & walkways.','StoneArt','(555)202-2324','M–F','14');

INSERT INTO `Services` (`Type`,`YearStarted`,`MakeModel`,`Color`,`SubType`,`ItemCondition`,`Price`,`Description`,`City`,`PhoneNumber`,`Availability`,`ExperienceYears`) VALUES
('Snow Removal',2016,'N/A','N/A','Driveway','Bonded','65.00','Plow & salt.','SnowAway','(555)303-3435','Winter','5');

INSERT INTO `Services` (`Type`,`YearStarted`,`MakeModel`,`Color`,`SubType`,`ItemCondition`,`Price`,`Description`,`City`,`PhoneNumber`,`Availability`,`ExperienceYears`) VALUES
('Snow Removal',2014,'N/A','N/A','Sidewalk','Licensed','50.00','Shovel & de-ice.','IceBreakers','(555)404-4546','Winter','8');

INSERT INTO `Services` (`Type`,`YearStarted`,`MakeModel`,`Color`,`SubType`,`ItemCondition`,`Price`,`Description`,`City`,`PhoneNumber`,`Availability`,`ExperienceYears`) VALUES
('Snow Removal',2012,'N/A','N/A','Emergency','Insured','120.00','24/7 snow removal.','StormBusters','(555)505-5657','24/7','12');
