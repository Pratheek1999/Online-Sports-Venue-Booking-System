-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 14, 2019 at 04:38 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ipl_proj`
--

-- --------------------------------------------------------

--
-- Table structure for table `user_cred`
--

DROP TABLE IF EXISTS `user_cred`;
CREATE TABLE IF NOT EXISTS `user_cred` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `mob` int(20) NOT NULL,
  `pass` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_cred`
--

INSERT INTO `user_cred` (`id`, `username`, `gender`, `email`, `mob`, `pass`) VALUES
(3, 'aaa', 'M', 'aaa@gmail.com', 1234567899, '147147'),
(4, 'aaa', 'M', 'aaa@gmail.com', 1234567899, '147147'),
(5, 'asdec', 'M', 'asdec@g.com', 123, '11'),
(6, 'asdec', 'M', 'asdec@g.com', 123, '11'),
(7, 'qwe', 'M', 'qwe@g.com', 111, '112'),
(8, 'acb', 'M', 'aaaa@gmail.com', 12341, '123'),
(9, 'abcd', 'M', 'abcd@g.com', 12341, '1234'),
(10, 'abcd', 'M', 'abcd@g.com', 12345, '1234'),
(11, 'aabb', 'F', 'aabb@d.com', 1122, '1234'),
(13, 'aaa', 'M', 'hw@gmail.com', 1234567890, '12'),
(14, 'qaz', 'M', 'qaz@g.com', 123123, '1212'),
(15, 'qazz', 'M', 'qaz@g.com', 123123, '12121');

-- --------------------------------------------------------

--
-- Table structure for table `ven_book`
--

DROP TABLE IF EXISTS `ven_book`;
CREATE TABLE IF NOT EXISTS `ven_book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `StartTime` datetime(6) NOT NULL,
  `EndTime` datetime(6) NOT NULL,
  `Contacts` text NOT NULL,
  `Location` text NOT NULL,
  `Resources` text NOT NULL,
  `Details` text NOT NULL,
  `Subject` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ven_book`
--

INSERT INTO `ven_book` (`id`, `StartTime`, `EndTime`, `Contacts`, `Location`, `Resources`, `Details`, `Subject`) VALUES
(1, '2019-10-01 06:30:00.000000', '2019-10-01 09:30:00.000000', 'Hello', '{\"_items\":[],\"m_collectionChanged\":{\"handlers\":[null]},\"m_propertyChanged\":{\"handlers\":[]},\"m_collectionChanging\":{\"handlers\":[]}}', '{\"_id\":\"LOC973a0a64-8bf1-3dd0-0078-a7190d905023\",\"_name\":\"M.D Cricket Ground\",\"_tag\":null,\"_address\":\"\",\"_country\":\"\",\"_city\":\"\",\"_state\":\"\",\"_zipCode\":\"\"}', '{\"_items\":[],\"m_collectionChanged\":{\"handlers\":[null]},\"m_propertyChanged\":{\"handlers\":[]},\"m_collectionChanging\":{\"handlers\":[]}}', 'football'),
(2, '2019-10-02 04:30:00.000000', '2019-10-02 10:30:00.000000', '{\"_items\":[],\"m_collectionChanged\":{\"handlers\":[null]},\"m_propertyChanged\":{\"handlers\":[]},\"m_collectionChanging\":{\"handlers\":[]}}', '{\"_id\":\"LOC65f7b35b-8412-a343-583d-ed8ffb3f6c30\",\"_name\":\"A.P Tennis Ground\",\"_tag\":null,\"_address\":\"\",\"_country\":\"\",\"_city\":\"\",\"_state\":\"\",\"_zipCode\":\"\"}', '{\"_items\":[],\"m_collectionChanged\":{\"handlers\":[null]},\"m_propertyChanged\":{\"handlers\":[]},\"m_collectionChanging\":{\"handlers\":[]}}', '', 'dede'),
(3, '2019-10-02 19:30:00.000000', '2019-10-03 05:30:00.000000', '{\"_items\":[],\"m_collectionChanged\":{\"handlers\":[null]},\"m_propertyChanged\":{\"handlers\":[]},\"m_collectionChanging\":{\"handlers\":[]}}', '{\"_items\":[],\"m_collectionChanged\":{\"handlers\":[null]},\"m_propertyChanged\":{\"handlers\":[]},\"m_collectionChanging\":{\"handlers\":[]}}', '{\"_id\":\"LOC4c90a00f-c9af-a902-cf6d-95d583c6de25\",\"_name\":\"S.K FOOTBALL Ground\",\"_tag\":null,\"_address\":\"\",\"_country\":\"\",\"_city\":\"\",\"_state\":\"\",\"_zipCode\":\"\"}', '', 'laber'),
(4, '2019-10-03 18:30:00.000000', '2019-10-03 22:30:00.000000', '{\"_items\":[],\"m_collectionChanged\":{\"handlers\":[null]},\"m_propertyChanged\":{\"handlers\":[]},\"m_collectionChanging\":{\"handlers\":[]}}', '{\"_items\":[],\"m_collectionChanged\":{\"handlers\":[null]},\"m_propertyChanged\":{\"handlers\":[]},\"m_collectionChanging\":{\"handlers\":[]}}', '{\"_id\":\"LOC4c90a00f-c9af-a902-cf6d-95d583c6de25\",\"_name\":\"S.K FOOTBALL Ground\",\"_tag\":null,\"_address\":\"\",\"_country\":\"\",\"_city\":\"\",\"_state\":\"\",\"_zipCode\":\"\"}', 'asas', 'swim'),
(5, '2019-10-05 18:30:00.000000', '2019-10-06 03:30:00.000000', '', '{\"_items\":[{\"_id\":\"CNT99ef1453-2a86-de21-79ff-b9e320782706\",\"_name\":\"\",\"_tag\":null,\"_firstName\":\"Alan\",\"_middleName\":\"\",\"_lastName\":\"Vilayil\",\"_address\":\"\",\"_phone\":\"\",\"_email\":\"\"},{\"_id\":\"CNT1cd5feaa-d309-8283-dd3f-55a4e9b335cb\",\"_name\":\"\",\"_tag\":null,\"_firstName\":\"Aditiya\",\"_middleName\":\"\",\"_lastName\":\"Karmokar\",\"_address\":\"\",\"_phone\":\"\",\"_email\":\"\"},{\"_id\":\"CNT38851600-3a69-9733-d57a-829d806a2324\",\"_name\":\"\",\"_tag\":null,\"_firstName\":\"Pratheek\",\"_middleName\":\"\",\"_lastName\":\"Hegde\",\"_address\":\"\",\"_phone\":\"\",\"_email\":\"\"}],\"m_collectionChanged\":{\"handlers\":[null]},\"m_propertyChanged\":{\"handlers\":[]},\"m_collectionChanging\":{\"handlers\":[]}}', '{\"_id\":\"LOCfb009d00-446c-1a60-7e60-914ded5efdcb\",\"_name\":\"D.J Badminton Court\",\"_tag\":null,\"_address\":\"\",\"_country\":\"\",\"_city\":\"\",\"_state\":\"\",\"_zipCode\":\"\"}', '{\"_items\":[],\"m_collectionChanged\":{\"handlers\":[null]},\"m_propertyChanged\":{\"handlers\":[]},\"m_collectionChanging\":{\"handlers\":[]}}', 'FOOTBALL'),
(6, '2019-10-05 18:30:00.000000', '2019-10-06 01:30:00.000000', '', '{\"_items\":[{\"_id\":\"CNT4130e169-9b81-ea97-87b3-856f794a1abd\",\"_name\":\"\",\"_tag\":null,\"_firstName\":\"Alan\",\"_middleName\":\"\",\"_lastName\":\"Vilayil\",\"_address\":\"\",\"_phone\":\"\",\"_email\":\"\"},{\"_id\":\"CNTb4d48006-1742-c263-aca9-73b0c9bb6df3\",\"_name\":\"\",\"_tag\":null,\"_firstName\":\"Aditiya\",\"_middleName\":\"\",\"_lastName\":\"Karmokar\",\"_address\":\"\",\"_phone\":\"\",\"_email\":\"\"},{\"_id\":\"CNTd9d0d78f-1e93-e388-e0e5-da53e8e2a849\",\"_name\":\"\",\"_tag\":null,\"_firstName\":\"Pratheek\",\"_middleName\":\"\",\"_lastName\":\"Hegde\",\"_address\":\"\",\"_phone\":\"\",\"_email\":\"\"}],\"m_collectionChanged\":{\"handlers\":[null]},\"m_propertyChanged\":{\"handlers\":[]},\"m_collectionChanging\":{\"handlers\":[]}}', '{\"_id\":\"LOCece7ff2d-0723-cce9-02ef-e4fdaec67d11\",\"_name\":\"S.K FOOTBALL Ground\",\"_tag\":null,\"_address\":\"\",\"_country\":\"\",\"_city\":\"\",\"_state\":\"\",\"_zipCode\":\"\"}', '{\"_items\":[],\"m_collectionChanged\":{\"handlers\":[null]},\"m_propertyChanged\":{\"handlers\":[]},\"m_collectionChanging\":{\"handlers\":[]}}', 'FOOTBALL'),
(7, '2019-10-08 18:30:00.000000', '2019-10-09 00:30:00.000000', '', '{\"_items\":[],\"m_collectionChanged\":{\"handlers\":[null]},\"m_propertyChanged\":{\"handlers\":[]},\"m_collectionChanging\":{\"handlers\":[]}}', '{\"_id\":\"LOCe7e83339-8965-7cbf-90b6-77ad133ea53e\",\"_name\":\"M.D Cricket Ground\",\"_tag\":null,\"_address\":\"\",\"_country\":\"\",\"_city\":\"\",\"_state\":\"\",\"_zipCode\":\"\"}', '{\"_items\":[],\"m_collectionChanged\":{\"handlers\":[null]},\"m_propertyChanged\":{\"handlers\":[]},\"m_collectionChanging\":{\"handlers\":[]}}', 'wewew'),
(8, '2019-10-09 18:30:00.000000', '2019-10-10 04:30:00.000000', '{\"_items\":[],\"m_collectionChanged\":{\"handlers\":[null]},\"m_propertyChanged\":{\"handlers\":[]},\"m_collectionChanging\":{\"handlers\":[]}}', '{\"_items\":[],\"m_collectionChanged\":{\"handlers\":[null]},\"m_propertyChanged\":{\"handlers\":[]},\"m_collectionChanging\":{\"handlers\":[]}}', '{\"_id\":\"LOC5d6a11e2-8ac1-07fa-b40e-a01ef071dc17\",\"_name\":\"M.D Cricket Ground\",\"_tag\":null,\"_address\":\"\",\"_country\":\"\",\"_city\":\"\",\"_state\":\"\",\"_zipCode\":\"\"}', 'qeretr', 'dede');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
