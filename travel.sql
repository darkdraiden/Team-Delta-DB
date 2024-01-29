-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 29, 2024 at 08:36 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

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
  `member_count` int(11) NOT NULL DEFAULT 1,
  `booking_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking_id`, `booking_price`, `travel_id`, `user_id`, `member_count`, `booking_date`) VALUES
(19, 20000, 12, 21, 4, '2024-01-30'),
(20, 24000, 16, 22, 3, '2024-01-30'),
(21, 21000, 17, 22, 21, '2024-02-05'),
(25, 12000, 13, 22, 1, '2024-02-01'),
(26, 24000, 14, 22, 3, '2024-01-31'),
(27, 12000, 13, 21, 1, '2024-01-30'),
(28, 8000, 16, 21, 1, '2024-01-31'),
(29, 20000, 12, 23, 4, '2024-04-17'),
(32, 48000, 13, 23, 4, '2024-04-12');

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
  `about` text NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `travel_plan`
--

INSERT INTO `travel_plan` (`travel_id`, `title`, `location`, `rate`, `start_date`, `about`, `image`) VALUES
(12, 'Lakshadweep', 'Union Territory, India', 5000, '21/02/2024', 'Formerly known as Laccadive Islands, Lakshadweep translates to \'one hundred thousand islands\' in Malayalam. Home to a few of the most beautiful and exotic islands and beaches of India, Lakshadweep lies 400km off the southwest coast of the Arabian Sea. The smallest union territory of India has only 36 islands having a total area of 32 sq. kilometres. It\'s made up of 12 atolls, 3 reefs and 5 submerged banks out of which ten Islands are inhabited.\n\nLakshadweep is typically accessed from Kochi (Kerala) and a permit is required to visit Lakshadweep for all tourists (including Indians). After permit, foreigners are permitted to just visit Agatti, Bangaram and Kadmat Islands. Permits can be obtained from Kochi itself. Permits are exempted to government officials, armed force members, and their families who are either working or visiting these islands. Additionally, embarking on the Lakshadweep Samudram Cruise aboard MV Kavaratti is a maritime adventure like no other. This 5 day cruise takes you Kavaratti, Minicoy and Kalpeni islands. Another such extraordinary 5-day voyage is from Mumbai to Lakshadweep on the Cordelia Cruise.\n\nPerhaps the charm of Lakshadweep islands lies in their remoteness. Far off the beaten track, they attract no hordes of merrymakers to their shores. The islands, though all equally mystical and beautiful, each offers a unique blend of tourist spots. Some islands have been promoted for diving and water sports, still, others have been developed so that people enjoy the charm of relaxation.', 'images/lakshadweep.jpeg'),
(13, 'Srinagar', 'Jammu and Kashmir, India', 12000, '21/02/2024', 'Famously known as \'Heaven on Earth, Srinagar is located in the union territory of Jammu & Kashmir, on the banks of river Jhelum. Srinagar is known for the stationary houseboats and gondola-type rowboats- Shikaras on Dal Lake. Adorned with tranquil Dal Lake & Nigeen Lake, Srinagar is the dream destination for honeymoon and family holidays.\n\nThe tourists use Shikaras to see attractions like the Floating Vegetable Market and the Mir Bahris – a lively community of people who live on the lake itself. In addition, there are a lot of houseboats that provide a beautiful and unique stay experience on the lake. Srinagar is home to some of India\'s most exquisite Mughal-age gardens, with the top attractions being Nishat Bagh, Shalimar Bagh and Chashm-E-Shahi Garden. It is also home to Asia\'s largest tulip garden.\n\nKashmiri cuisine or Wazwan is famous all over the globe. So when in Srinagar, trying out the local dishes, which are rich in unique fragrant spices, is a must. Srinagar is also famous for the Kashmiri shawls, Kashmiri apples, and dried fruits (almonds and walnuts) from the Lal Chowk Market.\n\nHeavy snowfall affects the connectivity of Srinagar during the winter months of December to February. Communal tensions also lead to frequent curfews in some parts of the city; however, things have improved in the past few years. So, make sure to check the situation before visiting.', 'images/Srinagar.jpg'),
(14, 'Manali', 'Himachal Pradesh, India', 8000, '28/02/2024', 'With spectacular valleys, breathtaking views, snowcapped mountains, and lush forests of oak, deodar, and pine, Manali is a magical hill station at the northern end of Kullu valley in Himachal Pradesh. Gifted to the world by the mighty Himalayas, it is known to be one of the most popular destinations for Honeymooners. Manali offers magnificent views of the Pir Panjal and the Dhauladhar ranges, covered in a thick blanket of snow for most of the year.\n\nOver the last few years, Manali has evolved into a place loved by young people looking for more extended stays. With ambient cafes, good wifi availability, small eateries, and convenient shops, Old Manali is among the favorite neighborhood for such people. In addition, many homestays and hostels offer dorm beds for cheap for longer durations. \n\nApart from vacations and workations, Manali is a must-visit for trekkers, as it\'s an excellent base for exploring this side of the Himalayas. River Beas provides great rafting options in the nearby town of Kullu. Adjoining the Parvati river lies the Parvati Valley, with  Kasol, Manikaran, Tosh, and small villages attracting travelers for extended stays. Atal Tunnel allows travelers to reach Sissu within a few hours, making Spiti more accessible. \n\nTourists flock to Rohtang Pass & Solang valley for various adventure activities, including skiing, paragliding, horse-riding & zorbing. It snows the most in January & February, followed by December and March. If you\'re fortunate, you might find some snow in April.', 'images/Manali.jpeg'),
(15, 'Andaman and Nicobar', 'Union Territory, India', 16000, '08/03/2024', 'Replete with turquoise blue water beaches and a bit of history, Andaman & Nicobar Islands is a little slice of paradise tucked around 1,400 km away from the east coast of mainland India. Port Blair, the capital of this union territory, has a major airport and seaport connected with the rest of the country and with various tourist islands via multiple daily ferries. Havelock and Neil Islands are popular among tourists for their white sandy beaches and excellent diving options. \n\nAndaman & Nicobar Islands comprises 572 islands, only 37 of which are inhabited, and a few are open to tourists. Havelock Island is one of the largest and the most popular islands of all Andaman & Nicobar Islands. Travellers typically enter from Port Blair via flight or ship and spend multiple nights in Havelock and Neil Islands that offer some great resorts.\n\nThe southern coast of the Havelock island has the charming Radhanagar Beach, while the azure beauty of Vijayanagar Beach is situated towards the east of the island.  Perhaps the most endearing feature of Neil island is its three sandy beaches, namely Bharatpur Beach, Sitapur Beach and Lakshmanpur Beaches.\n\nPort Blair is generally used as a base city to catch ferries to nearby islands. However, tourists also spend a day or two here to explore the town and nearby beaches. People also take day trips to Ross Island and North Bay Island or Baratang and Jolly Buoy island from Port Blair.\n\nAndamans have the most exotic beach and some of them also give the opportunity of trying out a number of Water sports such as Scuba Diving, Snorkeling, Sea Walk etc. North Bay Island near Port Blair, Elephant Beach in Havelock Island and Bharatpur Beach in Neil Island are three popular beaches to try out watersports. Elephant beach and Kalapather beach are two other beaches where the sunrise and sunsets are absolutely divine.', 'images/Andaman_and_Nicobar.jpeg'),
(16, 'Kanyakumari', 'Tamil Nadu, India', 8000, '18/03/2024', 'Bordered by the three seas - Arabian, Indian and the Bay of Bengal, Kanyakumari is the southernmost tip of the Indian Peninsula. A small coastal town in the state of Tamil Nadu, Kanyakumari was earlier known as Cape Comorin. \n\nKanyakumari offers the marvellous confluence of the Bay of Bengal, the Arabian Sea and the Indian ocean meeting together at a point. But, this is not a miracle, the miracle lies in the beauty that the water of three seas does not mix, you can clearly distinguish between the turquoise blue, deep blue and sea green waters of the three seas. To enjoy the best view of sunset and sunrise, you can visit the Triveni Sangam point and the famous View tower.\n\nThe town has a mountainous terrain with elevated patches of hills, coconut trees and lined with paddy fields. Kanyakumari is also the only place in India where you can observe the sunrise and sunset at the same beach. \n\nThe town is not only popular for its unique phenomenon but also its temples and the Vivekananda Rock Memorial among other iconic monuments.\n\nWaterfalls in Kanyakumari that you should not miss out on include the Thirparappu falls, the Courtallam Falls, and the Olakaruvi falls. Kanyakumari has authentic South Indian cuisine, with seafood and coconuts being an integral part of almost all dishes.', 'images/Kanyakumari.jpeg'),
(17, 'Goa', 'India', 7000, '09/04/2024', 'Lying on the western coast, Goa is India\'s smallest state and unlike any other, known for its endless beaches, stellar nightlife, eclectic seafood, world-heritage listed architecture. Spread across just 3,702 km, Goa lies in the Konkan region. It is a far cry from the hippie haven or a beach getaway, and one of the only few destinations that is open 24x7. The laid-backness (susegad) of Goa attracts as many international tourists as it does Indians, or even more so.\n\nThe Goans are quite friendly towards tourists and celebrate many festivals throughout the year, the most famous being the New Year and Goa Carnival. While the seafood is excellent, Goa has one of the best nightlife in India with trendy bars, beach shacks, elegant cafes and many clubs and discotheques. Thanks to lower alcohol prices in the state, Goa is also great for younger tourists with relatively tighter pockets.\n\nFor those of us perpetually confused between North Goa and South Goa, this might help - the state of Goa is divided into North Goa and South Goa. While North Goa is the nightlife hub where all the touristy beaches, flea markets, and beach shacks are located, South Goa is the land of luxurious resorts and laid-back beach vibes. \n\nHaving been a Portuguese territory for almost 450 years, the Portuguese architecture is nowhere as prevalent as in Goa - visit one of the many whitewashed churches, crumbling forts or spectacular churches. The yellow houses with purple doors, ochre coloured mansions and oyester shell windows is what completes the kalieodscope of Goan architecture.', 'images/Goa.jpeg');

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
  `role` varchar(10) DEFAULT 'NORMAL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `email`, `phonenumber`, `name`, `password`, `role`) VALUES
(21, 'alpha@gmail.com', '7459834795', 'alpha', 'pbkdf2_sha256$720000$1lQB1gxUTTieFwpy1ShlM9$ldCIfVNZyohbSp/iUpGjmGQ9rLqPCJu54WlFDRnpZpo=', NULL),
(22, 'yashraj@gmail.com', '987653456', 'Yashraj Singh', 'pbkdf2_sha256$720000$BxNiChuUd9C6zXIYeY3FkK$fAM9ohybr4CJPEDlRsIaHcxyb2DaQRPL7Cw7HnnztBM=', 'ADMIN'),
(23, 'abcd@gmail.com', '12345', 'abcd', 'pbkdf2_sha256$720000$v0rShhBcbt11DR53SEuAeb$SRVBm7mcGFx39lS0nTG40m5RkHGvSkX2r/sIhdcVC3s=', 'ADMIN');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`),
  ADD UNIQUE KEY `travel_id` (`travel_id`,`user_id`),
  ADD KEY `FKdxt6l0m3hxp1frtqkkjxd1isj` (`user_id`),
  ADD KEY `FKetlnww9bc1vpw3yljagn75a4u` (`travel_id`);

--
-- Indexes for table `travel_plan`
--
ALTER TABLE `travel_plan`
  ADD PRIMARY KEY (`travel_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `travel_plan`
--
ALTER TABLE `travel_plan`
  MODIFY `travel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

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
