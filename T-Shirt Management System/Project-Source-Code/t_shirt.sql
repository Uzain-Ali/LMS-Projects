
CREATE TABLE `customer_info` (
  `Name` varchar(20) NOT NULL,
  `Age` int(10) NOT NULL,
  `Address` varchar(30) NOT NULL,
  `Phone` int(20) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_info`
--

INSERT INTO `customer_info` (`Name`, `Age`, `Address`, `Phone`, `Password`) VALUES
('t', 5, 'de', 66, '1234'),
('mony', 21, 'kk', 99, '54');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `phone` int(20) NOT NULL,
  `password` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`phone`, `password`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `login-info`
--

CREATE TABLE `login-info` (
  `Phone` int(20) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login-info`
--

INSERT INTO `login-info` (`Phone`, `Password`) VALUES
(1234, 1234);


-- --------------------------------------------------------

--
-- Table structure for table `t_shirt_order`
--

CREATE TABLE `t_shirt_order` (
  `color` varchar(20) NOT NULL,
  `size` varchar(20) NOT NULL,
  `quantity` int(50) NOT NULL,
  `price` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_shirt_order`
--

INSERT INTO `t_shirt_order` (`color`, `size`, `quantity`, `price`) VALUES
('green', 'Large', 1, 600),
('red', 'Extra extra large', 1, 700),
('red', 'Medium', 1, 800),
('red', 'Medium', 1, 800),
('green', 'Medium', 1, 600),
('red', 'Medium', 5, 200);
COMMIT;

