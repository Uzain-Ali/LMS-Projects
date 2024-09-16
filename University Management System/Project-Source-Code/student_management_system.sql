CREATE TABLE `students` (
  `Roll_no` varchar(15) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Father_Name` varchar(55) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Category` varchar(10) NOT NULL,
  `Branch` varchar(30) NOT NULL,
  `Year` varchar(10) NOT NULL,
  `Contact_no` varchar(11) NOT NULL,
  `Address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`Roll_no`, `Name`, `Father_Name`, `Gender`, `Category`, `Branch`, `Year`, `Contact_no`, `Address`) VALUES
('19', 'moiz', 'hassan', 'Male', 'General', 'Software Engineering', 'Year 2', '03124564356', 'Karachi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`Roll_no`);
COMMIT;

