-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Erstellungszeit: 23. April 2012 um 22:40
-- Server Version: 5.1.41
-- PHP-Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Datenbank: `boerse`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `autotrader`
--

CREATE TABLE IF NOT EXISTS `autotrader` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `SPIELERID` bigint(20) NOT NULL,
  `VERKAUFENAB` decimal(20,2) NOT NULL DEFAULT '0.00',
  `KAUFENAB` decimal(20,2) NOT NULL DEFAULT '0.00',
  `AKTIENID` varchar(18) NOT NULL,
  `MAXVERKAUFEN` bigint(20) NOT NULL DEFAULT '0',
  `MAXKAUFEN` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Daten für Tabelle `autotrader`
--


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
