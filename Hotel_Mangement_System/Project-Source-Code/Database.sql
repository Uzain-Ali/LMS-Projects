CREATE TABLE `ad_log` (
  `ID` varchar(10) NOT NULL,
  `Password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ad_log`
--

INSERT INTO `ad_log` (`ID`, `Password`) VALUES
('uzain', 'uzain123');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Ref_No` varchar(10) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Age` varchar(10) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Post_Code` varchar(10) NOT NULL,
  `Mobile_No` varchar(30) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Nationality` varchar(20) NOT NULL,
  `ID_Proof_Type` varchar(30) NOT NULL,
  `ID_Number` varchar(30) NOT NULL,
  `Address` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Ref_No`, `Name`, `Age`, `Gender`, `Post_Code`, `Mobile_No`, `Email`, `Nationality`, `ID_Proof_Type`, `ID_Number`, `Address`) VALUES
('162', 'fawad', '1', 'Male', '2065', '0313456874', 'fawad@gmail.com', 'Pakistani', 'Passport', '7129435021', 'Peshawar'),
('176', 'uzain', '40', 'Male', '5609', '03152188387', 'uzain@gmail.com', 'Pakistani', 'Passport', '4516048379', 'Karachi'),
('217', 'faiq', '29', 'Male', '1234', '0325765487', 'faiq@gmail.com', 'Pakistani', 'Driving Licence', '5429804176', 'Quetta'),
('486', 'munim', '32', 'Male', '9165', '03224568765x', 'munim@yahoo.com', 'Pakistani', 'Passport', '7520325601', 'Thatta'),
('534', 'taha', '54', 'Male', '6035', '03112458765', 'taha@gmail.com', 'Pakistani', 'National ID Card', '8264196389', 'Lahore'),
('552', 'muqeet', '52', 'Male', '7029', '03224568755', 'muqeet@yahoo.com', 'Pakistani', 'Passport', '9724501583', 'Multan'),
('60', 'harim', '38', 'male', '1214', '03245674489', 'harim@yahoo.com', 'Pakistani', 'Driving Licence', '7291056729', 'Hyderabad');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `Floor` varchar(10) NOT NULL,
  `Room_No` varchar(10) NOT NULL,
  `Room_Type` varchar(10) NOT NULL,
  `Available` varchar(20) NOT NULL,
  `Price` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`Floor`, `Room_No`, `Room_Type`, `Available`, `Price`) VALUES
('1', '101', 'Luxury', 'Yes', '3500'),
('1', '102', 'Single', 'No', '2000'),
('1', '103', 'Single', 'No', '2000'),
('1', '104', 'Double', 'Yes', '2500'),
('2', '201', 'Double', 'Yes', '2500'),
('2', '203', 'Double', 'Yes', '2500'),
('2', '205', 'Luxury', 'No', '3500'),
('3', '302', 'Double', 'No', '2500'),
('3', '303', 'Luxury', 'Yes', '3500'),
('3', '304', 'Single', 'Yes', '2000'),
('4', '401', 'Single', 'No', '2000'),
('4', '402', 'Double', 'Yes', '2500'),
('4', '404', 'Luxury', 'Yes', '3500');

-- --------------------------------------------------------

--
-- Table structure for table `details_meal`
--

CREATE TABLE `details_meal` (
  `Meal_Type` varchar(10) NOT NULL,
  `Price` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `details_meal`
--

INSERT INTO `details_meal` (`Meal_Type`, `Price`) VALUES
('None', '0'),
('One Meal', '100'),
('Three Meal', '300'),
('Two Meal', '250');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `Name` varchar(10) NOT NULL,
  `Phone` varchar(20) NOT NULL,
  `Review` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`Name`, `Phone`, `Review`) VALUES
('Fawad', '0131xxxxxx', 'Good Service'),
('Uzain', '1805xxxxxx', 'Friendly Behavior'),
('Muqeet', '982xxxxxxx', 'Satisfied. Recommanded');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `Mobile_No` varchar(20) NOT NULL,
  `Check_In_Date` varchar(20) NOT NULL,
  `Check_Out_Date` varchar(20) NOT NULL,
  `Room_Type` varchar(20) NOT NULL,
  `Room_No` varchar(20) NOT NULL,
  `Meal` varchar(20) NOT NULL,
  `Days_Number` varchar(20) NOT NULL,
  `Total_Bill` varchar(10) NOT NULL,
  `Paid_Amount` varchar(10) NOT NULL DEFAULT '0',
  `Due_Amount` varchar(10) NOT NULL,
  `Status` varchar(15) NOT NULL DEFAULT 'Checked In'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`Mobile_No`, `Check_In_Date`, `Check_Out_Date`, `Room_Type`, `Room_No`, `Meal`, `Days_Number`, `Total_Bill`, `Paid_Amount`, `Due_Amount`, `Status`) VALUES
('0131xxxxxxx', '31/10/2022', '03/11/2022', 'Single', '304', 'One Meal', '3', '6363.00 ', '6363.00', '0.00', 'Checked Out'),
('0171xxxxxxx', '14/09/2022', '23/09/2022', 'Single', '102', 'One Meal', '9', '19089.00 ', '10000.00', '9089.00', 'Checked In'),
('017xxxxxxxx', '02/05/2022', '05/05/2022', 'Luxury', '205', 'Two Meal', '3', '11362.50 ', '8500.00', '2862.50', 'Checked In'),
('1212xxxxxxx', '18/10/2022', '31/10/2022', 'Single', '103', 'None', '13', '26260.00 ', '19500.00', '6760.00', 'Checked In'),
('1805xxxxxx', '01/12/2022', '05/12/2022', 'Double', '203', 'None', '4', '10100.00 ', '10100.00', '0.00', 'Checked Out'),
('4420xxxxxxx', '01/08/2022', '07/08/2022', 'Double', '302', 'Two Meal', '6', '16665.00 ', '10500.00', '6165.00', 'Checked In'),
('982xxxxxxx', '22/06/2022', '24/06/2022', 'Single', '401', 'Three Meal', '2', '4646.00 ', '3000.00', '1646.00', 'Checked In');

-- --------------------------------------------------------

--
-- Table structure for table `st_log`
--

CREATE TABLE `st_log` (
  `ID` varchar(10) NOT NULL,
  `Password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `st_log`
--

INSERT INTO `st_log` (`ID`, `Password`) VALUES
('esharib', 'esharib123'),
('uzain', 'uzain123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Ref_No`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`Room_No`);

--
-- Indexes for table `details_meal`
--
ALTER TABLE `details_meal`
  ADD PRIMARY KEY (`Meal_Type`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`Mobile_No`) USING BTREE;
COMMIT;
