
CREATE TABLE `book` (
  `subject` varchar(20) DEFAULT NULL,
  `title` varchar(20) DEFAULT NULL,
  `author` varchar(20) DEFAULT NULL,
  `serial` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`subject`, `title`, `author`, `serial`) VALUES
('RDBMS', 'Database', 'Charles', 1),
('Phyics', 'Applied Physics', 'Newton', 123),
('Calculus', 'Calculus By', 'Howard Anton', 125),
('Psycology', 'Psyc', 'Wood', 254),
('Assembly', 'Assembly Language', 'Khanzada', 125);

-- --------------------------------------------------------

--
-- Table structure for table `bookissue`
--

CREATE TABLE `bookissue` (
  `stdid` varchar(20) DEFAULT NULL,
  `serial` varchar(10) DEFAULT NULL,
  `issue` date DEFAULT NULL,
  `exp` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bookissue`
--

INSERT INTO `bookissue` (`stdid`, `serial`, `issue`, `exp`) VALUES
('138', '01', '2022-07-24', '2022-07-27'),
('5436', '7247', '2020-07-30', '2022-07-30'),
('125', '0112', '2022-07-11', '2024-04-06'),
('', '', '2022-08-15', '2022-08-15');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `name` varchar(20) DEFAULT NULL,
  `userid` varchar(10) DEFAULT NULL,
  `branch` varchar(20) DEFAULT NULL,
  `mobile` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`name`, `userid`, `branch`, `mobile`) VALUES
('uzain', '1234', 'pk', 0315218838);
COMMIT;
