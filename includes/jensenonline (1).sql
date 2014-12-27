-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Värd: 127.0.0.1
-- Tid vid skapande: 27 dec 2014 kl 09:41
-- Serverversion: 5.6.16
-- PHP-version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Databas: `jensenonline`
--

-- --------------------------------------------------------

--
-- Tabellstruktur `admins`
--

CREATE TABLE IF NOT EXISTS `admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `position` varchar(30) NOT NULL,
  `social_security_nr` varchar(11) NOT NULL,
  `email` varchar(40) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumpning av Data i tabell `admins`
--

INSERT INTO `admins` (`id`, `firstname`, `lastname`, `position`, `social_security_nr`, `email`, `phone_number`) VALUES
(1, 'Johan', 'Bessing', '', '580125-1025', 'johan@gmail.com', '0732459438'),
(2, 'Åsa', 'Blåsa', '', '540125-5292', 'åsa@gmail.com', '0730871284');

-- --------------------------------------------------------

--
-- Tabellstruktur `courses`
--

CREATE TABLE IF NOT EXISTS `courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `curriculum_url` varchar(80) NOT NULL,
  `rating_criteria` varchar(80) NOT NULL,
  `main_teacher` varchar(60) NOT NULL,
  `secondary_teacher` varchar(60) NOT NULL,
  `for_programme` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumpning av Data i tabell `courses`
--

INSERT INTO `courses` (`id`, `name`, `curriculum_url`, `rating_criteria`, `main_teacher`, `secondary_teacher`, `for_programme`) VALUES
(1, 'Webbapplikationsutveckling 1', 'asdasd', 'adasdasd', '1', '2', '1'),
(2, 'Grundläggande programmeringskunskap', 'asdasdasd', 'asdasdasdasd', '2', '1', '1');

-- --------------------------------------------------------

--
-- Tabellstruktur `educations`
--

CREATE TABLE IF NOT EXISTS `educations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `begin` date NOT NULL,
  `end` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellstruktur `pm`
--

CREATE TABLE IF NOT EXISTS `pm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `touser` int(11) NOT NULL,
  `fromuser` int(11) NOT NULL,
  `subject` text NOT NULL,
  `message` text NOT NULL,
  `status` varchar(20) NOT NULL,
  `replied` tinyint(1) NOT NULL,
  `replieddatetime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

--
-- Dumpning av Data i tabell `pm`
--

INSERT INTO `pm` (`id`, `datetime`, `touser`, `fromuser`, `subject`, `message`, `status`, `replied`, `replieddatetime`) VALUES
(2, '2014-11-20 11:36:52', 17, 12, 'Hejje!', 'Skickar testmeddelande!', 'unread', 0, '0000-00-00 00:00:00'),
(3, '2014-11-20 12:02:26', 12, 17, 'Hejjahejja', 'Bajs', 'unread', 0, '0000-00-00 00:00:00'),
(4, '2014-11-20 12:03:18', 12, 17, 'Hejja', 'Hej hej', '', 0, '0000-00-00 00:00:00'),
(5, '2014-11-20 13:09:56', 17, 5, 'Fuck Off', 'Get out of my head!!', 'unread', 0, '0000-00-00 00:00:00'),
(6, '2014-11-25 10:04:15', 12, 5, 'Borttaget', 'lkaj klaj sdlkaÃ¶ fklsa Ã¶dgoknv askdnzf Ã¶qknf Ã¶lzn alzx nalk<zxnv Ã¶lkn', 'deleted', 0, '0000-00-00 00:00:00'),
(7, '2014-11-25 10:09:10', 5, 12, 'Spaaaam!', 'SpaaaamSpaaaamSpaaaamSpaaaamSpaaaamSpaaaamSpaaaam', 'read', 0, '0000-00-00 00:00:00'),
(21, '2014-11-25 11:03:06', 12, 12, 'Hej pÃ¥ dig', 'Hejj', 'unread', 0, '0000-00-00 00:00:00'),
(22, '2014-11-25 11:49:55', 12, 5, 'Hejje', 'Welcome to XAMPP for OS X 1.8.3-5!\r\n\r\nCongratulations:\r\nYou successfully installed XAMPP on this system!\r\nNow you can start using Apache and Co. Firstly you should try Â»StatusÂ« on the left navigation to make sure everything works fine.\r\n\r\nAfter testing you may take a look at the examples below the test link.\r\n\r\nIf you want to start programming PHP or Perl (or whatever ;) please take a look at the XAMPP manual first and get more information about your XAMPP installation.\r\n\r\nGood luck,\r\nKai "Oswald" Seidler + Kay Vogelgesang\r\n\r\nInstall applications on XAMPP using BitNami\r\n\r\nApache Friends and BitNami are cooperating to make dozens of open source applications available on XAMPP, for free. BitNami-packaged applications include Wordpress, Drupal, Joomla! and dozens of others and can be deployed with one-click installers. Visit the BitNami XAMPP page for details on the currently available apps.', 'unread', 0, '0000-00-00 00:00:00'),
(23, '2014-11-25 14:13:54', 17, 12, 'Hej pÃ¥ dig!', 'Hej! Hur mÃ¥r du?', 'unread', 0, '0000-00-00 00:00:00'),
(24, '2014-12-08 12:07:25', 12, 12, 'Hejj ee      lkas', 'Testar       att       ha    Spaces\r\n\r\n\r\nOch enters.', 'unread', 0, '0000-00-00 00:00:00'),
(25, '2014-12-08 12:28:06', 12, 12, '12', 'asdkjm&nbsp;<div><br></div><div><br></div><div>askdlk<font size="5">asdlasmd</font></div>', 'unread', 0, '0000-00-00 00:00:00'),
(26, '2014-12-08 12:44:23', 12, 12, 'Hej pÃ¥ dig din jÃ¤vel!!', '<b>Tjena Svensson!</b><div><b><br></b></div><div>Hur Ã¤r lÃ¤get dÃ¥da? Kolla min fantastiska lÃ¤nk nedan!&nbsp;</div><div><a href="http://www.google.se" title="Google" target="">javascript:nicTemp();</a><br></div>', 'unread', 0, '0000-00-00 00:00:00'),
(27, '2014-12-08 12:47:16', 12, 12, '13', '<a href="http://google.se" title="google" target="">google</a>', 'unread', 0, '0000-00-00 00:00:00'),
(28, '2014-12-08 14:07:15', 17, 12, 'Hej pÃ¥ dig!', '<b>Hej!</b><div><b><br></b></div><div>HÃ¤r Ã¤r rich editor</div>', 'unread', 0, '0000-00-00 00:00:00'),
(29, '2014-12-09 10:23:55', 17, 12, 'Mail', '<b>Hej pÃ¥ dig!</b><div><b><br></b></div><div><b><a href="http://google.se" title="Google" target="">Google</a><br></b></div><div><br></div><div>kolla pÃ¥ denna sida. Grym!</div>', 'unread', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Tabellstruktur `positions`
--

CREATE TABLE IF NOT EXISTS `positions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `employee` varchar(40) NOT NULL,
  `hired_since` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumpning av Data i tabell `positions`
--

INSERT INTO `positions` (`id`, `name`, `employee`, `hired_since`) VALUES
(1, 'Rektor', 'Åsa Blåsa', '2010-05-11'),
(2, 'Utbildningsansvarig', 'Johan Bessing', '2013-01-07'),
(3, 'Webbutvecklingslärare', 'Robert Karlsson', '2012-05-10');

-- --------------------------------------------------------

--
-- Tabellstruktur `programmes`
--

CREATE TABLE IF NOT EXISTS `programmes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `founded` date NOT NULL,
  `next_year` tinyint(1) NOT NULL,
  `length` int(3) NOT NULL,
  `next_start` date DEFAULT NULL,
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumpning av Data i tabell `programmes`
--

INSERT INTO `programmes` (`id`, `name`, `founded`, `next_year`, `length`, `next_start`, `timestamp`) VALUES
(1, 'Webbutveckling', '2008-01-02', 1, 104, '2015-08-16', '2014-12-25 13:50:17'),
(2, 'Cobolutveckling', '2010-04-03', 0, 52, '2014-12-03', '2014-12-25 13:51:57');

-- --------------------------------------------------------

--
-- Tabellstruktur `roombookings`
--

CREATE TABLE IF NOT EXISTS `roombookings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `room` int(11) NOT NULL,
  `date` date NOT NULL,
  `hour` int(2) NOT NULL,
  `description` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumpning av Data i tabell `roombookings`
--

INSERT INTO `roombookings` (`id`, `room`, `date`, `hour`, `description`) VALUES
(1, 2, '2014-12-10', 13, 'Glöggmingel'),
(2, 1, '2014-12-11', 14, 'Swingersklubb'),
(3, 3, '2014-12-10', 15, 'Public execution'),
(4, 2, '2014-12-10', 8, 'Frukost');

-- --------------------------------------------------------

--
-- Tabellstruktur `rooms`
--

CREATE TABLE IF NOT EXISTS `rooms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `floor` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumpning av Data i tabell `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `floor`) VALUES
(1, 'WUK', 1),
(2, 'ITK', 1),
(3, 'PTK', 1),
(4, 'COBOL', 1);

-- --------------------------------------------------------

--
-- Tabellstruktur `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `social_security_nr` varchar(11) NOT NULL,
  `email` varchar(40) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `address` varchar(60) NOT NULL,
  `programme` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumpning av Data i tabell `students`
--

INSERT INTO `students` (`id`, `firstname`, `lastname`, `social_security_nr`, `email`, `phone_number`, `address`, `programme`) VALUES
(1, 'Christoffer', 'Skog', '930501-2585', 'chrille@gmail.com', '0723914309', 'Klockarleden 3 Haninge', 1),
(2, 'Christian', 'Hagdorn', '230947-3938', 'christian.hagdorn@gmail.com', '0728573938', 'Cubalibregatan 1337 13337 Stockholm', 1);

-- --------------------------------------------------------

--
-- Tabellstruktur `teachers`
--

CREATE TABLE IF NOT EXISTS `teachers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `teacher_for` varchar(255) NOT NULL,
  `social_security_nr` varchar(11) NOT NULL,
  `email` varchar(40) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumpning av Data i tabell `teachers`
--

INSERT INTO `teachers` (`id`, `firstname`, `lastname`, `teacher_for`, `social_security_nr`, `email`, `phone_number`) VALUES
(1, 'Robert', 'Karlsson', 'Webbutveckling, PTK', '920522-2059', 'robert.karlsson@zocom.se', '0736830480'),
(2, 'Sibar', 'Al-Ani', 'Webbutveckling', '860815-1525', 'sibar.al-ani@gmail.com', '0735340834');

-- --------------------------------------------------------

--
-- Tabellstruktur `uploads`
--

CREATE TABLE IF NOT EXISTS `uploads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `title` varchar(30) NOT NULL,
  `creator` varchar(50) NOT NULL,
  `filename` varchar(30) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `url` (`url`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumpning av Data i tabell `uploads`
--

INSERT INTO `uploads` (`id`, `url`, `title`, `creator`, `filename`, `timestamp`) VALUES
(22, '../../surveys/testing1234.txt', 'Testar utseende i blank fil', 'Pelle Pop', 'testing1234', '2014-12-18 12:12:18');

-- --------------------------------------------------------

--
-- Tabellstruktur `useraccounts`
--

CREATE TABLE IF NOT EXISTS `useraccounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `email` text NOT NULL,
  `type` varchar(10) NOT NULL,
  `firstname` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `lastname` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Dumpning av Data i tabell `useraccounts`
--

INSERT INTO `useraccounts` (`id`, `username`, `password`, `email`, `type`, `firstname`, `lastname`) VALUES
(5, 'Pelle', 'Èõ¯¸êÙ°çC ÜmØQßx¾¹xÃóø€å@•gPª±P¯ëÐlÝð‘opÞñ˜C‹ÈxõE÷`â9 _³°týð¹¯xFqÐ£;¸]Põ÷ðÒA€gÓðÜµH9GH>ÈÃshhMØÝ÷ ªùˆ—S ´¥x‘·¨ÆYh‹SPxuÈõ_øbÉð_ûèfoÀ9wÈF¹@‹kˆØí', 'mail@jensen.se', '1', 'Pelle', 'Pop'),
(8, 'cuba', 'P‡]È;=P½ðkÅ ç¥P›…ÈOeP£åðí ûÍP¯­ÈcP·Eð“M GõPÃÕÈwµPËmð§u [UP×ýÈ‹ÝPß•ð» o}Pë]ÈŸ=Pó½ðÏÅ ƒ¥PAÈ³eP?åðãí —ÍPK­ÈÇPSEð÷M «õ', 'mail@jensen.se', '2', 'Klas-Göran', 'Svensson'),
(9, 'hej', 'È:ßP• àK ãyÈFÏÈIýPœ³ ïi ò—ÈUíÈXSP«Ñ þ‡ 9µÈdCÈgqPºï E¥ HÓÈsaÈvPÉE TÃ WñÈ‚È…­PØc cá fGÈ‘È”ËPç rA ueÈ »È£éPöŸ U „ƒÈ¯Ù', 'mail@jensen.se', '3', 'Helge', 'Fosmo'),
(12, 'hagdorn', 'x®‹H…‰ÐLwÈK€ÒƒðY 8AP·ÝÈn»¸eÙDßxûõ˜Z{È‘ÙxH·ðÇ•Pöë`EaP<ðã…°ªs ¡‘PXoÈ×M ¶SÐí±Øüç ËÝÈúkx±Iðhï çÍ', 'hagdorn@gmail.com', '1', 'Christian', 'Hagdorn'),
(13, 'iron', ' Ò©¨Þéðb¡È>±8zYÈFY°úy`®a òÙÈVqPªùð†AÀZIà~¡PºIÈnùhÚÑPÆñÐ‚á˜NáÈ‚È†¹€B©x>Ùàª±PæYxJ¹Èžy˜r ~ÁðÒÐ¶™ðÚñÈ¶9°¢YÈ¾©8úQˆ†Ù ¢aÈÎÁÈÒùðþ‘HZé@VQPj™Èæà:ÑPvy', 'maiden$mail.com', '2', 'Iron', 'Maiden'),
(15, 'robert', '¸Óžp‘’ Çþø]Ê8kFàQbp¯öÈEÂX£Ž°9Zçv˜õºð‹†XÁòØæhÝ²è›¦PÑJ¨gÞ°uZ[vè¹BxOÖÐ­¢`Cn@ñŠHAØ •šÐË>ˆ‰úàçÆ˜¥ºÈÛ^Xqò`n@eŠ˜ÃVðYê€·¶ØM‚¸ûžÀAâPŸ®€ÕR8“FñÚH¯Îxår', 'robert@mail.com', '2', 'Magister', 'Robert'),
(16, 'drAlban', 'Èð»È÷ñÈþ_È=•ÈDËÈK9ÈRoÈY¥È`ÛÈgIÈnÈuµÈ|ëÈƒYÈŠÈ‘ÅÈ˜ûÈŸiÈ¦ŸÈ­ÕÈ´CÈ»yÈÂ¯ÈÉåÈÐSÈ×‰ÈÞ¿ÈåõÈìcÈó™ÈúÏÈ9=È@sÈG©ÈNßÈUMÈfÈc¹ÈjïÈq]', 'alban$mail.com', '2', 'Dr', 'Alban'),
(17, 'skogh', 'ÈõÒÈú<ÈAxÈ< ÈAÒÈF<ÈKnÈP ÈUÒÈZ<È_nÈd ÈiÒÈn<ÈsnÈx È}ÒÈ‚<È‡nÈŒ È‘ÒÈ–<È›nÈ  È¥ÒÈª<È¯nÈ´ È¹ÒÈ¾<ÈÃnÈÈ ÈÍÒÈÒ<È×nÈÜ ÈáÒÈæ<ÈënÈð ', 'skogh@jensen.se', '1', 'Christoffer', 'Skogh'),
(18, 'Sibar', ' ÍŠÈúä ×îðd¨P‘: æ¼ÈKN ðXð}ÚPªl AøÈd€ AŠð–DPÃž PXÈ}² Z¼ð¯vPÜÐ iŠÈ–ä sîðÈ¨Põ: ‚¼È¯N ŒXðáÚPFl ›îÈÈ€ ¥ŠðúDP_ž ´XÈá² ¾¼ðKvPxÐ', 'sibar@jensen.se', '2', '', '');

-- --------------------------------------------------------

--
-- Tabellstruktur `usertypes`
--

CREATE TABLE IF NOT EXISTS `usertypes` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `access` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
