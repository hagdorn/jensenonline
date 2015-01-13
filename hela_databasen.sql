-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Värd: localhost
-- Tid vid skapande: 13 jan 2015 kl 14:58
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
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `touser` int(11) NOT NULL,
  `fromuser` int(11) NOT NULL,
  `subject` text CHARACTER SET utf8 NOT NULL,
  `message` text CHARACTER SET utf8 NOT NULL,
  `status` varchar(20) CHARACTER SET utf8 NOT NULL,
  `replied` tinyint(1) NOT NULL,
  `replieddatetime` datetime NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=56 ;

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
(21, '2014-11-25 11:03:06', 12, 12, 'Hej pÃ¥ dig', 'Hejj', 'read', 0, '0000-00-00 00:00:00'),
(22, '2014-11-25 11:49:55', 12, 5, 'Hejje', 'Welcome to XAMPP for OS X 1.8.3-5!\r\n\r\nCongratulations:\r\nYou successfully installed XAMPP on this system!\r\nNow you can start using Apache and Co. Firstly you should try Â»StatusÂ« on the left navigation to make sure everything works fine.\r\n\r\nAfter testing you may take a look at the examples below the test link.\r\n\r\nIf you want to start programming PHP or Perl (or whatever ;) please take a look at the XAMPP manual first and get more information about your XAMPP installation.\r\n\r\nGood luck,\r\nKai "Oswald" Seidler + Kay Vogelgesang\r\n\r\nInstall applications on XAMPP using BitNami\r\n\r\nApache Friends and BitNami are cooperating to make dozens of open source applications available on XAMPP, for free. BitNami-packaged applications include Wordpress, Drupal, Joomla! and dozens of others and can be deployed with one-click installers. Visit the BitNami XAMPP page for details on the currently available apps.', 'read', 0, '0000-00-00 00:00:00'),
(23, '2014-11-25 14:13:54', 17, 12, 'Hej pÃ¥ dig!', 'Hej! Hur mÃ¥r du?', 'unread', 0, '0000-00-00 00:00:00'),
(24, '2014-12-08 12:07:25', 12, 12, 'Hejj ee      lkas', 'Testar       att       ha    Spaces\r\n\r\n\r\nOch enters.', 'read', 0, '0000-00-00 00:00:00'),
(25, '2014-12-08 12:28:06', 12, 12, '12', 'asdkjm&nbsp;<div><br></div><div><br></div><div>askdlk<font size="5">asdlasmd</font></div>', 'read', 0, '0000-00-00 00:00:00'),
(26, '2014-12-08 12:44:23', 12, 12, 'Hej pÃ¥ dig din jÃ¤vel!!', '<b>Tjena Svensson!</b><div><b><br></b></div><div>Hur Ã¤r lÃ¤get dÃ¥da? Kolla min fantastiska lÃ¤nk nedan!&nbsp;</div><div><a href="http://www.google.se" title="Google" target="">javascript:nicTemp();</a><br></div>', 'read', 0, '0000-00-00 00:00:00'),
(27, '2014-12-08 12:47:16', 12, 12, '13', '<a href="http://google.se" title="google" target="">google</a>', 'read', 0, '0000-00-00 00:00:00'),
(28, '2014-12-08 14:07:15', 17, 12, 'Hej pÃ¥ dig!', '<b>Hej!</b><div><b><br></b></div><div>HÃ¤r Ã¤r rich editor</div>', 'read', 0, '0000-00-00 00:00:00'),
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
(47, '2014-12-17 22:53:19', 12, 8, ' I''m a big fan of cats', '<span style="font-family: Arial, ''Liberation Sans'', ''DejaVu Sans'', sans-serif; font-size: 14px; line-height: 17.8048000335693px; background-color: rgb(255, 255, 255);">&nbsp;I''m a big fan of cats</span>', 'read', 0, '0000-00-00 00:00:00'),
(48, '2015-01-12 21:47:37', 12, 8, 'Test', 'Hej din jävel', 'read', 0, '0000-00-00 00:00:00'),
(49, '2015-01-13 10:10:12', 17, 12, 'Hej på dig!', 'Hej på dig!', 'read', 0, '0000-00-00 00:00:00'),
(50, '2015-01-13 10:39:27', 12, 12, 'Om Paris', '<article style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 10px; vertical-align: baseline; font-family: Arial, Helvetica, sans-serif; line-height: 10px; background: rgb(255, 255, 255);"><div class="article-preamble-txt bold" style="margin: 0px 0px 15px; padding: 0px; border: 0px; outline: 0px; font-size: 2em; vertical-align: baseline; line-height: 1.2; font-weight: bold; background: transparent;"><p style="margin: 0px 0px 15px;">En 29-årig fransman som tidigare gripits i Bulgarien misstänkt för att ha kopplingar till terrorattentaten i Paris. Det uppger åklagare.</p></div></article><div class="content-body premium-article hidden" id="contentBody" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 10px; vertical-align: baseline; font-family: Arial, Helvetica, sans-serif; line-height: 10px; background: rgb(255, 255, 255);"><div class="content-paragraphs" style="margin: 0px 0px 30px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;"><article style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;"><div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;"><p class="preamble-hiden" style="margin: 0px; font-size: 2em; line-height: 1.2; font-weight: bold; height: 0px; overflow: hidden; padding: 0px;"></p><p style="margin: 0px 0px 15px; font-size: 1.5em; line-height: 1.2667;">Bulgarien förbereder en utvisning av en fransk medborgare som misstänks för att ha haft kontakt med en av de två bröder som utförde terrorattentatet mot Charlie Hebdo i förra veckan, enligt nyhetsbyrån Reuters.</p><p style="margin: 0px 0px 15px; font-size: 1.5em; line-height: 1.2667;"><strong style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;">Uppgifterna ska komma&nbsp;</strong>från åklagare i Bulgarien.</p><div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;"></div><p style="margin: 0px 0px 15px; font-size: 1.5em; line-height: 1.2667;">Mannen greps den första januari vid en gränsövergång mellan Bulgarien och Turkiet. Då var han efterlyst med en europeisk arresteringsorder, misstänkt för att ha kidnappat sin treårige son för att ta med honom till Syrien.</p><p style="margin: 0px 0px 15px; font-size: 1.5em; line-height: 1.2667;">Nu har en ny arresteringsorder utfärdats – som ännu inte översatts till bulgariska – men där 29-åringen ska kopplas till en ”kriminell grupp som planerade terrorattentat”, enligt en talesman för det bulgariska åklagarämbetet.</p><p style="margin: 0px 0px 15px; font-size: 1.5em; line-height: 1.2667;">29-åringen ska ha gått med på att bli utvisad till Frankrike, och beslutet väntas på fredag.</p></div></article></div></div>', 'read', 0, '0000-00-00 00:00:00'),
(51, '2015-01-13 10:42:33', 12, 8, 'Ubåtsjakt', '<article style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 10px; vertical-align: baseline; font-family: Arial, Helvetica, sans-serif; line-height: 10px; background: rgb(255, 255, 255);"><div class="article-preamble-txt bold" style="margin: 0px 0px 15px; padding: 0px; border: 0px; outline: 0px; font-size: 2em; vertical-align: baseline; line-height: 1.2; font-weight: bold; background: transparent;"><p style="margin: 0px 0px 15px;"><span class="article-location Nyheter-Röd" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 0.9em; vertical-align: baseline; font-stretch: normal; line-height: 1.2; font-family: GuardianSansWeb-Bold, Arial, sans-serif; text-transform: uppercase; font-weight: normal; color: rgb(236, 26, 41); background: transparent;">DN AVSLÖJAR.</span>&nbsp;Här är bildbeviset på den ubåtsobservation som utlöste jakten i Stockholms inlopp den 31 oktober. Larmet kom från en pensionerad marinofficer. Han berättar nu för första gången om vad han såg. Berättelsen styrks av ett annat, hittills okänt, ubåtslarm några timmar tidigare från Kanholmsfjärden.</p></div></article><div class="content-body" id="contentBody" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 10px; vertical-align: baseline; font-family: Arial, Helvetica, sans-serif; line-height: 10px; background: rgb(255, 255, 255);"><div class="content-paragraphs" style="margin: 0px 0px 30px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;"><article style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;"><div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;"><p class="preamble-hiden" style="margin: 0px; font-size: 2em; line-height: 1.2; font-weight: bold; height: 0px; overflow: hidden; padding: 0px;"></p><p style="margin: 0px 0px 15px; font-size: 1.5em; line-height: 1.2667;">Som&nbsp;<a href="http://www.dn.se/nyheter/sverige/misstankt-ubat-jagades-i-stockholms-inlopp/" target="_top" style="margin: 0px; padding: 0px; vertical-align: baseline; text-decoration: none; outline: none medium; color: rgb(10, 116, 183); background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">DN avslöjade i söndags</a>&nbsp;startade försvaret den 31 oktober en ubåtsjakt efter larm om en kränkande ubåt vid Lidingö. DN kan i dag publicera den bild som startade ubåtsjakten. Den privatperson som såg något ovanligt den 31 oktober är den pensionerade marin- officeren och överstelöjtnanten Sven-Olof Kviman som berättar:</p><p style="margin: 0px 0px 15px; font-size: 1.5em; line-height: 1.2667;">– Klockan är 15.30. Jag har tvättat bilen och känner mig lite kall. Därför tar jag en kopp kaffe och tittar ut genom fönstret. Då ser jag en ubåt på vattnet framför mig. Jag hajar verkligen till och ropar på min fru. Hon ser samma sak: en ubåt. Jag går ut på balkongen med en kikare medan hon letar fram en kamera.</p><div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;"></div><p style="margin: 0px 0px 15px; font-size: 1.5em; line-height: 1.2667;"><img src="http://www.dn.se/UploadedImages/UbatBildArtikel490.jpg" alt="" width="100%" style="margin: 0px; padding: 0px; outline: 0px; vertical-align: top; background: transparent;"><em style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;">Sven-Olof Kvimans bilder på den misstänkta ubåten är tagna från Karlsudd, cirka 1100 meter från föremålet. Den misstänkta ubåten har just girat kring en udde och kör i övervattensläge åt vänster i bild, men vänder senare in mot Stockholm.&nbsp;<strong style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;">Foto: DN</strong></em></p><p style="margin: 0px 0px 15px; font-size: 1.5em; line-height: 1.2667;"><strong style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;">– Det är en ubåt,&nbsp;</strong>det är jag helt bergsäker på när jag tittar i kikaren. Den går i ytläge och jag ser skrovet ovanför vattenytan och tornet, berättar Sven-Olof Kviman.</p><p style="margin: 0px 0px 15px; font-size: 1.5em; line-height: 1.2667;"><em style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;">Läs också:&nbsp;<a href="http://www.dn.se/nyheter/sverige/man-blir-alldeles-kall-nar-man-laser-dns-artikel/" target="_top" style="margin: 0px; padding: 0px; vertical-align: baseline; text-decoration: none; outline: none medium; color: rgb(10, 116, 183); background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">Försvarsminister Peter Hultqvist om bilderna: ”Fräckhet och provokation”</a></em></p><p style="margin: 0px 0px 15px; font-size: 1.5em; line-height: 1.2667;">Under den stora ubåtsjakten vid Hårsfjärden 1982 var överste-löjtnant Kviman chef för kust- artilleriets insatsstyrka vid Mälsten i Stockholms skärgård. Det var hans förband som detonerade skarpladdade minor mot kränkande ubåtar i den då resultatlösa jakten. Senare har Sven-Olof Kviman utbildat marinens personal och varit med och utformat de regler som bland annat gäller vid ubåtsjakt.</p><p style="margin: 0px 0px 15px; font-size: 1.5em; line-height: 1.2667;"><strong style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;">– Min första tanke</strong>&nbsp;är att ubåten är svensk eftersom den visar sig i övervattensläge. Men den saknar den märkning som svenska ubåtar ska ha på tornet. I stället var det här ubåtstornet helt svart. Dessutom är svenska ubåtar större och har högre torn, berättar Sven-Olof Kviman.</p><p style="margin: 0px 0px 15px; font-size: 1.5em; line-height: 1.2667;">Han uppskattar att avståndet till ubåten först var 800–900 meter. Ubåten avlägsnade sig bortåt medan hans hustru letade fram en mobiltelefon med kamera. De bilder DN i dag kan publicera togs alltså något senare när ubåten kommit 1 100–1 200 meter bort från Kvimans bostad.</p><p style="margin: 0px 0px 15px; font-size: 1.5em; line-height: 1.2667;">– Det var en halvstor båt. Jag uppskattar längden till mellan 30 och 45 meter.</p><p style="margin: 0px 0px 15px; font-size: 1.5em; line-height: 1.2667;"><img src="http://www.dn.se/UploadedImages/UbatsobservationKarta490.jpg" alt="" width="100%" style="margin: 0px; padding: 0px; outline: 0px; vertical-align: top; background: transparent;"></p><p style="margin: 0px 0px 15px; font-size: 1.5em; line-height: 1.2667;">DN kan i dag också avslöja att en liknande observation gjordes av en annan person samma dags morgon, längre ut i skärgården. Denne person såg vid Kanholmsfjärden nära Stavsnäs något som såg ut som en ubåt på väg längre in mot Stockholm. Försvarsmakten bekräftar händelsen:</p><p style="margin: 0px 0px 15px; font-size: 1.5em; line-height: 1.2667;">– Det var i Stavsnäsområdet och vi har inte analyserat färdigt den observationen som är trovärdig. Men informationen därifrån bidrog till att vi efter Kvimans larm satte in korvetten HMS ”Malmö” och personal på land för att spana. Rent teoretiskt är det möjligt att förflytta sig från Stavsnäsområdet med cirka 5,5 knops hastighet så att man 15.30 befinner sig vid den punkt där Kviman gjorde sin observation, säger konteramiral Anders Grenstad till DN.</p><p style="margin: 0px 0px 15px; font-size: 1.5em; line-height: 1.2667;">Han understryker att man inte vet om det var en ubåt som syntes vid Stavsnäs och att Kvimans observation klassas som ”möjlig ubåt”.</p><p style="margin: 0px 0px 15px; font-size: 1.5em; line-height: 1.2667;">– Om någon påstår att det inte var en ubåt jag såg – då blir jag förbannad, säger Sven-Olof Kviman.</p><p style="margin: 0px 0px 15px; font-size: 1.5em; line-height: 1.2667;"><strong style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent;">Av bilden&nbsp;</strong>och Kvimans berättelse framgår att ubåtens torn är placerat rätt långt fram på skrovet. Under 1980- och 1990-talets ubåtsjakter så jagade svenska försvaret ofta en ubåt som var cirka 30 meter lång. I efterhand har det kommit fram att sovjetiska specialförband (Spetznas) hade en 30 meter lång ubåt med ett förligt torn. De kunde vara ute tre-fyra veckor.</p><p style="margin: 0px 0px 15px; font-size: 1.5em; line-height: 1.2667;">Sven-Olof Kviman såg sin ubåt på dagen två veckor efter det första larmet ifrån Kanholmsfjärden, vilket startade den tidigare veckolånga jakten.</p><p style="margin: 0px 0px 15px; font-size: 1.5em; line-height: 1.2667;">– Jag är helt övertygad att det var Sovjet som kränkte oss tidigare och Ryssland nu. Motivet skulle kunna vara rutinmässig krigsplanering – eller att skrämma oss från att inte ha för nära band med, eller gå med i Nato.</p></div></article></div></div>', 'read', 0, '0000-00-00 00:00:00'),
(52, '2015-01-13 10:44:10', 12, 8, 'Om halkan', '<div class="abLeadText" id="yui_3_15_0_2_1421145824491_937" style="font-size: 17px; font-weight: 700; margin: 12px 0px 8px; font-family: Arial, Helvetica, Verdana, Geneva, sans-serif; background-color: rgb(255, 255, 255);"><p id="yui_3_15_0_2_1421145824491_939" style="margin: 0px;">Halkan i stora delar av landet orsakar både bilolyckor och benbrott.</p><p id="yui_3_15_0_2_1421145824491_936" style="margin: 0px; text-indent: 15px;">Frakturavdelningen på Örebro universitetssjukhus har under det senaste dygnet tagit hand om 84 patienter.&nbsp;<br>– Det är det värsta vi har varit med om, säger avdelningschefen Emma Hagenfalk till Nerikes Allehanda.</p></div><div class="abRight abMd2 abLeftGutter" style="width: 145px; float: right; margin: 0px 0px 0px 25px; overflow: hidden; font-family: Arial, Helvetica, Verdana, Geneva, sans-serif; font-size: 15px; line-height: 18.75px; background-color: rgb(255, 255, 255);"><ul class="abArticleToolbar abSlimList abListSpacing abShort" style="margin: 0px 0px 6px; padding: 3px 0px 6px; min-height: 50px; list-style: none; overflow: hidden; width: 145px;"><li class="fbRecommendContainer" style="height: 21px; min-height: 21px; margin-bottom: 5px;"><div class="fbRecommendContainerInner" style="position: absolute; z-index: 150;"><div class="fb-share-button fb_iframe_widget" data-href="http://www.aftonbladet.se/nyheter/article20150666.ab" data-layout="button_count" fb-xfbml-state="rendered" fb-iframe-plugin-query="app_id=126591270700240&amp;href=http%3A%2F%2Fwww.aftonbladet.se%2Fnyheter%2Farticle20150666.ab&amp;layout=button_count&amp;locale=sv_SE&amp;sdk=joey" style="display: inline-block; position: relative;"><span style="display: inline-block; position: relative; text-align: justify; vertical-align: bottom; width: 78px; height: 20px;"><iframe name="f16324851c" width="1000px" height="1000px" frameborder="0" allowtransparency="true" scrolling="no" title="fb:share_button Facebook Social Plugin" src="http://www.facebook.com/plugins/share_button.php?app_id=126591270700240&amp;channel=http%3A%2F%2Fstatic.ak.facebook.com%2Fconnect%2Fxd_arbiter%2F7r8gQb8MIqE.js%3Fversion%3D41%23cb%3Df3b2e879c4%26domain%3Dwww.aftonbladet.se%26origin%3Dhttp%253A%252F%252Fwww.aftonbladet.se%252Ff23c1069ac%26relation%3Dparent.parent&amp;href=http%3A%2F%2Fwww.aftonbladet.se%2Fnyheter%2Farticle20150666.ab&amp;layout=button_count&amp;locale=sv_SE&amp;sdk=joey" class="" style="vertical-align: bottom; position: absolute; border-style: none; visibility: visible; width: 78px; height: 20px;"></iframe></span></div></div></li><li style="min-height: 21px; margin-bottom: 5px;"><iframe id="twitter-widget-0" scrolling="no" frameborder="0" allowtransparency="true" src="http://platform.twitter.com/widgets/tweet_button.c27d2d163408c0fe087fbfe1c687ce2b.sv.html#_=1421145825349&amp;count=horizontal&amp;id=twitter-widget-0&amp;lang=sv&amp;original_referer=http%3A%2F%2Fwww.aftonbladet.se%2Fnyheter%2Farticle20150666.ab&amp;size=m&amp;text=Halkans%20facit%3A%2084%20frakturer%20%E2%80%93%20p%C3%A5%20ett%20dygn%20%23aftonbladet&amp;url=http%3A%2F%2Fwww.aftonbladet.se%2Fnyheter%2Farticle20150666.ab" class="twitter-share-button twitter-tweet-button twitter-share-button twitter-count-horizontal" title="Twitter Tweet Button" data-twttr-rendered="true" style="vertical-align: bottom; width: 116px; height: 20px;"></iframe></li><li style="min-height: 21px; margin-bottom: 5px;"></li></ul><div style="clear: both;"></div></div><div class="abBodyText clearfix abJsBodyText " id="yui_3_15_0_2_1421145824491_924" style="margin-bottom: 15px; font-family: Arial, Helvetica, Verdana, Geneva, sans-serif; font-size: 15px; line-height: 18.75px; background-color: rgb(255, 255, 255);"><p style="margin: 0px;">Flera olyckor inträffade på måndagen på grund av halt väglag. Det har bara fortsatt under tisdagsmorgonen.</p><p id="yui_3_15_0_2_1421145824491_932" style="margin: 0px; text-indent: 15px;">Trafikverket&nbsp;<a href="http://www.trafikverket.se/" id="yui_3_15_0_2_1421145824491_934" style="color: rgb(0, 102, 170); font-weight: 700; text-decoration: none;">varnar fortfarande för halka</a>&nbsp;i majoriteten av landet. I Norrland snöhalka och frosthalka, i Svealand frosthalka och ishalka och i Götaland framförallt ishalka.</p><p id="yui_3_15_0_2_1421145824491_923" style="margin: 0px; text-indent: 15px;">– Vi har ett väderläge där det är besvärligt väglag i stora delar av landet, säger Eva Nordén, presskommunikatör vid Trafikverket.</p><h3 style="font-family: Verdana, Arial, Helvetica, sans-serif; margin: 15px 0px 3px; line-height: 1.07; font-size: 1.1em;">”Även lokal halka”</h3><p id="yui_3_15_0_2_1421145824491_947" style="margin: 0px; text-indent: 15px;">Nordén uppmanar alla trafikanter att ta en titt på Trafikverkets trafikkartor innan man ger sig ut på vägarna. Där håller myndigheten koll på halkläget just nu och under resten av dagen.</p><p id="yui_3_15_0_2_1421145824491_949" style="margin: 0px; text-indent: 15px;">– Det är vinterväglag som råder och det kan finnas platser där det också råder lokal halka. Även om det är några grader varmt ute med regn så kan det vara halt. Det är vinter i Sverige nu.</p><p style="margin: 0px; text-indent: 15px;">Väglaget kan dessutom slå om snabbt.</p><p id="yui_3_15_0_2_1421145824491_954" style="margin: 0px; text-indent: 15px;">– Man måste ta det försiktigt. När det är vinterväglag så anpassar man sin hastighet efter den rådande situatoinen. Självklart ska man ha bälte och hålla avstånd till andra trafikanter.</p><h3 style="font-family: Verdana, Arial, Helvetica, sans-serif; margin: 15px 0px 3px; line-height: 1.07; font-size: 1.1em;">84 patienter</h3><p id="yui_3_15_0_2_1421145824491_956" style="margin: 0px; text-indent: 15px;">Men olyckorna drabbar inte bara bilister. Det svåra väglaget har varit ovanligt jobbigt för fotgängare. På ortopedkirurgiska kliniken i Örebro beskriver man läget som "frakturkaos". 84 patienter vårdas med olika typer av frakturer efter att de halkat omkull.&nbsp;Majoriten är handeledsfrakturer men sjukhuset har även fått in flera skallskador orsakade av fall.<br>– Det här sticker&nbsp;ut ordentligt. Det här är det värsta vi har varit med om någonsin. Vi har jobbat över och bemannat extra med gipstekniker och sjuksköterskor, säger avdelningschefen Emma Hagenfalk till&nbsp;<br></p></div><div class="abItem" id="yui_3_15_0_2_1421145824491_968" style="overflow: hidden; margin-bottom: 15px; font-family: Arial, Helvetica, Verdana, Geneva, sans-serif; font-size: 15px; line-height: 18.75px; background-color: rgb(255, 255, 255);"><address class="abByline abBylineList" id="yui_3_15_0_2_1421145824491_978" style="overflow: hidden; margin: 20px 0px 30px;"></address></div>', 'unread', 0, '0000-00-00 00:00:00'),
(53, '2015-01-13 10:45:25', 8, 12, 'Testar', 'test', 'read', 0, '0000-00-00 00:00:00'),
(54, '2015-01-13 10:47:59', 12, 8, 'Svensk mat', '<h1 style="margin-top: -3px; margin-bottom: 23px; padding: 0px; font-size: 36px; font-weight: normal; font-stretch: normal; line-height: 1.2; font-family: SuecaWebHd, georgia, serif; background-color: rgb(255, 255, 255);">Svensk mat ska inte väljas bort</h1><p class="preamble" style="margin: -10px 0px 13px; padding: 0px; font-weight: bold; font-stretch: normal; font-size: 1.143em; line-height: 1.25; font-family: arial, sans-serif; background-color: rgb(255, 255, 255);">Kommunernas miljö- och hälsokontor arbetar för att bönderna ska leva upp till våra djurskyddsregler, men när samma kommun upphandlar kött till sina måltider i offentlig regi så gäller inte de stränga djurskyddsreglerna längre. Det är oacceptabelt, skriver debattörerna Britt-Marie Stegs, Anna-Maria Corrazza Bildt, Marit Paulsen, Fredrick Federley och Bo Algers.<br></p><div id="article-content" style="margin: 10px 0px 0px; padding: 0px; float: left; width: 485px; font-family: arial, sans-serif; font-size: 14px; line-height: 14px; background-color: rgb(255, 255, 255);"><div class="image" style="margin: 0px 0px 16px; padding: 0px; position: relative; z-index: 1; line-height: 1; height: 322px; overflow: hidden; background-color: rgb(0, 0, 0);"><img src="http://www.svd.se/opinion/brannpunkt/4238061.svd/representations/c/sz76900e.gif?1420734298000" width="485" height="322" title="" alt="" class="" style="display: block; margin: 0px auto;"><div class="caption" style="margin: 0px; padding: 8px 12px 10px; position: absolute; right: 0px; bottom: -32px; left: 0px; visibility: visible; background: url(http://www.svd.se/template/images/bg-caption.png) 0px 0px repeat;"><p class="credit" style="margin: 0px; padding: 0px; display: inline; font-size: 10px; line-height: 1.18; color: rgb(255, 255, 255); text-transform: uppercase; white-space: nowrap;">FOTO: ARNE DEDERT/AP</p></div></div><p class="article-metadata" style="margin: 0px; padding: 0px;"><span class="publishdate" style="display: block; margin: 0px; font-stretch: normal; font-size: 0.7857em; line-height: 1.54; color: rgb(121, 122, 124);">13 januari 2015 kl 11:33</span><span class="vignette" style="display: block; margin: 9px 0px -2px; font-weight: bold; font-stretch: normal; font-size: 1.0714em; line-height: 1; font-family: SuecaWebSlab, georgia, serif; text-transform: uppercase;">BRÄNNPUNKT | DJURSKYDD</span></p><div class="articlebody" style="margin: 7px 0px 0px; padding: 9px 0px 0px; position: relative; border-top-width: 5px; border-top-style: solid; border-top-color: rgb(0, 0, 0);"><div class="articletext" style="margin: 0px; padding: 0px; width: 485px; font-stretch: normal; font-size: 1.0714em; line-height: 1.27; font-family: georgia, serif;"><blockquote style="margin: 0px 25px 12px 0px; padding: 10px 10px 15px; clear: left; float: left; width: 125px; overflow: hidden; font-weight: bold; font-stretch: normal; font-size: 0.8667em; line-height: 1.23; background: rgb(240, 241, 242);"><p style="margin: 0px; padding: 26px 0px 0px; background: url(http://www.svd.se/template/images/sprites/quotes/quote_black.png) 0px 0px no-repeat;">Vi har all anledning att vara stolta över den välfärd vi erbjuder djuren på svenska gårdar.</p><p style="margin: 0px; padding: 0px;"><cite style="font-style: normal; font-weight: normal; display: block; margin: 0px; font-stretch: normal; font-size: 1em; line-height: 1.31; font-family: arial, sans-serif;">Britt-Marie Stegs, Anna-Maria Corrazza Bildt, Marit Paulsen, Fredrick Federley, Bo Algers</cite></p></blockquote><p style="margin: 0px 0px 12px; padding: 0px;">Det aktuella larmet om antibiotikaresistenta bakterier i svenska köttdiskar visar på det ständigt ökande behovet av säker mat till barn och gamla. Upphandlingar av mat följer ett EU-regelverk som ska säkerställa likabehandling. Tack vare nya EU-regler kan numera främjande av djurskydd vara ett övergripande mål i upphandlingen och gå före pris. Men implementeringen har gått långsamt och det regelverk som finns i dag är utformat på så sätt att det är svårt för svenska förskolor, skolor, sjukhus och äldreboenden att ställa krav på det kött som serveras. Det är dags att bevaka den svenska implementeringen av EU:s nya upphandlingsdirektiv så att upphandlare kan ställa specifika krav kring hur köttet de köper har framställts. På så vis får svenska uppfödare en ärlig chans att konkurrera mot de europeiska kollegor som har ett sämre djurskydd och i många fall dessutom bryter mot EU-lagstiftning.</p><p style="margin: 0px 0px 12px; padding: 0px;">Sverige har, i internationell jämförelse, en ambitiös djurskyddslagstiftning som överlag är strängare än EU:s djurskyddsregler. Motiven för detta är flera. Till en betydande del handlar det om att värna om djurens väl och ve.&nbsp;Men framför allt handlar de svenska regelverken om att främja en livsmedelskvalitet i världsklass och den bästa möjliga folkhälsan för befolkningen i stort.</p><p style="margin: 0px 0px 12px; padding: 0px;"><strong style="font-style: inherit; font-family: arial, sans-serif; font-size: 0.9333em;">Ett område där&nbsp;</strong>Sverige ligger i framkant är den mycket låga användningen av antibiotika i djuruppfödningen. Undersökningar från andra länder har konstaterat att upp till 90 procent av all antibiotika ges till hela djurgrupper i förebyggande syfte för att kompensera för en sämre djurhållning och inte till enskilda djur som är sjuka. I Sverige får endast tio procent av djuren antibiotika – i samband med sjukdom.</p><p style="margin: 0px 0px 12px; padding: 0px;">Användningen av antibiotika är ett globalt problem, som leder till ökad resistens i olika typer av bakteriestammar. Denna ökande resistens innebär att sjukdomar hos människor blir svårare att behandla. Det är ett växande folkhälsoproblem, som vi ännu inte sett de långsiktiga konsekvenserna av.</p><p style="margin: 0px 0px 12px; padding: 0px;">Vi har med andra ord all anledning att vara stolta över den välfärd vi erbjuder djuren på svenska gårdar. Det är en vinst inte bara för folkhälsan, utan leder också till hög kvalitet på köttet. Efterfrågan på kött producerat under goda förhållanden har samtidigt aldrig varit högre.</p><p style="margin: 0px 0px 12px; padding: 0px;"><strong style="font-style: inherit; font-family: arial, sans-serif; font-size: 0.9333em;">Dessvärre leder&nbsp;</strong>de stränga kraven till att svensk djuruppfödning också är dyrare än på andra håll inom EU. Svenska leverantörer har därför tidigare haft sämre konkurrensvillkor när exempelvis den offentliga sektorn ska upphandla. Och det är ingen liten sak. Bara landets kommuner upphandlar mat till förskolor, skolor och äldreboenden för bortåt 9 miljarder kronor per år. Till detta kommer landstingens upphandlingar inom vården och statliga upphandlingar till exempelvis fängelseanstalter.</p><p style="margin: 0px 0px 12px; padding: 0px;">I februari 2014 antogs ett nytt europeiskt regelverk som ska säkerställa likabehandling och göra det möjligt för offentliga upphandlare att göra sina bedömningar baserat på värde för pengarna i stället för att tvingas välja det billigaste alternativet. Vi vill därför uppmana till en skyndsam tillämpning av de nya reglerna eftersom de gamla reglerna innebär en direkt diskriminering av svenska producenter.</p><p style="margin: 0px 0px 12px; padding: 0px;"><strong style="font-style: inherit; font-family: arial, sans-serif; font-size: 0.9333em;">Det finns fler&nbsp;</strong>anledningar till att det inte ställs tydligare krav i upphandlingar; dels handlar det om den politiska viljan, dels om beslutsamhet och kompetens. Det finns bra exempel där kommuner lyckats anpassa sin upphandling men det kväver engagerade politiker som tydligt pekar ut riktning och målsättning samt ställer rätt krav på ansvariga upphandlare. Det är betydligt enklare att köpa in hela kommunens livsmedelsbehov i en och samma upphandling. Endast få, större aktörer mäktar med en sådan beställning och det blir en av dessa som får kontraktet. Att dela upp upphandlingen i mindre delar eller ställa krav på specifika djurskyddsregler kräver att den som skriver upphandlingen är väl insatt i dessa frågor.</p><p style="margin: 0px 0px 12px; padding: 0px;">Det finns ett systemfel i detta, kommunernas miljö- och hälsokontor arbetar för att bönderna ska leva upp till våra djurskyddsregler, men när samma kommun upphandlar kött till sina måltider i offentlig regi så gäller inte de stränga djurskyddsreglerna längre. Det är oacceptabelt.</p><p style="margin: 0px 0px 12px; padding: 0px;"><strong style="font-style: inherit; font-family: arial, sans-serif; font-size: 0.9333em;">För oss är det&nbsp;</strong>en självklarhet att de krav som svenska lagstiftare ställer på producenter också ska kunna tillämpas när den offentliga sektorn upphandlar. I regeringsförklaringen deklarerade statsminister Stefan Löfven att förutsättningarna för miljömässiga upphandlingar ska förbättras i hela den offentliga sektorn. Det är hög tid att den offentliga sektorn får kunskap om hur de kan bidra till en bättre djurhälsa – och därmed också en bättre folkhälsa – i Sverige.</p><p style="margin: 0px 0px 12px; padding: 0px;"><strong style="font-style: inherit; font-family: arial, sans-serif; font-size: 0.9333em;">BRITT-MARIE STEGS</strong></p><p style="margin: 0px 0px 12px; padding: 0px;">grundare och vd Hälsingestintan</p><p style="margin: 0px 0px 12px; padding: 0px;"><strong style="font-style: inherit; font-family: arial, sans-serif; font-size: 0.9333em;">ANNA-MARIA CORRAZZA BILDT (M)</strong></p><p style="margin: 0px 0px 12px; padding: 0px;">Europaparlamentariker</p><p style="margin: 0px 0px 12px; padding: 0px;"><strong style="font-style: inherit; font-family: arial, sans-serif; font-size: 0.9333em;">MARIT PAULSEN (FP)</strong></p><p style="margin: 0px 0px 12px; padding: 0px;">Europaparlamentariker</p><p style="margin: 0px 0px 12px; padding: 0px;"><strong style="font-style: inherit; font-family: arial, sans-serif; font-size: 0.9333em;">FREDRICK FEDERLEY (C)</strong></p><p style="margin: 0px 0px 12px; padding: 0px;">Europaparlamentariker</p><p style="margin: 0px 0px 12px; padding: 0px;"><strong style="font-style: inherit; font-family: arial, sans-serif; font-size: 0.9333em;">BO ALGERS</strong></p><p style="margin: 0px 0px 12px; padding: 0px;">professor SLU</p></div></div></div>', 'read', 0, '0000-00-00 00:00:00'),
(55, '2015-01-13 11:11:43', 12, 12, 'laks', 'knac', 'read', 0, '0000-00-00 00:00:00');

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
  `description` varchar(30) COLLATE utf8_bin NOT NULL,
  `booker` varchar(50) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=62 ;

--
-- Dumpning av Data i tabell `roombookings`
--

INSERT INTO `roombookings` (`id`, `room`, `date`, `hour`, `description`, `booker`) VALUES
(2, 1, '2014-12-18', 14, 'Swingersklubb', 'Pelle Pop'),
(26, 1, '2014-12-18', 15, 'Mingel', 'Pelle Pop'),
(27, 3, '2014-12-18', 13, 'Swing', 'Pelle Pop'),
(28, 3, '2014-12-18', 14, 'Jazz', 'Pelle Pop'),
(29, 3, '2014-12-18', 14, 'Jazz', 'Pelle Pop'),
(31, 2, '2014-12-17', 15, 'Spritfest', 'Pelle Pop'),
(32, 4, '2014-12-17', 8, 'Frukost', 'Pelle Pop'),
(33, 4, '2014-12-15', 10, 'Kurs', 'Pelle Pop'),
(34, 3, '2014-12-15', 12, 'Kors', 'Pelle Pop'),
(35, 2, '2014-12-17', 14, 'Mingel', 'Pelle Pop'),
(37, 1, '2014-12-18', 16, 'Spritfest', 'Pelle Pop'),
(38, 2, '2014-12-18', 15, 'Skit', 'Pelle Pop'),
(39, 4, '2015-01-12', 13, 'Yeaj', 'Pelle Pop'),
(40, 1, '2015-01-05', 11, 'COBOLORGIE', 'Pelle Pop'),
(41, 1, '2015-12-28', 8, 'Orgie', 'Pelle Pop'),
(42, 3, '2015-01-19', 11, 'Skit', 'Pelle Pop'),
(43, 3, '2015-01-19', 11, 'Skit', 'Pelle Pop'),
(44, 4, '2015-01-12', 11, 'asd', 'Pelle Pop'),
(45, 4, '2015-01-12', 11, 'asd', 'Pelle Pop'),
(46, 4, '2015-01-12', 14, 'asd', 'Pelle Pop'),
(47, 4, '2015-01-12', 14, 'asd', 'Pelle Pop'),
(48, 2, '2015-01-12', 13, 'asd', 'Pelle Pop'),
(49, 2, '2015-01-12', 13, 'asd', 'Pelle Pop'),
(50, 2, '2015-01-12', 13, 'asd', 'Pelle Pop'),
(51, 2, '2015-01-12', 13, 'asd', 'Pelle Pop'),
(52, 1, '2015-01-05', 13, 'Skit', 'Klas-Göran Svensson'),
(53, 1, '2015-01-05', 11, 'Skit', 'Klas-Göran Svensson'),
(54, 1, '2015-01-12', 14, 'Machamasad', 'Klas-Göran Svensson'),
(55, 3, '2015-02-02', 12, 'Spritfest', 'Klas-Göran Svensson'),
(56, 3, '2015-01-19', 13, 'Poker', 'Klas-Göran Svensson'),
(57, 1, '2015-01-15', 13, 'alskdjalsd', 'Klas-Göran Svensson'),
(58, 1, '2015-01-26', 9, 'COOOOBOL', 'Klas-Göran Svensson'),
(60, 1, '2015-01-12', 13, 'WUK 13', 'Klas-Göran Svensson'),
(61, 4, '2015-01-14', 9, 'Redovisning', 'Christian Hagdorn');

-- --------------------------------------------------------

--
-- Tabellstruktur `rooms`
--

CREATE TABLE IF NOT EXISTS `rooms` (
`id` int(11) NOT NULL,
  `name` varchar(20) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=5 ;

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
-- Tabellstruktur `surveys`
--

CREATE TABLE IF NOT EXISTS `surveys` (
`id` int(11) NOT NULL,
  `user` varchar(50) COLLATE utf8_bin NOT NULL,
  `title` varchar(50) COLLATE utf8_bin NOT NULL,
  `filename` varchar(100) COLLATE utf8_bin NOT NULL,
  `url` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

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
  `username` text CHARACTER SET utf8 NOT NULL,
  `password` text CHARACTER SET utf8 NOT NULL,
  `email` text CHARACTER SET utf8 NOT NULL,
  `type` varchar(10) CHARACTER SET utf8 NOT NULL,
  `firstname` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `lastname` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COLLATE=latin1_bin AUTO_INCREMENT=26 ;

--
-- Dumpning av Data i tabell `useraccounts`
--

INSERT INTO `useraccounts` (`id`, `username`, `password`, `email`, `type`, `firstname`, `lastname`) VALUES
(5, 'Pelle', 'Èõ¯¸êÙ°çC ÜmØQßx¾¹xÃóø€å@•gPª±P¯ëÐlÝð‘opÞñ˜C‹ÈxõE÷`â9 _³°týð¹¯xFqÐ£;¸]Põ÷ðÒA€gÓðÜµH9GH>ÈÃshhMØÝ÷ ªùˆ—S ´¥x‘·¨ÆYh‹SPxuÈõ_øbÉð_ûèfoÀ9wÈF¹@‹kˆØí', 'mail@jensen.se', '1', 'Pelle', 'Pop'),
(8, 'cuba', 'P‡]È;=P½ðkÅ ç¥P›…ÈOeP£åðí ûÍP¯­ÈcP·Eð“M GõPÃÕÈwµPËmð§u [UP×ýÈ‹ÝPß•ð» o}Pë]ÈŸ=Pó½ðÏÅ ƒ¥PAÈ³eP?åðãí —ÍPK­ÈÇPSEð÷M «õ', 'mail@jensen.se', '2', 'Klas-Göran', 'Svensson'),
(9, 'hej', 'È:ßP• àK ãyÈFÏÈIýPœ³ ïi ò—ÈUíÈXSP«Ñ þ‡ 9µÈdCÈgqPºï E¥ HÓÈsaÈvPÉE TÃ WñÈ‚È…­PØc cá fGÈ‘È”ËPç rA ueÈ »È£éPöŸ U „ƒÈ¯Ù', 'mail@jensen.se', '3', 'Helge', 'Fosmo'),
(12, 'hagdorn', 'x®‹H…‰ÐLwÈK€ÒƒðY 8AP·ÝÈn»¸eÙDßxûõ˜Z{È‘ÙxH·ðÇ•Pöë`EaP<ðã…°ªs ¡‘PXoÈ×M ¶SÐí±Øüç ËÝÈúkx±Iðhï çÍ', 'hagdorn@gmail.com', '2', 'Christian', 'Hagdorn'),
(13, 'iron', ' Ò©¨Þéðb¡È>±8zYÈFY°úy`®a òÙÈVqPªùð†AÀZIà~¡PºIÈnùhÚÑPÆñÐ‚á˜NáÈ‚È†¹€B©x>Ùàª±PæYxJ¹Èžy˜r ~ÁðÒÐ¶™ðÚñÈ¶9°¢YÈ¾©8úQˆ†Ù ¢aÈÎÁÈÒùðþ‘HZé@VQPj™Èæà:ÑPvy', 'maiden$mail.com', '2', 'Iron', 'Maiden'),
(15, 'robert', '¸Óžp‘’ Çþø]Ê8kFàQbp¯öÈEÂX£Ž°9Zçv˜õºð‹†XÁòØæhÝ²è›¦PÑJ¨gÞ°uZ[vè¹BxOÖÐ­¢`Cn@ñŠHAØ •šÐË>ˆ‰úàçÆ˜¥ºÈÛ^Xqò`n@eŠ˜ÃVðYê€·¶ØM‚¸ûžÀAâPŸ®€ÕR8“FñÚH¯Îxår', 'robert@mail.com', '2', 'Magister', 'Robert'),
(16, 'drAlban', 'Èð»È÷ñÈþ_È=•ÈDËÈK9ÈRoÈY¥È`ÛÈgIÈnÈuµÈ|ëÈƒYÈŠÈ‘ÅÈ˜ûÈŸiÈ¦ŸÈ­ÕÈ´CÈ»yÈÂ¯ÈÉåÈÐSÈ×‰ÈÞ¿ÈåõÈìcÈó™ÈúÏÈ9=È@sÈG©ÈNßÈUMÈfÈc¹ÈjïÈq]', 'alban$mail.com', '2', 'Dr', 'Alban'),
(17, 'skogh', 'ÈõÒÈú<ÈAxÈ< ÈAÒÈF<ÈKnÈP ÈUÒÈZ<È_nÈd ÈiÒÈn<ÈsnÈx È}ÒÈ‚<È‡nÈŒ È‘ÒÈ–<È›nÈ  È¥ÒÈª<È¯nÈ´ È¹ÒÈ¾<ÈÃnÈÈ ÈÍÒÈÒ<È×nÈÜ ÈáÒÈæ<ÈënÈð ', 'skogh@jensen.se', '1', 'Christoffer', 'Skogh'),
(18, 'Sibar', ' ÍŠÈúä ×îðd¨P‘: æ¼ÈKN ðXð}ÚPªl AøÈd€ AŠð–DPÃž PXÈ}² Z¼ð¯vPÜÐ iŠÈ–ä sîðÈ¨Põ: ‚¼È¯N ŒXðáÚPFl ›îÈÈ€ ¥ŠðúDP_ž ´XÈá² ¾¼ðKvPxÐ', 'sibar@jensen.se', '2', '', ''),
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
-- Index för tabell `students`
--
ALTER TABLE `students`
 ADD PRIMARY KEY (`id`);

--
-- Index för tabell `surveys`
--
ALTER TABLE `surveys`
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=56;
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
-- AUTO_INCREMENT för tabell `roombookings`
--
ALTER TABLE `roombookings`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT för tabell `rooms`
--
ALTER TABLE `rooms`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT för tabell `students`
--
ALTER TABLE `students`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT för tabell `surveys`
--
ALTER TABLE `surveys`
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT för tabell `usertypes`
--
ALTER TABLE `usertypes`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
