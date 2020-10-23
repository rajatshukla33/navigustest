-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2020 at 06:28 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cee_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_acc`
--

CREATE TABLE `admin_acc` (
  `admin_id` int(11) NOT NULL,
  `admin_user` varchar(1000) NOT NULL,
  `admin_pass` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_acc`
--

INSERT INTO `admin_acc` (`admin_id`, `admin_user`, `admin_pass`) VALUES
(1, 'admin', 'password');

-- --------------------------------------------------------

--
-- Table structure for table `course_tbl`
--

CREATE TABLE `course_tbl` (
  `cou_id` int(11) NOT NULL,
  `cou_name` varchar(1000) NOT NULL,
  `cou_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_tbl`
--

INSERT INTO `course_tbl` (`cou_id`, `cou_name`, `cou_created`) VALUES
(66, 'C++', '2020-10-22 12:02:51'),
(67, 'HTML', '2020-10-22 12:07:12'),
(68, 'PHP', '2020-10-22 12:07:28'),
(69, 'JAVA', '2020-10-22 12:07:39');

-- --------------------------------------------------------

--
-- Table structure for table `examinee_tbl`
--

CREATE TABLE `examinee_tbl` (
  `exmne_id` int(11) NOT NULL,
  `exmne_fullname` varchar(1000) NOT NULL,
  `exmne_course` varchar(1000) NOT NULL,
  `exmne_gender` varchar(1000) NOT NULL,
  `exmne_birthdate` varchar(1000) NOT NULL,
  `exmne_year_level` varchar(1000) NOT NULL,
  `exmne_email` varchar(1000) NOT NULL,
  `exmne_password` varchar(1000) NOT NULL,
  `exmne_status` varchar(1000) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `examinee_tbl`
--

INSERT INTO `examinee_tbl` (`exmne_id`, `exmne_fullname`, `exmne_course`, `exmne_gender`, `exmne_birthdate`, `exmne_year_level`, `exmne_email`, `exmne_password`, `exmne_status`) VALUES
(10, 'Rajat Bajpai', '66', 'male', '1999-05-06', 'fourth year', 'rajatbajpai33@gmail.com', 'Rajat@123', 'active'),
(11, 'Khushboo Mehla', '68', 'female', '1998-02-17', 'fourth year', 'khushboomehla33@gmail.com', 'Khushboo@123', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `exam_answers`
--

CREATE TABLE `exam_answers` (
  `exans_id` int(11) NOT NULL,
  `axmne_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `quest_id` int(11) NOT NULL,
  `exans_answer` varchar(1000) NOT NULL,
  `exans_status` varchar(1000) NOT NULL DEFAULT 'new',
  `exans_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `exam_attempt`
--

CREATE TABLE `exam_attempt` (
  `examat_id` int(11) NOT NULL,
  `exmne_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `examat_status` varchar(1000) NOT NULL DEFAULT 'used'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `exam_question_tbl`
--

CREATE TABLE `exam_question_tbl` (
  `eqt_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `exam_question` varchar(1000) NOT NULL,
  `exam_ch1` varchar(1000) NOT NULL,
  `exam_ch2` varchar(1000) NOT NULL,
  `exam_ch3` varchar(1000) NOT NULL,
  `exam_ch4` varchar(1000) NOT NULL,
  `exam_answer` varchar(1000) NOT NULL,
  `exam_status` varchar(1000) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam_question_tbl`
--

INSERT INTO `exam_question_tbl` (`eqt_id`, `exam_id`, `exam_question`, `exam_ch1`, `exam_ch2`, `exam_ch3`, `exam_ch4`, `exam_answer`, `exam_status`) VALUES
(39, 27, 'Which of the following is called address operator?', '&', '%', '_', '*', '&', 'active'),
(40, 27, 'Which of the following is used for comments in C++?', '// comment ', '/* comment */ ', 'both // comment or /* comment */ ', 'd) // comment */', 'both // comment or /* comment */ ', 'active'),
(41, 27, 'What are the actual parameters in C++?', ' Parameters with which functions are called ', ' Parameters which are used in the definition of a function ', 'Variables other than passed parameters in a function ', 'Variables that are never used in the function', ' Parameters with which functions are called ', 'active'),
(42, 27, 'What are the formal parameters in C++?', 'Parameters with which functions are called ', 'Parameters which are used in the definition of the function ', 'Variables other than passed parameters in a function ', 'Variables that are never used in the function', 'Parameters which are used in the definition of the function ', 'active'),
(43, 27, 'Which function is used to read a single character from the console in C++?', 'cin.get(ch) ', 'getline(ch) ', 'read(ch) ', ' scanf(ch)', 'cin.get(ch) ', 'active'),
(44, 27, 'Which function is used to write a single character to console in C++?', 'cout.put(ch) ', 'cout.putline(ch) ', 'write(ch) ', 'printf(ch)', 'cout.put(ch) ', 'active'),
(45, 27, 'What are the escape sequences?', 'Set of characters that convey special meaning in a program ', 'Set of characters that whose use are avoided in C++ programs ', 'Set of characters that are used in the name of the main function of the program ', 'Set of characters that are avoided in cout statements', 'Set of characters that convey special meaning in a program ', 'active'),
(46, 27, 'Which of the following escape sequence represents carriage return?', '\r ', '\n ', '\n\r ', 'c', '\r ', 'active'),
(47, 27, 'Who created C++?', 'Bjarne Stroustrup ', 'Dennis Ritchie ', 'Ken Thompson ', 'Brian Kernighan', 'Bjarne Stroustrup ', 'active'),
(48, 28, 'Which of the following statement is correct?', 'Structure in C allows Constructor definition ', 'Structure in C++ allows Constructor definition ', 'Both allow Constructor definition ', 'C allows constructor definition while C++ does not', 'Structure in C++ allows Constructor definition ', 'active'),
(49, 28, 'What happens if the following code is compiled on both C and C++?  \r\n#include<stdio.h> \r\nstruct STRUCT { \r\nprivate: 	\r\nint a; \r\n}; \r\nint main() { 	\r\nprintf(\"%d\", (int)sizeof(struct STRUCT)); 	\r\nreturn 0; \r\n}', 'The program runs fine and both prints output “HELLO THIS IS STRUCTURE” ', 'The program gives an error in case of C but runs perfectly in case of C++ ', 'The program gives an error in case of C++ but runs perfectly in case of C ', 'The program gives an error in case of both C and C++', 'The program gives an error in case of C but runs perfectly in case of C++ ', 'active'),
(50, 28, 'Which of the following is correct about this pointer in C++?', 'this pointer is passed as a hidden argument in all the functions of a class ', 'this pointer is passed as a hidden argument in all non-static functions of a class ', 'this pointer is passed as a hidden argument in all static functions of a class ', 'this pointer is passed as a hidden argument in all static variables of a class', 'this pointer is passed as a hidden argument in all non-static functions of a class ', 'active'),
(51, 28, 'Which of the following operator is used with this pointer to access members of a class? ', '. ', '!', '-> ', '~', '-> ', 'active'),
(52, 28, ' What is the other name of compile-time polymorphism? ', 'Static polymorphism ', 'Dynamic polymorphism ', 'Executing polymorphism ', 'Non-executing polymorphism', 'Static polymorphism ', 'active'),
(53, 28, 'Which of the following syntax can be used to use a member of a namespace without including that namespace?', 'namespace::member ', 'namespace->member ', 'namespace.member', 'namespace~member', 'namespace::member ', 'active'),
(54, 28, 'Which is used to keep the call by reference value as intact? ', 'static ', 'const ', 'absolute ', 'virtual', 'const ', 'active'),
(55, 28, ' By default how the value are passed in c++? ', 'call by value ', 'call by reference ', 'call by pointer ', 'call by object', 'call by value ', 'active'),
(56, 28, 'What will happen when we use void in argument passing? ', 'It will not return value to its caller ', 'It will return value to its caller ', 'Maybe or may not be return any value to its caller ', 'It will return value with help of object', 'It will not return value to its caller ', 'active'),
(57, 28, 'How many ways of passing a parameter are there in c++?', '1', '2', '3', '4', '3', 'active'),
(58, 29, 'Which of the following option leads to the portability and security of Java?', 'Bytecode is executed by JVM ', 'The applet makes the Java code secure and portable ', 'Use of exception handling ', 'Dynamic binding between objects', 'Bytecode is executed by JVM ', 'active'),
(59, 29, 'Which of the following is not a Java features?', 'Dynamic ', 'Architecture Neutral ', 'Use of pointers ', 'Object-oriented', 'Use of pointers ', 'active'),
(60, 29, 'The u0021 article referred to as a', 'Unicode escape sequence ', 'Octal escape ', 'Hexadecimal ', 'Line feed', 'Unicode escape sequence ', 'active'),
(61, 29, '_____ is used to find and fix bugs in the Java programs.', 'JVM ', 'JRE ', 'JDK ', 'JDB', 'JDB', 'active'),
(62, 29, 'What is the return type of the hashCode() method in the Object class?', 'Object', 'int', 'long', 'void', 'int', 'active'),
(63, 29, 'Which of the following is a valid long literal?', 'ABH8097 ', 'L990023 ', '904423 ', '0xnf029L', '0xnf029L', 'active'),
(64, 29, 'What does the expression float a = 35 / 0 return?', '0', 'Not a Number ', 'Infinity ', 'Run time exception', 'Infinity ', 'active'),
(65, 29, 'Evaluate the following Java expression, if x=3, y=5, and z=10:  \r\n++z + y - y + z + x++', '24', '23', '20', '25', '', 'active'),
(66, 29, 'Which of the following tool is used to generate API documentation in HTML format from doc comments in source code?', 'javap tool ', 'javaw command ', 'Javadoc tool ', 'javah command', 'Javadoc tool ', 'active'),
(67, 29, 'Which of the following creates a List of 3 visible items and multiple selections abled?', 'new List(false, 3) ', 'new List(3, true) ', 'new List(true, 3) ', 'new List(3, false)', 'new List(3, true) ', 'active'),
(68, 30, 'Which of the following for loop declaration is not valid?', 'for ( int i = 99; i >= 0; i / 9 ) ', 'for ( int i = 7; i <= 77; i += 7 ) ', 'for ( int i = 20; i >= 2; - -i ) ', 'for ( int i = 2; i <= 20; i = 2* i )', 'for ( int i = 99; i >= 0; i / 9 ) ', 'active'),
(69, 30, 'Which method of the Class.class is used to determine the name of a class represented by the class object as a String?', 'getClass() ', 'intern() ', 'getName() ', 'toString()', 'getName() ', 'active'),
(70, 30, ' In which process, a local variable has the same name as one of the instance variables?', 'Serialization ', 'Variable Shadowing ', 'Abstraction ', 'Multi-threading', 'Variable Shadowing ', 'active'),
(71, 30, 'Which package contains the Random class?', 'java.util package ', 'java.lang package ', 'java.awt package ', 'java.io package', 'java.util package ', 'active'),
(72, 30, 'What do you mean by nameless objects?', 'An object created by using the new keyword. ', 'An object of a superclass created in the subclass. ', 'An object without having any name but having a reference. ', 'An object that has no reference.', 'An object that has no reference.', 'active'),
(73, 30, 'An interface with no fields or methods is known as a ______.', 'Runnable Interface ', 'Marker Interface ', 'Abstract Interface ', 'CharSequence Interface', 'Marker Interface ', 'active'),
(74, 30, 'Which of the following is an immediate subclass of the Panel class?', 'Applet class ', 'Window class ', 'Frame class ', 'Dialog class', 'Applet class ', 'active'),
(75, 30, 'Which option is false about the final keyword?', 'A final method cannot be overridden in its subclasses. ', 'A final class cannot be extended. ', 'A final class cannot extend other classes. ', 'A final method can be inherited.', 'A final class cannot extend other classes. ', 'active'),
(76, 30, 'Which of these classes are the direct subclasses of the Throwable class?', 'RuntimeException and Error class ', 'Exception and VirtualMachine', 'Error class Error and Exception class IOException and VirtualMachine', 'Error class', 'Error class Error and Exception class IOException and VirtualMachine', 'active'),
(77, 30, 'What do you mean by chained exceptions in Java?', 'Exceptions occurred by the VirtualMachineError', 'An exception caused by other exceptions ', 'Exceptions occur in chains with discarding the debugging information ', 'None of the above', 'An exception caused by other exceptions ', 'active'),
(78, 31, 'Which of the below symbols is a newline character?', '\r', '\n', '', '/n', '\n', 'active'),
(79, 31, 'Which of the conditional statements is/are supported by PHP? \r\ni) if statements \r\nii) if-else statements \r\niii) if-elseif statements \r\niv) switch statements', ' Only i) ', 'i), ii) and iv) ', 'ii), iii) and iv) ', ' i), ii), iii) and iv)', ' i), ii), iii) and iv)', 'active'),
(80, 31, ' Which of the looping statements is/are supported by PHP?  \r\ni) for loop \r\nii) while loop \r\niii) do-while loop \r\niv) foreach loop', 'i) and ii) ', ' i), ii) and iii) ', ' i), ii), iii) and iv) ', ' Only iv)', ' i), ii), iii) and iv) ', 'active'),
(81, 31, 'If $a = 12 what will be returned when ($a == 12) ? 5 : 1 is executed?', '12', '1', '5', 'Error', '5', 'active'),
(82, 31, 'The practice of separating the user from the true inner workings of an application through well-known interfaces is known as _________', 'Polymorphism', 'Inheritance', 'Encapsulation', 'Abstraction', 'Encapsulation', 'active'),
(83, 31, 'Which one of the following property scopes is not supported by PHP?', 'friendly', 'final', 'static', 'constant', 'friendly', 'active'),
(84, 31, 'Which one of the following is the right way to call a class constant, given that the class is mathFunction?', 'echo PI; ', 'echo mathFunction->PI; ', 'echo mathFunction::PI; ', 'echo mathFunction=PI;', 'echo mathFunction::PI; ', 'active'),
(85, 31, 'Which one of the following is the right way to invoke a method?', '$object->methodName(); ', 'object->methodName(); ', 'object::methodName(); ', '$object::methodName();', '$object->methodName(); ', 'active'),
(86, 31, 'Which one of the following regular expression matches any string containing zero or one p?', 'p+ ', 'p* ', 'P? ', ' p#', 'P? ', 'active'),
(87, 31, 'How many functions does PHP offer for searching strings using POSIX style regular expression?', '7', '8', '9', '10', '7', 'active'),
(88, 32, 'HTML stands for -  ', 'HighText Machine Language ', 'HyperText and links Markup Language ', 'HyperText Markup Language ', 'None of these', 'HyperText Markup Language ', 'active'),
(89, 32, 'The correct sequence of HTML tags for starting a webpage is - ', ' Head, Title, HTML, body ', 'HTML, Body, Title, Head ', 'HTML, Head, Title, Body ', 'HTML, Head, Title, Body', 'HTML, Head, Title, Body', 'active'),
(90, 32, 'Which of the following tag is used for inserting the largest heading in HTML?  ', '<h3> ', '<h1> ', '<h5> ', '<h6>', '<h1> ', 'active'),
(91, 32, 'Which of the following tag is used to insert a line-break in HTML?', '<br>', '<a>', '<pre>', '<b>', '<br>', 'active'),
(92, 32, 'How to create an unordered list (a list with the list items in bullets) in HTML?', '<ul>', '<ol>', '<li>', '<i>', '<ul>', 'active'),
(93, 32, 'How to create a hyperlink in HTML?', '<a href = \"www.javatpoint.com\"> javaTpoint.com </a> ', '<a url = \"www.javatpoint.com\" javaTpoint.com /a> ', '<a link = \"www.javatpoint.com\"> javaTpoint.com </a> ', '<a> www.javatpoint.com <javaTpoint.com /a>', '<a href = \"www.javatpoint.com\"> javaTpoint.com </a> ', 'active'),
(94, 32, 'How to create an ordered list (a list with the list items in numbers) in HTML?', '<ul>', '<ol>', '<li>', '<i>', '<ol>', 'active'),
(95, 32, 'Which of the following element is responsible for making the text italic in HTML?', '<i>', '<italic>', '<it>', '<pre>', '<i>', 'active'),
(96, 32, 'How to insert an image in HTML? ', ' <img href = \"jtp.png\" /> ', '<img url = \"jtp.png\" /> ', '<img link = \"jtp.png\" /> ', '<img src = \"jtp.png\" />', '<img src = \"jtp.png\" />', 'active'),
(97, 32, 'How to add a background color in HTML?', '<marquee bg color: \"red\"> ', '<marquee bg-color = \"red\"> ', '<marquee bgcolor = \"red\"> ', '<marquee color = \"red\">', '<marquee bgcolor = \"red\"> ', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `exam_tbl`
--

CREATE TABLE `exam_tbl` (
  `ex_id` int(11) NOT NULL,
  `cou_id` int(11) NOT NULL,
  `ex_title` varchar(1000) NOT NULL,
  `ex_time_limit` varchar(1000) NOT NULL,
  `ex_questlimit_display` int(11) NOT NULL,
  `ex_description` varchar(1000) NOT NULL,
  `ex_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam_tbl`
--

INSERT INTO `exam_tbl` (`ex_id`, `cou_id`, `ex_title`, `ex_time_limit`, `ex_questlimit_display`, `ex_description`, `ex_created`) VALUES
(27, 66, 'C++ beginner', '10', 1, 'This exam will check the basics of candidate in C++ language', '2020-10-22 12:06:49'),
(28, 66, 'C++ Intermediate', '10', 1, 'This exam will check candidates intermediate knowledge in C++', '2020-10-22 12:08:40'),
(29, 69, 'Java beginner', '10', 1, 'This test will check basics of Java knowledge of a student', '2020-10-22 12:09:42'),
(30, 69, 'Java Advanced', '10', 10, 'This test will check advanced knowledge of Java of a candidate', '2020-10-23 03:36:08'),
(31, 68, 'PHP exam', '10', 10, 'This exam will test for PHP knoweldge', '2020-10-22 16:32:04'),
(32, 67, 'HTML exam', '10', 10, 'This test will test for HTML knowledge of a candidate', '2020-10-22 16:51:30');

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks_tbl`
--

CREATE TABLE `feedbacks_tbl` (
  `fb_id` int(11) NOT NULL,
  `exmne_id` int(11) NOT NULL,
  `fb_exmne_as` varchar(1000) NOT NULL,
  `fb_feedbacks` varchar(1000) NOT NULL,
  `fb_date` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_acc`
--
ALTER TABLE `admin_acc`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `course_tbl`
--
ALTER TABLE `course_tbl`
  ADD PRIMARY KEY (`cou_id`);

--
-- Indexes for table `examinee_tbl`
--
ALTER TABLE `examinee_tbl`
  ADD PRIMARY KEY (`exmne_id`);

--
-- Indexes for table `exam_answers`
--
ALTER TABLE `exam_answers`
  ADD PRIMARY KEY (`exans_id`);

--
-- Indexes for table `exam_attempt`
--
ALTER TABLE `exam_attempt`
  ADD PRIMARY KEY (`examat_id`);

--
-- Indexes for table `exam_question_tbl`
--
ALTER TABLE `exam_question_tbl`
  ADD PRIMARY KEY (`eqt_id`);

--
-- Indexes for table `exam_tbl`
--
ALTER TABLE `exam_tbl`
  ADD PRIMARY KEY (`ex_id`);

--
-- Indexes for table `feedbacks_tbl`
--
ALTER TABLE `feedbacks_tbl`
  ADD PRIMARY KEY (`fb_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_acc`
--
ALTER TABLE `admin_acc`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `course_tbl`
--
ALTER TABLE `course_tbl`
  MODIFY `cou_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `examinee_tbl`
--
ALTER TABLE `examinee_tbl`
  MODIFY `exmne_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `exam_answers`
--
ALTER TABLE `exam_answers`
  MODIFY `exans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=328;

--
-- AUTO_INCREMENT for table `exam_attempt`
--
ALTER TABLE `exam_attempt`
  MODIFY `examat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `exam_question_tbl`
--
ALTER TABLE `exam_question_tbl`
  MODIFY `eqt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `exam_tbl`
--
ALTER TABLE `exam_tbl`
  MODIFY `ex_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `feedbacks_tbl`
--
ALTER TABLE `feedbacks_tbl`
  MODIFY `fb_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
