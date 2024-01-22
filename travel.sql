SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Travel`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `booking_id` int(11) NOT NULL,
  `booking_price` int(11) NOT NULL,
  `travel_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `member_count` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking_id`, `booking_price`, `travel_id`, `user_id`, `member_count`) VALUES
(2, 1800, 3, 3, 3),
(4, 1000, 2, 5, 2),
(8, 4000, 5, 5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `travel_plan`
--

CREATE TABLE `travel_plan` (
  `travel_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `rate` int(11) NOT NULL,
  `start_date` varchar(255) NOT NULL,
  `about` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `travel_plan`
--

INSERT INTO `travel_plan` (`travel_id`, `title`, `location`, `rate`, `start_date`, `about`) VALUES
(2, 'Haridwar', 'Uthrakhand, India', 500, '25/01/2024', 'One of the holiest pilgrimages in India, Haridwar, or the \'gateway to gods\', is located where Ganga, the sacredest of all Indian rivers, enters the Indo-Gangetic plains. Located at the foothills of the Himalayas, Haridwar is a city of temples and ashrams and its pious ambience envelops everyone.'),
(3, 'Kashi (Varanasi)', 'Uttar Pradesh, India', 600, '01/02/2024', 'The land of Varanasi (Kashi) has been the ultimate pilgrimage spot for Hindus for ages. Hindus believe that one who is graced to die on the land of Varanasi would attain salvation and freedom from the cycle of birth and re-birth. Abode of Lord Shiva and Parvati, the origins of Varanasi are yet unknown.'),
(4, 'Ayodhya', 'Uttar Pradesh, India', 1000, '22/01/2024', 'Ayodhya is one of the most religious places in India. This is the birthplace of Lord Ram and hence, holds great spiritual significance among the devotees of the Hindu religion. This holy city is situated in Uttar Pradesh. Ayodhya used to be called Saketa in ancient times and was the capital city of the Kosala Kingdom.'),
(5, 'Amarnath cave', 'Jammu and Kashmir, India', 2000, '21/02/2024', 'Amarnath Cave is located at an altitude of 3,888 meters and is about 141 kms from Srinagar. Pilgrims and tourists can witness the merging of Amravati and Panjtarni rivers while they are on their way to the Amarnath Cave and can take a dip in the holy river Amravati before entering the cave.');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phonenumber` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'NORMAL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `email`, `phonenumber`, `name`, `password`, `role`) VALUES
(2, 'sita@gmail.com', '1234567789', 'Sita Kumari', 'Sita', 'ADMIN'),
(3, 'shyam@gmail.com', '2345675436', 'Shyam Kumar', 'Shyam', 'NORMAL'),
(4, 'geeta@gmail.com', '87687686456', 'Geeta Kumari', 'Geeta', 'NORMAL'),
(5, 'mira@gmail.com', '23454565678', 'Mira Kumari', 'Mira', 'NORMAL'),
(6, 'ram@gmail.com', '8678665564', 'Ram Kumar', 'Ram', 'ADMIN');

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `travel_plan`
--
ALTER TABLE `travel_plan`
  ADD PRIMARY KEY (`travel_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `travel_plan`
--
ALTER TABLE `travel_plan`
  MODIFY `travel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `FKdxt6l0m3hxp1frtqkkjxd1isj` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `FKetlnww9bc1vpw3yljagn75a4u` FOREIGN KEY (`travel_id`) REFERENCES `travel_plan` (`travel_id`);


COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
