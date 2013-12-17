-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Erstellungszeit: 16. Dez 2013 um 10:40
-- Server Version: 5.5.27
-- PHP-Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Datenbank: `wgmanager`
--
CREATE DATABASE `wgmanager` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `wgmanager`;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `budget`
--

CREATE TABLE IF NOT EXISTS `budget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `money` varchar(45) NOT NULL,
  `costs` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_budget_user1_idx` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `budget_has_budgetlog`
--

CREATE TABLE IF NOT EXISTS `budget_has_budgetlog` (
  `budgetlog_id` int(11) NOT NULL,
  `budget_id` int(11) NOT NULL,
  PRIMARY KEY (`budgetlog_id`),
  KEY `fk_budget_has_budgetlog_budgetlog1_idx` (`budgetlog_id`),
  KEY `fk_budget_has_budgetlog_budget1` (`budget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `budgetlog`
--

CREATE TABLE IF NOT EXISTS `budgetlog` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `timestamp` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_budgetlog_user1_idx` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `calendar`
--

CREATE TABLE IF NOT EXISTS `calendar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `from` datetime DEFAULT NULL,
  `to` datetime NOT NULL,
  `title` varchar(45) NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  `Event` int(11) NOT NULL,
  `Task` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_calendar_user1_idx` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `calendar_has_calendarlogs`
--

CREATE TABLE IF NOT EXISTS `calendar_has_calendarlogs` (
  `calendar_id` int(11) NOT NULL,
  `calendarlog_id` int(11) NOT NULL,
  PRIMARY KEY (`calendar_id`,`calendarlog_id`),
  KEY `fk_calendar_has_calendarlogs_calendar1_idx` (`calendar_id`),
  KEY `fk_calendar_has_calendarlogs_calendarlog1_idx` (`calendarlog_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `calendar_has_users`
--

CREATE TABLE IF NOT EXISTS `calendar_has_users` (
  `calendar_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`calendar_id`,`user_id`),
  KEY `fk_calendar_has_users_calendar1_idx` (`calendar_id`),
  KEY `fk_calendar_has_users_user1_idx` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `calendarlog`
--

CREATE TABLE IF NOT EXISTS `calendarlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `timestamp` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_calendarlog_user1_idx` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `group`
--

CREATE TABLE IF NOT EXISTS `group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `group_has_users`
--

CREATE TABLE IF NOT EXISTS `group_has_users` (
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `fk_group_has_users_group1_idx` (`group_id`),
  KEY `fk_group_has_users_user1_idx` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `food` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `recipe`
--

CREATE TABLE IF NOT EXISTS `recipe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `recipe_consume_product`
--

CREATE TABLE IF NOT EXISTS `recipe_consume_product` (
  `recipe_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`recipe_id`,`product_id`),
  KEY `fk_recipe_consume_product_product1_idx` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `recipe_has_recipelogs`
--

CREATE TABLE IF NOT EXISTS `recipe_has_recipelogs` (
  `recipelog_id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL,
  PRIMARY KEY (`recipelog_id`),
  KEY `fk_recipe_has_recipelogs_recipelog1_idx` (`recipelog_id`),
  KEY `fk_recipe_has_recipelogs_recipe1` (`recipe_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `recipelog`
--

CREATE TABLE IF NOT EXISTS `recipelog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` varchar(45) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_recipelog_user1_idx` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `role`
--

CREATE TABLE IF NOT EXISTS `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `stock`
--

CREATE TABLE IF NOT EXISTS `stock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `for` varchar(45) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `expired` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_stock_product_idx` (`product_id`),
  KEY `fk_stock_user1_idx` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `stock_has_stocklogs`
--

CREATE TABLE IF NOT EXISTS `stock_has_stocklogs` (
  `stocklog_id` int(11) NOT NULL,
  `stock_id` int(11) NOT NULL,
  PRIMARY KEY (`stocklog_id`),
  KEY `fk_stock_has_stocklogs_stock1_idx` (`stock_id`),
  KEY `fk_stock_has_stocklogs_stocklog1_idx` (`stocklog_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `stocklog`
--

CREATE TABLE IF NOT EXISTS `stocklog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `timestamp` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_stocklog_user1_idx` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `points` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `user_has_comments`
--

CREATE TABLE IF NOT EXISTS `user_has_comments` (
  `comment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `fk_user_has_comments_comment1_idx` (`comment_id`),
  KEY `fk_user_has_comments_user1_idx` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `user_has_role`
--

CREATE TABLE IF NOT EXISTS `user_has_role` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `fk_user_has_role_role1_idx` (`role_id`),
  KEY `fk_user_has_role_user1_idx` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `user_has_userlogs`
--

CREATE TABLE IF NOT EXISTS `user_has_userlogs` (
  `userlog_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`userlog_id`),
  KEY `fk_user_has_userlogs_user1_idx` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `userlog`
--

CREATE TABLE IF NOT EXISTS `userlog` (
  `id` int(11) NOT NULL,
  `timestamp` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_userlog_user_has_userlogs1_idx` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `budget`
--
ALTER TABLE `budget`
  ADD CONSTRAINT `fk_budget_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints der Tabelle `budget_has_budgetlog`
--
ALTER TABLE `budget_has_budgetlog`
  ADD CONSTRAINT `fk_budget_has_budgetlog_budget1` FOREIGN KEY (`budget_id`) REFERENCES `budget` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_budget_has_budgetlog_budgetlog1` FOREIGN KEY (`budgetlog_id`) REFERENCES `budgetlog` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints der Tabelle `budgetlog`
--
ALTER TABLE `budgetlog`
  ADD CONSTRAINT `fk_budgetlog_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints der Tabelle `calendar`
--
ALTER TABLE `calendar`
  ADD CONSTRAINT `fk_calendar_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints der Tabelle `calendar_has_calendarlogs`
--
ALTER TABLE `calendar_has_calendarlogs`
  ADD CONSTRAINT `fk_calendar_has_calendarlogs_calendar1` FOREIGN KEY (`calendar_id`) REFERENCES `calendar` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_calendar_has_calendarlogs_calendarlog1` FOREIGN KEY (`calendarlog_id`) REFERENCES `calendarlog` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints der Tabelle `calendar_has_users`
--
ALTER TABLE `calendar_has_users`
  ADD CONSTRAINT `fk_calendar_has_users_calendar1` FOREIGN KEY (`calendar_id`) REFERENCES `calendar` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_calendar_has_users_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints der Tabelle `calendarlog`
--
ALTER TABLE `calendarlog`
  ADD CONSTRAINT `fk_calendarlog_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints der Tabelle `group_has_users`
--
ALTER TABLE `group_has_users`
  ADD CONSTRAINT `fk_group_has_users_group1` FOREIGN KEY (`group_id`) REFERENCES `group` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_group_has_users_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints der Tabelle `recipe_consume_product`
--
ALTER TABLE `recipe_consume_product`
  ADD CONSTRAINT `fk_recipe_consume_product_product1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_recipe_consume_product_recipe1` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints der Tabelle `recipe_has_recipelogs`
--
ALTER TABLE `recipe_has_recipelogs`
  ADD CONSTRAINT `fk_recipe_has_recipelogs_recipe1` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_recipe_has_recipelogs_recipelog1` FOREIGN KEY (`recipelog_id`) REFERENCES `recipelog` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints der Tabelle `recipelog`
--
ALTER TABLE `recipelog`
  ADD CONSTRAINT `fk_recipelog_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints der Tabelle `stock`
--
ALTER TABLE `stock`
  ADD CONSTRAINT `fk_stock_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_stock_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints der Tabelle `stock_has_stocklogs`
--
ALTER TABLE `stock_has_stocklogs`
  ADD CONSTRAINT `fk_stock_has_stocklogs_stock1` FOREIGN KEY (`stock_id`) REFERENCES `stock` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_stock_has_stocklogs_stocklog1` FOREIGN KEY (`stocklog_id`) REFERENCES `stocklog` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints der Tabelle `stocklog`
--
ALTER TABLE `stocklog`
  ADD CONSTRAINT `fk_stocklog_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints der Tabelle `user_has_comments`
--
ALTER TABLE `user_has_comments`
  ADD CONSTRAINT `fk_user_has_comments_comment1` FOREIGN KEY (`comment_id`) REFERENCES `comment` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_user_has_comments_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints der Tabelle `user_has_role`
--
ALTER TABLE `user_has_role`
  ADD CONSTRAINT `fk_user_has_role_role1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_user_has_role_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints der Tabelle `user_has_userlogs`
--
ALTER TABLE `user_has_userlogs`
  ADD CONSTRAINT `fk_user_has_userlogs_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints der Tabelle `userlog`
--
ALTER TABLE `userlog`
  ADD CONSTRAINT `fk_userlog_user_has_userlogs1` FOREIGN KEY (`id`) REFERENCES `user_has_userlogs` (`userlog_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
