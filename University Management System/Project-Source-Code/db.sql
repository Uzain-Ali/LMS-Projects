
CREATE TABLE `record` (
  `id` int(11) NOT NULL,
  `stname` varchar(255) NOT NULL,
  `course` varchar(255) NOT NULL,
  `fee` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `record`
--

INSERT INTO `record` (`id`, `stname`, `course`, `fee`) VALUES
(1, 'fawad', 'bsse', 50000),
(125, 'moiz', 'bsse', 50000),
(147, 'muqeet', 'bsse', 50000),
(1122, 'noor', 'bsse', 50000),
(1132, 'hassan', 'bsse', 50000),
(12345, 'ammar', 'bsse', 50000),
(14445, 'hamza', 'bsse', 50000);

-- --------------------------------------------------------

--
-- Table structure for table `registerdb`
--

CREATE TABLE `registerdb` (
  `id` int(11) NOT NULL,
  `user` varchar(30) NOT NULL,
  `pass` text NOT NULL,
  `name` varchar(30) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `resis`
--

CREATE TABLE `resis` (
  `Examination` int(11) NOT NULL,
  `Year` text NOT NULL,
  `Semester` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `resiss`
--

CREATE TABLE `resiss` (
  `SL.NO` int(20) NOT NULL,
  `Course No` int(20) NOT NULL,
  `Course Title` int(20) NOT NULL,
  `Grade Point` int(20) NOT NULL,
  `Latter Grade` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `STUDID` varchar(200) NOT NULL,
  `FNAME` varchar(200) NOT NULL,
  `LNAME` varchar(200) NOT NULL,
  `ADDRESS` varchar(200) NOT NULL,
  `PHONE` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`STUDID`, `FNAME`, `LNAME`, `ADDRESS`, `PHONE`) VALUES
('21103101', 'Fawad', 'Anwar', '8/9', '03143567876'),
('211031062', 'Muqeet', 'Soomro', '5/433', '034456765'),
('21103099', 'Moiz', 'Hassan', '7/44', '0344567982'),
('21103109', 'Muhammad', 'Hassan', '7/5', '032245654');

-- --------------------------------------------------------

--
-- Table structure for table `student show`
--

CREATE TABLE `student show` (
  `uname` varchar(50) NOT NULL,
  `password` decimal(11,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student show`
--

INSERT INTO `student show` (`uname`, `password`) VALUES
('noor', '1125'),
('hassan', '1132'),
('noor', '1125');

-- --------------------------------------------------------

--
-- Table structure for table `students_db`
--

CREATE TABLE `students_db` (
  `STUDID` varchar(200) NOT NULL,
  `FNAME` varchar(200) NOT NULL,
  `LNAME` varchar(200) NOT NULL,
  `ADDRESS` varchar(200) NOT NULL,
  `PHONE` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `student_management_system`
--

CREATE TABLE `student_management_system` (
  `Roll_no` varchar(15) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Father_Name` varchar(55) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Category` varchar(10) NOT NULL,
  `Branch` varchar(30) CHARACTER SET utf8mb4 NOT NULL,
  `Year` varchar(10) NOT NULL,
  `Contact_no` varchar(10) NOT NULL,
  `Address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `user` varchar(30) NOT NULL,
  `pass` text NOT NULL,
  `name` varchar(30) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `user`, `pass`, `name`, `address`) VALUES
(1, 'noor', '123456', 'noor', '7/44'),
(2, 'ammar', '123456', 'ammar', '3/654'),
(3, 'hassan', '123456', 'hassan', '3/7');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `record`
--
ALTER TABLE `record`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registerdb`
--
ALTER TABLE `registerdb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resis`
--
ALTER TABLE `resis`
  ADD PRIMARY KEY (`Examination`);

--
-- Indexes for table `resiss`
--
ALTER TABLE `resiss`
  ADD PRIMARY KEY (`SL.NO`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`STUDID`);

--
-- Indexes for table `students_db`
--
ALTER TABLE `students_db`
  ADD PRIMARY KEY (`STUDID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;
