-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 04, 2019 at 06:14 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id7828875_msds_db`
--
CREATE DATABASE IF NOT EXISTS `id7828875_msds_db` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `id7828875_msds_db`;

-- --------------------------------------------------------

--
-- Table structure for table `ActiveTokens`
--

CREATE TABLE `ActiveTokens` (
  `id` int(6) NOT NULL,
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `InventoryPoC`
--

CREATE TABLE `InventoryPoC` (
  `ItemID` int(4) NOT NULL,
  `ItemName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Quantity` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `InventoryPoC`
--

INSERT INTO `InventoryPoC` (`ItemID`, `ItemName`, `Quantity`) VALUES
(1, 'SA80A3', 10),
(2, 'M4A4', 10);

-- --------------------------------------------------------

--
-- Table structure for table `meetings`
--

CREATE TABLE `meetings` (
  `MeetingID` int(11) NOT NULL,
  `Location` varchar(255) DEFAULT NULL,
  `Subject` varchar(255) DEFAULT NULL,
  `Comments` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Personnel`
--

CREATE TABLE `Personnel` (
  `personnelID` int(11) NOT NULL,
  `userID` int(11) DEFAULT NULL,
  `firstName` longtext,
  `lastName` longtext,
  `DOB` datetime DEFAULT NULL,
  `Gender` varchar(255) DEFAULT NULL,
  `Rank` int(11) DEFAULT NULL,
  `homeAddress` longtext,
  `personalContact` varchar(255) DEFAULT NULL,
  `Field9` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Personnel`
--

INSERT INTO `Personnel` (`personnelID`, `userID`, `firstName`, `lastName`, `DOB`, `Gender`, `Rank`, `homeAddress`, `personalContact`, `Field9`) VALUES
(103, 1, 'Ashely', 'Wong', '1982-07-04 00:00:00', 'Male', 9, '138-5466 Erat, Avenue', 'Pellentesque@auctorvelit.ca', NULL),
(203, 2, 'Kay', 'Hunt', '1994-01-01 00:00:00', 'Female', 9, 'Ap #691-7547 Leo. Avenue', 'vulputate.velit@felisorciadipiscing.edu', NULL),
(204, 62, 'Quon', 'Dillon', '1983-11-10 00:00:00', 'Male', 9, 'P.O. Box 219, 625 Posuere Street', 'velit@metus.net', NULL),
(205, 63, 'Keaton', 'Pace', '1980-06-19 00:00:00', 'Female', 9, '380-1490 At, St.', 'mollis@NullafacilisiSed.org', NULL),
(206, 64, 'Dylan', 'Dawson', '1973-05-21 00:00:00', 'Male', 9, 'Ap #403-8083 Eget Street', 'in.consequat.enim@ac.net', NULL),
(207, 65, 'Serena', 'Walker', '1977-11-23 00:00:00', 'Male', 9, '559-6036 Purus, Road', 'turpis.Nulla@Cras.edu', NULL),
(208, 66, 'Bradley', 'Todd', '1985-04-08 00:00:00', 'Male', 10, '7886 Egestas. Avenue', 'nisi.dictum@torquentperconubia.co.uk', NULL),
(209, 67, 'Allegra', 'Whitaker', '1981-01-29 00:00:00', 'Female', 6, '6103 Pede. Street', 'convallis@atrisusNunc.edu', NULL),
(210, 68, 'Orlando', 'Oneil', '1993-07-07 00:00:00', 'Female', 9, '516-6851 Bibendum Rd.', 'vitae@justo.net', NULL),
(211, 69, 'Daquan', 'Santana', '1988-11-14 00:00:00', 'Male', 9, '2402 Bibendum St.', 'nisl.Maecenas.malesuada@urna.com', NULL),
(212, 70, 'Randall', 'Mosley', '1991-11-24 00:00:00', 'Male', 9, 'P.O. Box 461, 3403 Integer Rd.', 'penatibus.et.magnis@accumsansed.com', NULL),
(213, 71, 'Holly', 'Nguyen', '2000-07-25 00:00:00', 'Female', 9, '652-9418 Dolor Av.', 'ipsum@eu.ca', NULL),
(214, 72, 'Brenna', 'Snow', '1986-12-22 00:00:00', 'Male', 9, 'Ap #430-5705 Sed St.', 'justo@et.edu', NULL),
(215, 73, 'Farrah', 'Mayer', '1984-11-13 00:00:00', 'Male', 8, '322-8816 Congue Rd.', 'Cras.convallis.convallis@ornare.com', NULL),
(216, 74, 'Joshua', 'Harding', '1993-04-07 00:00:00', 'Male', 6, '1622 Donec Rd.', 'sem@ametfaucibusut.org', NULL),
(217, 75, 'Evan', 'Delgado', '1977-03-11 00:00:00', 'Male', 9, 'Ap #326-727 Non St.', 'amet@nunc.com', NULL),
(218, 76, 'Regina', 'Watson', '1986-09-02 00:00:00', 'Male', 7, '9473 Donec St.', 'eros.Nam.consequat@ametmassaQuisque.com', NULL),
(219, 77, 'Ishmael', 'Alvarez', '1995-06-21 00:00:00', 'Male', 6, '2167 Augue St.', 'ornare.lectus@Proinvel.com', NULL),
(220, 78, 'Isadora', 'Caldwell', '1991-05-04 00:00:00', 'Male', 9, '427 Arcu St.', 'luctus.et.ultrices@etcommodoat.org', NULL),
(221, 79, 'Sarah', 'Collins', '1979-04-25 00:00:00', 'Male', 9, 'P.O. Box 808, 5019 Massa. Rd.', 'convallis.ante.lectus@etrutrumeu.ca', NULL),
(222, 80, 'Camilla', 'Peck', '1995-09-22 00:00:00', 'Female', 9, 'P.O. Box 497, 4369 Non, Road', 'Donec.sollicitudin.adipiscing@at.net', NULL),
(223, 81, 'Anne', 'Crawford', '1972-04-14 00:00:00', 'Male', 9, '620-5116 Magna St.', 'augue.eu@molestiedapibus.co.uk', NULL),
(228, 4, 'Bobby', 'Keith', '1994-06-02 00:00:00', 'Male', 9, '4153 Fusce Road', 'Bobby@commodo.net', NULL),
(229, 5, 'Shaine', 'Davidson', '1999-06-20 00:00:00', 'Female', 9, '946-2931 Nunc. Av.', 'enim@egestashendreritneque.org', NULL),
(230, 6, 'Dylan', 'Dawson', '1992-04-21 00:00:00', 'Male', 7, 'Ap #414-4082 Eleifend, Street', 'Dylan.dawson@yahoo.co.uk', NULL),
(231, 7, 'Vernon', 'Nguyen', '1997-11-16 00:00:00', 'Male', 9, '510-2299 Nascetur St.', 'ut.eros@tellus.co.uk', NULL),
(232, 8, 'Mark', 'Mejia', '1999-07-10 00:00:00', 'Male', 7, 'Ap #258-6061 Duis Rd.', 'orci@utaliquam.edu', NULL),
(233, 9, 'Adam', 'Wilder', '1973-11-09 00:00:00', 'Male', 6, '180-2415 Ac Rd.', 'Duis@loremauctorquis.edu', NULL),
(234, 10, 'Bevis', 'Everett', '1991-09-27 00:00:00', 'Male', 9, 'P.O. Box 658, 3350 Dictum. Rd.', 'Mauris.ut@volutpatnuncsit.edu', NULL),
(235, 11, 'Olga', 'Frederick', '1975-09-28 00:00:00', 'Male', 9, 'Ap #688-162 Non Rd.', 'Curae@enimcommodohendrerit.net', NULL),
(236, 12, 'Hall', 'Britt', '1971-07-13 00:00:00', 'Male', 9, '5111 Nunc Avenue', 'mauris@velit.ca', NULL),
(237, 13, 'Christine', 'Lang', '1990-01-23 00:00:00', 'Female', 9, 'P.O. Box 210, 9438 Luctus Road', 'leo.Cras@loremegetmollis.org', NULL),
(238, 14, 'Maile', 'Peterson', '1981-07-05 00:00:00', 'Female', 9, 'Ap #548-1325 Lorem, Rd.', 'tempor.diam.dictum@tincidunt.net', NULL),
(239, 15, 'Abra', 'Roman', '1977-07-01 00:00:00', 'Male', 9, '431-2449 Lorem St.', 'nascetur.ridiculus@Nam.com', NULL),
(240, 16, 'Molly', 'Aguilar', '1987-08-09 00:00:00', 'Male', 9, '2008 Pellentesque Avenue', 'Ut@lobortis.edu', NULL),
(241, 17, 'Brenda', 'Hensley', '1990-12-27 00:00:00', 'Male', 9, '3963 In St.', 'lectus.pede@Curabitursedtortor.net', NULL),
(242, 18, 'Oprah', 'Ray', '1978-06-20 00:00:00', 'Male', 9, '198-7416 Feugiat St.', 'luctus.lobortis@odioEtiamligula.org', NULL),
(243, 19, 'Nelle', 'Graham', '1991-04-20 00:00:00', 'Male', 9, '7567 Enim, St.', 'mus@Proin.net', NULL),
(244, 20, 'Victor', 'Lowe', '1980-09-24 00:00:00', 'Female', 6, '801-6924 Enim Ave', 'Donec@milacinia.net', NULL),
(245, 21, 'Serena', 'Sexton', '1991-03-29 00:00:00', 'Male', 7, '575-6339 Dis Rd.', 'elit@Nullamfeugiatplacerat.co.uk', NULL),
(246, 22, 'Anastasia', 'Witt', '1989-07-19 00:00:00', 'Female', 6, 'P.O. Box 149, 3027 Cras Avenue', 'Aenean.sed.pede@maurisipsumporta.net', NULL),
(247, 23, 'Teegan', 'Pugh', '1976-06-20 00:00:00', 'Male', 9, 'P.O. Box 632, 3158 Curabitur Rd.', 'Aliquam@acmieleifend.edu', NULL),
(248, 24, 'Inez', 'Mclean', '1996-07-26 00:00:00', 'Male', 9, 'Ap #709-1604 Per Street', 'eu@loremipsum.ca', NULL),
(249, 25, 'Cruz', 'Langley', '1993-09-19 00:00:00', 'Male', 9, '9797 Elit, Ave', 'nascetur.ridiculus.mus@id.edu', NULL),
(250, 26, 'Graham', 'Myers', '1976-08-14 00:00:00', 'Male', 7, '7878 Faucibus Rd.', 'in@temporaugue.com', NULL),
(251, 27, 'Genevieve', 'Cooper', '1976-06-11 00:00:00', 'Female', 9, 'Ap #382-2713 Risus. St.', 'purus.gravida.sagittis@ipsumnunc.edu', NULL),
(252, 28, 'Felix', 'Gallegos', '1993-12-11 00:00:00', 'Male', 9, '115-8944 Ligula Rd.', 'magnis.dis.parturient@velitegestaslacinia.ca', NULL),
(253, 29, 'Kelly', 'Terrell', '1986-01-07 00:00:00', 'Male', 6, '5158 Sed Street', 'non.justo.Proin@neque.co.uk', NULL),
(254, 30, 'Maile', 'Dillon', '1985-03-12 00:00:00', 'Male', 9, '4694 Facilisis Rd.', 'mi.felis@nulla.com', NULL),
(255, 31, 'Sylvester', 'Carson', '1994-01-07 00:00:00', 'Male', 9, '990-4439 Auctor, Av.', 'risus.Morbi.metus@orciluctuset.com', NULL),
(256, 32, 'Ashton', 'Cooke', '1982-03-21 00:00:00', 'Male', 9, '158-7884 Sit Ave', 'lorem.ipsum@ametdiam.ca', NULL),
(257, 33, 'Owen', 'Frye', '1979-10-03 00:00:00', 'Male', 9, 'P.O. Box 100, 2630 Fusce Road', 'non.luctus@Vivamusnonlorem.org', NULL),
(258, 34, 'Cheryl', 'Flowers', '1989-06-28 00:00:00', 'Male', 9, 'P.O. Box 875, 4003 Ultrices, St.', 'vel.turpis.Aliquam@diam.com', NULL),
(259, 35, 'Ali', 'Lane', '1997-04-27 00:00:00', 'Male', 6, '4778 Lacus Ave', 'feugiat@orcitincidunt.ca', NULL),
(260, 36, 'Myra', 'Coleman', '1981-11-02 00:00:00', 'Female', 9, '7118 Nec Ave', 'id.risus@lobortismauris.net', NULL),
(261, 37, 'Rose', 'Moss', '1988-08-31 00:00:00', 'Male', 7, '327-2979 Neque Rd.', 'Cras.dolor@vitaepurusgravida.net', NULL),
(262, 38, 'Teegan', 'Martinez', '1997-04-07 00:00:00', 'Female', 9, 'P.O. Box 526, 2206 Orci. Avenue', 'ac@Donec.edu', NULL),
(263, 39, 'Duncan', 'Cooley', '1982-02-27 00:00:00', 'Female', 9, '573 Proin Av.', 'Curabitur@magnaNam.net', NULL),
(264, 40, 'Kato', 'Vang', '1977-12-08 00:00:00', 'Male', 9, '957-4347 Sed Road', 'eu.eleifend@fringillaest.com', NULL),
(265, 41, 'Alfreda', 'Rocha', '1984-08-13 00:00:00', 'Male', 9, '211 Sagittis Avenue', 'orci@pharetra.co.uk', NULL),
(266, 42, 'Reese', 'Bailey', '2000-02-17 00:00:00', 'Male', 6, 'Ap #175-1537 Purus, St.', 'non.dapibus@aliquet.com', NULL),
(267, 43, 'Reagan', 'Townsend', '1992-10-17 00:00:00', 'Female', 10, '8154 Integer Avenue', 'a@semconsequatnec.co.uk', NULL),
(268, 44, 'Lysandra', 'Sears', '1979-05-25 00:00:00', 'Male', 10, 'P.O. Box 313, 5476 Accumsan St.', 'litora.torquent@at.com', NULL),
(269, 45, 'Lilah', 'Guy', '1989-04-28 00:00:00', 'Female', 9, 'Ap #686-689 Libero Rd.', 'Suspendisse@sodalesMauris.net', NULL),
(270, 46, 'Carlos', 'Serrano', '1987-08-04 00:00:00', 'Male', 9, '898-5288 Imperdiet Road', 'id@velquam.com', NULL),
(271, 47, 'Yoko', 'Moreno', '1980-05-22 00:00:00', 'Male', 9, '887-8180 Fusce St.', 'odio@vestibulum.net', NULL),
(272, 48, 'Rhea', 'Hunt', '1983-05-23 00:00:00', 'Male', 9, 'P.O. Box 536, 4476 Auctor Avenue', 'diam.vel@Sed.co.uk', NULL),
(273, 49, 'Magee', 'Blake', '1988-10-23 00:00:00', 'Male', 9, 'P.O. Box 261, 5367 Arcu Ave', 'porta.elit@vitaeerat.org', NULL),
(274, 50, 'Chandler', 'Jenkins', '1987-10-20 00:00:00', 'Male', 3, 'P.O. Box 638, 3837 Neque Rd.', 'fermentum.metus@varius.ca', NULL),
(275, 51, 'Omar', 'Hanson', '1976-04-22 00:00:00', 'Male', 6, 'Ap #446-4282 Facilisis, Street', 'posuere.enim.nisl@purusMaecenas.net', NULL),
(276, 52, 'Lester', 'Velazquez', '1977-11-29 00:00:00', 'Male', 10, '588-2612 Non St.', 'dictum.cursus.Nunc@consectetueripsum.com', NULL),
(277, 53, 'Avram', 'Armstrong', '1979-01-21 00:00:00', 'Female', 9, '5337 Mi Av.', 'aptent@lectus.net', NULL),
(278, 54, 'Brady', 'Price', '1992-12-07 00:00:00', 'Male', 6, '8565 Quisque Street', 'arcu.Nunc@arcu.edu', NULL),
(279, 55, 'Judith', 'Riddle', '1991-02-05 00:00:00', 'Female', 9, 'P.O. Box 127, 989 Sem, Avenue', 'erat@augueeutempor.com', NULL),
(280, 56, 'Wing', 'Whitfield', '1991-10-28 00:00:00', 'Female', 9, 'P.O. Box 555, 152 Commodo Ave', 'lacinia.mattis.Integer@tellusjustosit.com', NULL),
(281, 57, 'Victoria', 'Silva', '1976-03-01 00:00:00', 'Male', 9, 'P.O. Box 245, 6783 Et St.', 'nunc@vitaedolorDonec.net', NULL),
(282, 58, 'Orlando', 'Solomon', '1992-05-18 00:00:00', 'Male', 9, 'Ap #745-9660 Pharetra. St.', 'imperdiet.ornare@Aliquam.co.uk', NULL),
(283, 59, 'Teegan', 'Odom', '1996-04-15 00:00:00', 'Male', 9, 'Ap #797-5780 Quisque Ave', 'metus@perconubia.com', NULL),
(284, 60, 'Erin', 'Sellers', '1980-07-08 00:00:00', 'Male', 9, 'Ap #962-3439 Metus Rd.', 'nunc.interdum@vitaeposuere.net', NULL),
(285, 61, 'Marah', 'Nunez', '1974-06-12 00:00:00', 'Male', 9, '1816 Egestas Rd.', 'quis.arcu.vel@Maecenas.ca', NULL),
(286, 82, 'Blaine', 'Duke', '1984-11-20 00:00:00', 'Male', 7, 'P.O. Box 549, 5550 Orci, Street', 'Sed.diam.lorem@Phasellus.net', NULL),
(287, 83, 'Nero', 'Chan', '1975-06-23 00:00:00', 'Male', 9, 'Ap #926-1794 At Av.', 'Nullam@vitaeerat.edu', NULL),
(288, 84, 'Chancellor', 'Hurst', '1996-07-24 00:00:00', 'Male', 9, '9965 Non, St.', 'Nam@nullaanteiaculis.ca', NULL),
(289, 85, 'Juliet', 'Macdonald', '1991-10-11 00:00:00', 'Male', 9, '4524 Mollis. St.', 'Aliquam@liberoest.org', NULL),
(290, 86, 'Ingrid', 'Dudley', '1974-01-06 00:00:00', 'Male', 8, 'Ap #863-3948 Posuere Avenue', 'Nunc.mauris.sapien@diam.ca', NULL),
(291, 87, 'Gwendolyn', 'Matthews', '1973-05-12 00:00:00', 'Female', 9, '4560 Porttitor St.', 'faucibus.lectus.a@nibhAliquamornare.ca', NULL),
(292, 88, 'Clark', 'Coffey', '1986-01-09 00:00:00', 'Female', 9, '433-9254 A Street', 'risus.Donec@Phasellus.org', NULL),
(293, 89, 'Tate', 'Velez', '1997-03-29 00:00:00', 'Male', 8, '176-8933 Nam Road', 'tellus.Aenean@rutrum.edu', NULL),
(294, 90, 'Roanna', 'Duke', '1980-04-07 00:00:00', 'Male', 9, 'Ap #731-2887 Non St.', 'consectetuer.euismod@metusvitaevelit.co.uk', NULL),
(295, 91, 'Castor', 'Farley', '1975-02-06 00:00:00', 'Male', 7, 'Ap #586-4820 Elit Road', 'turpis.Nulla@luctus.net', NULL),
(296, 92, 'Xavier', 'Mcconnell', '1978-12-09 00:00:00', 'Male', 6, 'Ap #416-3277 Libero. Rd.', 'vel.quam@interdum.edu', NULL),
(297, 93, 'Callum', 'Flores', '1984-09-18 00:00:00', 'Female', 9, 'P.O. Box 239, 220 At Street', 'fringilla.porttitor.vulputate@ategestas.co.uk', NULL),
(298, 94, 'Phelan', 'Love', '1992-06-09 00:00:00', 'Male', 9, '716-7738 Nulla Road', 'Vivamus.nisi.Mauris@feugiatnonlobortis.com', NULL),
(299, 95, 'Adena', 'Anderson', '1989-11-11 00:00:00', 'Male', 6, '5578 Ac Avenue', 'adipiscing.lacus@est.edu', NULL),
(300, 96, 'Galvin', 'Kirby', '1981-12-09 00:00:00', 'Male', 9, '487-5628 Eget Av.', 'nulla.Integer.urna@Curabituregestas.edu', NULL),
(301, 97, 'Josiah', 'Bowman', '1996-02-24 00:00:00', 'Female', 8, '361-2172 Tempor St.', 'pharetra@luctusipsumleo.edu', NULL),
(302, 98, 'Portia', 'Schmidt', '1972-08-27 00:00:00', 'Female', 9, '332-3272 Blandit St.', 'et.pede@ut.co.uk', NULL),
(303, 99, 'Serena', 'Castro', '1969-12-31 00:00:00', 'Male', 9, 'Ap #554-2610 Ut Av.', 'arcu@Aliquam.org', NULL),
(304, 100, 'Cailin', 'Chan', '1969-12-31 00:00:00', 'Male', 9, '3977 Faucibus. St.', 'magna@eleifendegestas.net', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Personnel_Inventory_PoC`
--

CREATE TABLE `Personnel_Inventory_PoC` (
  `UserID` int(5) NOT NULL,
  `ItemID` int(5) NOT NULL,
  `Quantity` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Personnel_Inventory_PoC`
--

INSERT INTO `Personnel_Inventory_PoC` (`UserID`, `ItemID`, `Quantity`) VALUES
(4, 1, 1),
(4, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ranks`
--

CREATE TABLE `ranks` (
  `rankID` int(11) NOT NULL,
  `rankName` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ranks`
--

INSERT INTO `ranks` (`rankID`, `rankName`, `description`) VALUES
(1, 'General', 'Highest rank, Controls Most of the Regiment'),
(2, 'Lieutenant', 'Second highest rank, can lead groups and Platoons'),
(3, 'Major', 'Third highest rank can lead groups and platoons'),
(4, 'Brigadier', 'Forth highest rank can lead platoons and groups'),
(5, 'Colonel', 'Fifth highest rank can lead groups'),
(6, 'Captain', 'sixth highest rank can lead groups'),
(7, 'Warrant Officer', 'seventh highest rank can be apart of groups'),
(8, 'Sergeant', 'first leadership role can be apart of groups'),
(9, 'Private', 'lowest rank that can be apart of groups'),
(10, 'Cadet', 'lowest rank cannot join groups.');

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `id` int(6) UNSIGNED NOT NULL,
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`id`, `username`, `hash`) VALUES
(3, 'john', '$2y$10$8OvUzSQJWfwaYM9fkpSm0uuTG1lDuGx8sTg2tI6DpgrecV6ZNY7.6'),
(4, 'Bobby', '$2y$10$RHbv7P1JWmOLZwlPBJymsO1kul3lB4pdGXpZL87YUuW5hu5WLGxJa'),
(5, 'ChronTest', '$2y$10$3BQfvjVFARbZ4hp3Dw3Ogu9eQh9HJpiqAvm9OCIfeNHwEqxvfjQ/m'),
(6, 'Dawson', '$2y$10$RHbv7P1JWmOLZwlPBJymsO1kul3lB4pdGXpZL87YUuW5hu5WLGxJa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ActiveTokens`
--
ALTER TABLE `ActiveTokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `InventoryPoC`
--
ALTER TABLE `InventoryPoC`
  ADD PRIMARY KEY (`ItemID`);

--
-- Indexes for table `meetings`
--
ALTER TABLE `meetings`
  ADD PRIMARY KEY (`MeetingID`);

--
-- Indexes for table `Personnel`
--
ALTER TABLE `Personnel`
  ADD PRIMARY KEY (`personnelID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `Personnel_Inventory_PoC`
--
ALTER TABLE `Personnel_Inventory_PoC`
  ADD PRIMARY KEY (`UserID`,`ItemID`);

--
-- Indexes for table `ranks`
--
ALTER TABLE `ranks`
  ADD PRIMARY KEY (`rankID`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ActiveTokens`
--
ALTER TABLE `ActiveTokens`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `InventoryPoC`
--
ALTER TABLE `InventoryPoC`
  MODIFY `ItemID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `meetings`
--
ALTER TABLE `meetings`
  MODIFY `MeetingID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Personnel`
--
ALTER TABLE `Personnel`
  MODIFY `personnelID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=305;

--
-- AUTO_INCREMENT for table `ranks`
--
ALTER TABLE `ranks`
  MODIFY `rankID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
