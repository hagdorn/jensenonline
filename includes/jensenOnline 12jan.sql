-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Värd: localhost
-- Tid vid skapande: 12 jan 2015 kl 10:18
-- Serverversion: 5.6.20
-- PHP-version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Databas: `jensenOnline`
--

-- --------------------------------------------------------

--
-- Tabellstruktur `educations`
--

CREATE TABLE IF NOT EXISTS `educations` (
`id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `begin` date NOT NULL,
  `end` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellstruktur `pm`
--

CREATE TABLE IF NOT EXISTS `pm` (
`id` int(11) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `touser` int(11) NOT NULL,
  `fromuser` int(11) NOT NULL,
  `subject` text NOT NULL,
  `message` text NOT NULL,
  `status` varchar(20) NOT NULL,
  `replied` tinyint(1) NOT NULL,
  `replieddatetime` datetime NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=48 ;

--
-- Dumpning av Data i tabell `pm`
--

INSERT INTO `pm` (`id`, `datetime`, `touser`, `fromuser`, `subject`, `message`, `status`, `replied`, `replieddatetime`) VALUES
(2, '2014-11-20 11:36:52', 17, 12, 'Hejje!', 'Skickar testmeddelande!', 'unread', 0, '0000-00-00 00:00:00'),
(3, '2014-11-20 12:02:26', 12, 17, 'Hejjahejja', 'Bajs', 'read', 0, '0000-00-00 00:00:00'),
(4, '2014-11-20 12:03:18', 12, 17, 'Hejja', 'Hej hej', '', 0, '0000-00-00 00:00:00'),
(5, '2014-11-20 13:09:56', 17, 5, 'Fuck Off', 'Get out of my head!!', 'unread', 0, '0000-00-00 00:00:00'),
(6, '2014-11-25 10:04:15', 12, 5, 'Borttaget', 'lkaj klaj sdlkaÃ¶ fklsa Ã¶dgoknv askdnzf Ã¶qknf Ã¶lzn alzx nalk<zxnv Ã¶lkn', 'deleted', 0, '0000-00-00 00:00:00'),
(7, '2014-11-25 10:09:10', 5, 12, 'Spaaaam!', 'SpaaaamSpaaaamSpaaaamSpaaaamSpaaaamSpaaaamSpaaaam', 'unread', 0, '0000-00-00 00:00:00'),
(21, '2014-11-25 11:03:06', 12, 12, 'Hej pÃ¥ dig', 'Hejj', 'unread', 0, '0000-00-00 00:00:00'),
(22, '2014-11-25 11:49:55', 12, 5, 'Hejje', 'Welcome to XAMPP for OS X 1.8.3-5!\r\n\r\nCongratulations:\r\nYou successfully installed XAMPP on this system!\r\nNow you can start using Apache and Co. Firstly you should try Â»StatusÂ« on the left navigation to make sure everything works fine.\r\n\r\nAfter testing you may take a look at the examples below the test link.\r\n\r\nIf you want to start programming PHP or Perl (or whatever ;) please take a look at the XAMPP manual first and get more information about your XAMPP installation.\r\n\r\nGood luck,\r\nKai "Oswald" Seidler + Kay Vogelgesang\r\n\r\nInstall applications on XAMPP using BitNami\r\n\r\nApache Friends and BitNami are cooperating to make dozens of open source applications available on XAMPP, for free. BitNami-packaged applications include Wordpress, Drupal, Joomla! and dozens of others and can be deployed with one-click installers. Visit the BitNami XAMPP page for details on the currently available apps.', 'unread', 0, '0000-00-00 00:00:00'),
(23, '2014-11-25 14:13:54', 17, 12, 'Hej pÃ¥ dig!', 'Hej! Hur mÃ¥r du?', 'unread', 0, '0000-00-00 00:00:00'),
(24, '2014-12-08 12:07:25', 12, 12, 'Hejj ee      lkas', 'Testar       att       ha    Spaces\r\n\r\n\r\nOch enters.', 'read', 0, '0000-00-00 00:00:00'),
(25, '2014-12-08 12:28:06', 12, 12, '12', 'asdkjm&nbsp;<div><br></div><div><br></div><div>askdlk<font size="5">asdlasmd</font></div>', 'read', 0, '0000-00-00 00:00:00'),
(26, '2014-12-08 12:44:23', 12, 12, 'Hej pÃ¥ dig din jÃ¤vel!!', '<b>Tjena Svensson!</b><div><b><br></b></div><div>Hur Ã¤r lÃ¤get dÃ¥da? Kolla min fantastiska lÃ¤nk nedan!&nbsp;</div><div><a href="http://www.google.se" title="Google" target="">javascript:nicTemp();</a><br></div>', 'read', 0, '0000-00-00 00:00:00'),
(27, '2014-12-08 12:47:16', 12, 12, '13', '<a href="http://google.se" title="google" target="">google</a>', 'read', 0, '0000-00-00 00:00:00'),
(28, '2014-12-08 14:07:15', 17, 12, 'Hej pÃ¥ dig!', '<b>Hej!</b><div><b><br></b></div><div>HÃ¤r Ã¤r rich editor</div>', 'unread', 0, '0000-00-00 00:00:00'),
(29, '2014-12-09 10:23:55', 17, 12, 'Mail', '<b>Hej pÃ¥ dig!</b><div><b><br></b></div><div><b><a href="http://google.se" title="Google" target="">Google</a><br></b></div><div><br></div><div>kolla pÃ¥ denna sida. Grym!</div>', 'unread', 0, '0000-00-00 00:00:00'),
(30, '2014-12-15 19:16:37', 17, 12, 'test', 'test', 'unread', 0, '0000-00-00 00:00:00'),
(31, '2014-12-15 19:17:22', 17, 12, 'Jahaja!!', 'Testar<div><br></div>', 'unread', 0, '0000-00-00 00:00:00'),
(32, '2014-12-15 19:19:38', 20, 12, 'Hej pÃ¥ dig', 'kjdskj pksj pksdjf kojs dflkj skj k<div><br></div>', 'unread', 0, '0000-00-00 00:00:00'),
(33, '2014-12-15 19:21:43', 12, 12, 'Hej mig sjÃ¤lv!!', 'Hej!', 'read', 0, '0000-00-00 00:00:00'),
(34, '2014-12-15 20:09:12', 5, 12, '', '', 'unread', 0, '0000-00-00 00:00:00'),
(35, '2014-12-15 20:53:17', 12, 12, 'kjasd', 'apsdjkalsjd', 'read', 0, '0000-00-00 00:00:00'),
(36, '2014-12-16 09:03:39', 12, 12, 'test', '&lt;dkja', 'read', 0, '0000-00-00 00:00:00'),
(37, '2014-12-16 10:28:27', 12, 12, 'apsjkd', 'alkjsd', 'read', 0, '0000-00-00 00:00:00'),
(38, '2014-12-16 10:31:24', 12, 12, 'aojd', '', 'read', 0, '0000-00-00 00:00:00'),
(39, '2014-12-16 11:00:00', 12, 12, 'asd', '', 'read', 0, '0000-00-00 00:00:00'),
(40, '2014-12-17 12:55:13', 9, 8, 'test', '', 'unread', 0, '0000-00-00 00:00:00'),
(41, '2014-12-17 12:58:43', 17, 12, 'test', '', 'unread', 0, '0000-00-00 00:00:00'),
(42, '2014-12-17 12:58:47', 12, 12, 'test', '', 'read', 0, '0000-00-00 00:00:00'),
(43, '2014-12-17 13:00:02', 8, 8, 'tes', '', 'read', 0, '0000-00-00 00:00:00'),
(44, '2014-12-17 13:00:22', 8, 8, 'kjas', '', 'read', 0, '0000-00-00 00:00:00'),
(45, '2014-12-17 22:49:28', 12, 8, ' I''m a big fan of cats', '<span style="font-family: Arial, ''Liberation Sans'', ''DejaVu Sans'', sans-serif; font-size: 14px; line-height: 17.8048000335693px; background-color: rgb(255, 255, 255);">&nbsp;I''m a big fan of cats</span>', 'read', 0, '0000-00-00 00:00:00'),
(46, '2014-12-17 22:50:28', 12, 8, ' I''m a big fan of cats', '<span style="font-family: Arial, ''Liberation Sans'', ''DejaVu Sans'', sans-serif; font-size: 14px; line-height: 17.8048000335693px; background-color: rgb(255, 255, 255);">&nbsp;I''m a big fan of cats</span>', 'read', 0, '0000-00-00 00:00:00'),
(47, '2014-12-17 22:53:19', 12, 8, ' I''m a big fan of cats', '<span style="font-family: Arial, ''Liberation Sans'', ''DejaVu Sans'', sans-serif; font-size: 14px; line-height: 17.8048000335693px; background-color: rgb(255, 255, 255);">&nbsp;I''m a big fan of cats</span>', 'unread', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Tabellstruktur `roombookings`
--

CREATE TABLE IF NOT EXISTS `roombookings` (
`id` int(11) NOT NULL,
  `room` int(11) NOT NULL,
  `date` date NOT NULL,
  `hour` int(2) NOT NULL,
  `description` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

--
-- Dumpning av Data i tabell `roombookings`
--

INSERT INTO `roombookings` (`id`, `room`, `date`, `hour`, `description`) VALUES
(2, 1, '2014-12-18', 14, 'Swingersklubb'),
(26, 1, '2014-12-18', 15, 'Mingel'),
(27, 3, '2014-12-18', 13, 'Swing'),
(28, 3, '2014-12-18', 14, 'Jazz'),
(29, 3, '2014-12-18', 14, 'Jazz'),
(31, 2, '2014-12-17', 15, 'Spritfest'),
(32, 4, '2014-12-17', 8, 'Frukost'),
(33, 4, '2014-12-15', 10, 'Kurs'),
(34, 3, '2014-12-15', 12, 'Kors'),
(35, 2, '2014-12-17', 14, 'Mingel'),
(37, 1, '2014-12-18', 16, 'Spritfest'),
(38, 2, '2014-12-18', 15, 'Skit'),
(39, 4, '2015-01-12', 13, 'Yeaj');

-- --------------------------------------------------------

--
-- Tabellstruktur `rooms`
--

CREATE TABLE IF NOT EXISTS `rooms` (
`id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumpning av Data i tabell `rooms`
--

INSERT INTO `rooms` (`id`, `name`) VALUES
(1, 'COBOL'),
(2, 'ITK'),
(3, 'PTK'),
(4, 'WUK');

-- --------------------------------------------------------

--
-- Tabellstruktur `useraccounts`
--

CREATE TABLE IF NOT EXISTS `useraccounts` (
`id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `email` text NOT NULL,
  `type` varchar(10) NOT NULL,
  `firstname` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `lastname` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

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
(18, 'Sibar', ' ÍŠÈúä ×îðd¨P‘: æ¼ÈKN ðXð}ÚPªl AøÈd€ AŠð–DPÃž PXÈ}² Z¼ð¯vPÜÐ iŠÈ–ä sîðÈ¨Põ: ‚¼È¯N ŒXðáÚPFl ›îÈÈ€ ¥ŠðúDP_ž ´XÈá² ¾¼ðKvPxÐ', 'sibar@jensen.se', '2', '', ''),
(20, 'drAlban', 'Èð»È÷ñÈþ_È=•ÈDËÈK9ÈRoÈY¥È`ÛÈgIÈnÈuµÈ|ëÈƒYÈŠÈ‘ÅÈ˜ûÈŸiÈ¦ŸÈ­ÕÈ´CÈ»yÈÂ¯ÈÉåÈÐSÈ×‰ÈÞ¿ÈåõÈìcÈó™ÈúÏÈ9=È@sÈG©ÈNßÈUMÈfÈc¹ÈjïÈq]', 'alban$mail.com', '2', 'Dr', 'Albanien'),
(22, 'pampers', '@kE°âû`™ñ à¯ØWe€ÎSxÍ‘X´·xÛU@ªc¸aY¨X8·eÈ†spýa@Ôwè»ÐªËxY¹¸ wP?Uˆ~ÓÐÍ™ÈÌ×èóuHZãp‰‰ ÀA Ç}˜Æ»¨ÝI8tçà[Eðr›ðyá¸Hï`¿ÝˆîƒP½‘°fy¨[­xúÃÐ‘™ð¸AhAÇh>;€]™`D¿È³¥èÚC¸±YHH÷€‡­P^ÃàõÑPl‡', 'pampers@mail.com', '2', 'Adam', 'Alsing'),
(23, 'matilda', 'ˆ³ŠP‚˜ØIž à¬¸ALÈN˜ð}>hÄÄà{ºøšPxéÞÈx¬Èò¸v`HÕþ¨tÜPëÊPòHØ¹NÈ°„€o‚ðæppmþpt|ðûzèú¸ÈáÞHh¤Ð÷ª8fXÅöÈ<¬øsZÈJpØaÆ°@äÈ_z°N¨ EÞ@´ÄÈ{Ê ZèQVXœÐŸZxNHPõfÈ¬fhSBpbXQ¾ððÔPWz`nÐÈÝ¶øLd', 'matilda@xx.xx', '1', 'Matilda', 'Cervin'),
(24, 'a', 'X‰TØBöÃÐH|ªÈý„€¶^8o8¸ðÚp©´ðbŽ¨ãh`œBàUä˜Ö¾P˜ÐHrˆÉL@‚îÀ;Èx¼¢øu|°öVh¯øèhÒ é¬X¢†Ø[`Ü:H•ÜÈN¶€Ï8ˆj', 'a', '2', '', '');

-- --------------------------------------------------------

--
-- Tabellstruktur `usertypes`
--

CREATE TABLE IF NOT EXISTS `usertypes` (
`id` int(10) NOT NULL,
  `name` text NOT NULL,
  `access` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Index för dumpade tabeller
--

--
-- Index för tabell `educations`
--
ALTER TABLE `educations`
 ADD PRIMARY KEY (`id`);

--
-- Index för tabell `pm`
--
ALTER TABLE `pm`
 ADD PRIMARY KEY (`id`);

--
-- Index för tabell `roombookings`
--
ALTER TABLE `roombookings`
 ADD PRIMARY KEY (`id`);

--
-- Index för tabell `rooms`
--
ALTER TABLE `rooms`
 ADD PRIMARY KEY (`id`);

--
-- Index för tabell `useraccounts`
--
ALTER TABLE `useraccounts`
 ADD PRIMARY KEY (`id`);

--
-- Index för tabell `usertypes`
--
ALTER TABLE `usertypes`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT för dumpade tabeller
--

--
-- AUTO_INCREMENT för tabell `educations`
--
ALTER TABLE `educations`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT för tabell `pm`
--
ALTER TABLE `pm`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT för tabell `roombookings`
--
ALTER TABLE `roombookings`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT för tabell `rooms`
--
ALTER TABLE `rooms`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT för tabell `useraccounts`
--
ALTER TABLE `useraccounts`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT för tabell `usertypes`
--
ALTER TABLE `usertypes`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
