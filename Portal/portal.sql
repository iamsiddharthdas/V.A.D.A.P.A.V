-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 30, 2020 at 12:00 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `Bank Holder Name` varchar(100) NOT NULL,
  `Relationship Type` text NOT NULL,
  `Account Number` varchar(100) NOT NULL,
  `IFSC Code` varchar(90) NOT NULL,
  `Bank Details` varchar(260) NOT NULL,
  `Bank Passbook/Statement` varchar(400) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`Bank Holder Name`, `Relationship Type`, `Account Number`, `IFSC Code`, `Bank Details`, `Bank Passbook/Statement`) VALUES
('Harida', 'Student ', '1234567890987654', 'ISL12345678', 'Canara Bank', 'Canara Bank details with Account no and IFSC code number of Fixed deposit Account.'),
('Shruthi', 'Student', '907654321786', 'HJY12789065432', 'State Bank of India', 'State Bank of India details with account number and IFSC code number of Current Account.'),
('Siddharth', 'Student', '890654327865', 'IOU23322778', 'Bank of Baroda', 'Bank of Baroda details with account number and IFSC code number of savings account'),
('Shruti', 'Student', '122378907654', 'IO122219087', 'Union Bank of India', 'Union Bank of India details with account number and IFSC code number of savings account'),
('Ashok Raj', 'Student', '456789076543', 'JIO8908K876', 'Indian Bank', 'Indian Bank details with account number and IFSC code number of Savings Account'),
('Rahul Raj', 'Student', '129087655431', 'JYU90876543', 'Corporation Bank of India', 'Corporation Bank of India details with account number and IFSC code number of Current Account'),
('Samyukta', 'Student', '12889065432', 'UFI12290876', 'Indian Bank', 'Indian Bank details with account number and IFSC code number of Current Account'),
('Vinod Kumar', 'Student', '5678905432167', 'FTI88976543', 'State Bank of India', 'State Bank of India details with account number and IFSC code number of Regular accounts');

-- --------------------------------------------------------

--
-- Table structure for table `achievements`
--

CREATE TABLE `achievements` (
  `S.No` int(4) NOT NULL,
  `Achievement` text NOT NULL,
  `Position` varchar(60) NOT NULL,
  `Category` varchar(50) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `achievements`
--

INSERT INTO `achievements` (`S.No`, `Achievement`, `Position`, `Category`, `Date`) VALUES
(1, 'Over All Scholarship', 'SDE', 'Computer Science', '2016-06-29'),
(2, 'Honor Role (High Grades)', 'Senior Manager', 'Mechanical', '2020-09-15'),
(3, '2nd position in Code2Create', 'Project Manager ', 'Spcl in Information Security', '2020-02-25'),
(4, '1st prize in Google Pixel 2', 'Assistant Manager', 'ECE', '2018-08-24'),
(5, 'Certification in DevOps', 'Team Leader', 'IT', '2019-06-14'),
(6, 'RHCA certification', 'SE', 'Computer Science', '2020-09-17'),
(7, 'Ranked 86th worldwide in CodeChef \'15 Long Challenge\'', 'App Developer', 'Computer Science', '2014-01-23'),
(8, 'Co-authored paper \'ML in everyday life\' with impact factor or 25.45', 'Software Engineer', 'Information Security', '2015-05-22'),
(9, 'Finalist in Nationwide Hackathon', 'Full Stack Engineer', 'Information Systems', '2017-09-29'),
(10, 'Co-authored \'Bio-waste\' paper with impact factor 26.167', 'Customers Manager', 'Waste Manegement', '2019-08-22');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `S.No` int(3) NOT NULL,
  `CourseCode` varchar(9) NOT NULL,
  `Course` varchar(100) NOT NULL,
  `CourseType` varchar(80) NOT NULL,
  `Registration Number` varchar(20) NOT NULL,
  `Name` text NOT NULL,
  `Attendance Percentage` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`S.No`, `CourseCode`, `Course`, `CourseType`, `Registration Number`, `Name`, `Attendance Percentage`) VALUES
(1, 'ITE1008', 'Open Source Programming', 'Embedded Theory+Project', '18BIT0411', 'Harida', 89),
(2, 'ITE4001', 'Network and Information Security', 'Embedded Theory+Project', '18BIT0411', 'Harida', 90),
(3, 'ITE2001', 'Web Technology', 'Embedded Theory+Project+Lab', '18BIT0411', 'Harida', 90),
(4, 'EEE1001', 'Basics of Electronics', 'Embedded Theory+Project+Lab', '18BIT0411', 'Harida', 67),
(5, 'ITE1003', 'Database Management Systems', 'Embedded Theory+Project+Lab', '18BIT0411', 'Harida', 95),
(6, 'CHY1701', 'Engineering Chemistry', 'Embedded Theory+Lab', '18BIT0411', 'HARIDA', 90),
(7, 'BCI2001', 'Data Privacy', 'Embedded Theory+Project', '18BIT0411', 'Harida', 60),
(8, 'CSE1007', 'Java Programming ', 'Embedded Theory+Lab', '18BIT0411', 'Harida', 99),
(9, 'CSE3013', 'Artificial Intelligence', 'Embedded Theory+Project', '18BIT0411', 'Harida', 100),
(10, 'CSE4003', 'Cyber Security', 'Embedded Theory+Project', '18BIT0411', 'Harida', 95),
(11, 'ITE1008', 'Open Source Programming', 'Embedded Theory+Project', '18BIT0359', 'Shruthi', 100),
(2, 'ITE4001', 'Network and Information Security', 'Embedded Theory+Project', '18BIT0359', 'Shruthi', 70),
(13, 'ITE2001', 'Web Technology', 'Embedded Theory+Lab', '18BIT0359', 'Shruthi', 90),
(14, 'EEE1001', 'Basics of Electronics', 'Embedded Theory+Lab', '18BIT0359', 'Shruthi', 91),
(15, 'ITE1003', 'Database Management Systems', 'Embedded Theory+Project+Lab', '18BIT0359', 'Shruthi', 80),
(16, 'CHY1701', 'Engineering Chemistry', 'Embedded Theory+Lab', '18BIT0359', 'Shruthi', 100),
(17, 'BCI2001', 'Data Privacy', 'Embedded Theory+Project', '18BIT0359', 'Shruthi', 54),
(18, 'CSE1007', 'Java Programming', 'Embedded Theory+Lab', '18BIT0359', 'Shruthi', 100),
(19, 'CSE3013', 'Artificial Intelligence', 'Embedded Theory+Project', '18BIT0359', 'Shruthi', 53),
(20, 'CSE4003', 'Cyber Security', 'Embedded Theory+Project', '18BIT0359', 'Shruthi', 100),
(21, 'ITE1008', 'Open Source Programming', 'Embedded Theory+Project', '18BIT0379', 'Siddharth', 100),
(22, 'ITE4001', 'Network and Information Security', 'Embedded Theory+Project', '18BIT0379', 'Siddharth', 54),
(23, 'ITE2001', 'Web Technology', 'Embedded Theory+Project+Lab', '18BIT0379', 'Siddharth', 76),
(24, 'EEE1001', 'Basics of Electronics', 'Embedded Theory+Lab', '18BIT0379', 'Siddharth', 67),
(25, 'ITE1003', 'Database Management Systems', 'Embedded Theory+Project+Lab', '18BIT0379', 'Siddharth', 100),
(26, 'CHY1701', 'Engineering Chemistry', 'Embedded Theory+Lab', '18BIT0379', 'Siddharth', 56),
(26, 'CHY1701', 'Engineering Chemistry', 'Embedded Theory+Lab', '18BIT0379', 'Siddharth', 67),
(26, 'CHY1701', 'Engineering Chemistry', 'Embedded Theory+Lab', '18BIT0379', 'Siddharth', 89),
(27, 'BCI2001', 'Data Privacy', 'Embedded Theory+Project', '18BIT0379', 'Siddharth', 43),
(28, 'CSE1007', 'Java Programming', 'Embedded Theory+Lab', '18BIT0379', 'Siddharth', 67),
(29, 'CSE3013', 'Artificial Intelligence', 'Embedded Theory+Project', '18BIT0379', 'Siddharth', 89),
(30, 'CSE4003', 'Cyber Security', 'Embedded Theory+Project', '18BIT0379', 'Siddharth', 90),
(31, 'ITE1008', 'Open Source Programming', 'Embedded Theory+Project', '18BIT0405', 'Shruti', 63),
(32, 'ITE4001', 'Network and Information Security', 'Embedded Theory+Project', '18BIT0405', 'Shruti', 72),
(33, 'ITE2001', 'Web Technology', 'Embedded Theory+Lab+Project', '18BIT0405', 'Shruti', 56),
(34, 'EEE1001', 'Basics of Electronics', 'Embedded Theory+Lab', '18BIT0405', 'Shruti', 85),
(35, 'ITE103', 'Database Management Systems', 'Embedded Theory+Lab+Project', '18BIT0405', 'Shruti', 94),
(36, 'CHY1701', 'Engineering Chemistry', 'Embedded Theory+Lab', '18BIT0405', 'Shruti', 85),
(37, 'BCI2001', 'Data Privacy', 'Embedded Theory+Project', '18BIT0405', 'Shruti', 89),
(38, 'CSE1007', 'Java Programming', 'Embedded Theory+Lab', '18BIT0405', 'Shruti', 70),
(39, 'CSE3013', 'Artificial Intelligence', 'Embedded Theory+Project', '18BIT0405', 'Shruti', 90),
(40, 'CSE4003', 'Cyber Security', 'Embedded Theory+Project', '18BIT0405', 'Shruti', 78),
(41, 'ITE1008', 'Open Source Programming', 'Embedded Theory+Project', '17BME0912', 'Ashok Raj', 100),
(42, 'ITE4001', 'Network and Information Security', 'Embedded Theory+Project', '17BME0912', 'Ashok Raj', 76),
(43, 'ITE2001', 'Web Technology', 'Embedded Theory+Lab+Project', '17BME0912', 'Ashok Raj', 69),
(44, 'EEE1001', 'Basics of Electronics', 'Embedded Theory+Lab', '17BME0912', 'Ashok Raj', 65),
(45, 'ITE1003', 'Database Management Systems\r\n', 'Embedded Theory+Lab+Project', '17BME0912', 'Ashok Raj', 80),
(46, 'CHY1701', 'Engineering Chemistry', 'Embedded Theory+Lab', '17BME0912', 'Ashok Raj', 89),
(47, 'BCI2001', 'Data Privacy', 'Embedded theory+Project', '17BME0912', 'Ashok Raj', 56),
(48, 'CSE1007', 'Java Programming', 'Embedded Theory+Lab', '17BME0912', 'Ashok Raj', 67),
(49, 'CSE3013', 'Artificial Intelligence', 'Embedded Theory+Project', '17BME0912', 'Ashok Raj', 94),
(50, 'CSE4003', 'Cyber Security', 'Embedded Theory+Project', '17BME0912', 'Ashok Raj', 65),
(51, 'ITE1008', 'Open Source Programming', 'Embedded Theory+Project', '19BEE0456', 'Rahul Raj', 78),
(52, 'ITE4001', 'Network and Information Security', 'Embedded Theory+Project', '19BEE0456', 'Rahul Raj', 100),
(53, 'ITE2001', 'Web Technology', 'Embedded Theory+Lab+Project', '19BEE0456', 'Rahul Raj', 84),
(54, 'EEE1001', 'Basics of Electronics', 'Embedded Theory+Lab', '19BEE0456', 'Rahul Raj', 76),
(55, 'ITE1003', 'Database Management Systems', 'Embedded Theory+Project+Lab', '19BEE0456', 'Rahul Raj', 90),
(56, 'CHY1701', 'Engineering Chemistry', 'Embedded Theory+Lab', '19BEE0456', 'Rahul Raj', 95),
(57, 'BCI2001', 'Data Privacy', 'Embedded Theory+Project', '19BEE0456', 'Rahul Raj', 67),
(58, 'CSE1007', 'Java Programming', 'Embedded Theory+Lab', '19BEE0456', 'Rahul Raj', 70),
(59, 'CSE3013', 'Artificial Intelligence', 'Embedded Theory+Project', '19BEE0456', 'Rahul Raj', 90),
(60, 'CSE4003', 'Cyber Security', 'Embedded Theory+Project', '19BEE0456', 'Rahul Raj', 100),
(61, 'ITE1008', 'Open Source Programming', 'Embedded Theory+Project', '17BCE01111', 'Samyukta', 95),
(62, 'ITE4001', 'Network and Information Security', 'Embedded Theory+Project', '17BCE01111', 'Samyukta', 100),
(63, 'ITE2001', 'Web Technology', 'Embedded Theory+Project+Lab', '17BCE01111', 'Samyukta', 67),
(64, 'EEE1001', 'Basics of Electronics', 'Embedded Theory+Lab', '17BCE01111', 'Samyukta', 67),
(65, 'ITE1003', 'Database Management Systems', 'Embedded Theory+Project+Lab', '17BCE01111', 'Samyukta', 56),
(66, 'CHY1701', 'Engineering Chemistry', 'Embedded Theory+Lab', '17BCE01111', 'Samyukta', 78),
(67, 'BCI2001', 'Data Privacy', 'Embedded Theory+Project', '17BCE01111', 'Samyukta', 83),
(68, 'CSE1007', 'Java Programming', 'Embedded Theory+Lab', '17BCE01111', 'Samyukta', 84),
(69, 'CSE3013', 'Artificial Intelligence', 'Embedded Theory+Project', '17BCE01111', 'Samyukta', 80),
(70, 'CSE4003', 'Cyber Security', 'Embedded Theory+Project', '17BCE01111', 'Samyukta', 90),
(71, 'ITE1008', 'Open Source Programming', 'Embedded Theory+Project', '18BIS0731', 'Vinod Kumar', 90),
(72, 'ITE4001', 'Network and Information Security\r\n', 'Embedded Theory+Project', '18BIS0731', 'Vinod Kumar', 95),
(73, 'ITE2001', 'Web Technology', 'Embedded Theory+Project+Lab', '18BIS0731', 'Vinod Kumar', 64),
(74, 'EEE1001', 'Basics of Electronics', 'Embedded Theory+Lab', '18BIS0731', 'Vinod Kumar', 78),
(75, 'ITE1003', 'Database Management Systems', 'Embedded Theory+Project+Lab', '18BIS01111', 'Vinod Kumar', 90),
(76, 'CHY1701', 'Engineering Chemistry', 'Embedded Theory+Lab', '18BIS0731', 'Vinod Kumar', 76),
(77, 'BCI2001', 'Data Privacy', 'Embedded Theory+Project', '18BIS0731', 'Vinod Kumar', 96),
(78, 'CSE1007', 'Java Programming', 'Embedded Theory+Lab', '18BIS0731', 'Vinod Kumar', 70),
(79, 'CSE3013', 'Artificial Intelligence', 'Embedded Theory+Project', '18BIS0731', 'Vinod Kumar', 74),
(80, 'CSE4003', 'Cyber Security', 'Embedded Theory+Project', '18BIS0731', 'Vinod Kumar', 89);

-- --------------------------------------------------------

--
-- Table structure for table `club/chapter`
--

CREATE TABLE `club/chapter` (
  `S.No` int(3) NOT NULL,
  `Club/Chapter` varchar(45) NOT NULL,
  `Post` varchar(40) NOT NULL,
  `FromDate` date NOT NULL,
  `ToDate` date NOT NULL,
  `Guide` varchar(50) NOT NULL,
  `Reg.No` varchar(27) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `club/chapter`
--

INSERT INTO `club/chapter` (`S.No`, `Club/Chapter`, `Post`, `FromDate`, `ToDate`, `Guide`, `Reg.No`) VALUES
(1, ' LEO Club', ' Member', '2018-12-12', '2020-07-06', 'Mr.Jagadeesh ', '18BIT0411'),
(2, 'ASME chapter', 'Member', '2019-03-05', '2020-02-25', 'Mr.Raju', '18BIT0411'),
(3, 'ADG club', 'Secretary', '2019-01-08', '2021-04-06', 'Mrs.Jasmine', '18BIT0359'),
(4, 'Anokha Chapter', 'Member', '2019-07-08', '2021-08-19', 'Mr.RamKumar', '18BIT0379'),
(5, 'IEEE club', 'Events Manager', '2019-09-10', '2021-11-14', 'Mr.Rajavel', '18BIT0405'),
(6, '--No Records--', 'Nil', '2020-07-26', '2020-07-26', 'Nil', '19BEE0456'),
(7, 'Chapters', 'Member', '2020-07-02', '2021-07-24', 'Mr.Sooraj', '18BIS0731'),
(8, 'Tamil Literature Club', 'Chief Head', '2019-05-13', '2020-04-06', 'Ms.Nirmala', '17BCE01111'),
(9, 'ASME chapters', 'Member', '2018-12-10', '2021-07-13', 'Mr.Kannan', '17BME0912');

-- --------------------------------------------------------

--
-- Table structure for table `coursedetails`
--

CREATE TABLE `coursedetails` (
  `S.No` int(4) NOT NULL,
  `Semester` varchar(34) NOT NULL,
  `Course Code` varchar(10) NOT NULL,
  `Course` varchar(45) NOT NULL,
  `CourseType` varchar(60) NOT NULL,
  `Category` varchar(50) NOT NULL,
  `Credits` int(3) NOT NULL,
  `Grade` text NOT NULL,
  `Faculty` varchar(70) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coursedetails`
--

INSERT INTO `coursedetails` (`S.No`, `Semester`, `Course Code`, `Course`, `CourseType`, `Category`, `Credits`, `Grade`, `Faculty`) VALUES
(1, 'Fall Semester 2019-2020', 'ITE1008', 'Open source Programming', 'Embedded theory+Project', 'Programme Elective', 4, 'A', 'Jayakumar S-SITE'),
(2, 'Fall Semester 2019-2020', 'ITE4001', 'Network and Information Security', 'Embedded Theory+Project', 'Programme Elective', 4, 'B', 'Navaneethan-SITE'),
(3, 'Winter Semester 2018-2019', 'ITE2001', 'Web Technology', 'Embedded Theory+Project+Lab', 'Programme Elective', 3, 'C', 'Divya Udayan-SITE'),
(4, 'Fall Semester 2018-2019', 'EEE1001', 'Basics of Electronics', 'Embedded Theory+Lab', 'Programme Core', 3, 'A', 'Raja-SENSE'),
(5, 'Winter Semester 2019-2020', 'ITE1003', 'Database Management Systems', 'Embedded Theory+Lab+Project', 'Programme Core', 4, 'S', 'Saravana Kumar-SITE'),
(6, 'Fall Semester 2018-2019', 'CHY1701', 'Engineering Chemistry', 'Embedded Theory+Lab', 'University Core', 4, 'D', 'Jose-SAS'),
(7, 'Winter Semester 2019-2020', 'BCI2001', 'Data Privacy', 'Embedded Theory+Project', 'University Elective', 4, 'B', 'Reenu-SBST'),
(8, 'Fall Semester 2020-2021', 'CSE1007', 'Java Programming', 'Embedded Theory+Lab', 'Programme Elective', 4, 'S', 'RaviShastri-SCOPE'),
(9, 'Fall Semester 2020-2021', 'CSE3013', 'Artificial Intelligence', 'Embedded Theory+Project', 'Programme Elective', 4, 'S', 'Harshita Patel-SITE'),
(10, 'Winter Semester 2019-2020', 'CSE4003', 'Cyber Security', 'Embedded Theory+Project', 'University Elective', 4, 'C', 'Navamani-SCOPE');

-- --------------------------------------------------------

--
-- Table structure for table `course_details`
--

CREATE TABLE `course_details` (
  `S.No` int(3) NOT NULL,
  `Course Code` varchar(10) NOT NULL,
  `Course` text NOT NULL,
  `Course_Type` text NOT NULL,
  `Category` varchar(30) NOT NULL,
  `Credits` int(3) NOT NULL,
  `Grade` text NOT NULL,
  `Faculty` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course_details`
--

INSERT INTO `course_details` (`S.No`, `Course Code`, `Course`, `Course_Type`, `Category`, `Credits`, `Grade`, `Faculty`) VALUES
(1, 'ITE1008', 'Open Source Programming', 'Embedded Theory+Project', 'Programme Elective', 4, 'S', 'Jayakumar S-SITE'),
(2, 'ITE4001', 'Network and Information Security', 'Embedded Theory+Project', 'Programme Elective', 4, 'A', 'Navaneethan C-SITE'),
(3, 'ITE2001', 'Web Technology', 'Embedded Theory+Project+Lab', 'Programme Core', 3, 'B', 'Divya Udayan-SITE'),
(4, 'EEE1001', 'Basics of Electronics', 'Embedded Theory+Lab', 'Programme Core', 3, 'A', 'Raja-SITE'),
(5, 'ITE 1003', 'Database Management Systems', 'Embedded Theory+Project+Lab', 'Programme Core', 4, 'S', 'SaravanaKumar-SITE'),
(6, 'CHY1701', 'Engineering Chemistry', 'Embedded Theory+Lab', 'University Core', 4, 'C', 'Reena-SAS'),
(7, 'BCI2001', 'Data Privacy', 'Embedded Theory+Project', 'University Elective', 3, 'C', 'Sudarshan-SBST'),
(8, 'CSE1007', 'Java Programming', 'Embedded Theory+Lab', 'Programme Elective', 4, 'A', 'Udhay-SCOPE'),
(9, 'CSE3013', 'Artificial Intelligence', 'Embedded Theory+Project', 'Programme Elective', 4, 'S', 'Harshita Patel-SITE'),
(10, 'CSE4003', 'Cyber Security', 'Embedded Theory+Project', 'University Elective', 4, 'B', 'Navamani-SCOPE');

-- --------------------------------------------------------

--
-- Table structure for table `current address`
--

CREATE TABLE `current address` (
  `Street Name` varchar(30) NOT NULL,
  `Area Name` text NOT NULL,
  `City` text NOT NULL,
  `State` text NOT NULL,
  `Country` text NOT NULL,
  `Pincode` bigint(18) NOT NULL,
  `Phone` bigint(12) NOT NULL,
  `Email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `current address`
--

INSERT INTO `current address` (`Street Name`, `Area Name`, `City`, `State`, `Country`, `Pincode`, `Phone`, `Email`) VALUES
('Deena Street', 'Rajiv Nagar', 'Erode', 'Tamil Nadu', 'India', 637204, 7339654878, 'harida@gmail.com'),
('Daksha Street', 'Indu ', 'Kochin', 'Kerala', 'Indian', 654321, 9876543212, 'shruthi@gmail.com'),
('Lalbahath street', 'Gandhi ', 'Bhubaneshawar', 'Orissa', 'India', 654321, 9090876543, 'siddharth@gmail.com'),
('Pangal street', 'EVR', 'Tanjore', 'Tamil Nadu', 'India', 675432, 9764136805, 'shruti@gmail.com'),
('Kumaresapuram street', 'Kuhu ', 'Hyderabad', 'Andhra Pradesh', 'India', 689054, 8908654321, 'samyukta@gmail.com'),
('Prashantha street', 'Joseph ', 'Trivandrum', 'Kerala', 'India', 674321, 9090432123, 'rahul@gmail.com'),
('Tanmaya street', 'Kshatriya Nagar', 'Bihar', 'Assam', 'India', 643201, 8877665544, 'vinod@gmail.com'),
('Anantha Bhavan', 'Manipur Nagar', 'E-city', 'Karnataka', 'India', 611908, 8899054876, 'ashok@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `educational details`
--

CREATE TABLE `educational details` (
  `Educational Qualifications` varchar(20) NOT NULL,
  `Branch/Group Studied` text NOT NULL,
  `School Name` text NOT NULL,
  `College Name` text NOT NULL,
  `Medium of Study` text NOT NULL,
  `Board/University` text NOT NULL,
  `Class Obtained` varchar(21) NOT NULL,
  `Year of Passing/Passed` int(6) NOT NULL,
  `Month of Passing/Passed` text NOT NULL,
  `Work Experience` varchar(21) NOT NULL,
  `Reference` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `educational details`
--

INSERT INTO `educational details` (`Educational Qualifications`, `Branch/Group Studied`, `School Name`, `College Name`, `Medium of Study`, `Board/University`, `Class Obtained`, `Year of Passing/Passed`, `Month of Passing/Passed`, `Work Experience`, `Reference`) VALUES
('B.Tech', 'Information Technology', 'Sri Chaitanya Techno school', 'Vellore Institute of Technology,Vellore', 'English', 'CBSE', 'First', 2022, 'July', 'none', 'LinkedIn,Github'),
('BE', 'Mechanical Engineering', 'Kalam Higher Secondary School', 'Vellore Institute of Technology,Vellore', 'Tamil', 'State Board of TamilNadu', 'Second', 2017, 'August', '1 year', 'LinkedIn'),
('B.Tech', 'Information Technology', 'Chinamya Vidhyalaya,Chennai', 'Vellore Institute of Technology,Vellore', 'English', 'CBSE', 'First', 2022, 'March', 'None', 'LinkedIn,Github'),
('B.Tech', 'Computer Science with Specialization in Information Security', 'DPS Delhi', 'Vellore Institute of Technology,Vellore', 'English', 'ICSE', 'First', 2016, 'March', '4 Years', 'Google,LinkedIn'),
('B.Tech', 'Information Security', 'Sunrise International,Abu Dhabi', 'Vellore Institute of Technology,Vellore', 'English\r\n', 'CBSE', 'First', 2022, 'February', 'None', 'LinkedIn,Github'),
('B.Tech', 'Information Security', 'Gangadhar CBSE School,Orissa', 'Vellore Institute of Technology,Vellore', 'English\r\n', 'CBSE', 'First', 2022, 'March', 'None', 'LinkedIn');

-- --------------------------------------------------------

--
-- Table structure for table `enroll`
--

CREATE TABLE `enroll` (
  `S.no` int(4) NOT NULL,
  `RegistrationNumber` varchar(16) NOT NULL,
  `Name` text NOT NULL,
  `Email_Id` varchar(100) NOT NULL,
  `Phone` bigint(12) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `enroll`
--

INSERT INTO `enroll` (`S.no`, `RegistrationNumber`, `Name`, `Email_Id`, `Phone`) VALUES
(1, '18BIT0411', 'Harida', 'harida@gmail.com', 7339654878),
(2, '18BIT0359', 'Shruthi', 'shruthi@gmail.com', 9876543212),
(3, '18BIT0359', 'Siddharth', 'siddharth@gmail.com', 9090876543),
(4, '18BIT0405', 'Shruti', 'shruti@gmail.com', 9876543789),
(5, '17BME0912', 'Ashok Raj', 'ashok@gmail.com', 9088765432),
(6, '19BEE0456', 'Rahul Raj', 'rahul@gmail.com', 9987654543),
(7, '17BCE01111', 'Samyukta', 'Samyukta@gmail.com', 9088765432),
(8, '18BIS0731', 'Vinod Kumar', 'vinodkumar@gmail.com', 9076543218);

-- --------------------------------------------------------

--
-- Table structure for table `online_test`
--

CREATE TABLE `online_test` (
  `S.No` int(4) NOT NULL,
  `RegistrationNumber` varchar(20) NOT NULL,
  `Name` text NOT NULL,
  `Marks` float NOT NULL,
  `Grade` text NOT NULL,
  `Slot` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `online_test`
--

INSERT INTO `online_test` (`S.No`, `RegistrationNumber`, `Name`, `Marks`, `Grade`, `Slot`) VALUES
(1, '18BIT0411', 'Harida', 86.5, 'A', 'B1+TB1'),
(2, '18BIT0411', 'Harida', 90.5, 'S', 'A1+TA1'),
(3, '18BIT0411', 'Harida', 67, 'C', 'D1+TD1'),
(4, '18BIT0411', 'Harida', 65, 'B', 'G1+TG1'),
(5, '18BIT0411', 'Harida', 67, 'C', 'E2+TE2'),
(6, '18BIT0411', 'Harida', 97, 'S', 'A2+TA2'),
(7, '18BIT0411', 'Harida', 56.5, 'C', 'F1+TF1'),
(8, '18BIT0411', 'Harida', 84, 'A', 'B2+TB2'),
(9, '18BIT0411', 'Harida', 60, 'B', 'D2+TD2'),
(10, '18BIT0411', 'Harida', 78, 'C', 'F2+TF2'),
(11, '18BIT0359', 'Shruthi', 78, 'B', 'B1+TB1'),
(12, '18BIT0359', 'Shruthi', 90, 'S', 'F1+TF1'),
(13, '18BIT0359', 'Shruthi', 56, 'B', 'G1+TG1'),
(14, '18BIT0359', 'Shruthi', 90, 'S', 'C1+TC1'),
(15, '18BIT0359', 'Shruthi', 78, 'C', 'D1+TD1'),
(16, '18BIT0359', 'Shruthi', 67.5, 'B', 'A2+TA2'),
(17, '18BIT0359', 'Shruthi', 95, 'S', 'B2+TB2'),
(18, '18BIT0359', 'Shruthi', 89, 'A', 'C2+TC2'),
(19, '18BIT0359', 'Shruthi', 76, 'B', 'G2+TG2'),
(20, '18BIT0359', 'Shruthi', 89, 'A', 'E2+TE2'),
(21, '18BIT0379', 'Siddharth', 89.5, 'A', 'B1+TB1'),
(22, '18BIT0379', 'Siddharth', 90.5, 'S', 'F1+TF1'),
(23, '18BIT0379', 'Siddharth', 67.5, 'B', 'G1+TG1'),
(24, '18BIT0379', 'Siddharth', 76, 'C', 'C1+TC1'),
(25, '18BIT0379', 'Siddharth', 93, 'S', 'D1+TD1'),
(26, '18BIT0379', 'Siddharth', 66.5, 'B', 'A2+TA2'),
(27, '18BIT0379', 'Siddharth', 98, 'S', 'B2+TB2'),
(28, '18BIT0379', 'Siddharth', 64, 'C', 'C2+TC2'),
(29, '18BIT0379', 'Siddharth', 85, 'A', 'G2+TG2'),
(30, '18BIT0379', 'Siddharth', 90, 'S', 'E2+TE2'),
(31, '18BIT0405', 'Shruti', 78, 'C', 'B1+TB1'),
(32, '18BIT0405', 'Shruti', 90, 'S', 'F1+TF1'),
(33, '18BIT0405', 'Shruti', 86.5, 'B', 'G1+TG1'),
(34, '18BIT0405', 'Shruti', 65, 'B', 'C1+TC1'),
(35, '18BIT0405', 'Shruti', 97, 'S', 'D1+TD1'),
(36, '18BIT0405', 'Shruti', 89.5, 'A', 'A2+TA2'),
(37, '18BIT0405', 'Shruti', 91.5, 'A', 'B2+TB2'),
(38, '18BIT0405', 'Shruti', 78, 'B', 'C2+TC2'),
(39, '18BIT0405', 'Shruti', 83, 'A', 'G2+TG2'),
(40, '18BIT0405', 'Shruti', 83, 'B', 'E2+TE2'),
(41, '17BME0912', 'Ashok Raj', 89, 'A', 'B1+TB1'),
(42, '17BME0912', 'Ashok Raj', 90, 'S', 'F1+TF1'),
(43, '17BME0912', 'Ashok Raj', 76, 'B', 'G1+TG1'),
(44, '17BME0912', 'Ashok Raj', 95, 'S', 'C1+TC1'),
(45, '17BME0912', 'Ashok Raj', 79, 'C', 'D1+TD1'),
(46, '17BME0912', 'Ashok Raj', 75, 'C', 'A2+TA2'),
(47, '17BME0912', 'Ashok Raj', 88, 'A', 'B2+TB2'),
(48, '17BME0912', 'Ashok Raj', 83, 'B', 'C2+TC2'),
(49, '17BME0912', 'Ashok Raj', 90, 'A', 'G2+TG2'),
(50, '17BME0912', 'Ashok Raj', 94, 'S', 'E2+TE2'),
(51, '19BEE0456', 'Rahul Raj', 75, 'B', 'B1+TB1'),
(52, '19BEE0456', 'Rahul Raj', 67, 'C', 'F1+F1'),
(53, '19BEE0456', 'Rahul Raj', 89, 'A', 'G1+TG1'),
(54, '19BEE0456', 'Rahul Raj', 90, 'S', 'C1+TC1'),
(55, '19BEE0456', 'Rahul Raj', 60, 'D', 'D1+TD1'),
(56, '19BEE0456', 'Rahul Raj', 95, 'S', 'A2+TA2'),
(57, '19BEE0456', 'Rahul Raj', 86, 'B', 'B2+TB2'),
(58, '19BEE0456', 'Rahul Raj', 92, 'S', 'C2+TC2'),
(59, '19BEE0456', 'Rahul Raj', 88, 'S', 'G2+TG2'),
(60, '19BEE0456', 'Rahul Raj', 65, 'B', 'E2+TE2'),
(61, '17BCE01111', 'Samyukta', 67, 'C', 'B1+TB1'),
(62, '17BCE01111', 'Samyukta', 90, 'S', 'F1+TF1'),
(63, '17BCE01111', 'Samyukta', 85, 'A', 'G1+TG1'),
(64, '17BCE01111', 'Samyukta', 90, 'S', 'C1+TC1'),
(65, '17BCE01111', 'Samyukta', 89, 'B', 'D1+TD1'),
(66, '17BCE01111', 'Samyukta', 65, 'C', 'A2+TA2'),
(67, '17BCE01111', 'Samyukta', 87, 'B', 'B2+TB2'),
(68, '17BCE01111', 'Samyukta', 23, 'F', 'C2+TC2'),
(69, '17BCE01111', 'Samyukta', 67, 'E', 'G2+TG2'),
(70, '17BCE01111', 'Samyukta', 76, 'D', 'E2+TE2'),
(71, '18BIS0731', 'Vinod Kumar', 78, 'B', 'B1+TB1'),
(72, '18BIS0731', 'Vinod Kumar', 23, 'F', 'F1+TF1'),
(73, '18BIS0731', 'Vinod Kumar', 92, 'S', 'G1+TG1'),
(74, '18BIS0731', 'Vinod Kumar', 69, 'B', 'C1+TC1'),
(75, '18BIS0731', 'Vinod Kumar', 56, 'C', 'D1+TD1'),
(76, '18BIS0731', 'Vinod Kumar', 82, 'A', 'A2+TA2'),
(77, '18BIS0731', 'Vinod Kumar', 73, 'B', 'B2+TB2'),
(78, '18BIS0731', 'Vinod Kumar', 47, 'D', 'C2+TC2'),
(79, '18BIS0731', 'Vinod Kumar', 89, 'S', 'G2+TG2'),
(80, '18BIS0731', 'Vinod Kumar', 81, 'A', 'E2+TE2');

-- --------------------------------------------------------

--
-- Table structure for table `permanent_address`
--

CREATE TABLE `permanent_address` (
  `Street Name` varchar(30) NOT NULL,
  `Area Name` varchar(20) NOT NULL,
  `City` text NOT NULL,
  `State` text NOT NULL,
  `Country` text NOT NULL,
  `Pincode` bigint(14) NOT NULL,
  `Phone` bigint(12) NOT NULL,
  `Email` varchar(34) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `permanent_address`
--

INSERT INTO `permanent_address` (`Street Name`, `Area Name`, `City`, `State`, `Country`, `Pincode`, `Phone`, `Email`) VALUES
('Deena Street', 'Rajiv Nagar', 'Erode', 'Tamil Nadu', 'India', 637204, 7339654878, 'harida@gmail.com'),
('Daksha street', 'Indu', 'Kochin', 'Kerala', 'India', 654321, 9876543212, 'shruthi@gmail.com'),
('Lalbhahath street', 'Gandhi', 'Bhubaneshawar', 'Orissa', 'India', 654321, 9090876543, 'siddharth@gmail.com'),
('Pangal street', 'EVR', 'Tanjore', 'Tamil Nadu', 'India', 675432, 9764136805, 'shruti@gmail.com'),
('Kumaresapuram street', 'Kuhu', 'Hyderabad', 'Andhra Pradesh', 'India', 689054, 8908654321, 'samyukta@gmail.com'),
('Anantha Bhavan', 'Manipur Nagar', 'E-City', 'Karnataka', 'India', 611908, 8899054876, 'ashok@gmail.com'),
('Prashantha Street', 'Joseph', 'Trivandrum', 'Kerala', 'India', 674321, 9090432123, 'rahul@gmail.com'),
('Tanmaya street', 'Kshtriya Nagar', 'Bihar', 'Assam', 'India', 643201, 8877665544, 'vinod@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `personal_information`
--

CREATE TABLE `personal_information` (
  `Id` int(3) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `DOB` date NOT NULL,
  `Gender` text NOT NULL,
  `Native Language` text NOT NULL,
  `Designation` text NOT NULL,
  `Blood Group` varchar(10) NOT NULL,
  `Physically Challenged` text NOT NULL,
  `Community` varchar(30) NOT NULL,
  `Religion` text NOT NULL,
  `Caste` varchar(40) NOT NULL,
  `Native State` text NOT NULL,
  `Nationality` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `personal_information`
--

INSERT INTO `personal_information` (`Id`, `Name`, `DOB`, `Gender`, `Native Language`, `Designation`, `Blood Group`, `Physically Challenged`, `Community`, `Religion`, `Caste`, `Native State`, `Nationality`) VALUES
(1, 'Harida', '2000-07-14', 'Female', 'Tamil', 'Under Graduate', 'A1+ve', 'No', 'BC', 'Hindu', 'General', 'Tamil Nadu', 'Indian'),
(2, 'Shruthi', '2000-04-14', 'Female', 'Tamil', 'Under Graduate', 'B+ve', 'No', 'General', 'Hindu', 'General', 'Tamil Nadu', 'Indian'),
(3, 'Siddharth', '2000-03-02', 'Male', 'Odia', 'Under Graduate', 'O+ve', 'No', 'General', 'Hindu', 'General', 'Orissa', 'Indian'),
(4, 'Shruti', '2000-06-09', 'Female', 'Tamil', 'Under Graduate', 'B+ve', 'No', 'General', 'Hindu', 'General', 'Tamil Nadu', 'Indian'),
(5, 'Ashok Raj', '1998-05-12', 'Male', 'Kannada', 'Under Graduate', 'A+ve', 'Yes Vision Impairment', 'General', 'Hindu', 'General', 'Karnataka', 'Indian'),
(6, 'Samyukta', '2001-08-13', 'Female', 'Telugu', 'Under Graduate', 'O+ve', 'No', 'OBC', 'Hindu', 'OBC', 'Andhra Pradesh', 'Indian'),
(7, 'Rahul Raj', '1999-04-02', 'Male', 'Malayalam', 'Under Graduate', 'B+ve', 'No', 'SC', 'Hindu', 'General ', 'Kerala', 'Indian'),
(8, 'Vinod Kumar', '2000-05-07', 'Male', 'Hindi', 'Under Graduate', 'A+ve', 'No', 'ST', 'Hindu', 'General', 'Bihar', 'Indian');

-- --------------------------------------------------------

--
-- Table structure for table `project details`
--

CREATE TABLE `project details` (
  `S.No` int(4) NOT NULL,
  `Semester` varchar(40) NOT NULL,
  `Course Type` varchar(30) NOT NULL,
  `Course Code` varchar(10) NOT NULL,
  `Course` text NOT NULL,
  `Project Title` varchar(70) NOT NULL,
  `Grade` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `project details`
--

INSERT INTO `project details` (`S.No`, `Semester`, `Course Type`, `Course Code`, `Course`, `Project Title`, `Grade`) VALUES
(1, 'Fall Semester 2019-2020', 'Embedded Theory+Project', 'CSE3013', 'Artificial Intelligence', 'Methods of ML', 'A'),
(2, 'Fall Semester 2020-2021', 'Embedded Theory+Project', 'MEE5707', 'Actuators and Drives', 'Mechanics of Motors', 'B'),
(3, 'Fall Semester 2020-2021', 'Embedded Theory+Project', 'CSE6005', 'Machine Leaning', 'Automatic Fall Detection', 'A'),
(4, 'Winter Semester 2019-2020', 'Embedded Theory+Project', 'ECE3040', 'Wireless Technologies for IOT', 'Wireless Charging Station', 'A'),
(5, 'Winter Semester 2019-2020', 'Embedded Theory+Project', 'CSE3013', 'Artificial Intelligence', 'AI in Medicine', 'S'),
(6, 'Fall Semester 2021-2022', 'Embedded Theory+Project', 'ITE4001', 'Network and Information Security ', 'Securing Data in Cloud', 'A'),
(7, 'Winter Semester 2013-2014', 'Embedded Theory+Lab+Project', 'ITE2001', 'Web Technologies', 'Various Methods of Building Webpages', 'S'),
(8, 'Fall Semester 2016-2017', 'Embedded Theory+Project', 'CSE4003', 'Cyber Security', 'Pen-testing and Vulnerability Testing of Web Applications', 'A'),
(9, 'Winter Semester 2018-2019', 'Embedded Theory+Project', 'CSE4003', 'Cyber Security', 'Adversarial Attacks Defence', 'S'),
(10, 'Winter Semester 2020-2021', 'Embedded Theory+Project', 'CLE2020', 'Solid Waste Management', 'A Research on Combustive Plastics', 'S');

-- --------------------------------------------------------

--
-- Table structure for table `project_details`
--

CREATE TABLE `project_details` (
  `S.no` int(4) NOT NULL,
  `Semester` varchar(20) NOT NULL,
  `courseType` varchar(30) NOT NULL,
  `Course Code` varchar(10) NOT NULL,
  `Course` text NOT NULL,
  `Project Title` varchar(30) NOT NULL,
  `Guide` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `project_details`
--

INSERT INTO `project_details` (`S.no`, `Semester`, `courseType`, `Course Code`, `Course`, `Project Title`, `Guide`) VALUES
(1, 'Fall Semester 2020', 'Embedded Theory+Project', 'ITE1008', 'Open Source Programming', 'E-Commerce Website', 'Jayakumar S-SITE'),
(2, 'Winter Semester 2019', 'Embedded Theory+Lab+Project', 'ITE2001', 'Web Technology', 'NGO Website', 'Divya Udayan-SITE'),
(3, 'Fall Semester 2018', 'Embedded Theory+Project', 'ITE4001', 'Network and Information Security', 'Secure Authentication of Data', 'Navaneethan-SITE'),
(4, 'Fall Semester 2021', 'Embedded Theory+Project', 'BCI2001', 'Data Privacy', 'Image Encryption using DES', 'Reenu-SBST');

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `S.No` int(3) NOT NULL,
  `CourseCode` varchar(10) NOT NULL,
  `Course` text NOT NULL,
  `CourseType` varchar(50) NOT NULL,
  `Category` varchar(30) NOT NULL,
  `Credits` int(3) NOT NULL,
  `Grade` text NOT NULL,
  `Faculty` varchar(50) NOT NULL,
  `Registration Number` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`S.No`, `CourseCode`, `Course`, `CourseType`, `Category`, `Credits`, `Grade`, `Faculty`, `Registration Number`) VALUES
(1, 'ITE1008', 'Open Source Programming', 'Embedded Theory+Project', 'Programme Elective', 4, 'A', 'Jayakumar S-SITE', '18BIT0411'),
(2, 'ITE4001', 'Network And Information Security', 'Embedded Theory+Project', 'Programme Elective', 4, 'A', 'Navaneethan-SITE', '18BIT0411'),
(3, 'ITE2001', 'Web Technology', 'Embedded Theory+Project+Lab', 'Programme Elective', 3, 'D', 'Divya Udayan-SITE', '18BIT0411'),
(4, 'CSE1007', 'Java Programming', 'Embedded Theory+Lab', 'Program Elective', 4, 'A', 'RaviShastri-SCOPE', '18BIT0359'),
(5, 'CHY1701', 'Engineering Chemistry', 'Embedded Theory+Lab', 'University Core', 4, 'S', 'Jose-SAS', '18BIT0359'),
(6, 'CSE3013', 'Artificial Intelligence', 'Embedded Theory+Project', 'Programme  Elective', 4, 'B', 'Harshita Patel-SITE', '18BIT0359'),
(7, 'BCI2001', 'Data Privacy', 'Embedded Theory+Project', 'University Elective', 4, 'A', 'Reenu-SBST', '18BIT0379'),
(8, 'ITE1008', 'Open Source Programming', 'Embedded Theory+Project', 'Programme Elective', 4, 'A', 'Jayakumar S-SITE', '18BIT0379'),
(9, 'EEE1001', 'Basics of Electronics', 'Embedded Theory+Lab', 'Programme Core', 3, 'B', 'Raja-SENSE', '18BIT0379'),
(10, 'BCI2001', 'Data Privacy', 'Embedded Theory+Project', 'University elective', 0, 'A', 'Reenu-SBST', '18BIT0405'),
(11, 'CSE4003', 'Cyber Security', 'Embedded Theory+Project', 'University Elective', 4, 'A', 'Navamani-SCOPE', '18BIT0405'),
(12, 'ITE2001', 'Web Technology', 'Embedd', '', 0, '', '', ''),
(12, 'ITE2001', 'Web Technology', 'Embedded Theory+Project+Lab', 'Programme Elective', 4, 'A', 'Divya Udayan-SITE', '18BIT0405'),
(13, 'ITE1008', 'Open Source Programming', 'Embedded Theory+Project', 'Programme Elective', 4, 'C', 'Jayakumar S-SITE', '17BME0912'),
(14, 'ITE1003', 'Database Management Systems', 'Embedded Theory+Lab+Project', 'Programme Core', 4, 'A', 'Saravana Kumar-SITE', '17BME0912'),
(15, 'ITE4001', 'Network and Information Security', 'Embedded Theory+Project', 'Programme Elective', 4, 'C', 'Navaneethan-SITE', '17BCE01111'),
(16, 'BCI2001', 'Data Privacy', 'Embedded Theory+Project', 'University Elective', 4, 'A', 'Reenu-SBST', '17BCE01111'),
(17, 'CHY1701', 'Engineering Chemistry', 'Embedded theory+Lab', 'University Core', 4, 'A', 'Jose-SAS', '19BEE0456'),
(18, 'BCI2001', 'Data Privacy', 'Embedded Theory+Project', 'University Elective', 4, 'C', 'Reenu-SBST', '19BEE0456'),
(19, 'ITE4001', 'Web Technology', 'Embedded Theory+Lab+Project', 'Program Elective', 3, 'A', 'Divya Udayan-SITE', '18BIS0731'),
(20, 'ITE1008', 'Open Source Programming', 'Embedded Thoery+Project', 'Programme Elective', 4, 'S', 'Jayakumar S-SITE', '18BIS0731');

-- --------------------------------------------------------

--
-- Table structure for table `research work`
--

CREATE TABLE `research work` (
  `S.No` int(4) NOT NULL,
  `Project Title` text NOT NULL,
  `Year Published` int(6) NOT NULL,
  `Co-authors` text NOT NULL,
  `Grade` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `research work`
--

INSERT INTO `research work` (`S.No`, `Project Title`, `Year Published`, `Co-authors`, `Grade`) VALUES
(1, 'Methods of ML', 2019, 'Vidhi Singh', 'A'),
(2, 'Mechanics of Motors', 2020, 'Thanesh Raj', 'B'),
(3, 'Automatic Fall Detection', 2020, 'Pranjal Preeth, Sighavi Manish', 'A'),
(4, 'Wireless Charging Station', 2019, 'Aayush Bhatia', 'A'),
(5, 'AI in Medicine', 2019, 'Aishwarya Rathore', 'S'),
(6, 'Securing Data in Cloud', 2021, 'Zeyna D\'Souza', 'A'),
(7, 'Various Methods of Building Webpages', 2013, 'Hemanth Chawla', 'S'),
(8, 'Pen-testing and Vulnerability Testing of Web Applications', 2016, 'Fathima Aala', 'A'),
(9, 'Adversarial Attacks Defence', 2018, 'Ravi Ramesh', 'S'),
(10, 'A Research on Combustive Plastics', 2020, 'Prithvi Venkatesan', 'S');

-- --------------------------------------------------------

--
-- Table structure for table `school_info`
--

CREATE TABLE `school_info` (
  `School` text NOT NULL,
  `Cabin` varchar(12) NOT NULL,
  `Department` text NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Intercom` bigint(30) NOT NULL,
  `Phone` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `school_info`
--

INSERT INTO `school_info` (`School`, `Cabin`, `Department`, `Email`, `Intercom`, `Phone`) VALUES
('SITE', 'SJT211A', 'Senior Professor in Information Technology', 'Jagadeesh@vit.ac.in', 123456, 9877898987),
('SENSE', 'TT-233', 'Assistant Professor in Electrical Department', 'kavin.r@vit.ac.in', 7778908, 7665909876),
('SBST', 'PLB-341', 'Assistant Professor in Biotechnology', 'reenu@vit.ac.in', 567890, 9900998765),
('SMEC', 'MB-123', 'Assistant Professor in Mechanics', 'ravi@vit.ac.in', 677789, 8900987654),
('SENSE', 'TT-123', 'Assistant Professor in Electrical Department', 'jose@gmail.com', 908765, 9908766789),
('SCOPE', 'SJT-678', 'Assistant Professor in Security Department', 'kalaivani@vit.ac.in', 909875, 7665467890),
('SITE', 'SJT-234', 'Assistant Professor in Networking Department', 'kavitha@vit.ac.in', 789032, 8900987654),
('SELECT', 'TT-230', 'Assistant Professor in Electrical Department', 'hamid@vit.ac.in', 453217, 9088765432),
('SCOPE', 'SJT-600', 'Assistant Professor in Information Technology Department', 'Pughal@vit.ac.in', 789087, 9009876543),
('SITE', 'SJT-355', 'Assistant Professor in Networking Department', 'lalith@vit.ac.in', 567890, 9907654321);

-- --------------------------------------------------------

--
-- Table structure for table `student_details`
--

CREATE TABLE `student_details` (
  `S.No` int(3) NOT NULL,
  `Registration Number` varchar(14) NOT NULL,
  `Name` varchar(34) NOT NULL,
  `Program` varchar(13) NOT NULL,
  `Year of Graduation` year(4) NOT NULL,
  `Course` varchar(34) NOT NULL,
  `Branch` varchar(34) NOT NULL,
  `Company` varchar(45) NOT NULL,
  `Designation` varchar(45) NOT NULL,
  `Mobile Number` bigint(10) NOT NULL,
  `Email` varchar(23) NOT NULL,
  `Current Address` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_details`
--

INSERT INTO `student_details` (`S.No`, `Registration Number`, `Name`, `Program`, `Year of Graduation`, `Course`, `Branch`, `Company`, `Designation`, `Mobile Number`, `Email`, `Current Address`) VALUES
(1, '17BCE0389', 'Honeysha', 'B.Tech', 2020, 'Information Security', 'Computer Science', 'Amazon', 'SDE', 9000987678, 'honeysha@gmail.com', 'Bangalore, India'),
(2, '18BME1222', 'Fahad M.S', 'B.Tech', 2022, 'Thermal production', 'Mechanical Engineering ', 'Bosch ', 'Senior Manager', 8909876789, 'fahad@gmail.com', 'Hosur, Tamil Nadu'),
(3, '17BIS890', 'Kamal Raja ', 'B.Tech ', 2021, 'Information Security', 'Spcl in Information Security', 'HP', 'Project manager', 9087654321, 'kamalraja@gmail.com', 'Australia'),
(4, '16BEC0943', 'Ganga Rao', 'B.Tech ', 2020, 'Electronics', 'ECE', 'Schneiders', 'Assistant manager', 9000766675, 'gangarao@gmail.com', 'Erode, Tamil Nadu'),
(5, '15BIT0410', 'Lakshay Gupta', 'B.Tech', 2019, 'Information systems', 'IT', 'Google', 'Team Leader', 7788996578, 'lakshay@gmail.com', 'Sydney, Australia'),
(6, '18BCE0234', 'Dhivya Sen', 'B.Tech', 2022, 'Network Security', 'Computer Science', 'Adobe', 'SE', 9900876543, 'dhivyasen@gmail.com', 'Chennai, Tamil Nadu'),
(7, '11BCE0090', 'Kailash R', 'B.Tech', 2014, 'Web Development', 'Computer Science', 'Freelancer', 'App developer', 9009876675, 'kailash@gmail.com', 'Bihar, India'),
(8, '13BIS0123', 'Harish Raghav', 'B.Tech ', 2016, 'Information Security ', 'B.Tech', 'Cisco ', 'Software Engineer', 9900987678, 'harishraghav@gmail.com', 'Bangalore, India'),
(9, '15BIT122', 'Jackie Shah', 'B.Tech', 2018, 'Information Systems ', 'IT', 'Microsoft', 'Full Stack Engineer', 8777654321, 'jackie@gmail.com', 'USA'),
(10, '16BCI0999', 'Helly Singh', 'B.Tech', 2020, 'Waste Management', 'Civil Engineering ', 'ACC', 'Customers Manager', 9978413256, 'hellysingh@gmail.com', 'Hyderabad, Andra Pradesh');

-- --------------------------------------------------------

--
-- Table structure for table `time_table`
--

CREATE TABLE `time_table` (
  `S.No` int(3) NOT NULL,
  `Course Code` varchar(20) NOT NULL,
  `Course` text NOT NULL,
  `Course type` varchar(50) NOT NULL,
  `Category` varchar(89) NOT NULL,
  `Slot` varchar(19) NOT NULL,
  `Venue` varchar(23) NOT NULL,
  `Faculty` varchar(80) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `time_table`
--

INSERT INTO `time_table` (`S.No`, `Course Code`, `Course`, `Course type`, `Category`, `Slot`, `Venue`, `Faculty`) VALUES
(1, 'ITE1008', 'Open Source Programming', 'Embedded Theory+Project', 'Programme Elective', 'B1+TB1', 'SJT341', 'Jayakumar S-SITE'),
(2, 'ITE4001', 'Network and Information Security', 'Embedded Theory+Project', 'Programme elective', 'F1+TF1', 'SJT127', 'Navaneethan-SITE'),
(3, 'ITE2001', 'Web Technology', 'Embedded Theory+Project+Lab', 'Programme Elective', 'G1+TG1', 'TT 389', 'Divya Udayan-SITE'),
(4, 'EEE1001', 'Basics of Electronics', 'Embedded Theory+Lab', 'Programme Core', 'C1+TC1', 'TT405', 'Raja-SENSE'),
(5, 'ITE1003', 'Database Management Systems', 'Embedded Theory+Project+Lab', 'Programme Core', 'D1+TD1', 'PLBG05', 'Saravana Kumar-SITE'),
(6, 'CHY1701', 'Engineering Chemistry', 'Embedded Theory+Lab', 'University Core', 'A2+TA2', 'MB 110', 'JOSE-SAS'),
(7, 'BCI2001', 'Data Privacy', 'Embedded Theory+Project', 'University Elective', 'B2+TB2', 'SJT340', 'Reenu-SBST'),
(8, 'CSE1007', 'Java Programming', 'Embedded Theory+Lab', 'Programme Elective', 'C2+TC2', 'TT209', 'RaviShastri-SCOPE'),
(9, 'CSE3013', 'Artificial Intelligence', 'Embedded Theory+Project', 'Programme Elective', 'G1+TG1', 'SJT456', 'Harshita Patel-SITE'),
(10, 'CSE4003', 'Cyber Security', 'Embedded Theory+Project', 'University Elective', 'E2+TE2', 'SJT 234', 'Navamani-SCOPE');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `username`, `password`, `role`) VALUES
(17, '', 'as', 'as', 'user'),
(34, '', 'a', 'a', 'user');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
