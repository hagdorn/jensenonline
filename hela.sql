-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Värd: 127.0.0.1
-- Tid vid skapande: 13 jan 2015 kl 14:52
-- Serverversion: 5.6.20
-- PHP-version: 5.5.15

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
`id` int(11) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `position` varchar(30) NOT NULL,
  `social_security_nr` varchar(11) NOT NULL,
  `email` varchar(40) NOT NULL,
  `phone_number` varchar(15) NOT NULL
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
`id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `curriculum_url` varchar(80) NOT NULL,
  `rating_criteria` varchar(80) NOT NULL,
  `main_teacher` varchar(60) NOT NULL,
  `secondary_teacher` varchar(60) NOT NULL,
  `for_programme` varchar(30) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumpning av Data i tabell `courses`
--

INSERT INTO `courses` (`id`, `name`, `curriculum_url`, `rating_criteria`, `main_teacher`, `secondary_teacher`, `for_programme`) VALUES
(2, 'Grundläggande programmeringskunskap', 'asdasdasd', 'asdasdasdasd', '2', '1', '1');

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
  `datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `touser` int(11) NOT NULL,
  `fromuser` int(11) NOT NULL,
  `subject` text NOT NULL,
  `message` text NOT NULL,
  `status` varchar(20) NOT NULL,
  `replied` tinyint(1) NOT NULL,
  `replieddatetime` datetime NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=33 ;

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
(29, '2014-12-09 10:23:55', 17, 12, 'Mail', '<b>Hej pÃ¥ dig!</b><div><b><br></b></div><div><b><a href="http://google.se" title="Google" target="">Google</a><br></b></div><div><br></div><div>kolla pÃ¥ denna sida. Grym!</div>', 'unread', 0, '0000-00-00 00:00:00'),
(30, '2015-01-13 11:54:00', 5, 5, 'asdsad', 'asdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasdasdsadsadsadasdasd', 'read', 0, '0000-00-00 00:00:00'),
(31, '2015-01-13 11:54:53', 5, 5, 'adasdsadsad', '<div class="abLeadText" id="yui_3_15_0_2_1421146474300_913" style="font-size: 17px; font-weight: 700; margin: 12px 0px 8px; font-family: Arial, Helvetica, Verdana, Geneva, sans-serif; background-color: rgb(255, 255, 255);"><p id="yui_3_15_0_2_1421146474300_912" style="margin: 0px;">Halkan i stora delar av landet orsakar både bilolyckor och benbrott.</p><p id="yui_3_15_0_2_1421146474300_936" style="margin: 0px; text-indent: 15px;">Frakturavdelningen på Örebro universitetssjukhus har under det senaste dygnet tagit hand om 84 patienter.&nbsp;<br>– Det är det värsta vi har varit med om, säger avdelningschefen Emma Hagenfalk till Nerikes Allehanda.</p></div><div class="abRight abMd2 abLeftGutter" style="width: 145px; float: right; margin: 0px 0px 0px 25px; overflow: hidden; font-family: Arial, Helvetica, Verdana, Geneva, sans-serif; font-size: 15px; line-height: 18.75px; background-color: rgb(255, 255, 255);"><ul class="abArticleToolbar abSlimList abListSpacing abShort" style="margin: 0px 0px 6px; padding: 3px 0px 6px; min-height: 50px; list-style: none; overflow: hidden; width: 145px;"><li class="fbRecommendContainer" style="height: 21px; min-height: 21px; margin-bottom: 5px;"><div class="fbRecommendContainerInner" style="position: absolute; z-index: 150;"><div class="fb-share-button fb_iframe_widget" data-href="http://www.aftonbladet.se/nyheter/article20150666.ab" data-layout="button_count" fb-xfbml-state="rendered" fb-iframe-plugin-query="app_id=126591270700240&amp;href=http%3A%2F%2Fwww.aftonbladet.se%2Fnyheter%2Farticle20150666.ab&amp;layout=button_count&amp;locale=sv_SE&amp;sdk=joey" style="display: inline-block; position: relative;"><span style="display: inline-block; position: relative; text-align: justify; vertical-align: bottom; width: 77px; height: 20px;"><iframe name="f38f294e84" width="1000px" height="1000px" frameborder="0" allowtransparency="true" scrolling="no" title="fb:share_button Facebook Social Plugin" src="http://www.facebook.com/plugins/share_button.php?app_id=126591270700240&amp;channel=http%3A%2F%2Fstatic.ak.facebook.com%2Fconnect%2Fxd_arbiter%2F7r8gQb8MIqE.js%3Fversion%3D41%23cb%3Df26baf2138%26domain%3Dwww.aftonbladet.se%26origin%3Dhttp%253A%252F%252Fwww.aftonbladet.se%252Ff2cc050cdc%26relation%3Dparent.parent&amp;href=http%3A%2F%2Fwww.aftonbladet.se%2Fnyheter%2Farticle20150666.ab&amp;layout=button_count&amp;locale=sv_SE&amp;sdk=joey" class="" style="vertical-align: bottom; position: absolute; border-style: none; visibility: visible; width: 77px; height: 20px;"></iframe></span></div></div></li><li style="min-height: 21px; margin-bottom: 5px;"><iframe id="twitter-widget-0" scrolling="no" frameborder="0" allowtransparency="true" src="http://platform.twitter.com/widgets/tweet_button.c27d2d163408c0fe087fbfe1c687ce2b.sv.html#_=1421146474996&amp;count=horizontal&amp;id=twitter-widget-0&amp;lang=sv&amp;original_referer=http%3A%2F%2Fwww.aftonbladet.se%2Fnyheter%2Farticle20150666.ab&amp;size=m&amp;text=Halkans%20facit%3A%2084%20frakturer%20%E2%80%93%20p%C3%A5%20ett%20dygn%20%23aftonbladet&amp;url=http%3A%2F%2Fwww.aftonbladet.se%2Fnyheter%2Farticle20150666.ab" class="twitter-share-button twitter-tweet-button twitter-share-button twitter-count-horizontal" title="Twitter Tweet Button" data-twttr-rendered="true" style="vertical-align: bottom; width: 114px; height: 20px;"></iframe></li><li style="min-height: 21px; margin-bottom: 5px;"></li></ul><div style="clear: both;"></div></div><div class="abBodyText clearfix abJsBodyText " id="yui_3_15_0_2_1421146474300_941" style="margin-bottom: 15px; font-family: Arial, Helvetica, Verdana, Geneva, sans-serif; font-size: 15px; line-height: 18.75px; background-color: rgb(255, 255, 255);"><p id="yui_3_15_0_2_1421146474300_940" style="margin: 0px;">Flera olyckor inträffade på måndagen på grund av halt väglag. Det har bara fortsatt under tisdagsmorgonen.</p><p id="yui_3_15_0_2_1421146474300_944" style="margin: 0px; text-indent: 15px;">Trafikverket&nbsp;<a href="http://www.trafikverket.se/" id="yui_3_15_0_2_1421146474300_943" style="color: rgb(0, 102, 170); font-weight: 700; text-decoration: none;">varnar fortfarande för halka</a>&nbsp;i majoriteten av landet. I Norrland snöhalka och frosthalka, i Svealand frosthalka och ishalka och i Götaland framförallt ishalka.</p><p id="yui_3_15_0_2_1421146474300_946" style="margin: 0px; text-indent: 15px;">– Vi har ett väderläge där det är besvärligt väglag i stora delar av landet, säger Eva Nordén, presskommunikatör vid Trafikverket.</p><h3 style="font-family: Verdana, Arial, Helvetica, sans-serif; margin: 15px 0px 3px; line-height: 1.07; font-size: 1.1em;">”Även lokal halka”</h3><p id="yui_3_15_0_2_1421146474300_949" style="margin: 0px; text-indent: 15px;">Nordén uppmanar alla trafikanter att ta en titt på Trafikverkets trafikkartor innan man ger sig ut på vägarna. Där håller myndigheten koll på halkläget just nu och under resten av dagen.</p><p style="margin: 0px; text-indent: 15px;">– Det är vinterväglag som råder och det kan finnas platser där det också råder lokal halka. Även om det är några grader varmt ute med regn så kan det vara halt. Det är vinter i Sverige nu.</p><p style="margin: 0px; text-indent: 15px;">Väglaget kan dessutom slå om snabbt.</p><p style="margin: 0px; text-indent: 15px;">– Man måste ta det försiktigt. När det är vinterväglag så anpassar man sin hastighet efter den rådande situatoinen. Självklart ska man ha bälte och hålla avstånd till andra trafikanter.</p><h3 id="yui_3_15_0_2_1421146474300_951" style="font-family: Verdana, Arial, Helvetica, sans-serif; margin: 15px 0px 3px; line-height: 1.07; font-size: 1.1em;">84 patienter</h3><p id="yui_3_15_0_2_1421146474300_953" style="margin: 0px; text-indent: 15px;">Men olyckorna drabbar inte bara bilister. Det svåra väglaget har varit ovanligt jobbigt för fotgängare. På ortopedkirurgiska kliniken i Örebro beskriver man läget som "frakturkaos". 84 patienter vårdas med olika typer av frakturer efter att de halkat omkull.&nbsp;Majoriten är handeledsfrakturer men sjukhuset har även fått in flera skallskador orsakade av fall.<br>– Det här sticker&nbsp;ut ordentligt. Det här är det värsta vi har varit med om någonsin. Vi har jobbat över och bemannat extra med gipstekniker och sjuksköterskor, säger avdelningschefen Emma Hagenfalk till&nbsp;<a href="http://na.se/nyheter/orebro/1.2795554-frakturkaos-pa-uso-84-drabbade" target="_blank" id="yui_3_15_0_2_1421146474300_955" style="color: rgb(0, 102, 170); font-weight: 700; text-decoration: none;">Nerikes Allehanda</a>.</p></div>', 'read', 0, '0000-00-00 00:00:00'),
(32, '2015-01-13 11:55:25', 5, 5, 'adasdasd', '<div class="abLeadText" id="yui_3_15_0_2_1421146474300_913" style="font-size: 17px; font-weight: 700; margin: 12px 0px 8px; font-family: Arial, Helvetica, Verdana, Geneva, sans-serif; background-color: rgb(255, 255, 255);"><p id="yui_3_15_0_2_1421146474300_912" style="margin: 0px;">Halkan i stora delar av landet orsakar både bilolyckor och benbrott.</p><p id="yui_3_15_0_2_1421146474300_936" style="margin: 0px; text-indent: 15px;">Frakturavdelningen på Örebro universitetssjukhus har under det senaste dygnet tagit hand om 84 patienter.&nbsp;<br>– Det är det värsta vi har varit med om, säger avdelningschefen Emma Hagenfalk till Nerikes Allehanda.</p></div><div class="abRight abMd2 abLeftGutter" style="width: 145px; float: right; margin: 0px 0px 0px 25px; overflow: hidden; font-family: Arial, Helvetica, Verdana, Geneva, sans-serif; font-size: 15px; line-height: 18.75px; background-color: rgb(255, 255, 255);"><ul class="abArticleToolbar abSlimList abListSpacing abShort" style="margin: 0px 0px 6px; padding: 3px 0px 6px; min-height: 50px; list-style: none; overflow: hidden; width: 145px;"><li class="fbRecommendContainer" style="height: 21px; min-height: 21px; margin-bottom: 5px;"><div class="fbRecommendContainerInner" style="position: absolute; z-index: 150;"><div class="fb-share-button fb_iframe_widget" data-href="http://www.aftonbladet.se/nyheter/article20150666.ab" data-layout="button_count" fb-xfbml-state="rendered" fb-iframe-plugin-query="app_id=126591270700240&amp;href=http%3A%2F%2Fwww.aftonbladet.se%2Fnyheter%2Farticle20150666.ab&amp;layout=button_count&amp;locale=sv_SE&amp;sdk=joey" style="display: inline-block; position: relative;"><span style="display: inline-block; position: relative; text-align: justify; vertical-align: bottom; width: 77px; height: 20px;"><iframe name="f38f294e84" width="1000px" height="1000px" frameborder="0" allowtransparency="true" scrolling="no" title="fb:share_button Facebook Social Plugin" src="http://www.facebook.com/plugins/share_button.php?app_id=126591270700240&amp;channel=http%3A%2F%2Fstatic.ak.facebook.com%2Fconnect%2Fxd_arbiter%2F7r8gQb8MIqE.js%3Fversion%3D41%23cb%3Df26baf2138%26domain%3Dwww.aftonbladet.se%26origin%3Dhttp%253A%252F%252Fwww.aftonbladet.se%252Ff2cc050cdc%26relation%3Dparent.parent&amp;href=http%3A%2F%2Fwww.aftonbladet.se%2Fnyheter%2Farticle20150666.ab&amp;layout=button_count&amp;locale=sv_SE&amp;sdk=joey" class="" style="vertical-align: bottom; position: absolute; border-style: none; visibility: visible; width: 77px; height: 20px;"></iframe></span></div></div></li><li style="min-height: 21px; margin-bottom: 5px;"><iframe id="twitter-widget-0" scrolling="no" frameborder="0" allowtransparency="true" src="http://platform.twitter.com/widgets/tweet_button.c27d2d163408c0fe087fbfe1c687ce2b.sv.html#_=1421146474996&amp;count=horizontal&amp;id=twitter-widget-0&amp;lang=sv&amp;original_referer=http%3A%2F%2Fwww.aftonbladet.se%2Fnyheter%2Farticle20150666.ab&amp;size=m&amp;text=Halkans%20facit%3A%2084%20frakturer%20%E2%80%93%20p%C3%A5%20ett%20dygn%20%23aftonbladet&amp;url=http%3A%2F%2Fwww.aftonbladet.se%2Fnyheter%2Farticle20150666.ab" class="twitter-share-button twitter-tweet-button twitter-share-button twitter-count-horizontal" title="Twitter Tweet Button" data-twttr-rendered="true" style="vertical-align: bottom; width: 114px; height: 20px;"></iframe></li><li style="min-height: 21px; margin-bottom: 5px;"></li></ul><div style="clear: both;"></div></div><div class="abBodyText clearfix abJsBodyText " id="yui_3_15_0_2_1421146474300_941" style="margin-bottom: 15px; font-family: Arial, Helvetica, Verdana, Geneva, sans-serif; font-size: 15px; line-height: 18.75px; background-color: rgb(255, 255, 255);"><p id="yui_3_15_0_2_1421146474300_940" style="margin: 0px;">Flera olyckor inträffade på måndagen på grund av halt väglag. Det har bara fortsatt under tisdagsmorgonen.</p><p id="yui_3_15_0_2_1421146474300_944" style="margin: 0px; text-indent: 15px;">Trafikverket&nbsp;<a href="http://www.trafikverket.se/" id="yui_3_15_0_2_1421146474300_943" style="color: rgb(0, 102, 170); font-weight: 700; text-decoration: none;">varnar fortfarande för halka</a>&nbsp;i majoriteten av landet. I Norrland snöhalka och frosthalka, i Svealand frosthalka och ishalka och i Götaland framförallt ishalka.</p><p id="yui_3_15_0_2_1421146474300_946" style="margin: 0px; text-indent: 15px;">– Vi har ett väderläge där det är besvärligt väglag i stora delar av landet, säger Eva Nordén, presskommunikatör vid Trafikverket.</p><h3 style="font-family: Verdana, Arial, Helvetica, sans-serif; margin: 15px 0px 3px; line-height: 1.07; font-size: 1.1em;">”Även lokal halka”</h3><p id="yui_3_15_0_2_1421146474300_949" style="margin: 0px; text-indent: 15px;">Nordén uppmanar alla trafikanter att ta en titt på Trafikverkets trafikkartor innan man ger sig ut på vägarna. Där håller myndigheten koll på halkläget just nu och under resten av dagen.</p><p style="margin: 0px; text-indent: 15px;">– Det är vinterväglag som råder och det kan finnas platser där det också råder lokal halka. Även om det är några grader varmt ute med regn så kan det vara halt. Det är vinter i Sverige nu.</p><p style="margin: 0px; text-indent: 15px;">Väglaget kan dessutom slå om snabbt.</p><p style="margin: 0px; text-indent: 15px;">– Man måste ta det försiktigt. När det är vinterväglag så anpassar man sin hastighet efter den rådande situatoinen. Självklart ska man ha bälte och hålla avstånd till andra trafikanter.</p><h3 id="yui_3_15_0_2_1421146474300_951" style="font-family: Verdana, Arial, Helvetica, sans-serif; margin: 15px 0px 3px; line-height: 1.07; font-size: 1.1em;">84 patienter</h3><p id="yui_3_15_0_2_1421146474300_953" style="margin: 0px; text-indent: 15px;">Men olyckorna drabbar inte bara bilister. Det svåra väglaget har varit ovanligt jobbigt för fotgängare. På ortopedkirurgiska kliniken i Örebro beskriver man läget som "frakturkaos". 84 patienter vårdas med olika typer av frakturer efter att de halkat omkull.&nbsp;Majoriten är handeledsfrakturer men sjukhuset har även fått in flera skallskador orsakade av fall.<br>– Det här sticker&nbsp;ut ordentligt. Det här är det värsta vi har varit med om någonsin. Vi har jobbat över och bemannat extra med gipstekniker och sjuksköterskor, säger avdelningschefen Emma Hagenfalk till&nbsp;<a href="http://na.se/nyheter/orebro/1.2795554-frakturkaos-pa-uso-84-drabbade" target="_blank" id="yui_3_15_0_2_1421146474300_955" style="color: rgb(0, 102, 170); font-weight: 700; text-decoration: none;">Nerikes Allehanda</a>.<span style="font-size: 17px; font-weight: 700;">Halkan i stora delar av landet orsakar både bilolyckor och benbrott.</span></p><div class="abLeadText" id="yui_3_15_0_2_1421146474300_913" style="font-size: 17px; font-weight: 700; margin: 12px 0px 8px;"><p id="yui_3_15_0_2_1421146474300_936" style="margin: 0px; text-indent: 15px;">Frakturavdelningen på Örebro universitetssjukhus har under det senaste dygnet tagit hand om 84 patienter.&nbsp;<br>– Det är det värsta vi har varit med om, säger avdelningschefen Emma Hagenfalk till Nerikes Allehanda.</p></div><div class="abRight abMd2 abLeftGutter" style="width: 145px; float: right; margin: 0px 0px 0px 25px; overflow: hidden;"><ul class="abArticleToolbar abSlimList abListSpacing abShort" style="margin: 0px 0px 6px; padding: 3px 0px 6px; min-height: 50px; list-style: none; overflow: hidden; width: 145px;"><li class="fbRecommendContainer" style="height: 21px; min-height: 21px; margin-bottom: 5px;"><div class="fbRecommendContainerInner" style="position: absolute; z-index: 150;"><div class="fb-share-button fb_iframe_widget" data-href="http://www.aftonbladet.se/nyheter/article20150666.ab" data-layout="button_count" fb-xfbml-state="rendered" fb-iframe-plugin-query="app_id=126591270700240&amp;href=http%3A%2F%2Fwww.aftonbladet.se%2Fnyheter%2Farticle20150666.ab&amp;layout=button_count&amp;locale=sv_SE&amp;sdk=joey" style="display: inline-block; position: relative;"><span style="display: inline-block; position: relative; text-align: justify; vertical-align: bottom; width: 77px; height: 20px;"><iframe name="f38f294e84" width="1000px" height="1000px" frameborder="0" allowtransparency="true" scrolling="no" title="fb:share_button Facebook Social Plugin" src="http://www.facebook.com/plugins/share_button.php?app_id=126591270700240&amp;channel=http%3A%2F%2Fstatic.ak.facebook.com%2Fconnect%2Fxd_arbiter%2F7r8gQb8MIqE.js%3Fversion%3D41%23cb%3Df26baf2138%26domain%3Dwww.aftonbladet.se%26origin%3Dhttp%253A%252F%252Fwww.aftonbladet.se%252Ff2cc050cdc%26relation%3Dparent.parent&amp;href=http%3A%2F%2Fwww.aftonbladet.se%2Fnyheter%2Farticle20150666.ab&amp;layout=button_count&amp;locale=sv_SE&amp;sdk=joey" class="" style="vertical-align: bottom; position: absolute; border-style: none; visibility: visible; width: 77px; height: 20px;"></iframe></span></div></div></li><li style="min-height: 21px; margin-bottom: 5px;"><iframe id="twitter-widget-0" scrolling="no" frameborder="0" allowtransparency="true" src="http://platform.twitter.com/widgets/tweet_button.c27d2d163408c0fe087fbfe1c687ce2b.sv.html#_=1421146474996&amp;count=horizontal&amp;id=twitter-widget-0&amp;lang=sv&amp;original_referer=http%3A%2F%2Fwww.aftonbladet.se%2Fnyheter%2Farticle20150666.ab&amp;size=m&amp;text=Halkans%20facit%3A%2084%20frakturer%20%E2%80%93%20p%C3%A5%20ett%20dygn%20%23aftonbladet&amp;url=http%3A%2F%2Fwww.aftonbladet.se%2Fnyheter%2Farticle20150666.ab" class="twitter-share-button twitter-tweet-button twitter-share-button twitter-count-horizontal" title="Twitter Tweet Button" data-twttr-rendered="true" style="vertical-align: bottom; width: 114px; height: 20px;"></iframe></li><li style="min-height: 21px; margin-bottom: 5px;"></li></ul><div style="clear: both;"></div></div><div class="abBodyText clearfix abJsBodyText " id="yui_3_15_0_2_1421146474300_941" style="margin-bottom: 15px;"><p id="yui_3_15_0_2_1421146474300_940" style="margin: 0px;">Flera olyckor inträffade på måndagen på grund av halt väglag. Det har bara fortsatt under tisdagsmorgonen.</p><p id="yui_3_15_0_2_1421146474300_944" style="margin: 0px; text-indent: 15px;">Trafikverket&nbsp;<a href="http://www.trafikverket.se/" id="yui_3_15_0_2_1421146474300_943" style="color: rgb(0, 102, 170); font-weight: 700; text-decoration: none;">varnar fortfarande för halka</a>&nbsp;i majoriteten av landet. I Norrland snöhalka och frosthalka, i Svealand frosthalka och ishalka och i Götaland framförallt ishalka.</p><p id="yui_3_15_0_2_1421146474300_946" style="margin: 0px; text-indent: 15px;">– Vi har ett väderläge där det är besvärligt väglag i stora delar av landet, säger Eva Nordén, presskommunikatör vid Trafikverket.</p><h3 style="font-family: Verdana, Arial, Helvetica, sans-serif; margin: 15px 0px 3px; line-height: 1.07; font-size: 1.1em;">”Även lokal halka”</h3><p id="yui_3_15_0_2_1421146474300_949" style="margin: 0px; text-indent: 15px;">Nordén uppmanar alla trafikanter att ta en titt på Trafikverkets trafikkartor innan man ger sig ut på vägarna. Där håller myndigheten koll på halkläget just nu och under resten av dagen.</p><p style="margin: 0px; text-indent: 15px;">– Det är vinterväglag som råder och det kan finnas platser där det också råder lokal halka. Även om det är några grader varmt ute med regn så kan det vara halt. Det är vinter i Sverige nu.</p><p style="margin: 0px; text-indent: 15px;">Väglaget kan dessutom slå om snabbt.</p><p style="margin: 0px; text-indent: 15px;">– Man måste ta det försiktigt. När det är vinterväglag så anpassar man sin hastighet efter den rådande situatoinen. Självklart ska man ha bälte och hålla avstånd till andra trafikanter.</p><h3 id="yui_3_15_0_2_1421146474300_951" style="font-family: Verdana, Arial, Helvetica, sans-serif; margin: 15px 0px 3px; line-height: 1.07; font-size: 1.1em;">84 patienter</h3><p id="yui_3_15_0_2_1421146474300_953" style="margin: 0px; text-indent: 15px;">Men olyckorna drabbar inte bara bilister. Det svåra väglaget har varit ovanligt jobbigt för fotgängare. På ortopedkirurgiska kliniken i Örebro beskriver man läget som "frakturkaos". 84 patienter vårdas med olika typer av frakturer efter att de halkat omkull.&nbsp;Majoriten är handeledsfrakturer men sjukhuset har även fått in flera skallskador orsakade av fall.<br>– Det här sticker&nbsp;ut ordentligt. Det här är det värsta vi har varit med om någonsin. Vi har jobbat över och bemannat extra med gipstekniker och sjuksköterskor, säger avdelningschefen Emma Hagenfalk till&nbsp;<a href="http://na.se/nyheter/orebro/1.2795554-frakturkaos-pa-uso-84-drabbade" target="_blank" id="yui_3_15_0_2_1421146474300_955" style="color: rgb(0, 102, 170); font-weight: 700; text-decoration: none;">Nerikes Allehanda</a>.<span style="font-size: 17px; font-weight: 700;">Halkan i stora delar av landet orsakar både bilolyckor och benbrott.</span></p><div class="abLeadText" id="yui_3_15_0_2_1421146474300_913" style="font-size: 17px; font-weight: 700; margin: 12px 0px 8px;"><p id="yui_3_15_0_2_1421146474300_936" style="margin: 0px; text-indent: 15px;">Frakturavdelningen på Örebro universitetssjukhus har under det senaste dygnet tagit hand om 84 patienter.&nbsp;<br>– Det är det värsta vi har varit med om, säger avdelningschefen Emma Hagenfalk till Nerikes Allehanda.</p></div><div class="abRight abMd2 abLeftGutter" style="width: 145px; float: right; margin: 0px 0px 0px 25px; overflow: hidden;"><ul class="abArticleToolbar abSlimList abListSpacing abShort" style="margin: 0px 0px 6px; padding: 3px 0px 6px; min-height: 50px; list-style: none; overflow: hidden; width: 145px;"><li class="fbRecommendContainer" style="height: 21px; min-height: 21px; margin-bottom: 5px;"><div class="fbRecommendContainerInner" style="position: absolute; z-index: 150;"><div class="fb-share-button fb_iframe_widget" data-href="http://www.aftonbladet.se/nyheter/article20150666.ab" data-layout="button_count" fb-xfbml-state="rendered" fb-iframe-plugin-query="app_id=126591270700240&amp;href=http%3A%2F%2Fwww.aftonbladet.se%2Fnyheter%2Farticle20150666.ab&amp;layout=button_count&amp;locale=sv_SE&amp;sdk=joey" style="display: inline-block; position: relative;"><span style="display: inline-block; position: relative; text-align: justify; vertical-align: bottom; width: 77px; height: 20px;"><iframe name="f38f294e84" width="1000px" height="1000px" frameborder="0" allowtransparency="true" scrolling="no" title="fb:share_button Facebook Social Plugin" src="http://www.facebook.com/plugins/share_button.php?app_id=126591270700240&amp;channel=http%3A%2F%2Fstatic.ak.facebook.com%2Fconnect%2Fxd_arbiter%2F7r8gQb8MIqE.js%3Fversion%3D41%23cb%3Df26baf2138%26domain%3Dwww.aftonbladet.se%26origin%3Dhttp%253A%252F%252Fwww.aftonbladet.se%252Ff2cc050cdc%26relation%3Dparent.parent&amp;href=http%3A%2F%2Fwww.aftonbladet.se%2Fnyheter%2Farticle20150666.ab&amp;layout=button_count&amp;locale=sv_SE&amp;sdk=joey" class="" style="vertical-align: bottom; position: absolute; border-style: none; visibility: visible; width: 77px; height: 20px;"></iframe></span></div></div></li><li style="min-height: 21px; margin-bottom: 5px;"><iframe id="twitter-widget-0" scrolling="no" frameborder="0" allowtransparency="true" src="http://platform.twitter.com/widgets/tweet_button.c27d2d163408c0fe087fbfe1c687ce2b.sv.html#_=1421146474996&amp;count=horizontal&amp;id=twitter-widget-0&amp;lang=sv&amp;original_referer=http%3A%2F%2Fwww.aftonbladet.se%2Fnyheter%2Farticle20150666.ab&amp;size=m&amp;text=Halkans%20facit%3A%2084%20frakturer%20%E2%80%93%20p%C3%A5%20ett%20dygn%20%23aftonbladet&amp;url=http%3A%2F%2Fwww.aftonbladet.se%2Fnyheter%2Farticle20150666.ab" class="twitter-share-button twitter-tweet-button twitter-share-button twitter-count-horizontal" title="Twitter Tweet Button" data-twttr-rendered="true" style="vertical-align: bottom; width: 114px; height: 20px;"></iframe></li><li style="min-height: 21px; margin-bottom: 5px;"></li></ul><div style="clear: both;"></div></div><div class="abBodyText clearfix abJsBodyText " id="yui_3_15_0_2_1421146474300_941" style="margin-bottom: 15px;"><p id="yui_3_15_0_2_1421146474300_940" style="margin: 0px;">Flera olyckor inträffade på måndagen på grund av halt väglag. Det har bara fortsatt under tisdagsmorgonen.</p><p id="yui_3_15_0_2_1421146474300_944" style="margin: 0px; text-indent: 15px;">Trafikverket&nbsp;<a href="http://www.trafikverket.se/" id="yui_3_15_0_2_1421146474300_943" style="color: rgb(0, 102, 170); font-weight: 700; text-decoration: none;">varnar fortfarande för halka</a>&nbsp;i majoriteten av landet. I Norrland snöhalka och frosthalka, i Svealand frosthalka och ishalka och i Götaland framförallt ishalka.</p><p id="yui_3_15_0_2_1421146474300_946" style="margin: 0px; text-indent: 15px;">– Vi har ett väderläge där det är besvärligt väglag i stora delar av landet, säger Eva Nordén, presskommunikatör vid Trafikverket.</p><h3 style="font-family: Verdana, Arial, Helvetica, sans-serif; margin: 15px 0px 3px; line-height: 1.07; font-size: 1.1em;">”Även lokal halka”</h3><p id="yui_3_15_0_2_1421146474300_949" style="margin: 0px; text-indent: 15px;">Nordén uppmanar alla trafikanter att ta en titt på Trafikverkets trafikkartor innan man ger sig ut på vägarna. Där håller myndigheten koll på halkläget just nu och under resten av dagen.</p><p style="margin: 0px; text-indent: 15px;">– Det är vinterväglag som råder och det kan finnas platser där det också råder lokal halka. Även om det är några grader varmt ute med regn så kan det vara halt. Det är vinter i Sverige nu.</p><p style="margin: 0px; text-indent: 15px;">Väglaget kan dessutom slå om snabbt.</p><p style="margin: 0px; text-indent: 15px;">– Man måste ta det försiktigt. När det är vinterväglag så anpassar man sin hastighet efter den rådande situatoinen. Självklart ska man ha bälte och hålla avstånd till andra trafikanter.</p><h3 id="yui_3_15_0_2_1421146474300_951" style="font-family: Verdana, Arial, Helvetica, sans-serif; margin: 15px 0px 3px; line-height: 1.07; font-size: 1.1em;">84 patienter</h3><p id="yui_3_15_0_2_1421146474300_953" style="margin: 0px; text-indent: 15px;">Men olyckorna drabbar inte bara bilister. Det svåra väglaget har varit ovanligt jobbigt för fotgängare. På ortopedkirurgiska kliniken i Örebro beskriver man läget som "frakturkaos". 84 patienter vårdas med olika typer av frakturer efter att de halkat omkull.&nbsp;Majoriten är handeledsfrakturer men sjukhuset har även fått in flera skallskador orsakade av fall.<br>– Det här sticker&nbsp;ut ordentligt. Det här är det värsta vi har varit med om någonsin. Vi har jobbat över och bemannat extra med gipstekniker och sjuksköterskor, säger avdelningschefen Emma Hagenfalk till&nbsp;<a href="http://na.se/nyheter/orebro/1.2795554-frakturkaos-pa-uso-84-drabbade" target="_blank" id="yui_3_15_0_2_1421146474300_955" style="color: rgb(0, 102, 170); font-weight: 700; text-decoration: none;">Nerikes Allehanda</a>.</p></div></div></div>', 'read', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Tabellstruktur `positions`
--

CREATE TABLE IF NOT EXISTS `positions` (
`id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `employee` varchar(80) NOT NULL,
  `hired_since` date NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumpning av Data i tabell `positions`
--

INSERT INTO `positions` (`id`, `name`, `employee`, `hired_since`) VALUES
(1, 'Rektor?', 'Åsa Blåsa', '2015-01-04'),
(2, 'Ja vad är han?', 'Johan Bessing', '2015-01-16');

-- --------------------------------------------------------

--
-- Tabellstruktur `programmes`
--

CREATE TABLE IF NOT EXISTS `programmes` (
`id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `founded` date NOT NULL,
  `next_year` tinyint(1) NOT NULL,
  `length` varchar(3) NOT NULL,
  `next_start` date NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumpning av Data i tabell `programmes`
--

INSERT INTO `programmes` (`id`, `name`, `founded`, `next_year`, `length`, `next_start`) VALUES
(1, 'Webbutveckling', '2015-01-14', 1, '2', '2015-01-14');

-- --------------------------------------------------------

--
-- Tabellstruktur `roombookings`
--

CREATE TABLE IF NOT EXISTS `roombookings` (
  `id` int(11) NOT NULL,
  `room` int(11) NOT NULL,
  `date` date NOT NULL,
  `hour` int(2) NOT NULL,
  `description` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `floor` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumpning av Data i tabell `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `floor`) VALUES
(1, 'WUK', ''),
(2, 'ITK', ''),
(3, 'PTK', ''),
(4, 'COBOL', '');

-- --------------------------------------------------------

--
-- Tabellstruktur `students`
--

CREATE TABLE IF NOT EXISTS `students` (
`id` int(11) NOT NULL,
  `firstname` varchar(40) NOT NULL,
  `lastname` varchar(40) NOT NULL,
  `social_security_nr` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `programme` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellstruktur `teachers`
--

CREATE TABLE IF NOT EXISTS `teachers` (
`id` int(11) NOT NULL,
  `firstname` varchar(40) NOT NULL,
  `lastname` varchar(40) NOT NULL,
  `social_security_nr` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `teacher_for` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumpning av Data i tabell `teachers`
--

INSERT INTO `teachers` (`id`, `firstname`, `lastname`, `social_security_nr`, `email`, `phone_number`, `teacher_for`) VALUES
(1, 'Sibari', 'Al-ani', '920520-2830', 'sibar.alani@gmail.com', '0732029349', 'Webbutveckling'),
(2, 'Roberto', 'Karlsson', '850325-9420', 'robert.karlsson@zocom.se', '0720340392', 'Webbutveckling');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

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
(17, 'skogh', 'ÈõÒÈú<ÈAxÈ< ÈAÒÈF<ÈKnÈP ÈUÒÈZ<È_nÈd ÈiÒÈn<ÈsnÈx È}ÒÈ‚<È‡nÈŒ È‘ÒÈ–<È›nÈ  È¥ÒÈª<È¯nÈ´ È¹ÒÈ¾<ÈÃnÈÈ ÈÍÒÈÒ<È×nÈÜ ÈáÒÈæ<ÈënÈð ', 'skogh@jensen.se', '1', '', ''),
(18, 'Sibar', ' ÍŠÈúä ×îðd¨P‘: æ¼ÈKN ðXð}ÚPªl AøÈd€ AŠð–DPÃž PXÈ}² Z¼ð¯vPÜÐ iŠÈ–ä sîðÈ¨Põ: ‚¼È¯N ŒXðáÚPFl ›îÈÈ€ ¥ŠðúDP_ž ´XÈá² ¾¼ðKvPxÐ', 'sibar@jensen.se', '2', '', ''),
(19, 'chrille', 'PPx', 'chrille@gmail.com', '1', 'christoffer', 'skogh');

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
-- Index för tabell `admins`
--
ALTER TABLE `admins`
 ADD PRIMARY KEY (`id`);

--
-- Index för tabell `courses`
--
ALTER TABLE `courses`
 ADD PRIMARY KEY (`id`);

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
-- Index för tabell `positions`
--
ALTER TABLE `positions`
 ADD PRIMARY KEY (`id`);

--
-- Index för tabell `programmes`
--
ALTER TABLE `programmes`
 ADD PRIMARY KEY (`id`);

--
-- Index för tabell `students`
--
ALTER TABLE `students`
 ADD PRIMARY KEY (`id`);

--
-- Index för tabell `teachers`
--
ALTER TABLE `teachers`
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
-- AUTO_INCREMENT för tabell `admins`
--
ALTER TABLE `admins`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT för tabell `courses`
--
ALTER TABLE `courses`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT för tabell `educations`
--
ALTER TABLE `educations`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT för tabell `pm`
--
ALTER TABLE `pm`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT för tabell `positions`
--
ALTER TABLE `positions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT för tabell `programmes`
--
ALTER TABLE `programmes`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT för tabell `students`
--
ALTER TABLE `students`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT för tabell `teachers`
--
ALTER TABLE `teachers`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT för tabell `useraccounts`
--
ALTER TABLE `useraccounts`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT för tabell `usertypes`
--
ALTER TABLE `usertypes`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
