-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2024 at 04:47 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin2`
--

-- --------------------------------------------------------

--
-- Table structure for table `crud`
--

CREATE TABLE `crud` (
  `id` double NOT NULL,
  `file_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `item` varchar(25) NOT NULL,
  `amount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `crud`
--

INSERT INTO `crud` (`id`, `file_path`, `item`, `amount`) VALUES
(1, '/path/to/file', 'Widget', 10),
(2, '', 'Wash', 20),
(3, 'uploads/about-img.png', 'Laundry', 20);

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE `driver` (
  `id` int(11) NOT NULL,
  `email` varchar(500) NOT NULL,
  `password` varchar(200) NOT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`id`, `email`, `password`, `file_path`, `uploaded_at`) VALUES
(2, 'Monster@gmail.com', 'melroy', 'uploads/contactus.png.png', '2024-05-21 08:54:58'),
(3, 'Rakesh@gmail.com', 'melroy', 'uploads/arrow.png', '2024-05-26 17:52:18');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `submission_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pickup_address` text NOT NULL,
  `dropoff_address` text NOT NULL,
  `selected_options` text DEFAULT NULL,
  `pickup_datetime` datetime NOT NULL,
  `dropoff_datetime` datetime NOT NULL,
  `order_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_name`, `phone_number`, `email`, `pickup_address`, `dropoff_address`, `selected_options`, `pickup_datetime`, `dropoff_datetime`, `order_id`) VALUES
(2, 'Melroy', '6364402890', 'melroy09@gmail.com', '777777, 5-78-4, apple, mango, apple', 'dfghjknbvfd', '', '2024-05-31 20:11:00', '2024-06-01 20:11:00', 'ROY-6657227EC02BB'),
(3, 'Melroy', '6364402890', 'melroy09@gmail.com', ', , , , ', 'dfghjknbvfd', 'Array', '2024-06-01 21:23:00', '2024-06-03 21:23:00', 'ROY-6657256CBF933'),
(4, 'Melroy', '6364402890', 'melroy09@gmail.com', '777777, 5-78-4, apple, mango, apple', 'dfghjknbvfd', '', '2024-06-01 21:23:00', '2024-06-03 21:23:00', 'ROY-665725F4D78AA'),
(5, 'Melroy', '6364402890', 'melroy09@gmail.com', '777777, 5-78-4, apple, mango, apple', 'dfghjknbvfd', '', '2024-06-01 21:23:00', '2024-06-03 21:23:00', 'ROY-66572713D4287'),
(6, 'Melroy', '6364402890', 'melroy09@gmail.com', '777777, 5-78-4, apple, mango, apple', 'dfghjknbvfd', '', '2024-05-31 18:33:00', '2024-06-01 23:36:00', 'ROY-6657273B43D13'),
(7, 'Melroy', '6364402890', 'melroy09@gmail.com', '777777, 5-78-4, apple, mango, apple', 'xdrtyujn', '', '2024-05-31 22:33:00', '2024-06-07 18:36:00', 'ROY-6657279440CDF'),
(8, 'Melroy', '6364402890', 'melroy09@gmail.com', '777777, 5-78-4, apple, mango, apple', 'xdrtyujn', '', '2024-05-31 22:33:00', '2024-06-07 18:36:00', 'ROY-665728E56FAF0');

-- --------------------------------------------------------

--
-- Table structure for table `signup1`
--

CREATE TABLE `signup1` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `middlename` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `number` varchar(15) NOT NULL,
  `question1` varchar(255) NOT NULL,
  `answer1` varchar(255) NOT NULL,
  `question2` varchar(255) NOT NULL,
  `answer2` varchar(255) NOT NULL,
  `question3` varchar(255) NOT NULL,
  `answer3` varchar(255) NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `landmark` varchar(255) DEFAULT NULL,
  `pincode` int(7) NOT NULL,
  `building_number` varchar(50) DEFAULT NULL,
  `road_name` varchar(100) NOT NULL,
  `dt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `signup1`
--

INSERT INTO `signup1` (`id`, `firstname`, `middlename`, `lastname`, `email`, `password`, `number`, `question1`, `answer1`, `question2`, `answer2`, `question3`, `answer3`, `city`, `landmark`, `pincode`, `building_number`, `road_name`, `dt`) VALUES
(1, 'Melroy', '', 'Mathias', 'melroy09@gmail.com', 'monster', '6364402890', 'In what city were you born?', 'udupi', 'What was the name of your elementary school?', 'New York', 'What is the make and model of your first car?', 'Blue', 'apple', 'mango', 777777, '5-78-4', 'apple', '2024-05-28 16:11:08');

-- --------------------------------------------------------

--
-- Table structure for table `superadmin`
--

CREATE TABLE `superadmin` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `superadmin`
--

INSERT INTO `superadmin` (`id`, `email`, `password`, `name`, `image`) VALUES
(1, 'melroy09@gmail.com', 'monster', 'Melroy', 'pickup.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `tddryclean`
--

CREATE TABLE `tddryclean` (
  `id` int(11) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tdiron`
--

CREATE TABLE `tdiron` (
  `id` int(11) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tdleather`
--

CREATE TABLE `tdleather` (
  `id` int(11) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tdpetcloth`
--

CREATE TABLE `tdpetcloth` (
  `id` int(11) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tdprimiumwash`
--

CREATE TABLE `tdprimiumwash` (
  `id` int(11) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tdprimiumwash`
--

INSERT INTO `tdprimiumwash` (`id`, `file_path`, `item`, `amount`) VALUES
(1, 'uploads/contactus.png.png', 'Wash', 20.00),
(2, 'uploads/contactus.png.png', 'Read', 50.00);

-- --------------------------------------------------------

--
-- Table structure for table `tdshoewash`
--

CREATE TABLE `tdshoewash` (
  `id` int(11) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tdshoewash`
--

INSERT INTO `tdshoewash` (`id`, `file_path`, `item`, `amount`) VALUES
(1, 'uploads/Screenshot 2023-09-11 094238.png', 'Orang', 20.00),
(2, 'uploads/contactus.png.png', 'Laundry', 50.00);

-- --------------------------------------------------------

--
-- Table structure for table `tdspecialgarment`
--

CREATE TABLE `tdspecialgarment` (
  `id` int(11) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tdstainremove`
--

CREATE TABLE `tdstainremove` (
  `id` int(11) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tdwash`
--

CREATE TABLE `tdwash` (
  `id` int(11) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `worker`
--

CREATE TABLE `worker` (
  `id` int(11) NOT NULL,
  `email` varchar(500) NOT NULL,
  `password` varchar(200) NOT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `uploaded_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `crud`
--
ALTER TABLE `crud`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `item` (`item`);

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signup1`
--
ALTER TABLE `signup1`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `superadmin`
--
ALTER TABLE `superadmin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `tddryclean`
--
ALTER TABLE `tddryclean`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tdiron`
--
ALTER TABLE `tdiron`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tdleather`
--
ALTER TABLE `tdleather`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tdpetcloth`
--
ALTER TABLE `tdpetcloth`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tdprimiumwash`
--
ALTER TABLE `tdprimiumwash`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tdshoewash`
--
ALTER TABLE `tdshoewash`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tdspecialgarment`
--
ALTER TABLE `tdspecialgarment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tdstainremove`
--
ALTER TABLE `tdstainremove`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tdwash`
--
ALTER TABLE `tdwash`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `worker`
--
ALTER TABLE `worker`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `crud`
--
ALTER TABLE `crud`
  MODIFY `id` double NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `driver`
--
ALTER TABLE `driver`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `signup1`
--
ALTER TABLE `signup1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `superadmin`
--
ALTER TABLE `superadmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tddryclean`
--
ALTER TABLE `tddryclean`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tdiron`
--
ALTER TABLE `tdiron`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tdleather`
--
ALTER TABLE `tdleather`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tdpetcloth`
--
ALTER TABLE `tdpetcloth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tdprimiumwash`
--
ALTER TABLE `tdprimiumwash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tdshoewash`
--
ALTER TABLE `tdshoewash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tdspecialgarment`
--
ALTER TABLE `tdspecialgarment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tdstainremove`
--
ALTER TABLE `tdstainremove`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tdwash`
--
ALTER TABLE `tdwash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `worker`
--
ALTER TABLE `worker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
