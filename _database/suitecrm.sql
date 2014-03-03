-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 03-03-2014 a las 09:01:02
-- Versión del servidor: 5.5.24-log
-- Versión de PHP: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `suitecrm`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accounts`
--

CREATE TABLE IF NOT EXISTS `accounts` (
  `id` char(36) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `account_type` varchar(50) DEFAULT NULL,
  `industry` varchar(50) DEFAULT NULL,
  `annual_revenue` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `rating` varchar(100) DEFAULT NULL,
  `phone_office` varchar(100) DEFAULT NULL,
  `phone_alternate` varchar(100) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `ownership` varchar(100) DEFAULT NULL,
  `employees` varchar(10) DEFAULT NULL,
  `ticker_symbol` varchar(10) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `sic_code` varchar(10) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_accnt_id_del` (`id`,`deleted`),
  KEY `idx_accnt_name_del` (`name`,`deleted`),
  KEY `idx_accnt_assigned_del` (`deleted`,`assigned_user_id`),
  KEY `idx_accnt_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `accounts`
--

INSERT INTO `accounts` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `account_type`, `industry`, `annual_revenue`, `phone_fax`, `billing_address_street`, `billing_address_city`, `billing_address_state`, `billing_address_postalcode`, `billing_address_country`, `rating`, `phone_office`, `phone_alternate`, `website`, `ownership`, `employees`, `ticker_symbol`, `shipping_address_street`, `shipping_address_city`, `shipping_address_state`, `shipping_address_postalcode`, `shipping_address_country`, `parent_id`, `sic_code`, `campaign_id`) VALUES
('1101a5eb-e983-f6ea-43eb-52987537a6da', 'Pullman Cart Company', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sally_id', 'Customer', 'Consulting', NULL, NULL, '123 Anywhere Street', 'Ohio', 'CA', '23578', 'USA', NULL, '(881) 644-4756', NULL, 'www.qasugar.co.jp', NULL, NULL, NULL, '123 Anywhere Street', 'Ohio', 'CA', '23578', 'USA', NULL, NULL, NULL),
('11347f52-2f1e-e9e7-5742-529875ea3fcd', 'Jungle Systems Inc', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_chris_id', 'Customer', 'Banking', NULL, NULL, '111 Silicon Valley Road', 'Santa Fe', 'NY', '50123', 'USA', NULL, '(195) 227-4985', NULL, 'www.beansdev.edu', NULL, NULL, NULL, '111 Silicon Valley Road', 'Santa Fe', 'NY', '50123', 'USA', NULL, NULL, NULL),
('1333c281-6c1c-5feb-b0ce-529875dced2f', 'Nimble Technologies Inc', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sarah_id', 'Customer', 'Government', NULL, NULL, '345 Sugar Blvd.', 'Alabama', 'CA', '25932', 'USA', NULL, '(669) 166-7550', NULL, 'www.theqa.it', NULL, NULL, NULL, '345 Sugar Blvd.', 'Alabama', 'CA', '25932', 'USA', NULL, NULL, NULL),
('155e5af4-2e34-eed6-f04f-5298756ec492', 'MMM Mortuary Corp', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sally_id', 'Customer', 'Hospitality', NULL, NULL, '1715 Scott Dr', 'Cupertino', 'CA', '97519', 'USA', NULL, '(191) 156-3152', NULL, 'www.kidphone.co.uk', NULL, NULL, NULL, '1715 Scott Dr', 'Cupertino', 'CA', '97519', 'USA', NULL, NULL, NULL),
('1a827d46-928c-d4af-c22e-529875eb13fc', 'Constrata Trust LLC', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_will_id', 'Customer', 'Machinery', NULL, NULL, '9 IBM Path', 'Alabama', 'NY', '11873', 'USA', NULL, '(518) 517-6695', NULL, 'www.theinfo.co.jp', NULL, NULL, NULL, '9 IBM Path', 'Alabama', 'NY', '11873', 'USA', NULL, NULL, NULL),
('1d108fcd-1884-2a71-0b37-529875f188f6', 'Kaos Trading Ltd', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_max_id', 'Customer', 'Utilities', NULL, NULL, '999 Baker Way', 'St. Petersburg', 'CA', '46627', 'USA', NULL, '(684) 017-0502', NULL, 'www.hrdev.biz', NULL, NULL, NULL, '999 Baker Way', 'St. Petersburg', 'CA', '46627', 'USA', NULL, NULL, NULL),
('24928f86-1046-61ac-d900-52987575dfa2', 'Southern Realty', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_max_id', 'Customer', 'Environmental', NULL, NULL, '777 West Filmore Ln', 'Santa Fe', 'CA', '29654', 'USA', NULL, '(708) 956-2244', NULL, 'www.supportsales.org', NULL, NULL, NULL, '777 West Filmore Ln', 'Santa Fe', 'CA', '29654', 'USA', NULL, NULL, NULL),
('25849816-ef86-1477-24d5-52987598d0df', '24/7 Couriers', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_max_id', 'Customer', 'Finance', NULL, NULL, '48920 San Carlos Ave', 'San Jose', 'CA', '89388', 'USA', NULL, '(604) 862-6059', NULL, 'www.beansthe.it', NULL, NULL, NULL, '48920 San Carlos Ave', 'San Jose', 'CA', '89388', 'USA', NULL, NULL, NULL),
('338fa76c-708e-6ee1-b4a0-52987593790d', 'Slender Broadband Inc', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_chris_id', 'Customer', 'Hospitality', NULL, NULL, '123 Anywhere Street', 'Santa Monica', 'NY', '70971', 'USA', NULL, '(727) 881-7006', NULL, 'www.sectionkid.de', NULL, NULL, NULL, '123 Anywhere Street', 'Santa Monica', 'NY', '70971', 'USA', NULL, NULL, NULL),
('42b5cb89-74a7-87fc-2465-529875869642', 'Spindle Broadcast Corp.', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sarah_id', 'Customer', 'Healthcare', NULL, NULL, '1715 Scott Dr', 'Persistance', 'CA', '52863', 'USA', NULL, '(596) 245-1353', NULL, 'www.beanskid.com', NULL, NULL, NULL, '1715 Scott Dr', 'Persistance', 'CA', '52863', 'USA', NULL, NULL, NULL),
('441f0a7b-e5b6-5a2e-a7f4-529875cfa268', 'Underwater Mining Inc.', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sally_id', 'Customer', 'Biotechnology', NULL, NULL, '321 University Ave.', 'Sunnyvale', 'CA', '51425', 'USA', NULL, '(055) 921-8084', NULL, 'www.salessales.cn', NULL, NULL, NULL, '321 University Ave.', 'Sunnyvale', 'CA', '51425', 'USA', NULL, NULL, NULL),
('4715d71a-48ec-da12-14b6-529875a889ce', 'JJ Resources Inc', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_will_id', 'Customer', 'Entertainment', NULL, NULL, '777 West Filmore Ln', 'Salt Lake City', 'NY', '94698', 'USA', NULL, '(274) 307-3422', NULL, 'www.qakid.us', NULL, NULL, NULL, '777 West Filmore Ln', 'Salt Lake City', 'NY', '94698', 'USA', NULL, NULL, NULL),
('483cdf6b-76a0-599b-90b3-529875b1874d', 'P Piper & Sons', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_chris_id', 'Customer', 'Entertainment', NULL, NULL, '321 University Ave.', 'Sunnyvale', 'NY', '98624', 'USA', NULL, '(984) 345-8390', NULL, 'www.qasales.org', NULL, NULL, NULL, '321 University Ave.', 'Sunnyvale', 'NY', '98624', 'USA', NULL, NULL, NULL),
('4bddeaa7-e031-76d1-0f0a-52987551ce8e', 'Sunyvale Reporting Ltd', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sarah_id', 'Customer', 'Retail', NULL, NULL, '48920 San Carlos Ave', 'St. Petersburg', 'CA', '13981', 'USA', NULL, '(871) 359-0427', NULL, 'www.kidsugar.org', NULL, NULL, NULL, '48920 San Carlos Ave', 'St. Petersburg', 'CA', '13981', 'USA', NULL, NULL, NULL),
('4bf72c0d-3996-e0d1-d59b-529875258e8d', 'AtoZ Co Ltd', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sarah_id', 'Customer', '', NULL, NULL, '345 Sugar Blvd.', 'San Mateo', 'CA', '54653', 'USA', NULL, '(556) 086-0400', NULL, 'www.imvegan.it', NULL, NULL, NULL, '345 Sugar Blvd.', 'San Mateo', 'CA', '54653', 'USA', NULL, NULL, NULL),
('4d260f5b-4d3b-01e3-f600-529875ae7e34', 'Pullman Cart Company', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_will_id', 'Customer', 'Recreation', NULL, NULL, '111 Silicon Valley Road', 'Cupertino', 'NY', '67421', 'USA', NULL, '(831) 221-4663', NULL, 'www.salesvegan.edu', NULL, NULL, NULL, '111 Silicon Valley Road', 'Cupertino', 'NY', '67421', 'USA', NULL, NULL, NULL),
('4f8dac93-9995-69bd-9f44-5298756932f7', 'Rubble Group Inc', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sarah_id', 'Customer', 'Retail', NULL, NULL, '111 Silicon Valley Road', 'Santa Fe', 'CA', '53698', 'USA', NULL, '(231) 230-3085', NULL, 'www.qasection.tv', NULL, NULL, NULL, '111 Silicon Valley Road', 'Santa Fe', 'CA', '53698', 'USA', NULL, NULL, NULL),
('665bc465-62ce-7710-48f7-529875b660db', 'X-Sell Holdings', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_will_id', 'Customer', 'Finance', NULL, NULL, '9 IBM Path', 'Persistance', 'NY', '21758', 'USA', NULL, '(869) 613-8722', NULL, 'www.thesales.de', NULL, NULL, NULL, '9 IBM Path', 'Persistance', 'NY', '21758', 'USA', NULL, NULL, NULL),
('67960a80-f47d-f4a2-6c32-5298752a0fb7', 'Cumberland Trails Inc', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sally_id', 'Customer', 'Transportation', NULL, NULL, '1715 Scott Dr', 'Salt Lake City', 'CA', '67615', 'USA', NULL, '(057) 336-4428', NULL, 'www.beansphone.com', NULL, NULL, NULL, '1715 Scott Dr', 'Salt Lake City', 'CA', '67615', 'USA', NULL, NULL, NULL),
('6a3e2a60-0801-5ad6-b5ad-5298758b7b82', 'XY&Z Funding Inc', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_chris_id', 'Customer', 'Entertainment', NULL, NULL, '345 Sugar Blvd.', 'Santa Fe', 'NY', '95637', 'USA', NULL, '(414) 391-9387', NULL, 'www.kidsupport.cn', NULL, NULL, NULL, '345 Sugar Blvd.', 'Santa Fe', 'NY', '95637', 'USA', NULL, NULL, NULL),
('6dd302bd-624c-fc7a-1a86-529875d3cab3', 'AtoZ Co Ltd', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sarah_id', 'Customer', 'Technology', NULL, NULL, '111 Silicon Valley Road', 'Santa Monica', 'CA', '39478', 'USA', NULL, '(246) 855-8125', NULL, 'www.supportkid.co.jp', NULL, NULL, NULL, '111 Silicon Valley Road', 'Santa Monica', 'CA', '39478', 'USA', NULL, NULL, NULL),
('80ffb2a1-39b2-b040-312c-529875ce1184', 'Aim Capital Inc', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sarah_id', 'Customer', 'Consulting', NULL, NULL, '1715 Scott Dr', 'St. Petersburg', 'CA', '18003', 'USA', NULL, '(711) 896-2101', NULL, 'www.kidphone.net', NULL, NULL, NULL, '1715 Scott Dr', 'St. Petersburg', 'CA', '18003', 'USA', NULL, NULL, NULL),
('83108ddd-eb6e-2fc1-8f7e-529875ff02fd', 'Cumberland Trails Inc', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sally_id', 'Customer', 'Other', NULL, NULL, '1715 Scott Dr', 'Cupertino', 'CA', '10197', 'USA', NULL, '(426) 076-0846', NULL, 'www.phonesupport.biz', NULL, NULL, NULL, '1715 Scott Dr', 'Cupertino', 'CA', '10197', 'USA', NULL, NULL, NULL),
('843d8509-c9ed-1d00-8904-5298755fb703', 'Max Holdings Ltd', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sarah_id', 'Customer', 'Machinery', NULL, NULL, '345 Sugar Blvd.', 'St. Petersburg', 'CA', '23189', 'USA', NULL, '(001) 456-1432', NULL, 'www.sectiondev.de', NULL, NULL, NULL, '345 Sugar Blvd.', 'St. Petersburg', 'CA', '23189', 'USA', NULL, NULL, NULL),
('86241479-8ae0-1c75-def3-52987558b889', 'S Cane Sweeteners Ltd', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sally_id', 'Customer', 'Finance', NULL, NULL, '777 West Filmore Ln', 'San Jose', 'CA', '89767', 'USA', NULL, '(442) 488-3071', NULL, 'www.sectiondev.co.uk', NULL, NULL, NULL, '777 West Filmore Ln', 'San Jose', 'CA', '89767', 'USA', NULL, NULL, NULL),
('88d9f18e-1745-0a3e-c896-529875535837', 'Smith & Sons', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sarah_id', 'Customer', 'Recreation', NULL, NULL, '345 Sugar Blvd.', 'Cupertino', 'CA', '27925', 'USA', NULL, '(531) 181-9158', NULL, 'www.devvegan.tw', NULL, NULL, NULL, '345 Sugar Blvd.', 'Cupertino', 'CA', '27925', 'USA', NULL, NULL, NULL),
('90c118bf-6e42-af47-f59b-529875e9130b', 'Green Tractor Group Limited', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sarah_id', 'Customer', 'Other', NULL, NULL, '123 Anywhere Street', 'San Jose', 'CA', '97424', 'USA', NULL, '(118) 111-3404', NULL, 'www.kidsales.co.jp', NULL, NULL, NULL, '123 Anywhere Street', 'San Jose', 'CA', '97424', 'USA', NULL, NULL, NULL),
('91878d1b-3b4d-0d25-a6b5-529875184c97', 'Mississippi Bank Group', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sally_id', 'Customer', 'Shipping', NULL, NULL, '321 University Ave.', 'St. Petersburg', 'CA', '32701', 'USA', NULL, '(178) 442-1401', NULL, 'www.imim.co.jp', NULL, NULL, NULL, '321 University Ave.', 'St. Petersburg', 'CA', '32701', 'USA', NULL, NULL, NULL),
('928fb169-b3cc-ffb3-0404-529875061d73', 'Gifted Holdings AG', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_will_id', 'Customer', 'Transportation', NULL, NULL, '321 University Ave.', 'San Mateo', 'NY', '58207', 'USA', NULL, '(654) 588-6042', NULL, 'www.devdev.com', NULL, NULL, NULL, '321 University Ave.', 'San Mateo', 'NY', '58207', 'USA', NULL, NULL, NULL),
('92faa889-31d2-4c67-768d-5298751c33bc', 'Cloud Cover Trust', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_chris_id', 'Customer', 'Not For Profit', NULL, NULL, '111 Silicon Valley Road', 'San Mateo', 'NY', '35689', 'USA', NULL, '(040) 601-5489', NULL, 'www.qasupport.tw', NULL, NULL, NULL, '111 Silicon Valley Road', 'San Mateo', 'NY', '35689', 'USA', NULL, NULL, NULL),
('9a83606e-8ff3-71cd-6a02-5298755d39bf', 'Cloud Cover Trust', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_chris_id', 'Customer', 'Insurance', NULL, NULL, '999 Baker Way', 'San Jose', 'NY', '81251', 'USA', NULL, '(196) 107-2296', NULL, 'www.devim.co.jp', NULL, NULL, NULL, '999 Baker Way', 'San Jose', 'NY', '81251', 'USA', NULL, NULL, NULL),
('9f390216-04e7-cc16-733b-5298750f759f', 'Rubble Group Inc', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_chris_id', 'Customer', 'Construction', NULL, NULL, '1715 Scott Dr', 'Santa Monica', 'NY', '82802', 'USA', NULL, '(701) 465-8429', NULL, 'www.qaqa.info', NULL, NULL, NULL, '1715 Scott Dr', 'Santa Monica', 'NY', '82802', 'USA', NULL, NULL, NULL),
('abd72852-e8e6-7dee-3553-529875d00408', 'Mississippi Bank Group', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sally_id', 'Customer', 'Biotechnology', NULL, NULL, '9 IBM Path', 'Denver', 'CA', '69787', 'USA', NULL, '(597) 168-1437', NULL, 'www.devkid.tv', NULL, NULL, NULL, '9 IBM Path', 'Denver', 'CA', '69787', 'USA', NULL, NULL, NULL),
('b5825206-e528-d225-ea9d-529875f0637c', 'Aim Capital Inc', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sally_id', 'Customer', 'Machinery', NULL, NULL, '9 IBM Path', 'Sunnyvale', 'CA', '57220', 'USA', NULL, '(744) 860-9719', NULL, 'www.sugardev.it', NULL, NULL, NULL, '9 IBM Path', 'Sunnyvale', 'CA', '57220', 'USA', NULL, NULL, NULL),
('bd4cb06c-82d3-880d-4d40-5298757202dc', 'Insight Marketing Inc', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sally_id', 'Customer', 'Chemicals', NULL, NULL, '48920 San Carlos Ave', 'Kansas City', 'CA', '66885', 'USA', NULL, '(467) 643-9838', NULL, 'www.thekid.tv', NULL, NULL, NULL, '48920 San Carlos Ave', 'Kansas City', 'CA', '66885', 'USA', NULL, NULL, NULL),
('bff7749a-8c07-74c6-aac9-5298751ca6ac', 'JJ Resources Inc', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_will_id', 'Customer', 'Insurance', NULL, NULL, '777 West Filmore Ln', 'Cupertino', 'NY', '92146', 'USA', NULL, '(622) 467-5197', NULL, 'www.vegandev.it', NULL, NULL, NULL, '777 West Filmore Ln', 'Cupertino', 'NY', '92146', 'USA', NULL, NULL, NULL),
('c45e9fec-f4aa-28bf-1bcb-529875c09a0f', 'South Sea Plumbing Products', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_max_id', 'Customer', 'Apparel', NULL, NULL, '48920 San Carlos Ave', 'San Mateo', 'CA', '79886', 'USA', NULL, '(510) 070-4984', NULL, 'www.theqa.com', NULL, NULL, NULL, '48920 San Carlos Ave', 'San Mateo', 'CA', '79886', 'USA', NULL, NULL, NULL),
('c810008c-e553-b587-b084-5298754a58f2', 'Dirt Mining Ltd', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_max_id', 'Customer', 'Electronics', NULL, NULL, '1715 Scott Dr', 'Cupertino', 'CA', '88180', 'USA', NULL, '(984) 808-0976', NULL, 'www.salesinfo.name', NULL, NULL, NULL, '1715 Scott Dr', 'Cupertino', 'CA', '88180', 'USA', NULL, NULL, NULL),
('cb94d850-be8a-52f1-e0ba-529875ec8280', 'Avery Software Co', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sarah_id', 'Customer', 'Entertainment', NULL, NULL, '123 Anywhere Street', 'Alabama', 'CA', '83313', 'USA', NULL, '(737) 019-1208', NULL, 'www.sugarinfo.org', NULL, NULL, NULL, '123 Anywhere Street', 'Alabama', 'CA', '83313', 'USA', NULL, NULL, NULL),
('d1ef8c6a-655c-395e-6960-5298753a3228', 'Arts & Crafts Inc', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_max_id', 'Customer', 'Environmental', NULL, NULL, '67321 West Siam St.', 'San Jose', 'CA', '27003', 'USA', NULL, '(841) 946-8589', NULL, 'www.hrsales.com', NULL, NULL, NULL, '67321 West Siam St.', 'San Jose', 'CA', '27003', 'USA', NULL, NULL, NULL),
('d35f89d0-7ef3-9627-d0ed-529875acf4bf', 'Gifted Holdings AG', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_will_id', 'Customer', 'Telecommunications', NULL, NULL, '123 Anywhere Street', 'San Jose', 'NY', '42175', 'USA', NULL, '(819) 772-5698', NULL, 'www.phoneinfo.info', NULL, NULL, NULL, '123 Anywhere Street', 'San Jose', 'NY', '42175', 'USA', NULL, NULL, NULL),
('d7900611-860a-97ee-9206-5298756b2232', 'MMM Mortuary Corp', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_chris_id', 'Customer', 'Banking', NULL, NULL, '777 West Filmore Ln', 'Salt Lake City', 'NY', '82744', 'USA', NULL, '(587) 037-4615', NULL, 'www.sectionthe.name', NULL, NULL, NULL, '777 West Filmore Ln', 'Salt Lake City', 'NY', '82744', 'USA', NULL, NULL, NULL),
('d88193d5-0464-700d-f982-5298751beb47', 'A.G. Parr PLC', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sarah_id', 'Customer', 'Electronics', NULL, NULL, '321 University Ave.', 'Kansas City', 'CA', '99638', 'USA', NULL, '(128) 536-7729', NULL, 'www.saleshr.cn', NULL, NULL, NULL, '321 University Ave.', 'Kansas City', 'CA', '99638', 'USA', NULL, NULL, NULL),
('debc5ef6-5b48-7974-c61d-52987522c246', 'Powell Funding', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_chris_id', 'Customer', 'Recreation', NULL, NULL, '999 Baker Way', 'San Jose', 'NY', '51956', 'USA', NULL, '(950) 190-3550', NULL, 'www.phoneinfo.co.jp', NULL, NULL, NULL, '999 Baker Way', 'San Jose', 'NY', '51956', 'USA', NULL, NULL, NULL),
('e1bef011-bbfc-75e6-190c-5298753d4382', 'Bay Funding Co', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_chris_id', 'Customer', 'Retail', NULL, NULL, '123 Anywhere Street', 'San Mateo', 'NY', '81679', 'USA', NULL, '(352) 640-0493', NULL, 'www.phoneqa.info', NULL, NULL, NULL, '123 Anywhere Street', 'San Mateo', 'NY', '81679', 'USA', NULL, NULL, NULL),
('e7d550ff-8fd0-c480-b233-5298754a72d4', 'Insight Marketing Inc', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sarah_id', 'Customer', 'Engineering', NULL, NULL, '777 West Filmore Ln', 'Denver', 'CA', '57391', 'USA', NULL, '(879) 137-6451', NULL, 'www.beanssupport.de', NULL, NULL, NULL, '777 West Filmore Ln', 'Denver', 'CA', '57391', 'USA', NULL, NULL, NULL),
('e8f6a163-2813-4e27-3892-52987558cb25', 'Powell Funding', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_max_id', 'Customer', 'Technology', NULL, NULL, '123 Anywhere Street', 'Cupertino', 'CA', '45513', 'USA', NULL, '(385) 267-8106', NULL, 'www.theinfo.co.jp', NULL, NULL, NULL, '123 Anywhere Street', 'Cupertino', 'CA', '45513', 'USA', NULL, NULL, NULL),
('ead1b1a4-773f-d48a-6a2a-529875cd6c95', 'Davenport Investing', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_max_id', 'Customer', 'Electronics', NULL, NULL, '123 Anywhere Street', 'San Jose', 'CA', '98114', 'USA', NULL, '(293) 570-0686', NULL, 'www.sugarsection.biz', NULL, NULL, NULL, '123 Anywhere Street', 'San Jose', 'CA', '98114', 'USA', NULL, NULL, NULL),
('f08e6ba6-1eeb-7686-7baa-529875c50f97', 'XY&Z Funding Inc', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sarah_id', 'Customer', 'Entertainment', NULL, NULL, '777 West Filmore Ln', 'Sunnyvale', 'CA', '81837', 'USA', NULL, '(481) 822-8178', NULL, 'www.kidkid.com', NULL, NULL, NULL, '777 West Filmore Ln', 'Sunnyvale', 'CA', '81837', 'USA', NULL, NULL, NULL),
('f251a77b-7198-42c1-2b9b-529875469cab', 'Arts & Crafts Inc', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_max_id', 'Customer', 'Consulting', NULL, NULL, '111 Silicon Valley Road', 'Santa Fe', 'CA', '70011', 'USA', NULL, '(752) 746-4648', NULL, 'www.beansim.net', NULL, NULL, NULL, '111 Silicon Valley Road', 'Santa Fe', 'CA', '70011', 'USA', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accounts_audit`
--

CREATE TABLE IF NOT EXISTS `accounts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_accounts_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accounts_bugs`
--

CREATE TABLE IF NOT EXISTS `accounts_bugs` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_acc_bug_acc` (`account_id`),
  KEY `idx_acc_bug_bug` (`bug_id`),
  KEY `idx_account_bug` (`account_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accounts_cases`
--

CREATE TABLE IF NOT EXISTS `accounts_cases` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_acc_case_acc` (`account_id`),
  KEY `idx_acc_acc_case` (`case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accounts_contacts`
--

CREATE TABLE IF NOT EXISTS `accounts_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_account_contact` (`account_id`,`contact_id`),
  KEY `idx_contid_del_accid` (`contact_id`,`deleted`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `accounts_contacts`
--

INSERT INTO `accounts_contacts` (`id`, `contact_id`, `account_id`, `date_modified`, `deleted`) VALUES
('f19feb71-a772-12c2-aec1-5301f2b809d8', 'ef5151a9-9e4b-5fb4-39f3-5301f2aa0841', '1101a5eb-e983-f6ea-43eb-52987537a6da', '2014-02-17 11:30:49', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accounts_cstm`
--

CREATE TABLE IF NOT EXISTS `accounts_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accounts_fact_facturas_c`
--

CREATE TABLE IF NOT EXISTS `accounts_fact_facturas_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `accounts_f4ffcccounts_ida` varchar(36) DEFAULT NULL,
  `accounts_fbc88acturas_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `accounts_fact_facturas_ida1` (`accounts_f4ffcccounts_ida`),
  KEY `accounts_fact_facturas_alt` (`accounts_fbc88acturas_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accounts_opportunities`
--

CREATE TABLE IF NOT EXISTS `accounts_opportunities` (
  `id` varchar(36) NOT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_account_opportunity` (`account_id`,`opportunity_id`),
  KEY `idx_oppid_del_accid` (`opportunity_id`,`deleted`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `accounts_opportunities`
--

INSERT INTO `accounts_opportunities` (`id`, `opportunity_id`, `account_id`, `date_modified`, `deleted`) VALUES
('3adb9ce4-c790-df93-eafe-53071be1e1df', '3830fa9b-e961-b38d-4c29-53071b24255c', '25849816-ef86-1477-24d5-52987598d0df', '2014-02-21 09:23:34', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acl_actions`
--

CREATE TABLE IF NOT EXISTS `acl_actions` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `acltype` varchar(100) DEFAULT NULL,
  `aclaccess` int(3) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aclaction_id_del` (`id`,`deleted`),
  KEY `idx_category_name` (`category`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `acl_actions`
--

INSERT INTO `acl_actions` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `name`, `category`, `acltype`, `aclaccess`, `deleted`) VALUES
('100aab3a-3678-51ea-8056-5301cf28ca04', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'list', 'ProspectLists', 'module', 90, 0),
('10e9a446-40d5-641d-3f85-5301cfd6b382', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'edit', 'AOP_Case_Events', 'module', 90, 0),
('1141a876-afdd-b423-a000-5301cfb872a7', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'delete', 'FP_events', 'module', 90, 0),
('131fa69b-19a3-5579-b3ce-5301cf7b4ccf', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'delete', 'jjwg_Markers', 'module', 90, 0),
('133e09f8-39bc-c868-1447-5301cf06415a', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'delete', 'AOW_Processed', 'module', 90, 0),
('14146ec9-fe21-a1f1-c033-5301d947a8d5', '2014-02-17 09:44:11', '2014-02-17 09:44:11', '1', '1', 'import', 'fact_Items', 'module', 90, 0),
('15eaab66-3c58-5f82-e115-5301cf561dab', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'access', 'EAPM', 'module', 89, 0),
('16135744-8a30-0c33-9ecd-5301cf754312', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'edit', 'Users', 'module', 90, 0),
('18637085-a241-02af-f6a1-5301cf950ec7', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'massupdate', 'Tasks', 'module', 90, 0),
('18805dda-07a7-b32f-36b7-5301cff7897b', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'import', 'Accounts', 'module', 90, 0),
('18bc4ab9-af8a-15f1-577f-5301cf5d31e8', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'export', 'Emails', 'module', 90, 0),
('1968615b-d7a4-bbc0-3655-5301cf6b0c44', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'access', 'jjwg_Maps', 'module', 89, 0),
('199e05e3-712f-b5b6-2629-5301cfa16580', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'export', 'AOW_Processed', 'module', 90, 0),
('19ebdca1-b2c4-31fd-5f05-5301cfa01d28', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'edit', 'Leads', 'module', 90, 0),
('1a1dc632-92fb-c1dc-ccbb-5301cfd97dcd', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'view', 'Calls', 'module', 90, 0),
('1a227160-8de3-83c8-cbb1-5301cf0bfaeb', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'access', 'jjwg_Address_Cache', 'module', 89, 0),
('1a817c1a-fbac-6234-8566-5301cf23ef64', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'list', 'Contacts', 'module', 90, 0),
('1c456852-c493-c0f2-64fb-5301cfad8fdc', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'edit', 'ProspectLists', 'module', 90, 0),
('1d1dc828-7fae-5361-247e-5301cf87da28', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'delete', 'AOP_Case_Events', 'module', 90, 0),
('1ddc3259-b0e5-4630-0eb3-5301cfd2a3cb', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'import', 'AOS_Contracts', 'module', 90, 0),
('1e1f0ca5-c647-2d5f-625c-5301cfdd345d', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'delete', 'AOS_Contracts', 'module', 90, 0),
('1e947afe-8ffa-31ad-f883-5301cf792d4b', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'export', 'Bugs', 'module', 90, 0),
('1ebe4c31-7e99-1967-963e-5301cf74e279', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'export', 'Meetings', 'module', 90, 0),
('1f0024bc-99e3-a143-b4c8-5301cf1a674a', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'access', 'Documents', 'module', 89, 0),
('1f3f26e3-4bca-bf05-cbbf-5301cf0353f9', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'import', 'FP_events', 'module', 90, 0),
('2128ac35-314a-69c3-c9e3-5301cf90575e', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'import', 'jjwg_Markers', 'module', 90, 0),
('224e4de5-4363-1ae9-00f5-5301cfffe030', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'delete', 'Users', 'module', 90, 0),
('2388c720-c66e-b240-21c2-5301cfcded63', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'view', 'EAPM', 'module', 90, 0),
('23e5cb2c-0380-d021-6687-5301d9efe62a', '2014-02-17 09:44:11', '2014-02-17 09:44:11', '1', '1', 'access', 'fact_Facturas', 'module', 89, 0),
('2564f43c-d7c2-ae8f-6378-5301cf71d472', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'view', 'jjwg_Address_Cache', 'module', 90, 0),
('26222c51-4bb6-9626-99f3-5301cfd146fc', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'delete', 'Leads', 'module', 90, 0),
('2639df96-25f8-fb36-53eb-5301cf978f28', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'view', 'jjwg_Maps', 'module', 90, 0),
('26a4751a-faa1-f9b7-8f34-5301cfd68069', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'export', 'Accounts', 'module', 90, 0),
('26d8490e-0729-6280-56f2-5301cf0a583b', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'list', 'Calls', 'module', 90, 0),
('27d0f011-a0f1-a463-d47b-5301cff0935b', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'massupdate', 'Emails', 'module', 90, 0),
('27d92fd4-4567-d07c-c749-5301cf3b9354', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'massupdate', 'AOW_Processed', 'module', 90, 0),
('28d85861-f538-509a-3295-5301cf981d74', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'import', 'AOP_Case_Events', 'module', 90, 0),
('28dc9d3c-ad87-63b9-3982-5301cf0edde5', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'delete', 'ProspectLists', 'module', 90, 0),
('290005ba-efa2-2a9e-0ff5-5301cf6e8a2a', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'list', 'AOS_Invoices', 'module', 90, 0),
('29d5ecf5-1268-90f4-7e60-5301cf968829', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'export', 'AOS_Contracts', 'module', 90, 0),
('2a920ba2-3d32-dfaa-b38f-5301cfc8cb70', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'list', 'AOP_Case_Events', 'module', 90, 0),
('2ba8f3f9-ae2e-7a83-da53-5301cf524fa5', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'access', 'Project', 'module', 89, 0),
('2cfdb019-3945-c151-4ec5-5301cfdc4702', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'export', 'FP_events', 'module', 90, 0),
('2d563034-efe0-e858-de21-5301cf3dd5cf', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'export', 'jjwg_Markers', 'module', 90, 0),
('2ef6393c-85a1-61fe-20b2-5301cf2074aa', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'list', 'EAPM', 'module', 90, 0),
('2f0ffb66-0749-3ba6-1a60-5301cf37f87d', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'massupdate', 'Meetings', 'module', 90, 0),
('2f330a22-ad69-ef3b-40d5-5301d9e2825b', '2014-02-17 09:44:11', '2014-02-17 09:44:11', '1', '1', 'view', 'fact_Facturas', 'module', 90, 0),
('30700185-f576-6678-1214-5301cf3642ff', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'massupdate', 'Bugs', 'module', 90, 0),
('307a8668-cdca-ae70-cf51-5301cf65b2b4', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'import', 'Users', 'module', 90, 0),
('3137027a-5109-9a01-d209-5301cfd6a7a0', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'access', 'AOS_Product_Categories', 'module', 89, 0),
('317d933e-4f49-cd10-9319-5301cf1b1343', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'list', 'jjwg_Address_Cache', 'module', 90, 0),
('3256baa1-e385-b5dd-6493-5301cfb7cab9', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'import', 'Leads', 'module', 90, 0),
('32c2fe96-ddfe-b9ae-3210-5301cfacc3b7', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'edit', 'Calls', 'module', 90, 0),
('32d523a1-7c72-02cc-d37f-5301cfdcf3f5', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'delete', 'jjwg_Areas', 'module', 90, 0),
('32dc0cc0-e3ab-6d00-2362-5301cf20a3d4', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'massupdate', 'Accounts', 'module', 90, 0),
('337b1d34-0833-fa26-9d99-5301cfec6f82', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'export', 'AOP_Case_Events', 'module', 90, 0),
('33dd0791-f8fe-d4e7-e3e6-5301cf6163b1', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'access', 'Prospects', 'module', 89, 0),
('346dcb43-dd4d-cfe2-588c-5301cfae3b23', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'list', 'jjwg_Maps', 'module', 90, 0),
('3531b3b9-7de0-b8ef-bb80-5301cf6cdab3', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'access', 'AOS_Quotes', 'module', 89, 0),
('355dac8c-7292-e11f-082e-5301cf8f144f', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'view', 'Documents', 'module', 90, 0),
('36116f3b-076b-72cd-dadb-5301cfdb72e6', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'massupdate', 'AOS_Contracts', 'module', 90, 0),
('36c75d43-9411-3de5-e398-5301cf236ec8', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'view', 'Project', 'module', 90, 0),
('37ae700c-aab9-d79f-7757-5301cf625447', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'massupdate', 'FP_events', 'module', 90, 0),
('384f02b7-93e5-0d65-e092-5301cfb1afc1', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'edit', 'Contacts', 'module', 90, 0),
('38d005c1-be5c-85e1-bbcf-5301cf01dcb4', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'import', 'Tasks', 'module', 90, 0),
('397fbb00-310b-ed5d-5177-5301cf6d7b30', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'massupdate', 'jjwg_Markers', 'module', 90, 0),
('39d68cb9-d9ee-ccc3-a16c-5301d908c992', '2014-02-17 09:44:11', '2014-02-17 09:44:11', '1', '1', 'massupdate', 'fact_Items', 'module', 90, 0),
('3a21dfdf-79e3-eb96-b302-5301d98992fa', '2014-02-17 09:44:11', '2014-02-17 09:44:11', '1', '1', 'list', 'fact_Facturas', 'module', 90, 0),
('3b2481b3-5d41-4caf-0ec5-5301cfd15e53', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'edit', 'EAPM', 'module', 90, 0),
('3c03aa3f-a183-8217-ccd5-5301cfbfe94a', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'edit', 'AOS_Invoices', 'module', 90, 0),
('3caab810-0208-ed4f-9a62-5301cfc54789', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'export', 'Users', 'module', 90, 0),
('3dbb672c-7098-7203-63fa-5301cf84897c', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'edit', 'jjwg_Address_Cache', 'module', 90, 0),
('3e5abe94-3749-6dc2-351e-5301cf6042e6', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'view', 'AOS_Product_Categories', 'module', 90, 0),
('3e81f2ce-e5e6-2d95-39df-5301cf782839', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'view', 'Emails', 'module', 90, 0),
('3e8f5fdd-bbc8-b6fc-07f6-5301cfb8f169', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'delete', 'Calls', 'module', 90, 0),
('3fa53347-9080-1759-45e7-5301cfbfa71c', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'massupdate', 'AOP_Case_Events', 'module', 90, 0),
('40439f6a-9463-6061-96f7-5301cfa5793d', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'edit', 'jjwg_Maps', 'module', 90, 0),
('4098580f-2895-70df-c35b-5301cfd62edb', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'export', 'Leads', 'module', 90, 0),
('41232f68-34a2-eb57-e632-5301cfbe47a3', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'view', 'Prospects', 'module', 90, 0),
('417f6829-e4b0-7a65-a962-5301cfb8168e', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'list', 'Documents', 'module', 90, 0),
('41e3b76e-7eb3-fd26-0ef6-5301cfb0224c', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'view', 'AOS_Quotes', 'module', 90, 0),
('42da9ef1-bd91-7c86-869d-5301d9a5ce9f', '2014-02-17 09:44:11', '2014-02-17 09:44:11', '1', '1', 'edit', 'fact_Facturas', 'module', 90, 0),
('42ea9a65-b7dd-3106-20d4-5301cfe21a86', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'list', 'Project', 'module', 90, 0),
('444abc80-1c76-d5c2-b1bf-5301cf2e566f', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'access', 'Opportunities', 'module', 89, 0),
('4594dfd9-2193-22c9-be14-5301cf3425a9', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'delete', 'EAPM', 'module', 90, 0),
('46a3a349-c701-c612-039b-5301cf9178ae', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'delete', 'Contacts', 'module', 90, 0),
('46a44de0-b75f-5153-5fa2-5301cf296f13', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'access', 'Notes', 'module', 89, 0),
('48f0fe8e-ec25-da43-d7a9-5301cf78105b', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'massupdate', 'Users', 'module', 90, 0),
('4a0035b5-bd45-2cb8-e804-5301cf9fbcc2', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'delete', 'jjwg_Address_Cache', 'module', 90, 0),
('4a35a263-41e2-a7fc-164e-5301cf757913', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'list', 'AOS_Quotes', 'module', 90, 0),
('4a651529-2c57-b5d1-41e3-5301cfb46996', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'list', 'AOS_Product_Categories', 'module', 90, 0),
('4ab68be9-adfd-44c8-6586-5301cf2a86f0', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'access', 'SecurityGroups', 'module', 89, 0),
('4ad8e802-793d-f8b8-e4f9-5301cf5b9e49', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'import', 'Calls', 'module', 90, 0),
('4af4e9a2-3815-0b0b-be08-5301d91dc6c2', '2014-02-17 09:44:11', '2014-02-17 09:44:11', '1', '1', 'delete', 'fact_Facturas', 'module', 90, 0),
('4b7a024e-038e-dd7e-9510-5301cf7272a2', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'access', 'AOS_Products', 'module', 89, 0),
('4c22c57f-6f75-bc33-ee88-5301cf012315', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'delete', 'jjwg_Maps', 'module', 90, 0),
('4cbc310c-bce7-f026-93c3-5301cfe8a200', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'massupdate', 'Leads', 'module', 90, 0),
('4d1cc359-7980-8c2d-aad6-5301cf2d2eeb', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'list', 'Prospects', 'module', 90, 0),
('4e6e4b61-97b5-05e4-10b8-5301cf27b65f', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'edit', 'Documents', 'module', 90, 0),
('4f23613e-bc3c-407c-6aa3-5301cfcc0ca3', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'edit', 'Project', 'module', 90, 0),
('4fa27f1e-637f-c0f9-1f6f-5301cffcd285', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'view', 'Opportunities', 'module', 90, 0),
('519eb416-1a97-c712-d9a7-5301cf21f58f', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'view', 'Notes', 'module', 90, 0),
('51c9df1c-6715-52d4-f01d-5301cfef1c35', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'import', 'EAPM', 'module', 90, 0),
('51fe4933-ffb6-59ee-0e62-5301cf77916a', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'access', 'EmailMarketing', 'module', 89, 0),
('53f4ccf6-ca39-dd96-162e-5301cffcd75b', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'edit', 'AOS_Quotes', 'module', 90, 0),
('548742bf-054e-94f3-7a9f-5301cfd94ad9', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'delete', 'AOS_Invoices', 'module', 90, 0),
('54c9b1ba-5a0e-5f96-bae5-5301cf95c805', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'import', 'Contacts', 'module', 90, 0),
('55406536-1940-8e9d-9290-5301d9ef3aea', '2014-02-17 09:44:11', '2014-02-17 09:44:11', '1', '1', 'import', 'fact_Facturas', 'module', 90, 0),
('56a14b55-4d8b-a167-fc27-5301cf59c78b', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'edit', 'AOS_Product_Categories', 'module', 90, 0),
('576264bb-acf3-8eb4-f2f0-5301cfe889e3', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'view', 'SecurityGroups', 'module', 90, 0),
('577b054f-2103-78de-3391-5301cf87835a', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'export', 'Calls', 'module', 90, 0),
('57be281e-be8a-4110-6271-5301cf18eec0', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'access', 'AOS_PDF_Templates', 'module', 89, 0),
('58b2e5f5-d831-5bfe-0360-5301cf0cd429', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'view', 'AOS_Products', 'module', 90, 0),
('58c4108a-e2c0-3437-4d3f-5301cf7c6433', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'import', 'jjwg_Maps', 'module', 90, 0),
('59577764-0596-40f1-e059-5301cf6e9807', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'edit', 'Prospects', 'module', 90, 0),
('59e24de6-64a0-8f98-03ff-5301cfe5d8fe', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'delete', 'Documents', 'module', 90, 0),
('5b514fab-453b-b378-dbb2-5301cf334c6d', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'delete', 'Project', 'module', 90, 0),
('5ba831f8-00ff-c1dd-00cb-5301cf493a8c', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'list', 'Opportunities', 'module', 90, 0),
('5d0285f1-a483-b22c-b3ec-5301cf767c6c', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'view', 'EmailMarketing', 'module', 90, 0),
('5d673d46-e948-b2a0-3d21-5301d98045ab', '2014-02-17 09:44:11', '2014-02-17 09:44:11', '1', '1', 'export', 'fact_Facturas', 'module', 90, 0),
('5dc4380a-e297-9bb9-948a-5301cf81f212', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'list', 'Notes', 'module', 90, 0),
('5fc5416a-8df9-d6d0-fffd-5301cf9448dc', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'import', 'jjwg_Address_Cache', 'module', 90, 0),
('5ffdc718-2e77-c293-4600-5301cfff9c77', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'export', 'EAPM', 'module', 90, 0),
('603145ea-1517-dbfb-1137-5301cf7f1b13', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'delete', 'AOS_Quotes', 'module', 90, 0),
('60fcba69-744e-1c3e-e43a-5301cfb59081', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'export', 'Contacts', 'module', 90, 0),
('618a87cd-eb6c-9e77-77b8-5301cf3411eb', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'list', 'SecurityGroups', 'module', 90, 0),
('62c8a6db-477b-f2f3-62a2-5301cfe76d2b', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'delete', 'AOS_Product_Categories', 'module', 90, 0),
('6332e6b1-3df5-a468-d800-5301cf617e60', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'massupdate', 'Calls', 'module', 90, 0),
('64abc8fd-e464-85ab-c803-5301cf2156ae', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'access', 'ProjectTask', 'module', 89, 0),
('64e79617-d3e7-5ab8-6d4c-5301cf47796a', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'view', 'AOS_PDF_Templates', 'module', 90, 0),
('64e872a1-6894-c257-7691-5301cf58ef76', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'list', 'AOS_Products', 'module', 90, 0),
('64f43eac-bc90-747e-62d5-5301cfae644f', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'export', 'jjwg_Maps', 'module', 90, 0),
('65984b0a-32db-71b4-8164-5301cf85b96e', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'delete', 'Prospects', 'module', 90, 0),
('6617f065-51e6-ba57-2df0-5301cfcad910', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'import', 'Documents', 'module', 90, 0),
('66bed934-c9a0-05b8-42df-5301d937adf9', '2014-02-17 09:44:11', '2014-02-17 09:44:11', '1', '1', 'massupdate', 'fact_Facturas', 'module', 90, 0),
('682d40a2-264f-8dda-e39e-5301cfbe9917', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'edit', 'Opportunities', 'module', 90, 0),
('691fa53e-2757-92c5-4335-5301cf62da4c', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'list', 'EmailMarketing', 'module', 90, 0),
('697d423e-ef39-69d8-eb1f-5301cf798550', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'import', 'Project', 'module', 90, 0),
('69c40dfd-bb0b-2d12-333e-5301cf0317b9', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'edit', 'jjwg_Markers', 'module', 90, 0),
('6a605297-c883-d342-02fc-5301cfb0ee77', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'access', 'AOR_Reports', 'module', 89, 0),
('6b9b9a8e-9354-8850-51e1-5301cf8b6c6d', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'edit', 'SecurityGroups', 'module', 90, 0),
('6b9bbbc7-27ca-7a61-5c8b-5301cf056ab2', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'massupdate', 'EAPM', 'module', 90, 0),
('6c14d07c-7921-48f4-7c64-5301cfd23854', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'edit', 'Notes', 'module', 90, 0),
('6c5c2d5a-ec12-5fd3-4daf-5301cf5c4780', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'export', 'jjwg_Address_Cache', 'module', 90, 0),
('6d30f803-259f-f58b-15fb-5301cfb735fd', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'import', 'AOS_Quotes', 'module', 90, 0),
('6d396d17-b5a9-9b1b-7fb3-5301cf746a7b', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'massupdate', 'Contacts', 'module', 90, 0),
('6e765697-5417-302e-740e-5301cf38e643', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'access', 'Calls_Reschedule', 'module', 89, 0),
('6fdc061f-3048-4ac1-3e20-5301cfe9a93b', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'view', 'ProjectTask', 'module', 90, 0),
('706e39a7-8d95-5d47-ab6a-5301cf8b87e2', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'access', 'AOW_WorkFlow', 'module', 89, 0),
('7139ab41-0f04-1688-1f62-5301cfb40729', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'import', 'jjwg_Areas', 'module', 90, 0),
('7163e201-b9e6-adac-48e1-5301cfd8de79', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'massupdate', 'jjwg_Maps', 'module', 90, 0),
('71bc5a7d-f5c9-e41a-1be2-5301cf0a265d', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'import', 'Prospects', 'module', 90, 0),
('72b272a8-9a2b-b028-c131-5301cf80c4d3', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'import', 'AOS_Product_Categories', 'module', 90, 0),
('73158ba0-bdc8-bf3a-82d8-5301cf1f7de4', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'edit', 'AOS_Products', 'module', 90, 0),
('7489e496-78a6-1239-c5dc-5301cf22b90a', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'import', 'ProspectLists', 'module', 90, 0),
('753b28b3-1f48-1049-0589-5301cf9529d3', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'export', 'Documents', 'module', 90, 0),
('755c9813-5966-7b47-2e27-5301cf4ea9ef', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'edit', 'EmailMarketing', 'module', 90, 0),
('75ab63f7-dd5c-67f6-c78a-5301cff77a1d', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'export', 'Project', 'module', 90, 0),
('763a1dea-16d2-63e7-21eb-5301d9d96f60', '2014-02-17 09:44:11', '2014-02-17 09:44:11', '1', '1', 'export', 'fact_Items', 'module', 90, 0),
('76766bcd-214d-6bdf-fa41-5301cf87c250', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'access', 'Cases', 'module', 89, 0),
('76dd4688-ffca-f694-eaec-5301cf73ee3f', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'delete', 'Opportunities', 'module', 90, 0),
('76faf7db-92ce-f50a-4285-5301cf42ad46', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'view', 'AOR_Reports', 'module', 90, 0),
('77353108-c843-7958-33e0-5301cfc8dd0f', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'massupdate', 'jjwg_Address_Cache', 'module', 90, 0),
('797e1aec-2a0e-b1ce-1111-5301cf92f53c', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'delete', 'SecurityGroups', 'module', 90, 0),
('7baefbe2-92c7-697b-9c17-5301cf478ddc', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'view', 'Calls_Reschedule', 'module', 90, 0),
('7bf558b2-3672-840b-9c16-5301cfad2b01', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'list', 'ProjectTask', 'module', 90, 0),
('7cb35f17-454c-ca86-d0d7-5301cf329d97', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'list', 'AOS_PDF_Templates', 'module', 90, 0),
('7d4f3756-72dc-7ed6-3060-5301cf36802b', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'import', 'AOS_Invoices', 'module', 90, 0),
('7dff59d2-5f80-af9c-5327-5301cfeb6cfe', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'export', 'Prospects', 'module', 90, 0),
('7f50f56a-a7b5-280d-3e90-5301cf65ef53', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'view', 'AOW_WorkFlow', 'module', 90, 0),
('802c4151-e3aa-8e0d-06d8-5301cfa32e4f', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'delete', 'Notes', 'module', 90, 0),
('81617256-4f2c-c668-29b4-5301cfef81a8', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'delete', 'AOS_Products', 'module', 90, 0),
('819286c8-733c-817d-da07-5301cff762cd', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'delete', 'EmailMarketing', 'module', 90, 0),
('8216604c-b8f7-1769-ab31-5301cf602119', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'massupdate', 'Project', 'module', 90, 0),
('8257b691-9124-0bf9-1b07-5301cf86ef2c', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'import', 'Opportunities', 'module', 90, 0),
('83a7dff6-9e55-dab0-18c0-5301cfe53e26', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'list', 'AOR_Reports', 'module', 90, 0),
('83eac878-fd19-c38e-3c2f-5301cf3bc9ef', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'view', 'Cases', 'module', 90, 0),
('85880a83-2d67-9988-1dbd-5301cf29083f', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'massupdate', 'Documents', 'module', 90, 0),
('8769732e-376f-cd17-19b8-5301cf64e31e', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'edit', 'AOS_PDF_Templates', 'module', 90, 0),
('8861aeb8-4596-d925-8178-5301cfa6c303', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'list', 'Emails', 'module', 90, 0),
('890121f3-19e3-101f-77b0-5301cf5cbe39', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'list', 'Calls_Reschedule', 'module', 90, 0),
('89275727-674c-b1b2-96b5-5301cf4ac30e', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'import', 'SecurityGroups', 'module', 90, 0),
('8a282b0d-160c-eebc-46ca-5301cf12853d', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'massupdate', 'Prospects', 'module', 90, 0),
('8a7e6b31-9f1d-9707-a4eb-5301cf7de10f', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'import', 'Notes', 'module', 90, 0),
('8ad600f5-8ad8-5297-5159-5301cf9bb3d5', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'massupdate', 'AOP_Case_Updates', 'module', 90, 0),
('8bbbee98-b814-6312-ace5-5301cf549926', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'export', 'AOS_Product_Categories', 'module', 90, 0),
('8c2012ed-640a-9832-ef29-5301cffcb610', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'edit', 'ProjectTask', 'module', 90, 0),
('8d4f5d36-2916-b2a9-f4a2-5301cfb898d0', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'list', 'AOW_WorkFlow', 'module', 90, 0),
('8dc40776-1036-c44d-b6be-5301cf43b58a', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'import', 'EmailMarketing', 'module', 90, 0),
('8f4b4791-e64a-004a-4a74-5301cf073d6a', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'import', 'AOS_Products', 'module', 90, 0),
('8fdf9fdb-9d43-6949-6891-5301cf0fcf5a', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'edit', 'AOR_Reports', 'module', 90, 0),
('900b947a-7896-b054-9728-5301cf49fd8b', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'list', 'Cases', 'module', 90, 0),
('9095ac62-f7e8-d0df-9fc3-5301cf78fad5', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'export', 'Opportunities', 'module', 90, 0),
('90b3b7ae-fb01-fe5b-e381-5301cf12442b', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'access', 'FP_events', 'module', 89, 0),
('916454fc-1893-5903-3deb-5301cf98a950', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'export', 'AOS_Invoices', 'module', 90, 0),
('91b49a70-3de0-2048-4d26-5301cf57a90d', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'access', 'Accounts', 'module', 89, 0),
('958e212d-8a91-d77e-12aa-5301cfbf6e4b', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'delete', 'AOS_PDF_Templates', 'module', 90, 0),
('95f8a1c3-1954-a7f3-f941-5301cf1415e2', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'access', 'Tasks', 'module', 89, 0),
('970df0f9-574a-bcb9-075c-5301cfcc0fa9', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'access', 'AOS_Invoices', 'module', 89, 0),
('97cb91dc-5ee2-cf39-d1a2-5301cf6911c0', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'edit', 'Calls_Reschedule', 'module', 90, 0),
('98b4e7b0-7030-a6ba-62bc-5301cf95c386', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'export', 'Notes', 'module', 90, 0),
('99105d80-12b3-8355-e192-5301cf7b2e9d', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'access', 'Bugs', 'module', 89, 0),
('99432f7c-7b03-7ce8-7dbc-5301cfb6f1e5', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'export', 'AOS_Quotes', 'module', 90, 0),
('99876139-02a9-308c-e569-5301cff9293c', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'edit', 'AOW_WorkFlow', 'module', 90, 0),
('99ae5951-c9ba-4862-ce60-5301cfb8ebde', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'massupdate', 'AOS_Product_Categories', 'module', 90, 0),
('99f3f7f3-43ad-2c7f-53fa-5301cf2b92cf', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'export', 'EmailMarketing', 'module', 90, 0),
('9a308ac9-bdcc-db46-3cf0-5301cf1eb1df', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'massupdate', 'Opportunities', 'module', 90, 0),
('9a539de3-f3bb-a458-c37f-5301cfb8ccbf', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'delete', 'ProjectTask', 'module', 90, 0),
('9a7a1261-a414-4ef3-12a6-5301cf575919', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'export', 'SecurityGroups', 'module', 90, 0),
('9b08fd96-fa73-ee3f-b191-5301cff93ebd', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'access', 'FP_Event_Locations', 'module', 89, 0),
('9c07e394-5114-ba18-31d6-5301cfa05bbd', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'export', 'AOS_Products', 'module', 90, 0),
('9c3c3b64-431a-9c9d-6dd7-5301cfc1b635', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'edit', 'Cases', 'module', 90, 0),
('9d8e96dd-7da5-9923-49be-5301cf25f5e3', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'delete', 'AOR_Reports', 'module', 90, 0),
('9dcc0abd-5d37-0e8e-17d7-5301cf94f7b8', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'list', 'Leads', 'module', 90, 0),
('9e5e506f-78b2-79d8-7a07-5301cff8036a', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'access', 'jjwg_Areas', 'module', 89, 0),
('9f385362-eb99-895d-c95a-5301cf2d6912', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'access', 'AOS_Contracts', 'module', 89, 0),
('9f5bf741-d6be-a5ae-d4d6-5301cfc9cc30', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'export', 'jjwg_Areas', 'module', 90, 0),
('a15674a8-7447-830f-63ec-5301cf8d1058', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'view', 'Accounts', 'module', 90, 0),
('a15cc1a3-620c-b123-c325-5301cfa589cf', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'access', 'Campaigns', 'module', 89, 0),
('a1cb0a77-91c0-e8c9-c19c-5301cfc55a2a', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'massupdate', 'AOS_Invoices', 'module', 90, 0),
('a1f08817-6099-1721-4a81-5301cf027edd', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'import', 'AOS_PDF_Templates', 'module', 90, 0),
('a2058d63-5041-d6fc-dfe3-5301d90170cd', '2014-02-17 09:44:11', '2014-02-17 09:44:11', '1', '1', 'access', 'fact_Items', 'module', 89, 0),
('a28607b4-a21c-b9f3-4d8a-5301cf402123', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'list', 'Users', 'module', 90, 0),
('a2fe8450-8538-8f16-f54f-5301cfce94de', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'view', 'FP_events', 'module', 90, 0),
('a401f731-0b4d-1179-e270-5301cfbde986', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'delete', 'Calls_Reschedule', 'module', 90, 0),
('a465a498-a8a7-a339-91ce-5301cf5df05d', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'massupdate', 'Notes', 'module', 90, 0),
('a55fd63f-b675-8f29-2e8e-5301cf1a4575', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'view', 'Tasks', 'module', 90, 0),
('a628068a-a4a8-e7fe-43a4-5301cfd70da4', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'massupdate', 'EmailMarketing', 'module', 90, 0),
('a6bc2654-02d3-726d-06eb-5301cf906b8e', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'view', 'Bugs', 'module', 90, 0),
('a7200651-ad7c-ca2a-4cae-5301cf987f68', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'access', 'AOP_Case_Updates', 'module', 89, 0),
('a7211ae7-3260-6f27-6e94-5301cfe5c6de', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'view', 'FP_Event_Locations', 'module', 90, 0),
('a7218f70-2500-32b6-1388-5301cf859a92', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'export', 'ProspectLists', 'module', 90, 0),
('a8735055-83db-e8fe-ebd6-5301cf36fe58', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'delete', 'Cases', 'module', 90, 0),
('a88c6c63-42e8-05b0-05cd-5301cf34d5e5', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'import', 'ProjectTask', 'module', 90, 0),
('a9ae7fd7-5dc6-54de-0ed9-5301cff2dcc0', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'import', 'AOR_Reports', 'module', 90, 0),
('aa082d1a-59c1-a663-ff05-5301cfa62789', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'massupdate', 'AOS_Products', 'module', 90, 0),
('aa2e2698-599e-b2a4-22e7-5301cf929fa2', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'view', 'AOS_Contracts', 'module', 90, 0),
('aafc22c8-7b66-6ad7-6933-5301cfbb85a7', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'massupdate', 'SecurityGroups', 'module', 90, 0),
('ab3490da-914a-bac6-12be-5301d91f5421', '2014-02-17 09:44:11', '2014-02-17 09:44:11', '1', '1', 'view', 'fact_Items', 'module', 90, 0),
('ab731bf9-9320-4dda-9fa6-5301cf036da9', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'access', 'EmailTemplates', 'module', 89, 0),
('ab7d9d6b-6fb3-7583-4c86-5301cf3f623e', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'delete', 'AOW_WorkFlow', 'module', 90, 0),
('ab996d27-7331-f087-2456-5301cf36447a', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'view', 'jjwg_Areas', 'module', 90, 0),
('ac189139-b23c-f19f-e98a-5301cf0af3e7', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'access', 'Contacts', 'module', 89, 0),
('ae2f4b8a-89d5-1bb8-0f1a-5301cf8943a2', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'massupdate', 'jjwg_Areas', 'module', 90, 0),
('ae421f5c-5b0f-6080-430d-5301cf0a548c', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'view', 'AOS_Invoices', 'module', 90, 0),
('ae9d17bc-ef2f-4a7b-48fd-5301cf603809', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'view', 'Campaigns', 'module', 90, 0),
('afa29ff5-f58a-384b-0a33-5301cf6034d6', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'access', 'AOW_Processed', 'module', 89, 0),
('b05cff03-96d6-c315-a163-5301cf62f0b8', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'export', 'AOS_PDF_Templates', 'module', 90, 0),
('b0f43a72-8f0a-e280-759e-5301cfb2744f', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'list', 'Accounts', 'module', 90, 0),
('b1afedd0-8630-8e5e-6b46-5301cfa9f129', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'list', 'FP_Event_Locations', 'module', 90, 0),
('b2274f2a-c6a2-5c57-55ae-5301cf5dd951', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'list', 'Bugs', 'module', 90, 0),
('b23af529-3bf4-53a7-83b4-5301cf8b5331', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'import', 'Calls_Reschedule', 'module', 90, 0),
('b3711285-aa1b-be60-10d6-5301cf5598ab', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'view', 'AOP_Case_Updates', 'module', 90, 0),
('b4aefeec-3f89-40d2-2427-5301cf8ebe50', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'import', 'Cases', 'module', 90, 0),
('b4c3c04b-8328-1513-f647-5301cf54b5b2', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'export', 'ProjectTask', 'module', 90, 0),
('b5273fcb-0b57-87da-71b7-5301d97e5659', '2014-02-17 09:44:11', '2014-02-17 09:44:11', '1', '1', 'list', 'fact_Items', 'module', 90, 0),
('b5478a8e-a1a5-6d58-5f78-5301cf1b9ed3', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'list', 'Tasks', 'module', 90, 0),
('b5ee804f-ef42-a958-6f85-5301cf4ff306', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'export', 'AOR_Reports', 'module', 90, 0),
('b61aec83-0c00-a8e0-76db-5301cff8fbed', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'list', 'FP_events', 'module', 90, 0),
('b62a721f-b25f-1cae-074c-5301cfe69139', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'edit', 'Emails', 'module', 90, 0),
('b7233feb-c7e6-3540-3887-5301cf159067', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'view', 'Contacts', 'module', 90, 0),
('b86ebfc8-bbce-fe18-0f9b-5301cfb17c38', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'list', 'AOS_Contracts', 'module', 90, 0),
('b8944c3a-d460-357a-3e18-5301cfa043d9', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'view', 'EmailTemplates', 'module', 90, 0),
('b8d0086a-2b21-23af-30e4-5301cf1b8286', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'massupdate', 'EmailTemplates', 'module', 90, 0),
('ba40dc61-f9d9-0780-137d-5301cffac908', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'list', 'Campaigns', 'module', 90, 0),
('baddb97b-86fa-4eee-e43a-5301cf8fa94d', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'list', 'jjwg_Areas', 'module', 90, 0),
('bc2d7a90-566b-d467-8063-5301cfcf9991', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'edit', 'FP_Event_Locations', 'module', 90, 0),
('bc41e0c7-c597-da13-4547-5301cf53c21e', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'massupdate', 'AOS_PDF_Templates', 'module', 90, 0),
('bcd46d2f-18cd-0f0d-19f7-5301cfca6193', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'view', 'AOW_Processed', 'module', 90, 0),
('bd203345-9b7d-2f6f-b1ae-5301cf0bd959', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'edit', 'Accounts', 'module', 90, 0),
('bd551cc0-b897-5482-deec-5301d98135b0', '2014-02-17 09:44:11', '2014-02-17 09:44:11', '1', '1', 'edit', 'fact_Items', 'module', 90, 0),
('be19661b-f7ab-376c-0550-5301cf55dffd', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'import', 'AOW_WorkFlow', 'module', 90, 0),
('be5a1bfd-8155-32b2-e4a9-5301cfc6fd64', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'list', 'AOP_Case_Updates', 'module', 90, 0),
('be5ba790-a921-3ada-adce-5301cf9c08cb', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'export', 'Calls_Reschedule', 'module', 90, 0),
('bf285520-cbd1-c4e4-0f63-5301cf8863f7', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'edit', 'Bugs', 'module', 90, 0),
('bffd5eb1-8a99-f7f8-dc76-5301cfc40d07', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'massupdate', 'AOS_Quotes', 'module', 90, 0),
('c0dcf407-0696-bab5-3d8c-5301cf95a45b', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'export', 'Cases', 'module', 90, 0),
('c10009ab-845a-8fbc-3187-5301cfa7abce', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'massupdate', 'ProjectTask', 'module', 90, 0),
('c10034aa-9f83-2b03-1693-5301cf92955c', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'massupdate', 'ProspectLists', 'module', 90, 0),
('c1711994-2933-dca3-81ad-5301cffbc1a9', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'edit', 'Tasks', 'module', 90, 0),
('c1a41303-7a69-79de-8f71-5301cfd6fc88', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'access', 'Meetings', 'module', 89, 0),
('c43815b2-3198-f24c-7c5c-5301cf43fa7f', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'list', 'EmailTemplates', 'module', 90, 0),
('c458fdaf-47a4-9d31-3b5e-5301cf12e339', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'massupdate', 'AOR_Reports', 'module', 90, 0),
('c49cd972-f15a-7258-b3e2-5301cf3c0730', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'edit', 'Campaigns', 'module', 90, 0),
('c553beff-01c2-321f-f97b-5301cf9592c6', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'delete', 'Emails', 'module', 90, 0),
('c5e787fe-2fc4-13f6-a91e-5301cfcb7c1d', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'access', 'Emails', 'module', 89, 0),
('c67dbe6c-ab1f-3eb6-d941-5301cfe375be', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'delete', 'FP_Event_Locations', 'module', 90, 0),
('c7feda3c-4703-fbe9-79cb-5301cf919299', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'access', 'ProspectLists', 'module', 89, 0),
('c916093d-9d79-aa0a-a375-5301cf71d058', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'edit', 'jjwg_Areas', 'module', 90, 0),
('c9208e66-8a21-192c-70be-5301cfd84809', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'access', 'AOP_Case_Events', 'module', 89, 0),
('cad4de76-41af-7bc3-c3c5-5301cf5f1b03', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'delete', 'Bugs', 'module', 90, 0),
('cbf4173a-47f6-fe24-2f80-5301cfce5d8a', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'edit', 'AOP_Case_Updates', 'module', 90, 0),
('cc64060f-1310-3605-38e8-5301cf237f2c', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'export', 'Tasks', 'module', 90, 0),
('cca2d941-56e7-beeb-5e7e-5301cf0ec8ba', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'delete', 'Accounts', 'module', 90, 0),
('ccd9c844-a18d-ae86-36c0-5301cf2eb0c4', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'edit', 'AOS_Contracts', 'module', 90, 0),
('cd0a8dbc-5138-6605-92f4-5301cf07000a', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'massupdate', 'Cases', 'module', 90, 0),
('cdc6c8df-96d7-9ede-b3e8-5301cfcc8e04', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'delete', 'Tasks', 'module', 90, 0),
('cde38b23-8ebb-74c8-c68c-5301cf126db5', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'massupdate', 'Calls_Reschedule', 'module', 90, 0),
('ce2f5ab2-b0eb-db37-4393-5301cff155ed', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'edit', 'FP_events', 'module', 90, 0),
('ce49b0f6-0dd6-1e16-d5ca-5301cf0d1a9b', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'edit', 'EmailTemplates', 'module', 90, 0),
('cea5dd73-5867-6cb1-82e8-5301cfb505ee', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'export', 'AOW_WorkFlow', 'module', 90, 0),
('cedfb443-5a03-4826-b2b2-5301cf1fa12b', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'delete', 'Campaigns', 'module', 90, 0),
('cef8e088-2d8c-1997-2a28-5301cfff7e95', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'view', 'Meetings', 'module', 90, 0),
('cfc864ef-b943-e938-7ae6-5301d944736e', '2014-02-17 09:44:11', '2014-02-17 09:44:11', '1', '1', 'delete', 'fact_Items', 'module', 90, 0),
('d2b7c41c-f5cb-4a4a-abc7-5301cfafde62', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'list', 'AOW_Processed', 'module', 90, 0),
('d3813a1a-182e-2ec8-4476-5301cfb69bfe', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'view', 'ProspectLists', 'module', 90, 0),
('d48eaa22-6fcd-5962-1ae8-5301cfe023f0', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'view', 'AOP_Case_Events', 'module', 90, 0),
('d54b0855-0021-02f3-aa97-5301cf397bd9', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'access', 'jjwg_Markers', 'module', 89, 0),
('d5ad0111-d47e-99d9-03b7-5301cf70204b', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'import', 'AOW_Processed', 'module', 90, 0),
('d65c97ba-a255-d3ae-f597-5301cf619f9b', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'import', 'FP_Event_Locations', 'module', 90, 0),
('d8309134-7794-6326-506a-5301cfc2c238', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'delete', 'AOP_Case_Updates', 'module', 90, 0),
('da782c7e-d0bf-9e02-27bb-5301cf375523', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'delete', 'EmailTemplates', 'module', 90, 0),
('db0c4169-52f3-eec7-bfab-5301cf2e7b6d', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'list', 'Meetings', 'module', 90, 0),
('db10eb59-1bd7-e7d6-0731-5301cf495e6c', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'import', 'Campaigns', 'module', 90, 0),
('ddb1f3fd-a27b-e171-3623-5301cf9374df', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'import', 'Emails', 'module', 90, 0),
('deeb8935-c53f-58e9-4d5b-5301cff2fe13', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'edit', 'AOW_Processed', 'module', 90, 0),
('e0954293-2d3d-210f-123a-5301cfaf1981', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'view', 'jjwg_Markers', 'module', 90, 0),
('e2a7d38b-7b94-221b-b797-5301cfbf1e5a', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'export', 'FP_Event_Locations', 'module', 90, 0),
('e2b36758-a998-1798-dfe9-5301cfff0ed9', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'access', 'Leads', 'module', 89, 0),
('e452f7c1-0e41-a2f3-8452-5301cf854796', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'import', 'AOP_Case_Updates', 'module', 90, 0),
('e5976d91-3c87-f9dd-8af9-5301cf04eb81', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'import', 'EmailTemplates', 'module', 90, 0),
('e5b70304-9770-4fef-9fa3-5301cfcd7f59', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'massupdate', 'AOW_WorkFlow', 'module', 90, 0),
('e6ce4826-733c-f5bd-94ce-5301cf93b083', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'access', 'Users', 'module', 89, 0),
('e7453c15-b2d4-fca4-c32a-5301cf4f8c30', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'export', 'Campaigns', 'module', 90, 0),
('e7d90438-b39f-4086-9ee0-5301cfb586a1', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'import', 'Meetings', 'module', 90, 0),
('e82ba40d-c7d5-0f8e-025c-5301cfa3e06b', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'edit', 'Meetings', 'module', 90, 0),
('ecd50bad-9037-730b-fc02-5301cf0fd1fb', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'access', 'Calls', 'module', 89, 0),
('ee723e2d-f883-5135-ba27-5301cf54fb29', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'list', 'jjwg_Markers', 'module', 90, 0),
('ef40650c-aa63-c153-865b-5301cf162cf7', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'import', 'Bugs', 'module', 90, 0),
('efd9f9a4-b8ca-712d-6373-5301cf6bfb2d', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'view', 'Leads', 'module', 90, 0),
('f0955ac2-3034-616a-f6ad-5301cf28bed8', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'export', 'AOP_Case_Updates', 'module', 90, 0),
('f1070a3b-ba59-e909-3803-5301cf2d7786', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'massupdate', 'FP_Event_Locations', 'module', 90, 0),
('f1f4da1d-f51d-fb89-85f2-5301cf31e5a0', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'view', 'Users', 'module', 90, 0),
('f37361f0-f696-d2b0-0dc0-5301cfa71346', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'delete', 'Meetings', 'module', 90, 0),
('f37b7348-eb76-03e0-1ae2-5301cff5aa25', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'massupdate', 'Campaigns', 'module', 90, 0),
('f3936720-fba8-92b0-1232-5301cfced4c5', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '', 'export', 'EmailTemplates', 'module', 90, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acl_roles`
--

CREATE TABLE IF NOT EXISTS `acl_roles` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aclrole_id_del` (`id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acl_roles_actions`
--

CREATE TABLE IF NOT EXISTS `acl_roles_actions` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `action_id` varchar(36) DEFAULT NULL,
  `access_override` int(3) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_acl_role_id` (`role_id`),
  KEY `idx_acl_action_id` (`action_id`),
  KEY `idx_aclrole_action` (`role_id`,`action_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acl_roles_users`
--

CREATE TABLE IF NOT EXISTS `acl_roles_users` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_aclrole_id` (`role_id`),
  KEY `idx_acluser_id` (`user_id`),
  KEY `idx_aclrole_user` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `address_book`
--

CREATE TABLE IF NOT EXISTS `address_book` (
  `assigned_user_id` char(36) NOT NULL,
  `bean` varchar(50) DEFAULT NULL,
  `bean_id` char(36) NOT NULL,
  KEY `ab_user_bean_idx` (`assigned_user_id`,`bean`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aop_case_events`
--

CREATE TABLE IF NOT EXISTS `aop_case_events` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aop_case_events_audit`
--

CREATE TABLE IF NOT EXISTS `aop_case_events_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aop_case_events_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aop_case_updates`
--

CREATE TABLE IF NOT EXISTS `aop_case_updates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `internal` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aop_case_updates_audit`
--

CREATE TABLE IF NOT EXISTS `aop_case_updates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aop_case_updates_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aor_charts`
--

CREATE TABLE IF NOT EXISTS `aor_charts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aor_conditions`
--

CREATE TABLE IF NOT EXISTS `aor_conditions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aor_report_id` char(36) DEFAULT NULL,
  `condition_order` int(255) DEFAULT NULL,
  `module_path` longtext,
  `field` varchar(100) DEFAULT NULL,
  `operator` varchar(100) DEFAULT NULL,
  `value_type` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aor_conditions_index_report_id` (`aor_report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aor_fields`
--

CREATE TABLE IF NOT EXISTS `aor_fields` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aor_report_id` char(36) DEFAULT NULL,
  `field_order` int(255) DEFAULT NULL,
  `module_path` longtext,
  `field` varchar(100) DEFAULT NULL,
  `display` tinyint(1) DEFAULT NULL,
  `link` tinyint(1) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `field_function` varchar(100) DEFAULT NULL,
  `sort_by` varchar(100) DEFAULT NULL,
  `sort_order` varchar(100) DEFAULT NULL,
  `group_by` varchar(100) DEFAULT NULL,
  `group_order` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aor_fields_index_report_id` (`aor_report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aor_reports`
--

CREATE TABLE IF NOT EXISTS `aor_reports` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `report_module` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aor_reports_audit`
--

CREATE TABLE IF NOT EXISTS `aor_reports_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aor_reports_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aos_contracts`
--

CREATE TABLE IF NOT EXISTS `aos_contracts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `reference_code` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `total_contract_value` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `customer_signed_date` date DEFAULT NULL,
  `company_signed_date` date DEFAULT NULL,
  `renewal_reminder_date` datetime DEFAULT NULL,
  `contract_type` varchar(100) DEFAULT 'Type',
  `contract_account_id` char(36) DEFAULT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `call_id` char(36) DEFAULT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aos_contracts_audit`
--

CREATE TABLE IF NOT EXISTS `aos_contracts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_contracts_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aos_contracts_documents`
--

CREATE TABLE IF NOT EXISTS `aos_contracts_documents` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_contracts_id` varchar(36) DEFAULT NULL,
  `documents_id` varchar(36) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aos_contracts_documents_alt` (`aos_contracts_id`,`documents_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aos_invoices`
--

CREATE TABLE IF NOT EXISTS `aos_invoices` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `billing_account_id` char(36) DEFAULT NULL,
  `billing_contact_id` char(36) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `number` int(11) NOT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `quote_number` int(11) DEFAULT NULL,
  `quote_date` date DEFAULT NULL,
  `invoice_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `template_ddown_c` text,
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `aos_invoices`
--

INSERT INTO `aos_invoices` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `billing_account_id`, `billing_contact_id`, `billing_address_street`, `billing_address_city`, `billing_address_state`, `billing_address_postalcode`, `billing_address_country`, `shipping_address_street`, `shipping_address_city`, `shipping_address_state`, `shipping_address_postalcode`, `shipping_address_country`, `number`, `total_amt`, `subtotal_amount`, `discount_amount`, `tax_amount`, `shipping_amount`, `shipping_tax`, `shipping_tax_amt`, `total_amount`, `currency_id`, `quote_number`, `quote_date`, `invoice_date`, `due_date`, `status`, `template_ddown_c`, `subtotal_tax_amount`) VALUES
('2b0aa908-ab02-bfee-133c-5301f34264bc', 'Factura de prueba', '2014-02-17 11:32:37', '2014-02-17 11:32:37', '1', '1', '', 0, '1', '1101a5eb-e983-f6ea-43eb-52987537a6da', 'ef5151a9-9e4b-5fb4-39f3-5301f2aa0841', '123 Anywhere Street', 'Ohio', 'CA', '23578', 'USA', '123 Anywhere Street', 'Ohio', 'CA', '23578', 'USA', 1, '135.000000', '125.000000', '10.000000', '2.000000', '1.000000', '20.0', '2.000000', '3.000000', '-99', 1, '2014-02-17', '2014-02-17', '2014-03-26', 'Unpaid', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aos_invoices_audit`
--

CREATE TABLE IF NOT EXISTS `aos_invoices_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_invoices_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aos_line_item_groups`
--

CREATE TABLE IF NOT EXISTS `aos_line_item_groups` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aos_line_item_groups_audit`
--

CREATE TABLE IF NOT EXISTS `aos_line_item_groups_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_line_item_groups_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aos_pdf_templates`
--

CREATE TABLE IF NOT EXISTS `aos_pdf_templates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `type` varchar(100) DEFAULT NULL,
  `pdfheader` text,
  `pdffooter` text,
  `margin_left` int(255) DEFAULT '15',
  `margin_right` int(255) DEFAULT '15',
  `margin_top` int(255) DEFAULT '16',
  `margin_bottom` int(255) DEFAULT '16',
  `margin_header` int(255) DEFAULT '9',
  `margin_footer` int(255) DEFAULT '9',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aos_pdf_templates_audit`
--

CREATE TABLE IF NOT EXISTS `aos_pdf_templates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_pdf_templates_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aos_products`
--

CREATE TABLE IF NOT EXISTS `aos_products` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `maincode` varchar(100) DEFAULT 'XXXX',
  `part_number` varchar(25) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT 'Good',
  `cost` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `price` decimal(26,6) DEFAULT NULL,
  `url` varchar(25) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `aos_product_category_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aos_products_audit`
--

CREATE TABLE IF NOT EXISTS `aos_products_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_products_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aos_products_quotes`
--

CREATE TABLE IF NOT EXISTS `aos_products_quotes` (
  `id` char(36) NOT NULL,
  `name` text,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `part_number` varchar(255) DEFAULT NULL,
  `item_description` text,
  `number` int(11) DEFAULT NULL,
  `product_qty` decimal(18,4) DEFAULT NULL,
  `product_cost_price` decimal(26,6) DEFAULT NULL,
  `product_list_price` decimal(26,6) DEFAULT NULL,
  `product_discount` decimal(26,6) DEFAULT NULL,
  `product_discount_amount` decimal(26,6) DEFAULT NULL,
  `discount` varchar(255) DEFAULT 'Percentage',
  `product_unit_price` decimal(26,6) DEFAULT NULL,
  `vat_amt` decimal(26,6) DEFAULT NULL,
  `product_total_price` decimal(26,6) DEFAULT NULL,
  `vat` varchar(100) DEFAULT '5.0',
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `product_id` char(36) DEFAULT NULL,
  `group_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aospq_par_del` (`parent_id`,`parent_type`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aos_products_quotes_audit`
--

CREATE TABLE IF NOT EXISTS `aos_products_quotes_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_products_quotes_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aos_product_categories`
--

CREATE TABLE IF NOT EXISTS `aos_product_categories` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_parent` tinyint(1) DEFAULT '0',
  `parent_category_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aos_product_categories_audit`
--

CREATE TABLE IF NOT EXISTS `aos_product_categories_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_product_categories_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aos_quotes`
--

CREATE TABLE IF NOT EXISTS `aos_quotes` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `approval_issue` text,
  `billing_account_id` char(36) DEFAULT NULL,
  `billing_contact_id` char(36) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `expiration` date DEFAULT NULL,
  `number` int(11) NOT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `template_ddown_c` text,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `stage` varchar(100) DEFAULT 'Draft',
  `term` varchar(100) DEFAULT NULL,
  `terms_c` text,
  `approval_status` varchar(100) DEFAULT NULL,
  `invoice_status` varchar(100) DEFAULT 'Not Invoiced',
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `aos_quotes`
--

INSERT INTO `aos_quotes` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `approval_issue`, `billing_account_id`, `billing_contact_id`, `billing_address_street`, `billing_address_city`, `billing_address_state`, `billing_address_postalcode`, `billing_address_country`, `shipping_address_street`, `shipping_address_city`, `shipping_address_state`, `shipping_address_postalcode`, `shipping_address_country`, `expiration`, `number`, `opportunity_id`, `template_ddown_c`, `total_amt`, `subtotal_amount`, `discount_amount`, `tax_amount`, `shipping_amount`, `shipping_tax`, `shipping_tax_amt`, `total_amount`, `currency_id`, `stage`, `term`, `terms_c`, `approval_status`, `invoice_status`, `subtotal_tax_amount`) VALUES
('e0fc355b-40e5-dffd-b6c8-5301f3bbf2f5', 'Factura de prueba', '2014-02-17 11:33:15', '2014-02-17 11:33:15', '1', '1', NULL, 0, '1', '', '1101a5eb-e983-f6ea-43eb-52987537a6da', 'ef5151a9-9e4b-5fb4-39f3-5301f2aa0841', '123 Anywhere Street', 'Ohio', 'CA', '23578', 'USA', '123 Anywhere Street', 'Ohio', 'CA', '23578', 'USA', '2014-03-17', 1, '', NULL, '135.000000', '125.000000', '10.000000', '1.600000', '1.000000', '16.0', '1.600000', '2.600000', '-99', 'Draft', 'Net 15', NULL, 'Approved', 'Not Invoiced', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aos_quotes_aos_invoices_c`
--

CREATE TABLE IF NOT EXISTS `aos_quotes_aos_invoices_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_quotes77d9_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes6b83nvoices_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aos_quotes_aos_invoices_alt` (`aos_quotes77d9_quotes_ida`,`aos_quotes6b83nvoices_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `aos_quotes_aos_invoices_c`
--

INSERT INTO `aos_quotes_aos_invoices_c` (`id`, `date_modified`, `deleted`, `aos_quotes77d9_quotes_ida`, `aos_quotes6b83nvoices_idb`) VALUES
('e6f7c3f8-c7f1-708a-5c06-5301f3718f97', '2014-02-17 11:33:15', 0, 'e0fc355b-40e5-dffd-b6c8-5301f3bbf2f5', '2b0aa908-ab02-bfee-133c-5301f34264bc');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aos_quotes_audit`
--

CREATE TABLE IF NOT EXISTS `aos_quotes_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_quotes_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aos_quotes_os_contracts_c`
--

CREATE TABLE IF NOT EXISTS `aos_quotes_os_contracts_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_quotese81e_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes4dc0ntracts_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aos_quotes_aos_contracts_alt` (`aos_quotese81e_quotes_ida`,`aos_quotes4dc0ntracts_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aos_quotes_project_c`
--

CREATE TABLE IF NOT EXISTS `aos_quotes_project_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_quotes1112_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes7207project_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aos_quotes_project_alt` (`aos_quotes1112_quotes_ida`,`aos_quotes7207project_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aow_actions`
--

CREATE TABLE IF NOT EXISTS `aow_actions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aow_workflow_id` char(36) DEFAULT NULL,
  `action_order` int(255) DEFAULT NULL,
  `action` varchar(100) DEFAULT NULL,
  `parameters` longtext,
  PRIMARY KEY (`id`),
  KEY `aow_action_index_workflow_id` (`aow_workflow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aow_conditions`
--

CREATE TABLE IF NOT EXISTS `aow_conditions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aow_workflow_id` char(36) DEFAULT NULL,
  `condition_order` int(255) DEFAULT NULL,
  `field` varchar(100) DEFAULT NULL,
  `operator` varchar(100) DEFAULT NULL,
  `value_type` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aow_conditions_index_workflow_id` (`aow_workflow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aow_processed`
--

CREATE TABLE IF NOT EXISTS `aow_processed` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aow_workflow_id` char(36) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Pending',
  PRIMARY KEY (`id`),
  KEY `aow_processed_index_status` (`status`),
  KEY `aow_processed_index_workflow_id` (`aow_workflow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aow_processed_aow_actions`
--

CREATE TABLE IF NOT EXISTS `aow_processed_aow_actions` (
  `id` varchar(36) NOT NULL,
  `aow_processed_id` varchar(36) DEFAULT NULL,
  `aow_action_id` varchar(36) DEFAULT NULL,
  `status` varchar(36) DEFAULT 'Pending',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_aow_processed_aow_actions` (`aow_processed_id`,`aow_action_id`),
  KEY `idx_actid_del_freid` (`aow_action_id`,`deleted`,`aow_processed_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aow_workflow`
--

CREATE TABLE IF NOT EXISTS `aow_workflow` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `flow_module` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Active',
  `run_when` varchar(100) DEFAULT 'Create',
  `multiple_runs` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `aow_workflow_index_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aow_workflow_audit`
--

CREATE TABLE IF NOT EXISTS `aow_workflow_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aow_workflow_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bugs`
--

CREATE TABLE IF NOT EXISTS `bugs` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `bug_number` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  `resolution` varchar(255) DEFAULT NULL,
  `work_log` text,
  `found_in_release` varchar(255) DEFAULT NULL,
  `fixed_in_release` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `product_category` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bugsnumk` (`bug_number`),
  KEY `bug_number` (`bug_number`),
  KEY `idx_bug_name` (`name`),
  KEY `idx_bugs_assigned_user` (`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bugs_audit`
--

CREATE TABLE IF NOT EXISTS `bugs_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_bugs_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calls`
--

CREATE TABLE IF NOT EXISTS `calls` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `duration_hours` int(2) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Planned',
  `direction` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `reminder_time` int(11) DEFAULT '-1',
  `email_reminder_time` int(11) DEFAULT '-1',
  `email_reminder_sent` tinyint(1) DEFAULT '0',
  `outlook_id` varchar(255) DEFAULT NULL,
  `repeat_type` varchar(36) DEFAULT NULL,
  `repeat_interval` int(3) DEFAULT '1',
  `repeat_dow` varchar(7) DEFAULT NULL,
  `repeat_until` date DEFAULT NULL,
  `repeat_count` int(7) DEFAULT NULL,
  `repeat_parent_id` char(36) DEFAULT NULL,
  `recurring_source` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_call_name` (`name`),
  KEY `idx_status` (`status`),
  KEY `idx_calls_date_start` (`date_start`),
  KEY `idx_calls_par_del` (`parent_id`,`parent_type`,`deleted`),
  KEY `idx_calls_assigned_del` (`deleted`,`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calls_contacts`
--

CREATE TABLE IF NOT EXISTS `calls_contacts` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_call_call` (`call_id`),
  KEY `idx_con_call_con` (`contact_id`),
  KEY `idx_call_contact` (`call_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calls_leads`
--

CREATE TABLE IF NOT EXISTS `calls_leads` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `lead_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_lead_call_call` (`call_id`),
  KEY `idx_lead_call_lead` (`lead_id`),
  KEY `idx_call_lead` (`call_id`,`lead_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calls_reschedule`
--

CREATE TABLE IF NOT EXISTS `calls_reschedule` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `reason` varchar(100) DEFAULT NULL,
  `call_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calls_reschedule_audit`
--

CREATE TABLE IF NOT EXISTS `calls_reschedule_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_calls_reschedule_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calls_users`
--

CREATE TABLE IF NOT EXISTS `calls_users` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_usr_call_call` (`call_id`),
  KEY `idx_usr_call_usr` (`user_id`),
  KEY `idx_call_users` (`call_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `campaigns`
--

CREATE TABLE IF NOT EXISTS `campaigns` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `tracker_key` int(11) NOT NULL AUTO_INCREMENT,
  `tracker_count` int(11) DEFAULT '0',
  `refer_url` varchar(255) DEFAULT 'http://',
  `tracker_text` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `impressions` int(11) DEFAULT '0',
  `currency_id` char(36) DEFAULT NULL,
  `budget` double DEFAULT NULL,
  `expected_cost` double DEFAULT NULL,
  `actual_cost` double DEFAULT NULL,
  `expected_revenue` double DEFAULT NULL,
  `campaign_type` varchar(100) DEFAULT NULL,
  `objective` text,
  `content` text,
  `frequency` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `camp_auto_tracker_key` (`tracker_key`),
  KEY `idx_campaign_name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `campaigns`
--

INSERT INTO `campaigns` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `deleted`, `assigned_user_id`, `tracker_key`, `tracker_count`, `refer_url`, `tracker_text`, `start_date`, `end_date`, `status`, `impressions`, `currency_id`, `budget`, `expected_cost`, `actual_cost`, `expected_revenue`, `campaign_type`, `objective`, `content`, `frequency`) VALUES
('3bca8af3-3436-26da-97ff-53071f58a470', 'pljaksdf', '2014-02-21 09:41:38', '2014-02-21 09:41:38', '1', '1', 0, '1', 1, 0, 'http://', NULL, '2014-02-21', '2014-02-28', 'Planning', 0, '-99', NULL, NULL, NULL, NULL, 'Email', NULL, NULL, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `campaigns_audit`
--

CREATE TABLE IF NOT EXISTS `campaigns_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_campaigns_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `campaign_log`
--

CREATE TABLE IF NOT EXISTS `campaign_log` (
  `id` char(36) NOT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `target_tracker_key` varchar(36) DEFAULT NULL,
  `target_id` varchar(36) DEFAULT NULL,
  `target_type` varchar(100) DEFAULT NULL,
  `activity_type` varchar(100) DEFAULT NULL,
  `activity_date` datetime DEFAULT NULL,
  `related_id` varchar(36) DEFAULT NULL,
  `related_type` varchar(100) DEFAULT NULL,
  `archived` tinyint(1) DEFAULT '0',
  `hits` int(11) DEFAULT '0',
  `list_id` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `more_information` varchar(100) DEFAULT NULL,
  `marketing_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_camp_tracker` (`target_tracker_key`),
  KEY `idx_camp_campaign_id` (`campaign_id`),
  KEY `idx_camp_more_info` (`more_information`),
  KEY `idx_target_id` (`target_id`),
  KEY `idx_target_id_deleted` (`target_id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `campaign_trkrs`
--

CREATE TABLE IF NOT EXISTS `campaign_trkrs` (
  `id` char(36) NOT NULL,
  `tracker_name` varchar(30) DEFAULT NULL,
  `tracker_url` varchar(255) DEFAULT 'http://',
  `tracker_key` int(11) NOT NULL AUTO_INCREMENT,
  `campaign_id` char(36) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `is_optout` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `campaign_tracker_key_idx` (`tracker_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cases`
--

CREATE TABLE IF NOT EXISTS `cases` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_number` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  `resolution` text,
  `work_log` text,
  `account_id` char(36) DEFAULT NULL,
  `state` varchar(100) DEFAULT 'Open',
  PRIMARY KEY (`id`),
  UNIQUE KEY `casesnumk` (`case_number`),
  KEY `case_number` (`case_number`),
  KEY `idx_case_name` (`name`),
  KEY `idx_account_id` (`account_id`),
  KEY `idx_cases_stat_del` (`assigned_user_id`,`status`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cases_audit`
--

CREATE TABLE IF NOT EXISTS `cases_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_cases_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cases_bugs`
--

CREATE TABLE IF NOT EXISTS `cases_bugs` (
  `id` varchar(36) NOT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_cas_bug_cas` (`case_id`),
  KEY `idx_cas_bug_bug` (`bug_id`),
  KEY `idx_case_bug` (`case_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cases_cstm`
--

CREATE TABLE IF NOT EXISTS `cases_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `config`
--

CREATE TABLE IF NOT EXISTS `config` (
  `category` varchar(32) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `value` text,
  KEY `idx_config_cat` (`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `config`
--

INSERT INTO `config` (`category`, `name`, `value`) VALUES
('notify', 'fromaddress', 'logicforma@gmail.com'),
('notify', 'fromname', 'Formación Logic'),
('notify', 'send_by_default', '1'),
('notify', 'on', '1'),
('notify', 'send_from_assigning_user', '0'),
('info', 'sugar_version', '6.5.16'),
('MySettings', 'tab', 'YTozMTp7czo0OiJIb21lIjtzOjQ6IkhvbWUiO3M6ODoiQWNjb3VudHMiO3M6ODoiQWNjb3VudHMiO3M6ODoiQ29udGFjdHMiO3M6ODoiQ29udGFjdHMiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6NToiTGVhZHMiO3M6NToiTGVhZHMiO3M6MTA6IkFPU19RdW90ZXMiO3M6MTA6IkFPU19RdW90ZXMiO3M6ODoiQ2FsZW5kYXIiO3M6ODoiQ2FsZW5kYXIiO3M6OToiRG9jdW1lbnRzIjtzOjk6IkRvY3VtZW50cyI7czo2OiJFbWFpbHMiO3M6NjoiRW1haWxzIjtzOjk6IkNhbXBhaWducyI7czo5OiJDYW1wYWlnbnMiO3M6NToiQ2FsbHMiO3M6NToiQ2FsbHMiO3M6ODoiTWVldGluZ3MiO3M6ODoiTWVldGluZ3MiO3M6NToiVGFza3MiO3M6NToiVGFza3MiO3M6NToiTm90ZXMiO3M6NToiTm90ZXMiO3M6MTI6IkFPU19JbnZvaWNlcyI7czoxMjoiQU9TX0ludm9pY2VzIjtzOjEzOiJBT1NfQ29udHJhY3RzIjtzOjEzOiJBT1NfQ29udHJhY3RzIjtzOjU6IkNhc2VzIjtzOjU6IkNhc2VzIjtzOjk6IlByb3NwZWN0cyI7czo5OiJQcm9zcGVjdHMiO3M6MTM6IlByb3NwZWN0TGlzdHMiO3M6MTM6IlByb3NwZWN0TGlzdHMiO3M6OToiRlBfZXZlbnRzIjtzOjk6IkZQX2V2ZW50cyI7czoxODoiRlBfRXZlbnRfTG9jYXRpb25zIjtzOjE4OiJGUF9FdmVudF9Mb2NhdGlvbnMiO3M6MTI6IkFPU19Qcm9kdWN0cyI7czoxMjoiQU9TX1Byb2R1Y3RzIjtzOjIyOiJBT1NfUHJvZHVjdF9DYXRlZ29yaWVzIjtzOjIyOiJBT1NfUHJvZHVjdF9DYXRlZ29yaWVzIjtzOjE3OiJBT1NfUERGX1RlbXBsYXRlcyI7czoxNzoiQU9TX1BERl9UZW1wbGF0ZXMiO3M6OToiamp3Z19NYXBzIjtzOjk6Impqd2dfTWFwcyI7czoxMjoiamp3Z19NYXJrZXJzIjtzOjEyOiJqandnX01hcmtlcnMiO3M6MTA6Impqd2dfQXJlYXMiO3M6MTA6Impqd2dfQXJlYXMiO3M6MTg6Impqd2dfQWRkcmVzc19DYWNoZSI7czoxODoiamp3Z19BZGRyZXNzX0NhY2hlIjtzOjExOiJBT1JfUmVwb3J0cyI7czoxMToiQU9SX1JlcG9ydHMiO3M6MTI6IkFPV19Xb3JrRmxvdyI7czoxMjoiQU9XX1dvcmtGbG93IjtzOjEzOiJmYWN0X0ZhY3R1cmFzIjtzOjEzOiJmYWN0X0ZhY3R1cmFzIjt9'),
('portal', 'on', '0'),
('tracker', 'Tracker', '1'),
('system', 'skypeout_on', '1'),
('sugarfeed', 'enabled', '1'),
('sugarfeed', 'module_UserFeed', '1'),
('sugarfeed', 'module_Cases', '1'),
('sugarfeed', 'module_Contacts', '1'),
('sugarfeed', 'module_Leads', '1'),
('sugarfeed', 'module_Opportunities', '1'),
('Update', 'CheckUpdates', 'manual'),
('system', 'name', 'CRM de Prueba'),
('system', 'adminwizard', '1'),
('notify', 'allow_default_outbound', '0'),
('proxy', 'on', '0'),
('proxy', 'host', ''),
('proxy', 'port', ''),
('proxy', 'auth', '0'),
('proxy', 'username', ''),
('proxy', 'password', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacts`
--

CREATE TABLE IF NOT EXISTS `contacts` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `lead_source` varchar(255) DEFAULT NULL,
  `reports_to_id` char(36) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `joomla_account_id` varchar(255) DEFAULT NULL,
  `portal_account_disabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_cont_last_first` (`last_name`,`first_name`,`deleted`),
  KEY `idx_contacts_del_last` (`deleted`,`last_name`),
  KEY `idx_cont_del_reports` (`deleted`,`reports_to_id`,`last_name`),
  KEY `idx_reports_to_id` (`reports_to_id`),
  KEY `idx_del_id_user` (`deleted`,`id`,`assigned_user_id`),
  KEY `idx_cont_assigned` (`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `contacts`
--

INSERT INTO `contacts` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `salutation`, `first_name`, `last_name`, `title`, `department`, `do_not_call`, `phone_home`, `phone_mobile`, `phone_work`, `phone_other`, `phone_fax`, `primary_address_street`, `primary_address_city`, `primary_address_state`, `primary_address_postalcode`, `primary_address_country`, `alt_address_street`, `alt_address_city`, `alt_address_state`, `alt_address_postalcode`, `alt_address_country`, `assistant`, `assistant_phone`, `lead_source`, `reports_to_id`, `birthdate`, `campaign_id`, `joomla_account_id`, `portal_account_disabled`) VALUES
('1003c096-8de6-651d-4847-52987645943d', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sarah_id', NULL, 'Aurora', 'Sisler', 'Director Sales', NULL, 0, '(952) 034-0340', '(900) 660-9734', '(733) 393-2270', NULL, NULL, '48920 San Carlos Ave', 'Salt Lake City', 'CA', '24527', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Employee', NULL, NULL, NULL, NULL, NULL),
('1119f864-0a9f-de08-6bdf-5298751fd158', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sarah_id', NULL, 'Cordell', 'Moorhead', 'VP Sales', NULL, 0, '(164) 085-0222', '(547) 007-5892', '(066) 042-6741', NULL, NULL, '1715 Scott Dr', 'Denver', 'CA', '94929', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Conference', NULL, NULL, NULL, NULL, NULL),
('12977978-0c40-ea27-756e-529875acf909', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sarah_id', NULL, 'Trent', 'Coyle', 'VP Operations', NULL, 0, '(123) 884-3735', '(552) 695-2610', '(746) 483-5027', NULL, NULL, '777 West Filmore Ln', 'Salt Lake City', 'CA', '14079', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Web Site', NULL, NULL, NULL, NULL, NULL),
('13aca8a1-ace8-eea5-c190-5298766203f9', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sally_id', NULL, 'Blanche', 'Bencomo', 'Senior Product Manager', NULL, 0, '(192) 842-8282', '(853) 011-5153', '(664) 611-5763', NULL, NULL, '345 Sugar Blvd.', 'Cupertino', 'CA', '97347', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Cold Call', NULL, NULL, NULL, NULL, NULL),
('18a44f90-ef03-8ae4-b478-5298751c2c38', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sarah_id', NULL, 'Deann', 'Labonte', 'President', NULL, 0, '(165) 570-5687', '(440) 442-1842', '(599) 419-5808', NULL, NULL, '777 West Filmore Ln', 'Los Angeles', 'CA', '19860', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Self Generated', NULL, NULL, NULL, NULL, NULL),
('19212333-9226-81a5-3c62-529875210267', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sarah_id', NULL, 'Corina', 'Bolte', 'Director Sales', NULL, 0, '(620) 816-1448', '(190) 651-4737', '(692) 276-8635', NULL, NULL, '999 Baker Way', 'Alabama', 'CA', '97218', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Word of mouth', NULL, NULL, NULL, NULL, NULL),
('19bd03a2-0e0c-25d5-17f0-529875ac6ed8', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sarah_id', NULL, 'Trey', 'Halford', 'VP Operations', NULL, 0, '(546) 041-9026', '(086) 046-5408', '(660) 659-3847', NULL, NULL, '321 University Ave.', 'Salt Lake City', 'CA', '46151', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Word of mouth', NULL, NULL, NULL, NULL, NULL),
('1a9bf9d1-73c1-a612-8915-5298756e8311', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_chris_id', NULL, 'Ian', 'Height', 'President', NULL, 0, '(746) 169-2605', '(964) 795-3069', '(419) 709-7454', NULL, NULL, '777 West Filmore Ln', 'St. Petersburg', 'NY', '65174', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Existing Customer', NULL, NULL, NULL, NULL, NULL),
('1b3ad853-8482-bb0e-d26f-5298760d8b2a', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sarah_id', NULL, 'Rena', 'Defoor', 'Senior Product Manager', NULL, 0, '(028) 817-4370', '(429) 468-3339', '(836) 730-4047', NULL, NULL, '111 Silicon Valley Road', 'San Mateo', 'CA', '72283', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Employee', NULL, NULL, NULL, NULL, NULL),
('206945a2-2844-710c-2274-529876a6d214', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sally_id', NULL, 'Sherrie', 'Mccullers', 'President', NULL, 0, '(279) 128-2732', '(538) 799-0823', '(856) 422-0904', NULL, NULL, '345 Sugar Blvd.', 'San Jose', 'CA', '34885', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Email', NULL, NULL, NULL, NULL, NULL),
('2139f73a-b420-4e18-5d1e-529875b0dd6f', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_chris_id', NULL, 'Louisa', 'Wenz', 'Mgr Operations', NULL, 0, '(072) 692-8273', '(975) 089-9153', '(153) 056-6297', NULL, NULL, '345 Sugar Blvd.', 'San Mateo', 'NY', '78563', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Employee', NULL, NULL, NULL, NULL, NULL),
('229a7e77-2a55-723e-bb29-529875c1fc9a', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sally_id', NULL, 'Lavern', 'Bently', 'VP Operations', NULL, 0, '(481) 378-0153', '(941) 609-1769', '(615) 656-9253', NULL, NULL, '123 Anywhere Street', 'Los Angeles', 'CA', '56972', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Trade Show', NULL, NULL, NULL, NULL, NULL),
('24566f55-9b2c-fb94-dec1-529876dd663d', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_max_id', NULL, 'Ophelia', 'Brewton', 'IT Developer', NULL, 0, '(041) 982-4559', '(314) 453-5155', '(677) 497-7602', NULL, NULL, '777 West Filmore Ln', 'Ohio', 'CA', '61365', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Word of mouth', NULL, NULL, NULL, NULL, NULL),
('2456714d-38c2-e78a-8c1e-52987571ed05', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sarah_id', NULL, 'Sammy', 'Bratt', 'IT Developer', NULL, 0, '(960) 490-5473', '(779) 987-2531', '(720) 672-9988', NULL, NULL, '999 Baker Way', 'Alabama', 'CA', '70807', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Other', NULL, NULL, NULL, NULL, NULL),
('26f6cb23-dfeb-c26d-5d39-5298764da63c', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_will_id', NULL, 'Christine', 'Dustin', 'Director Sales', NULL, 0, '(414) 124-3209', '(606) 331-6759', '(809) 385-6197', NULL, NULL, '999 Baker Way', 'San Jose', 'NY', '67122', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Self Generated', NULL, NULL, NULL, NULL, NULL),
('27cf5aac-1fa2-cd59-2e59-529876b8014b', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_max_id', NULL, 'Jami', 'Burgoon', 'Director Sales', NULL, 0, '(886) 004-8272', '(951) 111-2246', '(334) 545-3235', NULL, NULL, '67321 West Siam St.', 'Alabama', 'CA', '68280', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Other', NULL, NULL, NULL, NULL, NULL),
('2a73e04f-a487-a8ee-1c17-5298751f1a03', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sally_id', NULL, 'Edward', 'Devos', 'Senior Product Manager', NULL, 0, '(761) 092-3144', '(037) 300-4745', '(390) 253-0426', NULL, NULL, '9 IBM Path', 'Salt Lake City', 'CA', '79861', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Employee', NULL, NULL, NULL, NULL, NULL),
('2addaada-2866-1c17-4834-5298768bdaba', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_chris_id', NULL, 'Keneth', 'Mayes', 'VP Operations', NULL, 0, '(146) 880-6881', '(257) 055-5867', '(358) 988-9948', NULL, NULL, '111 Silicon Valley Road', 'Alabama', 'NY', '87725', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Word of mouth', NULL, NULL, NULL, NULL, NULL),
('2af929dc-18f1-7780-f414-529876991c69', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sarah_id', NULL, 'Jeromy', 'Leet', 'Director Operations', NULL, 0, '(835) 019-1858', '(090) 849-8338', '(243) 340-9194', NULL, NULL, '9 IBM Path', 'Cupertino', 'CA', '91317', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Direct Mail', NULL, NULL, NULL, NULL, NULL),
('2c40291d-b41b-9cdb-d2bb-52987680a86c', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sally_id', NULL, 'Lupe', 'Thornley', 'Senior Product Manager', NULL, 0, '(460) 332-0915', '(813) 397-5085', '(054) 411-8319', NULL, NULL, '48920 San Carlos Ave', 'Persistance', 'CA', '63919', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Conference', NULL, NULL, NULL, NULL, NULL),
('2c5ab6e5-4d75-65cf-1c0c-529875c50027', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_chris_id', NULL, 'Neil', 'Broughton', 'IT Developer', NULL, 0, '(438) 861-2261', '(447) 683-2151', '(387) 389-1240', NULL, NULL, '999 Baker Way', 'Santa Fe', 'NY', '30220', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL),
('2c61359a-3aeb-e594-90f9-529876ee9ebc', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_chris_id', NULL, 'Loretta', 'Semple', 'President', NULL, 0, '(179) 739-4641', '(023) 222-9781', '(950) 130-8222', NULL, NULL, '48920 San Carlos Ave', 'San Francisco', 'NY', '47226', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Email', NULL, NULL, NULL, NULL, NULL),
('2ce7c112-3bdd-b569-63fa-529876ddc072', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_max_id', NULL, 'Osvaldo', 'Uresti', 'VP Sales', NULL, 0, '(875) 341-2075', '(079) 116-1534', '(240) 028-7465', NULL, NULL, '999 Baker Way', 'Santa Monica', 'CA', '81782', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Word of mouth', NULL, NULL, NULL, NULL, NULL),
('2f946677-1ee2-1bf0-af8f-529875d55152', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_chris_id', NULL, 'Blaine', 'Wing', 'Senior Product Manager', NULL, 0, '(166) 873-6707', '(858) 823-9410', '(112) 190-8894', NULL, NULL, '111 Silicon Valley Road', 'Santa Monica', 'NY', '69362', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Existing Customer', NULL, NULL, NULL, NULL, NULL),
('2feaaff6-cd62-8aa0-20d8-529876d0b243', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_will_id', NULL, 'Chadwick', 'Andujar', 'Mgr Operations', NULL, 0, '(203) 805-6291', '(793) 427-3648', '(147) 595-9857', NULL, NULL, '345 Sugar Blvd.', 'San Jose', 'NY', '20489', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Other', NULL, NULL, NULL, NULL, NULL),
('3029ff05-76d8-6693-d4b7-52987621b4b1', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sarah_id', NULL, 'Raul', 'Sledge', 'Senior Product Manager', NULL, 0, '(702) 378-3782', '(228) 788-1614', '(535) 547-6213', NULL, NULL, '321 University Ave.', 'Denver', 'CA', '33399', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Campaign', NULL, NULL, NULL, NULL, NULL),
('310ed708-2014-2bd9-1be7-529875e047ad', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sally_id', NULL, 'Jodi', 'Reimann', 'VP Sales', NULL, 0, '(659) 330-3603', '(875) 397-6881', '(758) 158-4815', NULL, NULL, '345 Sugar Blvd.', 'Sunnyvale', 'CA', '39863', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Web Site', NULL, NULL, NULL, NULL, NULL),
('33193319-c46e-1c1b-8b60-5298760a3005', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sally_id', NULL, 'Kari', 'Bowker', 'Director Operations', NULL, 0, '(641) 518-5706', '(190) 174-3467', '(365) 540-5119', NULL, NULL, '123 Anywhere Street', 'Denver', 'CA', '58972', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Email', NULL, NULL, NULL, NULL, NULL),
('3321e7c6-9820-fb96-758a-529876049781', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sally_id', NULL, 'Stacy', 'Larocque', 'Director Operations', NULL, 0, '(707) 797-7258', '(952) 850-9125', '(238) 865-9668', NULL, NULL, '999 Baker Way', 'Los Angeles', 'CA', '78126', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public Relations', NULL, NULL, NULL, NULL, NULL),
('344f1a26-6826-66a1-65d9-5298762a1fe1', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_chris_id', NULL, 'Sherry', 'Cutler', 'Director Operations', NULL, 0, '(616) 539-4316', '(082) 711-3413', '(298) 756-7378', NULL, NULL, '111 Silicon Valley Road', 'Cupertino', 'NY', '93896', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Email', NULL, NULL, NULL, NULL, NULL),
('353bfd8d-cfc1-6862-07ad-52987568b041', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sarah_id', NULL, 'Kathie', 'Osorio', 'IT Developer', NULL, 0, '(284) 473-0484', '(546) 192-6581', '(944) 603-5919', NULL, NULL, '1715 Scott Dr', 'Salt Lake City', 'CA', '64932', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Other', NULL, NULL, NULL, NULL, NULL),
('36f63a2c-bdd0-d139-bb6c-529876683cbc', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sarah_id', NULL, 'Devin', 'Days', 'Director Operations', NULL, 0, '(583) 750-2682', '(537) 090-7225', '(838) 094-3896', NULL, NULL, '321 University Ave.', 'Alabama', 'CA', '72582', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL),
('375c02f8-2114-1144-4cce-52987578d367', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sally_id', NULL, 'Carolyn', 'Galicia', 'Director Operations', NULL, 0, '(050) 754-3872', '(583) 157-7939', '(872) 774-6603', NULL, NULL, '321 University Ave.', 'Kansas City', 'CA', '73798', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Self Generated', NULL, NULL, NULL, NULL, NULL),
('385dea3f-cc9c-965a-06fb-529875b98c83', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sarah_id', NULL, 'Dominic', 'Conard', 'VP Sales', NULL, 0, '(847) 718-4204', '(157) 166-9123', '(342) 857-1122', NULL, NULL, '123 Anywhere Street', 'Alabama', 'CA', '98312', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Other', NULL, NULL, NULL, NULL, NULL),
('3c156b78-419d-dafe-85ca-5298767ee2f6', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sarah_id', NULL, 'Jared', 'Gleaton', 'IT Developer', NULL, 0, '(717) 184-3333', '(035) 166-9241', '(868) 727-8536', NULL, NULL, '777 West Filmore Ln', 'Santa Monica', 'CA', '76703', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Conference', NULL, NULL, NULL, NULL, NULL),
('3c44b19b-0775-bc32-3c34-52987681756a', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_chris_id', NULL, 'Kirby', 'Schubert', 'Director Operations', NULL, 0, '(348) 319-5350', '(377) 557-6769', '(726) 203-5337', NULL, NULL, '48920 San Carlos Ave', 'San Mateo', 'NY', '13560', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Cold Call', NULL, NULL, NULL, NULL, NULL),
('3d2e35d4-0655-491d-173c-52987585cb6c', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sally_id', NULL, 'Rudy', 'Prestwood', 'VP Sales', NULL, 0, '(804) 932-3829', '(823) 317-5250', '(331) 681-3365', NULL, NULL, '777 West Filmore Ln', 'Denver', 'CA', '15447', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Web Site', NULL, NULL, NULL, NULL, NULL),
('3fad4b8d-e9a1-9fee-b5d8-529876dc0464', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_max_id', NULL, 'Augusta', 'Cohan', 'VP Operations', NULL, 0, '(921) 386-0293', '(982) 831-2552', '(906) 722-5379', NULL, NULL, '1715 Scott Dr', 'Salt Lake City', 'CA', '31186', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Campaign', NULL, NULL, NULL, NULL, NULL),
('430d3549-f5c9-c8b5-c975-529876a35f73', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_max_id', NULL, 'Leonel', 'Claxton', 'Senior Product Manager', NULL, 0, '(330) 831-2668', '(048) 557-7228', '(424) 706-7847', NULL, NULL, '321 University Ave.', 'St. Petersburg', 'CA', '21741', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Employee', NULL, NULL, NULL, NULL, NULL),
('4674a1b9-b209-3e60-7746-529876ac4e3f', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_chris_id', NULL, 'Sam', 'Kincheloe', 'VP Operations', NULL, 0, '(325) 322-2609', '(239) 281-1322', '(589) 238-6666', NULL, NULL, '111 Silicon Valley Road', 'Denver', 'NY', '83665', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Conference', NULL, NULL, NULL, NULL, NULL),
('47274e44-2881-245a-2fee-5298769e00aa', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sally_id', NULL, 'Thomas', 'Geraci', 'VP Operations', NULL, 0, '(823) 887-7826', '(429) 319-1270', '(167) 028-3193', NULL, NULL, '1715 Scott Dr', 'San Jose', 'CA', '10742', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Other', NULL, NULL, NULL, NULL, NULL),
('4c813527-4163-ad81-b699-5298768ca78e', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sarah_id', NULL, 'Michell', 'Granado', 'Director Sales', NULL, 0, '(576) 507-8312', '(817) 334-0661', '(342) 680-8397', NULL, NULL, '777 West Filmore Ln', 'Salt Lake City', 'CA', '32559', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Cold Call', NULL, NULL, NULL, NULL, NULL),
('4e98036a-42f2-bad0-a72c-52987533296a', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_will_id', NULL, 'Heather', 'Mcnish', 'VP Operations', NULL, 0, '(602) 382-0761', '(759) 741-6403', '(072) 640-1728', NULL, NULL, '1715 Scott Dr', 'Los Angeles', 'NY', '36481', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Word of mouth', NULL, NULL, NULL, NULL, NULL),
('4f191502-81e5-b7ec-6605-52987564682c', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sally_id', NULL, 'Solomon', 'Bennet', 'Mgr Operations', NULL, 0, '(503) 065-7766', '(781) 753-9613', '(845) 174-1734', NULL, NULL, '1715 Scott Dr', 'Ohio', 'CA', '83343', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Direct Mail', NULL, NULL, NULL, NULL, NULL),
('5002dc79-6ef0-6841-18a7-529876f1ea78', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_chris_id', NULL, 'Rosario', 'Cokley', 'Director Operations', NULL, 0, '(307) 472-8457', '(682) 031-0050', '(121) 410-7631', NULL, NULL, '999 Baker Way', 'San Francisco', 'NY', '71194', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public Relations', NULL, NULL, NULL, NULL, NULL),
('506f8714-b207-5c93-2560-529876295547', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_chris_id', NULL, 'Karin', 'Foos', 'IT Developer', NULL, 0, '(422) 844-1289', '(464) 712-8859', '(814) 755-4701', NULL, NULL, '9 IBM Path', 'Los Angeles', 'NY', '91840', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public Relations', NULL, NULL, NULL, NULL, NULL),
('52c285c3-4ee3-118e-0398-52987642e848', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_chris_id', NULL, 'Raymon', 'Depue', 'IT Developer', NULL, 0, '(179) 717-1290', '(458) 430-9167', '(767) 850-8224', NULL, NULL, '9 IBM Path', 'San Mateo', 'NY', '68829', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Self Generated', NULL, NULL, NULL, NULL, NULL),
('52e2fb6c-8a8c-f53f-54d7-529876a767c7', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_chris_id', NULL, 'Keenan', 'Prevost', 'Mgr Operations', NULL, 0, '(035) 492-2488', '(706) 602-6233', '(831) 162-6140', NULL, NULL, '48920 San Carlos Ave', 'Ohio', 'NY', '32646', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Existing Customer', NULL, NULL, NULL, NULL, NULL),
('54307373-1eb6-81d1-1dfe-529876927096', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_chris_id', NULL, 'Eduardo', 'Brookins', 'IT Developer', NULL, 0, '(844) 059-7713', '(850) 884-1737', '(341) 918-8645', NULL, NULL, '48920 San Carlos Ave', 'St. Petersburg', 'NY', '80118', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Direct Mail', NULL, NULL, NULL, NULL, NULL),
('5506ba59-ea9c-4a8b-0d0b-5298761577c2', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_will_id', NULL, 'Billy', 'Brumley', 'Senior Product Manager', NULL, 0, '(546) 096-0569', '(522) 690-3651', '(774) 701-2238', NULL, NULL, '777 West Filmore Ln', 'St. Petersburg', 'NY', '79974', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Existing Customer', NULL, NULL, NULL, NULL, NULL),
('5635ec6d-713b-6746-ab94-529876da42ea', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_chris_id', NULL, 'Daron', 'Perryman', 'Mgr Operations', NULL, 0, '(986) 876-9382', '(509) 442-3658', '(752) 242-2266', NULL, NULL, '123 Anywhere Street', 'Ohio', 'NY', '33340', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Partner', NULL, NULL, NULL, NULL, NULL),
('57d7ed6d-a3f6-5c9d-88fd-52987616283d', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sally_id', NULL, 'Madeleine', 'Baldridge', 'President', NULL, 0, '(150) 482-1863', '(169) 073-0007', '(710) 293-7991', NULL, NULL, '111 Silicon Valley Road', 'Los Angeles', 'CA', '88643', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Web Site', NULL, NULL, NULL, NULL, NULL),
('5b088ba5-fbfb-b698-095a-529876a377eb', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_chris_id', NULL, 'Darlene', 'Dipasquale', 'Director Operations', NULL, 0, '(815) 255-7415', '(903) 059-7384', '(588) 082-1679', NULL, NULL, '111 Silicon Valley Road', 'Persistance', 'NY', '73645', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Campaign', NULL, NULL, NULL, NULL, NULL),
('5cebe91d-32ff-c8eb-53e8-52987615ae07', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sally_id', NULL, 'Helena', 'Arndt', 'Mgr Operations', NULL, 0, '(089) 900-6545', '(790) 937-1460', '(765) 333-3557', NULL, NULL, '111 Silicon Valley Road', 'Kansas City', 'CA', '54917', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Trade Show', NULL, NULL, NULL, NULL, NULL),
('5dee8fdc-76ff-aa91-bcb4-5298761e9a79', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sarah_id', NULL, 'Benita', 'Wakefield', 'Director Operations', NULL, 0, '(460) 098-5819', '(353) 269-2178', '(293) 131-0674', NULL, NULL, '48920 San Carlos Ave', 'Salt Lake City', 'CA', '75111', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Direct Mail', NULL, NULL, NULL, NULL, NULL),
('5f84a261-5311-a4db-6521-5298764db898', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sarah_id', NULL, 'Samual', 'Brunson', 'Mgr Operations', NULL, 0, '(841) 086-6474', '(725) 641-3485', '(466) 251-5138', NULL, NULL, '111 Silicon Valley Road', 'Denver', 'CA', '19117', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Employee', NULL, NULL, NULL, NULL, NULL),
('62d3452b-a938-826d-9fd3-5298767b9d03', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_chris_id', NULL, 'Alec', 'Hume', 'VP Sales', NULL, 0, '(533) 239-7574', '(234) 328-1473', '(066) 874-9749', NULL, NULL, '111 Silicon Valley Road', 'San Mateo', 'NY', '41355', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Existing Customer', NULL, NULL, NULL, NULL, NULL),
('62fb0a45-cc38-08af-0464-529876c58ec2', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_chris_id', NULL, 'Micah', 'Bullock', 'Senior Product Manager', NULL, 0, '(489) 705-4498', '(849) 399-2185', '(714) 015-5381', NULL, NULL, '345 Sugar Blvd.', 'Salt Lake City', 'NY', '31445', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Direct Mail', NULL, NULL, NULL, NULL, NULL),
('64b7e8af-5ff7-74b2-7868-529876427e2d', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_will_id', NULL, 'Lily', 'Ferrill', 'Director Sales', NULL, 0, '(678) 608-0626', '(780) 568-3199', '(213) 779-0351', NULL, NULL, '111 Silicon Valley Road', 'Salt Lake City', 'NY', '75126', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Trade Show', NULL, NULL, NULL, NULL, NULL),
('6536be62-3eae-5e34-ecc8-52987574226e', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_chris_id', NULL, 'Jerry', 'Ready', 'Senior Product Manager', NULL, 0, '(659) 220-0223', '(122) 682-3807', '(620) 476-3192', NULL, NULL, '321 University Ave.', 'Santa Fe', 'NY', '14583', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Other', NULL, NULL, NULL, NULL, NULL),
('6575dca0-296a-e03e-f45e-5298759c1dd4', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sarah_id', NULL, 'Huey', 'Molden', 'IT Developer', NULL, 0, '(457) 171-0992', '(962) 791-5955', '(001) 946-1385', NULL, NULL, '123 Anywhere Street', 'Alabama', 'CA', '25182', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Cold Call', NULL, NULL, NULL, NULL, NULL),
('6644fd40-4e86-5e13-8b35-529876b51b74', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_chris_id', NULL, 'Adolfo', 'Derryberry', 'IT Developer', NULL, 0, '(971) 139-7948', '(076) 414-8444', '(755) 915-7774', NULL, NULL, '67321 West Siam St.', 'Alabama', 'NY', '49317', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Self Generated', NULL, NULL, NULL, NULL, NULL),
('673fc09d-7d4e-7d7f-c503-5298755edd6a', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sarah_id', NULL, 'Edythe', 'Molinaro', 'President', NULL, 0, '(424) 055-5342', '(684) 214-8097', '(889) 333-8017', NULL, NULL, '123 Anywhere Street', 'St. Petersburg', 'CA', '35786', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Existing Customer', NULL, NULL, NULL, NULL, NULL),
('684144a7-32d4-d031-b544-529876cf78de', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_max_id', NULL, 'Frederic', 'Truitt', 'Director Operations', NULL, 0, '(922) 139-2554', '(226) 864-0402', '(485) 396-6629', NULL, NULL, '345 Sugar Blvd.', 'San Jose', 'CA', '18121', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Campaign', NULL, NULL, NULL, NULL, NULL),
('6a62b4e6-3bf7-76db-5b00-529876154755', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_will_id', NULL, 'Briana', 'Carrico', 'Senior Product Manager', NULL, 0, '(661) 062-2205', '(636) 708-8432', '(922) 433-4714', NULL, NULL, '777 West Filmore Ln', 'Alabama', 'NY', '82531', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Word of mouth', NULL, NULL, NULL, NULL, NULL),
('6b00b965-d4e4-829a-c071-529876985610', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_max_id', NULL, 'Edmond', 'Mikel', 'Mgr Operations', NULL, 0, '(762) 591-7489', '(028) 371-5484', '(433) 787-3428', NULL, NULL, '777 West Filmore Ln', 'Santa Fe', 'CA', '95245', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Word of mouth', NULL, NULL, NULL, NULL, NULL),
('6d00b0a1-5be7-b9e4-c009-529875f0a864', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_max_id', NULL, 'Andreas', 'Seay', 'Mgr Operations', NULL, 0, '(290) 472-9447', '(905) 517-3774', '(233) 207-5972', NULL, NULL, '1715 Scott Dr', 'Persistance', 'CA', '49226', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Direct Mail', NULL, NULL, NULL, NULL, NULL),
('6d85b0e1-788f-d5ec-cdff-5298766a3ceb', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_will_id', NULL, 'Amparo', 'Minjares', 'IT Developer', NULL, 0, '(798) 321-0547', '(851) 815-3251', '(292) 045-4178', NULL, NULL, '123 Anywhere Street', 'San Jose', 'NY', '29244', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Employee', NULL, NULL, NULL, NULL, NULL),
('6e49a47c-de55-0ae9-5089-529876a37751', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_chris_id', NULL, 'Lino', 'Hoggard', 'VP Sales', NULL, 0, '(450) 900-6936', '(997) 781-8715', '(145) 788-4514', NULL, NULL, '345 Sugar Blvd.', 'San Jose', 'NY', '90249', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL),
('7042c202-8052-197c-6794-5298769c825e', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_chris_id', NULL, 'Fay', 'Leedom', 'VP Operations', NULL, 0, '(591) 414-3054', '(280) 912-4804', '(039) 999-4839', NULL, NULL, '1715 Scott Dr', 'Cupertino', 'NY', '81613', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Existing Customer', NULL, NULL, NULL, NULL, NULL),
('705479a6-7fdf-0c78-4174-5298763f73f8', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_will_id', NULL, 'Arnoldo', 'Upchurch', 'Director Sales', NULL, 0, '(583) 085-9668', '(818) 744-5631', '(578) 010-1797', NULL, NULL, '345 Sugar Blvd.', 'Alabama', 'NY', '98499', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Campaign', NULL, NULL, NULL, NULL, NULL),
('7075587b-97b4-25bd-bef6-529876949d40', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_max_id', NULL, 'Virgilio', 'Destefano', 'President', NULL, 0, '(528) 731-0076', '(833) 233-5873', '(898) 920-8435', NULL, NULL, '67321 West Siam St.', 'San Jose', 'CA', '76848', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Self Generated', NULL, NULL, NULL, NULL, NULL),
('70c56c76-1375-0c0c-6429-5298762288fb', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sarah_id', NULL, 'Megan', 'Mcroberts', 'Director Sales', NULL, 0, '(390) 645-7798', '(718) 235-5949', '(655) 056-0923', NULL, NULL, '48920 San Carlos Ave', 'Persistance', 'CA', '94015', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public Relations', NULL, NULL, NULL, NULL, NULL),
('711d0235-96e1-a303-7807-52987670efd4', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_max_id', NULL, 'Mara', 'Luo', 'VP Operations', NULL, 0, '(152) 041-0148', '(068) 882-4254', '(302) 083-5640', NULL, NULL, '9 IBM Path', 'Los Angeles', 'CA', '60447', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Word of mouth', NULL, NULL, NULL, NULL, NULL),
('719d14f3-b63b-8113-dbb6-529875d0b0f3', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_chris_id', NULL, 'Reva', 'Vanbuskirk', 'Director Operations', NULL, 0, '(944) 159-2809', '(761) 751-6588', '(505) 885-2195', NULL, NULL, '123 Anywhere Street', 'San Jose', 'NY', '28929', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Employee', NULL, NULL, NULL, NULL, NULL),
('7205ece4-d620-80a5-78d9-529875d7d813', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sarah_id', NULL, 'Ila', 'Noble', 'VP Sales', NULL, 0, '(218) 667-2359', '(342) 619-5811', '(251) 940-6489', NULL, NULL, '67321 West Siam St.', 'Kansas City', 'CA', '55052', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Cold Call', NULL, NULL, NULL, NULL, NULL),
('756709e6-f38d-f73d-8326-5298765657f8', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_chris_id', NULL, 'Beryl', 'Huertas', 'Director Operations', NULL, 0, '(778) 299-7602', '(198) 214-0196', '(674) 704-7852', NULL, NULL, '67321 West Siam St.', 'St. Petersburg', 'NY', '26256', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Existing Customer', NULL, NULL, NULL, NULL, NULL),
('76afb4ac-ca09-9a33-12dd-529876abf87b', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sarah_id', NULL, 'Jarred', 'Lofland', 'IT Developer', NULL, 0, '(060) 917-8533', '(105) 936-8340', '(639) 300-3072', NULL, NULL, '999 Baker Way', 'Denver', 'CA', '68703', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Self Generated', NULL, NULL, NULL, NULL, NULL),
('7a678dce-36d2-f5dc-b099-5298764e416b', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sarah_id', NULL, 'Elmer', 'Bayne', 'President', NULL, 0, '(311) 121-3957', '(983) 180-5363', '(599) 511-1029', NULL, NULL, '111 Silicon Valley Road', 'Ohio', 'CA', '37896', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Partner', NULL, NULL, NULL, NULL, NULL),
('7a790171-d3ea-fe5c-8436-5298756e3491', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_will_id', NULL, 'Trenton', 'Brose', 'Director Operations', NULL, 0, '(474) 604-1311', '(565) 481-7741', '(128) 332-5271', NULL, NULL, '999 Baker Way', 'Kansas City', 'NY', '10674', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Self Generated', NULL, NULL, NULL, NULL, NULL),
('7acade4e-e40a-724a-eec2-529876ae9a4c', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_max_id', NULL, 'Bobbie', 'Feaster', 'Senior Product Manager', NULL, 0, '(370) 543-2679', '(053) 211-1375', '(679) 292-5353', NULL, NULL, '1715 Scott Dr', 'Denver', 'CA', '77717', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Existing Customer', NULL, NULL, NULL, NULL, NULL),
('7c3fe5fd-e802-4d12-00e4-5298762f6233', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sarah_id', NULL, 'Eva', 'Vanwagoner', 'VP Sales', NULL, 0, '(357) 994-5417', '(451) 474-4537', '(991) 333-2384', NULL, NULL, '48920 San Carlos Ave', 'Salt Lake City', 'CA', '50642', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Web Site', NULL, NULL, NULL, NULL, NULL),
('7d0a15dd-9321-fb29-d5c3-5298764ac5d5', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sarah_id', NULL, 'Winnie', 'Wigginton', 'President', NULL, 0, '(560) 352-8924', '(231) 050-1384', '(182) 767-5610', NULL, NULL, '999 Baker Way', 'San Mateo', 'CA', '69921', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public Relations', NULL, NULL, NULL, NULL, NULL),
('7d43294f-796d-9197-d86e-529876426e38', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_chris_id', NULL, 'Saul', 'Dostal', 'VP Operations', NULL, 0, '(041) 640-2427', '(437) 069-1120', '(464) 957-9548', NULL, NULL, '123 Anywhere Street', 'St. Petersburg', 'NY', '62797', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Existing Customer', NULL, NULL, NULL, NULL, NULL),
('7d7a5302-81c1-d4a5-721c-529875a4387c', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_max_id', NULL, 'Susan', 'Armas', 'President', NULL, 0, '(335) 716-6275', '(903) 678-4943', '(779) 388-7963', NULL, NULL, '67321 West Siam St.', 'Cupertino', 'CA', '54921', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Campaign', NULL, NULL, NULL, NULL, NULL),
('80aed081-46fd-8e43-1db1-52987658032e', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_chris_id', NULL, 'Josephine', 'Endicott', 'Director Operations', NULL, 0, '(955) 361-5813', '(843) 354-0726', '(170) 774-5595', NULL, NULL, '48920 San Carlos Ave', 'Alabama', 'NY', '29202', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Word of mouth', NULL, NULL, NULL, NULL, NULL),
('80c86d8b-5d97-049b-75f2-529876563232', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_chris_id', NULL, 'Lavern', 'Crigler', 'President', NULL, 0, '(549) 396-6030', '(157) 841-3752', '(646) 767-5025', NULL, NULL, '67321 West Siam St.', 'Ohio', 'NY', '93726', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public Relations', NULL, NULL, NULL, NULL, NULL),
('81532775-4025-9702-9efa-529876ab100c', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_chris_id', NULL, 'Jerald', 'Yoon', 'VP Sales', NULL, 0, '(426) 126-7004', '(648) 663-9691', '(494) 108-8287', NULL, NULL, '9 IBM Path', 'Santa Fe', 'NY', '92788', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Existing Customer', NULL, NULL, NULL, NULL, NULL),
('81ddf331-4658-d85d-fa09-529876abff96', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_max_id', NULL, 'Mandy', 'Shockley', 'Senior Product Manager', NULL, 0, '(808) 243-0267', '(462) 678-4283', '(593) 810-0987', NULL, NULL, '9 IBM Path', 'Sunnyvale', 'CA', '80034', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Partner', NULL, NULL, NULL, NULL, NULL),
('82c00254-648c-228c-7792-529876d5a167', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sarah_id', NULL, 'Trudy', 'Harmer', 'IT Developer', NULL, 0, '(985) 680-9056', '(281) 781-4225', '(598) 305-3289', NULL, NULL, '321 University Ave.', 'Denver', 'CA', '44284', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Self Generated', NULL, NULL, NULL, NULL, NULL),
('82cfdf78-5774-4f05-1e68-5298769227f6', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sarah_id', NULL, 'Trina', 'Bachus', 'Director Sales', NULL, 0, '(265) 800-7795', '(242) 877-1212', '(724) 646-5933', NULL, NULL, '111 Silicon Valley Road', 'Los Angeles', 'CA', '25144', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Employee', NULL, NULL, NULL, NULL, NULL),
('8320a05d-c93b-e219-0777-5298764aa14e', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_chris_id', NULL, 'Austin', 'Banda', 'VP Operations', NULL, 0, '(178) 367-7415', '(968) 879-3192', '(515) 355-0112', NULL, NULL, '111 Silicon Valley Road', 'St. Petersburg', 'NY', '99801', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Partner', NULL, NULL, NULL, NULL, NULL),
('849f5da2-2a00-e494-8635-5298758e8ec4', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_will_id', NULL, 'Arnoldo', 'Hung', 'VP Operations', NULL, 0, '(867) 804-6400', '(898) 339-0057', '(431) 434-9875', NULL, NULL, '9 IBM Path', 'Santa Monica', 'NY', '97856', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Conference', NULL, NULL, NULL, NULL, NULL),
('85b870c5-c5d4-f3a6-8d63-529876c5c9e9', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_max_id', NULL, 'Magdalena', 'Royse', 'IT Developer', NULL, 0, '(133) 396-6131', '(503) 809-6554', '(332) 764-2896', NULL, NULL, '999 Baker Way', 'St. Petersburg', 'CA', '60074', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Self Generated', NULL, NULL, NULL, NULL, NULL),
('88732901-0a88-c2f8-1be4-5298751a47da', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_chris_id', NULL, 'Adrian', 'Sessums', 'VP Sales', NULL, 0, '(450) 291-4172', '(897) 481-2828', '(707) 746-4735', NULL, NULL, '345 Sugar Blvd.', 'San Francisco', 'NY', '21836', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Email', NULL, NULL, NULL, NULL, NULL),
('88bee468-7c5b-cf36-c960-52987525b1f8', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sarah_id', NULL, 'Stefan', 'Yarbrough', 'IT Developer', NULL, 0, '(891) 212-6415', '(914) 567-2752', '(942) 347-8663', NULL, NULL, '1715 Scott Dr', 'Santa Monica', 'CA', '11519', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Campaign', NULL, NULL, NULL, NULL, NULL),
('88fabdae-39ee-84b4-fd33-529876a0b1f6', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sarah_id', NULL, 'Nicky', 'Banning', 'Director Operations', NULL, 0, '(407) 080-1328', '(416) 895-2803', '(259) 808-2658', NULL, NULL, '1715 Scott Dr', 'Cupertino', 'CA', '63981', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Partner', NULL, NULL, NULL, NULL, NULL),
('8a79c91b-5c1a-7e9e-f53c-5298757f9176', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_max_id', NULL, 'Hans', 'Harvin', 'VP Operations', NULL, 0, '(578) 169-4676', '(612) 925-5686', '(652) 099-4175', NULL, NULL, '48920 San Carlos Ave', 'Santa Monica', 'CA', '62104', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Self Generated', NULL, NULL, NULL, NULL, NULL),
('8b5b70f4-a911-e352-059d-529876a5fe92', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sally_id', NULL, 'Cornelius', 'Mifflin', 'Director Sales', NULL, 0, '(063) 051-1859', '(727) 544-5544', '(857) 882-5693', NULL, NULL, '345 Sugar Blvd.', 'Ohio', 'CA', '54744', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Cold Call', NULL, NULL, NULL, NULL, NULL),
('8b900a65-5a94-805d-e9bd-52987641cc0e', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_max_id', NULL, 'Blair', 'Juergens', 'President', NULL, 0, '(905) 921-7263', '(547) 582-9090', '(557) 239-0632', NULL, NULL, '67321 West Siam St.', 'Sunnyvale', 'CA', '26261', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Existing Customer', NULL, NULL, NULL, NULL, NULL),
('8dbe429b-e5e1-782a-f8cd-529876b133ec', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sarah_id', NULL, 'Dexter', 'Guss', 'VP Operations', NULL, 0, '(612) 260-8213', '(814) 049-3886', '(137) 415-8722', NULL, NULL, '9 IBM Path', 'St. Petersburg', 'CA', '24565', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Partner', NULL, NULL, NULL, NULL, NULL),
('8f0265ee-be27-8b34-a17d-529876183644', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_max_id', NULL, 'Bobbie', 'Vessels', 'Director Operations', NULL, 0, '(521) 329-9403', '(926) 505-3457', '(852) 998-8948', NULL, NULL, '111 Silicon Valley Road', 'Los Angeles', 'CA', '81982', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Other', NULL, NULL, NULL, NULL, NULL),
('8fe9b992-701c-7b5f-bbda-5298769df9a6', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sarah_id', NULL, 'Bryon', 'Asuncion', 'Director Sales', NULL, 0, '(649) 901-9867', '(936) 015-3153', '(044) 762-3679', NULL, NULL, '999 Baker Way', 'Denver', 'CA', '90264', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL),
('90aead15-f8b1-faa6-1699-52987568eda2', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_chris_id', NULL, 'Oswaldo', 'Lillard', 'Mgr Operations', NULL, 0, '(811) 300-5285', '(725) 296-5600', '(196) 723-7539', NULL, NULL, '48920 San Carlos Ave', 'Persistance', 'NY', '76713', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL),
('90f41022-1406-fa98-7039-52987693f7f7', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sarah_id', NULL, 'Maura', 'Grondin', 'IT Developer', NULL, 0, '(644) 525-9453', '(891) 959-4448', '(417) 099-1925', NULL, NULL, '777 West Filmore Ln', 'San Jose', 'CA', '63338', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Other', NULL, NULL, NULL, NULL, NULL),
('9164ee59-7d30-04da-9be6-5298763c0010', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_max_id', NULL, 'Imelda', 'Vanhorne', 'Director Operations', NULL, 0, '(846) 421-8559', '(490) 020-4424', '(267) 758-8738', NULL, NULL, '999 Baker Way', 'Denver', 'CA', '50516', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Partner', NULL, NULL, NULL, NULL, NULL),
('917c0fe5-b1a1-d6e6-03ed-5298752b8033', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_chris_id', NULL, 'Jeffrey', 'Snowden', 'VP Operations', NULL, 0, '(055) 333-2354', '(285) 561-9641', '(235) 522-2038', NULL, NULL, '48920 San Carlos Ave', 'San Mateo', 'NY', '55295', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Direct Mail', NULL, NULL, NULL, NULL, NULL),
('92b70b38-c7df-f989-e32c-529876bedd6c', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_chris_id', NULL, 'Chrystal', 'Merrow', 'VP Operations', NULL, 0, '(603) 567-3320', '(537) 234-6571', '(207) 221-7431', NULL, NULL, '777 West Filmore Ln', 'Ohio', 'NY', '89897', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Conference', NULL, NULL, NULL, NULL, NULL),
('9384722e-9383-fc7e-0fd5-5298764db491', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_chris_id', NULL, 'Brian', 'Sturtevant', 'Director Sales', NULL, 0, '(599) 894-1558', '(022) 337-5371', '(810) 665-8484', NULL, NULL, '345 Sugar Blvd.', 'San Francisco', 'NY', '10952', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Self Generated', NULL, NULL, NULL, NULL, NULL),
('93e7e142-1e31-2f0d-8007-529875c9d7f5', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sarah_id', NULL, 'Madeleine', 'Moris', 'VP Sales', NULL, 0, '(403) 151-2667', '(443) 511-1271', '(355) 011-9723', NULL, NULL, '999 Baker Way', 'Ohio', 'CA', '32238', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Word of mouth', NULL, NULL, NULL, NULL, NULL),
('94556653-3756-ca37-a6ce-529876ef7d3e', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sarah_id', NULL, 'Alexandria', 'Olmeda', 'VP Sales', NULL, 0, '(445) 728-0914', '(118) 730-9989', '(233) 138-2672', NULL, NULL, '48920 San Carlos Ave', 'Los Angeles', 'CA', '67137', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Existing Customer', NULL, NULL, NULL, NULL, NULL),
('954601c3-023e-b4af-4791-529876c3f700', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_will_id', NULL, 'Eusebio', 'Vigil', 'Senior Product Manager', NULL, 0, '(642) 789-7386', '(846) 309-8775', '(974) 909-8235', NULL, NULL, '67321 West Siam St.', 'Santa Monica', 'NY', '17021', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Campaign', NULL, NULL, NULL, NULL, NULL),
('957a5081-da94-5e10-202e-529876bba9d1', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sally_id', NULL, 'Darla', 'Pilger', 'Senior Product Manager', NULL, 0, '(971) 730-2372', '(524) 049-6499', '(888) 954-6264', NULL, NULL, '123 Anywhere Street', 'San Francisco', 'CA', '34990', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Trade Show', NULL, NULL, NULL, NULL, NULL),
('97005a64-958a-0baf-3153-52987652d59e', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sally_id', NULL, 'Oscar', 'Harmon', 'President', NULL, 0, '(732) 547-5345', '(703) 442-0498', '(669) 626-4813', NULL, NULL, '67321 West Siam St.', 'Los Angeles', 'CA', '47380', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Self Generated', NULL, NULL, NULL, NULL, NULL),
('973e9402-edc5-6c94-4070-5298756ffa13', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sarah_id', NULL, 'Felton', 'Darcy', 'Director Operations', NULL, 0, '(544) 311-3970', '(228) 234-1868', '(809) 726-4201', NULL, NULL, '321 University Ave.', 'Kansas City', 'CA', '20084', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public Relations', NULL, NULL, NULL, NULL, NULL),
('975b05db-0bce-d6d9-eaf5-529875d3df38', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_chris_id', NULL, 'Stacie', 'Minner', 'Director Sales', NULL, 0, '(974) 319-1122', '(473) 144-6383', '(302) 312-2373', NULL, NULL, '67321 West Siam St.', 'Alabama', 'NY', '35332', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Conference', NULL, NULL, NULL, NULL, NULL),
('98e6b7b5-6965-9adb-d4ba-529876e1b35a', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sally_id', NULL, 'Oswaldo', 'Dew', 'President', NULL, 0, '(057) 955-7580', '(180) 197-0474', '(626) 201-0392', NULL, NULL, '123 Anywhere Street', 'Denver', 'CA', '67702', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Other', NULL, NULL, NULL, NULL, NULL),
('99535fa2-5874-0138-a735-5298757b9f13', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sarah_id', NULL, 'Maritza', 'Newsom', 'Director Sales', NULL, 0, '(274) 409-0718', '(628) 128-7844', '(695) 212-5546', NULL, NULL, '321 University Ave.', 'Alabama', 'CA', '23179', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Direct Mail', NULL, NULL, NULL, NULL, NULL),
('99808834-4615-3528-e559-5298756ebff4', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_chris_id', NULL, 'Shirley', 'Tomko', 'VP Sales', NULL, 0, '(965) 731-2625', '(998) 987-8676', '(627) 615-8195', NULL, NULL, '67321 West Siam St.', 'Persistance', 'NY', '83487', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public Relations', NULL, NULL, NULL, NULL, NULL),
('99faa292-a7c6-b34e-6939-529875f5d243', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sally_id', NULL, 'Pat', 'Mcabee', 'VP Sales', NULL, 0, '(177) 598-9028', '(602) 377-6998', '(117) 355-4318', NULL, NULL, '67321 West Siam St.', 'Santa Fe', 'CA', '69673', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Direct Mail', NULL, NULL, NULL, NULL, NULL),
('9a352ded-9ac7-e517-b863-52987657b9e3', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sally_id', NULL, 'Noel', 'Bunnell', 'President', NULL, 0, '(874) 782-4324', '(873) 873-4267', '(368) 298-7122', NULL, NULL, '777 West Filmore Ln', 'St. Petersburg', 'CA', '73081', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Conference', NULL, NULL, NULL, NULL, NULL),
('9a37794c-a5ae-21d2-95b1-52987692d029', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sally_id', NULL, 'Giuseppe', 'Costigan', 'VP Sales', NULL, 0, '(174) 576-8929', '(692) 663-0877', '(508) 508-8336', NULL, NULL, '48920 San Carlos Ave', 'Sunnyvale', 'CA', '33440', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Self Generated', NULL, NULL, NULL, NULL, NULL),
('9a634cb2-06da-d19c-06cc-529876ee46ee', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sally_id', NULL, 'Sean', 'Stender', 'Senior Product Manager', NULL, 0, '(577) 521-6734', '(878) 019-0485', '(042) 395-0771', NULL, NULL, '123 Anywhere Street', 'San Jose', 'CA', '39401', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Direct Mail', NULL, NULL, NULL, NULL, NULL),
('9a8a9b11-cb84-ee09-1d1b-5298754f7c07', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_chris_id', NULL, 'Greg', 'Moro', 'IT Developer', NULL, 0, '(461) 745-2015', '(711) 095-4695', '(577) 016-3784', NULL, NULL, '67321 West Siam St.', 'Santa Monica', 'NY', '53092', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Web Site', NULL, NULL, NULL, NULL, NULL),
('9b9e5a1b-fe37-4031-e8f4-52987535956e', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_will_id', NULL, 'Lindsay', 'Dixon', 'President', NULL, 0, '(579) 112-4576', '(891) 561-3502', '(351) 856-1925', NULL, NULL, '1715 Scott Dr', 'Santa Fe', 'NY', '52318', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Email', NULL, NULL, NULL, NULL, NULL),
('9d0b0369-f0e8-259e-9ede-529875d67973', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sarah_id', NULL, 'Otha', 'Zajac', 'Senior Product Manager', NULL, 0, '(334) 065-9781', '(624) 183-6808', '(289) 598-0310', NULL, NULL, '48920 San Carlos Ave', 'Los Angeles', 'CA', '53951', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Cold Call', NULL, NULL, NULL, NULL, NULL),
('9d888f32-5807-196d-d6bc-529876b4e33b', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_max_id', NULL, 'Michele', 'Stennett', 'IT Developer', NULL, 0, '(564) 466-0371', '(174) 969-4455', '(376) 856-5400', NULL, NULL, '111 Silicon Valley Road', 'Alabama', 'CA', '38137', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Partner', NULL, NULL, NULL, NULL, NULL),
('9ea8c4b7-46b0-245c-e082-529876a717da', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sally_id', NULL, 'Jody', 'Auer', 'Director Operations', NULL, 0, '(975) 077-8326', '(777) 654-6323', '(586) 209-3447', NULL, NULL, '321 University Ave.', 'Santa Fe', 'CA', '72531', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Direct Mail', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `contacts` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `salutation`, `first_name`, `last_name`, `title`, `department`, `do_not_call`, `phone_home`, `phone_mobile`, `phone_work`, `phone_other`, `phone_fax`, `primary_address_street`, `primary_address_city`, `primary_address_state`, `primary_address_postalcode`, `primary_address_country`, `alt_address_street`, `alt_address_city`, `alt_address_state`, `alt_address_postalcode`, `alt_address_country`, `assistant`, `assistant_phone`, `lead_source`, `reports_to_id`, `birthdate`, `campaign_id`, `joomla_account_id`, `portal_account_disabled`) VALUES
('a03f0ef2-1fb3-eae8-7d12-5298764b390d', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sally_id', NULL, 'Ginger', 'Cavallaro', 'VP Operations', NULL, 0, '(064) 805-0327', '(985) 332-1058', '(610) 666-9544', NULL, NULL, '345 Sugar Blvd.', 'San Jose', 'CA', '98293', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Direct Mail', NULL, NULL, NULL, NULL, NULL),
('a04fa791-6313-939a-a24f-529876e838e0', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sally_id', NULL, 'Carlton', 'Oceguera', 'Director Operations', NULL, 0, '(812) 557-5045', '(687) 169-7802', '(682) 905-8544', NULL, NULL, '111 Silicon Valley Road', 'Persistance', 'CA', '94911', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Existing Customer', NULL, NULL, NULL, NULL, NULL),
('a0ab6fa1-f78d-c3a6-cfc5-529875e12871', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_chris_id', NULL, 'Terrell', 'Dore', 'Director Operations', NULL, 0, '(860) 263-8127', '(977) 171-1292', '(040) 325-2456', NULL, NULL, '48920 San Carlos Ave', 'Los Angeles', 'NY', '49695', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Trade Show', NULL, NULL, NULL, NULL, NULL),
('a16ba882-d54a-32a0-8b33-529875b9fecd', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sally_id', NULL, 'Miguel', 'Gravely', 'Director Operations', NULL, 0, '(173) 178-7212', '(413) 096-7812', '(557) 510-7049', NULL, NULL, '111 Silicon Valley Road', 'San Jose', 'CA', '90956', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Web Site', NULL, NULL, NULL, NULL, NULL),
('a18af40f-44c0-768f-0956-529876fdfca8', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_chris_id', NULL, 'Jane', 'Key', 'VP Operations', NULL, 0, '(597) 910-2056', '(228) 827-1181', '(457) 591-4138', NULL, NULL, '999 Baker Way', 'Santa Monica', 'NY', '54536', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Cold Call', NULL, NULL, NULL, NULL, NULL),
('a48f2216-4605-d6aa-6b5c-52987672ba0f', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_will_id', NULL, 'Merle', 'Maye', 'VP Operations', NULL, 0, '(043) 151-2358', '(912) 106-5091', '(573) 667-9534', NULL, NULL, '321 University Ave.', 'Ohio', 'NY', '22558', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Word of mouth', NULL, NULL, NULL, NULL, NULL),
('a71b1999-ba81-1132-22c2-529876f5b797', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_chris_id', NULL, 'Stacy', 'Mcewen', 'IT Developer', NULL, 0, '(097) 280-3183', '(334) 291-2793', '(757) 608-2572', NULL, NULL, '321 University Ave.', 'Salt Lake City', 'NY', '53516', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Trade Show', NULL, NULL, NULL, NULL, NULL),
('a7c6164d-776d-0c0e-6867-529876c0c861', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sally_id', NULL, 'Darrin', 'Burnett', 'VP Sales', NULL, 0, '(310) 856-6054', '(106) 469-1932', '(757) 407-1848', NULL, NULL, '345 Sugar Blvd.', 'San Francisco', 'CA', '70883', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Web Site', NULL, NULL, NULL, NULL, NULL),
('a86ce573-3b45-3207-a631-529876048443', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sarah_id', NULL, 'Roslyn', 'Dickman', 'Director Sales', NULL, 0, '(652) 789-5048', '(098) 256-4728', '(053) 756-4347', NULL, NULL, '111 Silicon Valley Road', 'Santa Fe', 'CA', '14370', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Direct Mail', NULL, NULL, NULL, NULL, NULL),
('a9dacba0-a28f-f09b-fce4-529876c0515b', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_max_id', NULL, 'Margret', 'Mcgrew', 'Mgr Operations', NULL, 0, '(396) 716-5187', '(025) 356-8055', '(793) 323-1005', NULL, NULL, '67321 West Siam St.', 'Kansas City', 'CA', '26775', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Word of mouth', NULL, NULL, NULL, NULL, NULL),
('a9dbc8e6-1f24-8b77-c2f8-52987631be0a', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sally_id', NULL, 'Garrett', 'Rueb', 'VP Sales', NULL, 0, '(128) 470-8835', '(070) 696-8044', '(976) 461-0308', NULL, NULL, '321 University Ave.', 'Los Angeles', 'CA', '41109', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Self Generated', NULL, NULL, NULL, NULL, NULL),
('aa5120c7-ad39-91a8-fb36-529876594423', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sarah_id', NULL, 'Johnson', 'Townsend', 'Mgr Operations', NULL, 0, '(192) 577-5076', '(181) 564-9487', '(199) 785-1991', NULL, NULL, '9 IBM Path', 'Denver', 'CA', '18918', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Other', NULL, NULL, NULL, NULL, NULL),
('ac54c823-17ff-c231-c517-529876dbd55e', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sarah_id', NULL, 'Bo', 'Sack', 'Director Sales', NULL, 0, '(557) 887-6405', '(100) 765-8099', '(658) 800-6190', NULL, NULL, '48920 San Carlos Ave', 'Santa Monica', 'CA', '58261', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Partner', NULL, NULL, NULL, NULL, NULL),
('ac789fd2-2264-d3e7-fbb9-529876931956', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sally_id', NULL, 'Rosie', 'Booe', 'VP Operations', NULL, 0, '(790) 656-3493', '(548) 705-9246', '(392) 584-4138', NULL, NULL, '48920 San Carlos Ave', 'St. Petersburg', 'CA', '50249', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Self Generated', NULL, NULL, NULL, NULL, NULL),
('acb4e3d4-dce1-27ae-eda1-5298766c8bc3', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_max_id', NULL, 'Kimberly', 'Marino', 'Director Operations', NULL, 0, '(613) 800-5495', '(130) 394-5300', '(358) 126-3122', NULL, NULL, '345 Sugar Blvd.', 'Alabama', 'CA', '91088', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Employee', NULL, NULL, NULL, NULL, NULL),
('ad131489-1078-0e35-dc05-529876786888', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_will_id', NULL, 'Isreal', 'Maze', 'VP Operations', NULL, 0, '(423) 205-7521', '(420) 402-8704', '(339) 155-3095', NULL, NULL, '321 University Ave.', 'Los Angeles', 'NY', '63502', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public Relations', NULL, NULL, NULL, NULL, NULL),
('b2335cd2-b26d-55f0-1b22-529876afa436', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_will_id', NULL, 'Henrietta', 'Catt', 'Director Sales', NULL, 0, '(440) 763-5466', '(367) 639-5821', '(190) 540-9073', NULL, NULL, '1715 Scott Dr', 'Santa Fe', 'NY', '41922', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Existing Customer', NULL, NULL, NULL, NULL, NULL),
('b3ecdd9d-c798-a434-ca85-5298768963a2', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sarah_id', NULL, 'Ferdinand', 'Deem', 'VP Operations', NULL, 0, '(478) 444-2362', '(076) 496-5994', '(692) 309-3098', NULL, NULL, '999 Baker Way', 'San Mateo', 'CA', '17093', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL),
('b8566b38-debd-fa25-993d-52987657c90b', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sally_id', NULL, 'Virgilio', 'Schilling', 'Senior Product Manager', NULL, 0, '(054) 222-3694', '(880) 701-3031', '(101) 196-1649', NULL, NULL, '111 Silicon Valley Road', 'Persistance', 'CA', '39849', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Self Generated', NULL, NULL, NULL, NULL, NULL),
('b8845787-1eb1-61a9-1cdd-5298763529bb', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_max_id', NULL, 'Wade', 'Bridgeman', 'Senior Product Manager', NULL, 0, '(580) 534-2112', '(777) 422-7164', '(422) 126-9040', NULL, NULL, '48920 San Carlos Ave', 'Salt Lake City', 'CA', '72441', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Conference', NULL, NULL, NULL, NULL, NULL),
('b9efaf47-d6ca-963e-af95-529876382ba1', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_max_id', NULL, 'Dean', 'Rucker', 'Senior Product Manager', NULL, 0, '(061) 557-5650', '(378) 933-5483', '(067) 126-5283', NULL, NULL, '111 Silicon Valley Road', 'San Mateo', 'CA', '58576', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL),
('ba06d0ee-f11f-8c23-472c-529876cd228d', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sally_id', NULL, 'Rosalinda', 'Hamlin', 'Mgr Operations', NULL, 0, '(047) 376-9271', '(568) 916-1167', '(302) 048-4799', NULL, NULL, '1715 Scott Dr', 'San Jose', 'CA', '76163', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Partner', NULL, NULL, NULL, NULL, NULL),
('be5c1b0c-8064-f52f-5bb6-52987570d1b9', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_max_id', NULL, 'Pierre', 'Bosserman', 'President', NULL, 0, '(126) 217-0582', '(101) 451-9306', '(141) 789-2046', NULL, NULL, '999 Baker Way', 'St. Petersburg', 'CA', '91975', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public Relations', NULL, NULL, NULL, NULL, NULL),
('bf413926-992c-d315-f3a0-5298762545dc', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_max_id', NULL, 'Maryanne', 'Beaudin', 'VP Operations', NULL, 0, '(098) 157-2849', '(427) 307-1992', '(889) 516-8738', NULL, NULL, '67321 West Siam St.', 'Santa Monica', 'CA', '87388', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL),
('c0aa471b-b997-f3e3-ded6-5298758d6dcc', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_will_id', NULL, 'Jarrett', 'Flanary', 'VP Sales', NULL, 0, '(505) 927-1888', '(454) 210-1855', '(776) 792-4235', NULL, NULL, '345 Sugar Blvd.', 'Santa Monica', 'NY', '37495', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL),
('c29b3da6-37e8-1861-f409-529876837a1f', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_will_id', NULL, 'Alejandro', 'Miles', 'VP Sales', NULL, 0, '(195) 479-2212', '(597) 085-3262', '(161) 305-9460', NULL, NULL, '345 Sugar Blvd.', 'Persistance', 'NY', '51392', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Campaign', NULL, NULL, NULL, NULL, NULL),
('c34674f4-3289-a9f1-cce8-529876657199', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_will_id', NULL, 'Lucien', 'Mcculley', 'IT Developer', NULL, 0, '(037) 847-5081', '(645) 035-8510', '(419) 759-7843', NULL, NULL, '48920 San Carlos Ave', 'San Jose', 'NY', '45157', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Direct Mail', NULL, NULL, NULL, NULL, NULL),
('c3d38c58-4967-8281-3aae-529875402b06', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sarah_id', NULL, 'Arnulfo', 'Collinson', 'Director Operations', NULL, 0, '(900) 403-8337', '(742) 469-0897', '(486) 837-1117', NULL, NULL, '999 Baker Way', 'San Mateo', 'CA', '15920', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Self Generated', NULL, NULL, NULL, NULL, NULL),
('c5891ce1-f8c9-ef13-3bc2-529876b5a2db', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sally_id', NULL, 'Margie', 'Wasser', 'President', NULL, 0, '(034) 395-5146', '(191) 541-8815', '(027) 278-0880', NULL, NULL, '999 Baker Way', 'Cupertino', 'CA', '75882', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Campaign', NULL, NULL, NULL, NULL, NULL),
('c79b8ddc-2595-f1bc-eb75-5298753eed62', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sally_id', NULL, 'Teodoro', 'Seim', 'VP Operations', NULL, 0, '(086) 449-8997', '(371) 182-9371', '(679) 747-4694', NULL, NULL, '345 Sugar Blvd.', 'San Mateo', 'CA', '88053', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Web Site', NULL, NULL, NULL, NULL, NULL),
('c89447a1-714c-65f0-02b1-529876d4a1be', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_chris_id', NULL, 'Cole', 'Kesterson', 'IT Developer', NULL, 0, '(732) 585-3269', '(607) 233-3727', '(238) 312-0455', NULL, NULL, '1715 Scott Dr', 'Santa Fe', 'NY', '77944', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Partner', NULL, NULL, NULL, NULL, NULL),
('c9ac40e2-11ad-45ec-d009-529876869bd7', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_will_id', NULL, 'Morgan', 'Quick', 'Mgr Operations', NULL, 0, '(446) 433-5600', '(752) 984-4234', '(190) 458-6272', NULL, NULL, '321 University Ave.', 'Santa Fe', 'NY', '89569', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public Relations', NULL, NULL, NULL, NULL, NULL),
('cb1dec67-fccd-70a3-b4db-529876369f86', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sarah_id', NULL, 'Lauren', 'Talley', 'VP Sales', NULL, 0, '(690) 975-9569', '(929) 880-3372', '(573) 830-5988', NULL, NULL, '999 Baker Way', 'Denver', 'CA', '90979', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Campaign', NULL, NULL, NULL, NULL, NULL),
('cb5a03d0-2a97-6af5-e10b-52987606f39f', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sarah_id', NULL, 'Deon', 'Westerberg', 'Director Sales', NULL, 0, '(021) 766-4041', '(291) 266-9151', '(467) 624-1819', NULL, NULL, '123 Anywhere Street', 'St. Petersburg', 'CA', '91137', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Existing Customer', NULL, NULL, NULL, NULL, NULL),
('cceeb728-be68-69d5-5149-5298759825e2', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_will_id', NULL, 'Francisco', 'Coston', 'VP Operations', NULL, 0, '(270) 361-9336', '(356) 527-4045', '(308) 698-0245', NULL, NULL, '321 University Ave.', 'Persistance', 'NY', '81588', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Self Generated', NULL, NULL, NULL, NULL, NULL),
('ce60a06b-56d1-a88d-7da7-529876dc2fce', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sally_id', NULL, 'Leo', 'Huntley', 'VP Operations', NULL, 0, '(886) 488-9465', '(095) 114-6522', '(643) 195-0095', NULL, NULL, '48920 San Carlos Ave', 'San Mateo', 'CA', '85314', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Employee', NULL, NULL, NULL, NULL, NULL),
('cee45303-d217-eb6c-e720-5298762f6435', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sarah_id', NULL, 'Ernie', 'Longworth', 'Senior Product Manager', NULL, 0, '(567) 749-2411', '(975) 588-6712', '(847) 975-6590', NULL, NULL, '67321 West Siam St.', 'Sunnyvale', 'CA', '13646', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Self Generated', NULL, NULL, NULL, NULL, NULL),
('cf028e99-f982-b38f-013e-529876d12027', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sally_id', NULL, 'Hans', 'Hessler', 'VP Operations', NULL, 0, '(567) 660-1311', '(268) 045-9788', '(561) 413-4871', NULL, NULL, '48920 San Carlos Ave', 'Kansas City', 'CA', '86904', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public Relations', NULL, NULL, NULL, NULL, NULL),
('cf9c52d5-baf4-fcaa-381f-5298764c3bf3', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sally_id', NULL, 'Hans', 'Brownlee', 'Director Sales', NULL, 0, '(047) 625-1147', '(596) 919-0878', '(591) 245-6634', NULL, NULL, '111 Silicon Valley Road', 'San Mateo', 'CA', '33688', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Existing Customer', NULL, NULL, NULL, NULL, NULL),
('d0baf223-3a7c-9687-5e2c-5298768fc97e', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sarah_id', NULL, 'Stanton', 'Toll', 'Senior Product Manager', NULL, 0, '(689) 683-9289', '(579) 173-2389', '(325) 952-1382', NULL, NULL, '999 Baker Way', 'Santa Fe', 'CA', '19165', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public Relations', NULL, NULL, NULL, NULL, NULL),
('d1fafc15-3d0e-e214-70de-52987500373c', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sarah_id', NULL, 'Randell', 'Jeanbaptiste', 'President', NULL, 0, '(060) 781-0452', '(426) 604-9103', '(192) 964-2319', NULL, NULL, '111 Silicon Valley Road', 'Denver', 'CA', '98779', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Conference', NULL, NULL, NULL, NULL, NULL),
('d20e4259-0110-c9d0-ec64-5298761b0571', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_chris_id', NULL, 'John', 'Gallaher', 'IT Developer', NULL, 0, '(572) 136-2064', '(505) 394-3278', '(360) 653-6671', NULL, NULL, '777 West Filmore Ln', 'St. Petersburg', 'NY', '27967', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Partner', NULL, NULL, NULL, NULL, NULL),
('d365a92c-9a70-3f09-d61d-52987677e5e8', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sarah_id', NULL, 'Dennis', 'Moulton', 'Senior Product Manager', NULL, 0, '(511) 373-0673', '(664) 777-1552', '(056) 012-4959', NULL, NULL, '999 Baker Way', 'Ohio', 'CA', '68048', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Direct Mail', NULL, NULL, NULL, NULL, NULL),
('d402ee41-35e6-eed9-f73b-5298769dfd94', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sally_id', NULL, 'Caroline', 'Argueta', 'VP Operations', NULL, 0, '(721) 843-1359', '(815) 555-4929', '(788) 389-6634', NULL, NULL, '67321 West Siam St.', 'Persistance', 'CA', '86803', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Employee', NULL, NULL, NULL, NULL, NULL),
('d5feb955-3704-4431-aff6-529876d542fa', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sally_id', NULL, 'Eve', 'Grassi', 'VP Sales', NULL, 0, '(923) 016-2743', '(711) 939-4836', '(798) 314-1515', NULL, NULL, '48920 San Carlos Ave', 'Kansas City', 'CA', '53087', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Conference', NULL, NULL, NULL, NULL, NULL),
('d631824a-bc7d-d775-7a63-529875f10bcc', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sally_id', NULL, 'Kirk', 'Bobb', 'Mgr Operations', NULL, 0, '(490) 090-8932', '(124) 723-5847', '(897) 380-4999', NULL, NULL, '345 Sugar Blvd.', 'Persistance', 'CA', '64630', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Word of mouth', NULL, NULL, NULL, NULL, NULL),
('d6ce9e60-eb48-77a0-dcf4-529876c1c8c0', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_will_id', NULL, 'Agnes', 'Ressler', 'IT Developer', NULL, 0, '(672) 261-6854', '(643) 477-0457', '(856) 153-3383', NULL, NULL, '9 IBM Path', 'San Mateo', 'NY', '88175', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Employee', NULL, NULL, NULL, NULL, NULL),
('d705eb3d-eab4-f7da-2bba-52987586ddc9', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_max_id', NULL, 'Trent', 'Maxfield', 'Senior Product Manager', NULL, 0, '(446) 338-9744', '(813) 707-2165', '(506) 123-1328', NULL, NULL, '777 West Filmore Ln', 'San Mateo', 'CA', '20598', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Conference', NULL, NULL, NULL, NULL, NULL),
('dd791f54-8102-47c2-d8e4-5298767a0d17', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_max_id', NULL, 'Alonso', 'Planas', 'Director Sales', NULL, 0, '(166) 744-1357', '(967) 144-8981', '(125) 146-7347', NULL, NULL, '345 Sugar Blvd.', 'Kansas City', 'CA', '86290', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL),
('de6d86ce-89e4-6759-6a2b-5298768b10fc', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_chris_id', NULL, 'Victoria', 'Whetzel', 'Director Operations', NULL, 0, '(162) 269-7627', '(725) 276-5710', '(753) 721-0775', NULL, NULL, '345 Sugar Blvd.', 'San Mateo', 'NY', '76155', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Existing Customer', NULL, NULL, NULL, NULL, NULL),
('de99d196-6b5e-8439-2fa5-529876ab68b9', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_will_id', NULL, 'Eve', 'Utsey', 'Director Sales', NULL, 0, '(391) 588-9896', '(647) 743-0523', '(918) 830-5716', NULL, NULL, '9 IBM Path', 'Alabama', 'NY', '62193', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Existing Customer', NULL, NULL, NULL, NULL, NULL),
('dea45912-0c1d-fd9a-271b-529876a94e91', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_will_id', NULL, 'Paula', 'Hayek', 'Director Sales', NULL, 0, '(788) 101-4241', '(867) 492-5557', '(645) 727-9946', NULL, NULL, '999 Baker Way', 'Santa Fe', 'NY', '81656', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public Relations', NULL, NULL, NULL, NULL, NULL),
('e1a40707-797c-6368-0de1-529875441e8c', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_max_id', NULL, 'Cedric', 'Palko', 'IT Developer', NULL, 0, '(665) 464-1499', '(905) 675-8076', '(687) 378-6057', NULL, NULL, '1715 Scott Dr', 'St. Petersburg', 'CA', '64206', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Conference', NULL, NULL, NULL, NULL, NULL),
('e340907e-59d7-19ed-1e50-5298769ab0d4', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_chris_id', NULL, 'Jason', 'Caley', 'IT Developer', NULL, 0, '(123) 038-0767', '(026) 540-0219', '(558) 133-8980', NULL, NULL, '1715 Scott Dr', 'Denver', 'NY', '64356', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Direct Mail', NULL, NULL, NULL, NULL, NULL),
('e55b197a-5e04-6a05-ba6c-52987575f8e8', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sarah_id', NULL, 'Leslie', 'Rachal', 'IT Developer', NULL, 0, '(632) 037-2355', '(914) 199-5132', '(728) 359-8826', NULL, NULL, '321 University Ave.', 'Persistance', 'CA', '94821', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Web Site', NULL, NULL, NULL, NULL, NULL),
('e680c1d8-b9f9-837f-92ed-529876f57e65', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_max_id', NULL, 'Rene', 'Menjivar', 'Mgr Operations', NULL, 0, '(690) 839-1973', '(457) 867-1363', '(434) 255-7994', NULL, NULL, '345 Sugar Blvd.', 'Alabama', 'CA', '18032', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Self Generated', NULL, NULL, NULL, NULL, NULL),
('e6b1b7b1-f18d-3586-bf52-529875ddaef7', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sarah_id', NULL, 'Kennith', 'Pimental', 'President', NULL, 0, '(938) 847-1920', '(026) 236-9562', '(904) 327-5727', NULL, NULL, '111 Silicon Valley Road', 'Kansas City', 'CA', '56508', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Employee', NULL, NULL, NULL, NULL, NULL),
('e796adc3-3cd4-3951-ca1f-52987596ea1d', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sarah_id', NULL, 'Dudley', 'Millette', 'VP Operations', NULL, 0, '(373) 488-2630', '(973) 213-3277', '(516) 762-4395', NULL, NULL, '777 West Filmore Ln', 'San Francisco', 'CA', '46940', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Web Site', NULL, NULL, NULL, NULL, NULL),
('e94c1581-0e94-f015-de69-529875fc6467', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sally_id', NULL, 'Cletus', 'Fellman', 'Mgr Operations', NULL, 0, '(216) 927-0916', '(675) 029-8066', '(933) 306-7901', NULL, NULL, '777 West Filmore Ln', 'Sunnyvale', 'CA', '10232', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Trade Show', NULL, NULL, NULL, NULL, NULL),
('e9925976-f6b5-61a0-f89f-529876ea72cc', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sarah_id', NULL, 'Ronald', 'Albrecht', 'Senior Product Manager', NULL, 0, '(166) 238-4064', '(147) 447-7268', '(097) 475-5767', NULL, NULL, '67321 West Siam St.', 'Salt Lake City', 'CA', '30477', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public Relations', NULL, NULL, NULL, NULL, NULL),
('eb6baed2-d096-ce43-3b26-5298753f70b1', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_chris_id', NULL, 'Wilburn', 'Guillotte', 'Mgr Operations', NULL, 0, '(990) 122-2966', '(180) 434-3151', '(379) 995-2075', NULL, NULL, '345 Sugar Blvd.', 'Kansas City', 'NY', '35774', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Partner', NULL, NULL, NULL, NULL, NULL),
('ecc3ff05-fd97-09bf-cf15-52987684fb23', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sally_id', NULL, 'Joann', 'Rosenbaum', 'President', NULL, 0, '(276) 491-5556', '(771) 529-0200', '(984) 929-0194', NULL, NULL, '9 IBM Path', 'St. Petersburg', 'CA', '38799', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Direct Mail', NULL, NULL, NULL, NULL, NULL),
('ed190f56-5be4-27e7-a88c-529876d08939', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_max_id', NULL, 'Patrica', 'Borel', 'IT Developer', NULL, 0, '(237) 710-7810', '(927) 015-2883', '(266) 329-8975', NULL, NULL, '67321 West Siam St.', 'St. Petersburg', 'CA', '44167', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Email', NULL, NULL, NULL, NULL, NULL),
('ed1d23ce-ef03-c5d4-d183-52987612013a', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sarah_id', NULL, 'Isaiah', 'Nolette', 'VP Sales', NULL, 0, '(948) 416-9607', '(653) 896-7828', '(878) 015-9278', NULL, NULL, '999 Baker Way', 'Alabama', 'CA', '27078', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public Relations', NULL, NULL, NULL, NULL, NULL),
('edae39fb-782b-48ac-c990-5298752a8676', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sarah_id', NULL, 'Patrick', 'Haygood', 'Director Sales', NULL, 0, '(004) 236-3271', '(242) 896-1496', '(891) 650-9702', NULL, NULL, '48920 San Carlos Ave', 'Los Angeles', 'CA', '41185', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Cold Call', NULL, NULL, NULL, NULL, NULL),
('eeba3371-ed78-9c68-4380-529875b604a0', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sarah_id', NULL, 'Kathi', 'Elmore', 'IT Developer', NULL, 0, '(856) 853-7018', '(374) 120-7169', '(128) 564-8076', NULL, NULL, '345 Sugar Blvd.', 'Ohio', 'CA', '68399', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Web Site', NULL, NULL, NULL, NULL, NULL),
('ef5151a9-9e4b-5fb4-39f3-5301f2aa0841', '2014-02-17 11:30:49', '2014-02-17 11:30:49', '1', '1', NULL, 0, '1', 'Mr.', 'Antonio', 'Martínez', 'Director Gerente', NULL, 0, NULL, '', '967235256', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL),
('efcc9419-c19d-947d-9567-5298763b3e81', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sarah_id', NULL, 'Deangelo', 'Organ', 'Director Sales', NULL, 0, '(007) 554-0210', '(223) 446-6298', '(336) 133-0125', NULL, NULL, '345 Sugar Blvd.', 'Sunnyvale', 'CA', '48561', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Direct Mail', NULL, NULL, NULL, NULL, NULL),
('f1ee3da2-44a9-f3a9-e20f-5298757d169b', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_chris_id', NULL, 'Cristobal', 'Casson', 'Mgr Operations', NULL, 0, '(626) 855-5169', '(006) 164-7169', '(973) 384-1031', NULL, NULL, '67321 West Siam St.', 'Denver', 'NY', '39222', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL),
('f2fa6275-9d38-ee82-0cdb-529876b9d4a8', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_sally_id', NULL, 'Rodney', 'Mcroberts', 'Director Operations', NULL, 0, '(873) 448-6665', '(794) 525-2085', '(403) 142-4076', NULL, NULL, '777 West Filmore Ln', 'Ohio', 'CA', '25074', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Other', NULL, NULL, NULL, NULL, NULL),
('f38c511d-2307-5337-4ddf-529875e2d364', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_max_id', NULL, 'Robby', 'Poland', 'VP Sales', NULL, 0, '(232) 888-2787', '(228) 578-5812', '(385) 799-4166', NULL, NULL, '123 Anywhere Street', 'Persistance', 'CA', '57725', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Other', NULL, NULL, NULL, NULL, NULL),
('f3b0d6f5-c72e-87ed-9e14-52987537f5e6', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_max_id', NULL, 'Leif', 'Landy', 'VP Sales', NULL, 0, '(546) 352-3780', '(156) 378-4790', '(286) 010-9553', NULL, NULL, '321 University Ave.', 'Ohio', 'CA', '94872', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Public Relations', NULL, NULL, NULL, NULL, NULL),
('fb6e049e-32c4-c0e3-386e-529876c8efcb', '2013-11-29 11:06:39', '2013-11-29 11:06:39', '1', '1', NULL, 0, 'seed_chris_id', NULL, 'Colette', 'Almon', 'Director Sales', NULL, 0, '(591) 758-4362', '(606) 374-1562', '(777) 644-5961', NULL, NULL, '777 West Filmore Ln', 'Santa Monica', 'NY', '86188', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Direct Mail', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacts_audit`
--

CREATE TABLE IF NOT EXISTS `contacts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_contacts_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacts_bugs`
--

CREATE TABLE IF NOT EXISTS `contacts_bugs` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_bug_con` (`contact_id`),
  KEY `idx_con_bug_bug` (`bug_id`),
  KEY `idx_contact_bug` (`contact_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacts_cases`
--

CREATE TABLE IF NOT EXISTS `contacts_cases` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_case_con` (`contact_id`),
  KEY `idx_con_case_case` (`case_id`),
  KEY `idx_contacts_cases` (`contact_id`,`case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacts_cstm`
--

CREATE TABLE IF NOT EXISTS `contacts_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `contacts_cstm`
--

INSERT INTO `contacts_cstm` (`id_c`, `jjwg_maps_lng_c`, `jjwg_maps_lat_c`, `jjwg_maps_geocode_status_c`, `jjwg_maps_address_c`) VALUES
('ef5151a9-9e4b-5fb4-39f3-5301f2aa0841', 0.00000000, 0.00000000, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacts_users`
--

CREATE TABLE IF NOT EXISTS `contacts_users` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_users_con` (`contact_id`),
  KEY `idx_con_users_user` (`user_id`),
  KEY `idx_contacts_users` (`contact_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cron_remove_documents`
--

CREATE TABLE IF NOT EXISTS `cron_remove_documents` (
  `id` varchar(36) NOT NULL,
  `bean_id` varchar(36) DEFAULT NULL,
  `module` varchar(25) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_cron_remove_document_bean_id` (`bean_id`),
  KEY `idx_cron_remove_document_stamp` (`date_modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `currencies`
--

CREATE TABLE IF NOT EXISTS `currencies` (
  `id` char(36) NOT NULL,
  `name` varchar(36) DEFAULT NULL,
  `symbol` varchar(36) DEFAULT NULL,
  `iso4217` varchar(3) DEFAULT NULL,
  `conversion_rate` double DEFAULT '0',
  `status` varchar(100) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `created_by` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_currency_name` (`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `custom_fields`
--

CREATE TABLE IF NOT EXISTS `custom_fields` (
  `bean_id` varchar(36) DEFAULT NULL,
  `set_num` int(11) DEFAULT '0',
  `field0` varchar(255) DEFAULT NULL,
  `field1` varchar(255) DEFAULT NULL,
  `field2` varchar(255) DEFAULT NULL,
  `field3` varchar(255) DEFAULT NULL,
  `field4` varchar(255) DEFAULT NULL,
  `field5` varchar(255) DEFAULT NULL,
  `field6` varchar(255) DEFAULT NULL,
  `field7` varchar(255) DEFAULT NULL,
  `field8` varchar(255) DEFAULT NULL,
  `field9` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  KEY `idx_beanid_set_num` (`bean_id`,`set_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documents`
--

CREATE TABLE IF NOT EXISTS `documents` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `document_name` varchar(255) DEFAULT NULL,
  `doc_id` varchar(100) DEFAULT NULL,
  `doc_type` varchar(100) DEFAULT 'Sugar',
  `doc_url` varchar(255) DEFAULT NULL,
  `active_date` date DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `category_id` varchar(100) DEFAULT NULL,
  `subcategory_id` varchar(100) DEFAULT NULL,
  `status_id` varchar(100) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  `related_doc_id` char(36) DEFAULT NULL,
  `related_doc_rev_id` char(36) DEFAULT NULL,
  `is_template` tinyint(1) DEFAULT '0',
  `template_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_doc_cat` (`category_id`,`subcategory_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documents_accounts`
--

CREATE TABLE IF NOT EXISTS `documents_accounts` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_accounts_account_id` (`account_id`,`document_id`),
  KEY `documents_accounts_document_id` (`document_id`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documents_bugs`
--

CREATE TABLE IF NOT EXISTS `documents_bugs` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_bugs_bug_id` (`bug_id`,`document_id`),
  KEY `documents_bugs_document_id` (`document_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documents_cases`
--

CREATE TABLE IF NOT EXISTS `documents_cases` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_cases_case_id` (`case_id`,`document_id`),
  KEY `documents_cases_document_id` (`document_id`,`case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documents_contacts`
--

CREATE TABLE IF NOT EXISTS `documents_contacts` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_contacts_contact_id` (`contact_id`,`document_id`),
  KEY `documents_contacts_document_id` (`document_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documents_opportunities`
--

CREATE TABLE IF NOT EXISTS `documents_opportunities` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_docu_opps_oppo_id` (`opportunity_id`,`document_id`),
  KEY `idx_docu_oppo_docu_id` (`document_id`,`opportunity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `document_revisions`
--

CREATE TABLE IF NOT EXISTS `document_revisions` (
  `id` varchar(36) NOT NULL,
  `change_log` varchar(255) DEFAULT NULL,
  `document_id` varchar(36) DEFAULT NULL,
  `doc_id` varchar(100) DEFAULT NULL,
  `doc_type` varchar(100) DEFAULT NULL,
  `doc_url` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `file_ext` varchar(100) DEFAULT NULL,
  `file_mime_type` varchar(100) DEFAULT NULL,
  `revision` varchar(100) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documentrevision_mimetype` (`file_mime_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eapm`
--

CREATE TABLE IF NOT EXISTS `eapm` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `application` varchar(100) DEFAULT 'webex',
  `api_data` text,
  `consumer_key` varchar(255) DEFAULT NULL,
  `consumer_secret` varchar(255) DEFAULT NULL,
  `oauth_token` varchar(255) DEFAULT NULL,
  `oauth_secret` varchar(255) DEFAULT NULL,
  `validated` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_app_active` (`assigned_user_id`,`application`,`validated`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `emailman`
--

CREATE TABLE IF NOT EXISTS `emailman` (
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `user_id` char(36) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `campaign_id` char(36) DEFAULT NULL,
  `marketing_id` char(36) DEFAULT NULL,
  `list_id` char(36) DEFAULT NULL,
  `send_date_time` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `in_queue` tinyint(1) DEFAULT '0',
  `in_queue_date` datetime DEFAULT NULL,
  `send_attempts` int(11) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `related_id` char(36) DEFAULT NULL,
  `related_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_eman_list` (`list_id`,`user_id`,`deleted`),
  KEY `idx_eman_campaign_id` (`campaign_id`),
  KEY `idx_eman_relid_reltype_id` (`related_id`,`related_type`,`campaign_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `emails`
--

CREATE TABLE IF NOT EXISTS `emails` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_sent` datetime DEFAULT NULL,
  `message_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `flagged` tinyint(1) DEFAULT NULL,
  `reply_to_status` tinyint(1) DEFAULT NULL,
  `intent` varchar(100) DEFAULT 'pick',
  `mailbox_id` char(36) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_email_name` (`name`),
  KEY `idx_message_id` (`message_id`),
  KEY `idx_email_parent_id` (`parent_id`),
  KEY `idx_email_assigned` (`assigned_user_id`,`type`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `emails_beans`
--

CREATE TABLE IF NOT EXISTS `emails_beans` (
  `id` char(36) NOT NULL,
  `email_id` char(36) DEFAULT NULL,
  `bean_id` char(36) DEFAULT NULL,
  `bean_module` varchar(100) DEFAULT NULL,
  `campaign_data` text,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_emails_beans_bean_id` (`bean_id`),
  KEY `idx_emails_beans_email_bean` (`email_id`,`bean_id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `emails_email_addr_rel`
--

CREATE TABLE IF NOT EXISTS `emails_email_addr_rel` (
  `id` char(36) NOT NULL,
  `email_id` char(36) NOT NULL,
  `address_type` varchar(4) DEFAULT NULL,
  `email_address_id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_eearl_email_id` (`email_id`,`address_type`),
  KEY `idx_eearl_address_id` (`email_address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `emails_text`
--

CREATE TABLE IF NOT EXISTS `emails_text` (
  `email_id` char(36) NOT NULL,
  `from_addr` varchar(255) DEFAULT NULL,
  `reply_to_addr` varchar(255) DEFAULT NULL,
  `to_addrs` text,
  `cc_addrs` text,
  `bcc_addrs` text,
  `description` longtext,
  `description_html` longtext,
  `raw_source` longtext,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`email_id`),
  KEY `emails_textfromaddr` (`from_addr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `email_addresses`
--

CREATE TABLE IF NOT EXISTS `email_addresses` (
  `id` char(36) NOT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `email_address_caps` varchar(255) DEFAULT NULL,
  `invalid_email` tinyint(1) DEFAULT '0',
  `opt_out` tinyint(1) DEFAULT '0',
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_ea_caps_opt_out_invalid` (`email_address_caps`,`opt_out`,`invalid_email`),
  KEY `idx_ea_opt_out_invalid` (`email_address`,`opt_out`,`invalid_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `email_addresses`
--

INSERT INTO `email_addresses` (`id`, `email_address`, `email_address_caps`, `invalid_email`, `opt_out`, `date_created`, `date_modified`, `deleted`) VALUES
('126083a4-25cf-312d-043e-530702ce34e3', 'cebrianmarquez@gmail.com', 'CEBRIANMARQUEZ@GMAIL.COM', 0, 0, '2014-02-21 07:38:21', '2014-02-21 07:38:21', 0),
('b07ebf4a-6c8f-b3c5-492b-5301d357a753', 'admin@crmprueba.es', 'ADMIN@CRMPRUEBA.ES', 0, 0, '2014-02-17 09:15:21', '2014-02-17 09:15:21', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `email_addr_bean_rel`
--

CREATE TABLE IF NOT EXISTS `email_addr_bean_rel` (
  `id` char(36) NOT NULL,
  `email_address_id` char(36) NOT NULL,
  `bean_id` char(36) NOT NULL,
  `bean_module` varchar(100) DEFAULT NULL,
  `primary_address` tinyint(1) DEFAULT '0',
  `reply_to_address` tinyint(1) DEFAULT '0',
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_email_address_id` (`email_address_id`),
  KEY `idx_bean_id` (`bean_id`,`bean_module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `email_addr_bean_rel`
--

INSERT INTO `email_addr_bean_rel` (`id`, `email_address_id`, `bean_id`, `bean_module`, `primary_address`, `reply_to_address`, `date_created`, `date_modified`, `deleted`) VALUES
('121ffa0d-5595-0760-34a2-53070212e49b', '126083a4-25cf-312d-043e-530702ce34e3', 'f2e0750f-ee66-7a15-fd82-530702f43fb6', 'Users', 1, 0, '2014-02-21 07:38:21', '2014-02-21 07:38:21', 0),
('b03e6467-3a04-055c-04be-5301d3d924d7', 'b07ebf4a-6c8f-b3c5-492b-5301d357a753', '1', 'Users', 1, 0, '2014-02-17 09:15:21', '2014-02-17 09:15:21', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `email_cache`
--

CREATE TABLE IF NOT EXISTS `email_cache` (
  `ie_id` char(36) DEFAULT NULL,
  `mbox` varchar(60) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `fromaddr` varchar(100) DEFAULT NULL,
  `toaddr` varchar(255) DEFAULT NULL,
  `senddate` datetime DEFAULT NULL,
  `message_id` varchar(255) DEFAULT NULL,
  `mailsize` int(10) unsigned DEFAULT NULL,
  `imap_uid` int(10) unsigned DEFAULT NULL,
  `msgno` int(10) unsigned DEFAULT NULL,
  `recent` tinyint(4) DEFAULT NULL,
  `flagged` tinyint(4) DEFAULT NULL,
  `answered` tinyint(4) DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT NULL,
  `seen` tinyint(4) DEFAULT NULL,
  `draft` tinyint(4) DEFAULT NULL,
  KEY `idx_ie_id` (`ie_id`),
  KEY `idx_mail_date` (`ie_id`,`mbox`,`senddate`),
  KEY `idx_mail_from` (`ie_id`,`mbox`,`fromaddr`),
  KEY `idx_mail_subj` (`subject`),
  KEY `idx_mail_to` (`toaddr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `email_marketing`
--

CREATE TABLE IF NOT EXISTS `email_marketing` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `from_name` varchar(100) DEFAULT NULL,
  `from_addr` varchar(100) DEFAULT NULL,
  `reply_to_name` varchar(100) DEFAULT NULL,
  `reply_to_addr` varchar(100) DEFAULT NULL,
  `inbound_email_id` varchar(36) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `template_id` char(36) NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `all_prospect_lists` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_emmkt_name` (`name`),
  KEY `idx_emmkit_del` (`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `email_marketing_prospect_lists`
--

CREATE TABLE IF NOT EXISTS `email_marketing_prospect_lists` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `email_marketing_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `email_mp_prospects` (`email_marketing_id`,`prospect_list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `email_templates`
--

CREATE TABLE IF NOT EXISTS `email_templates` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `published` varchar(3) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `subject` varchar(255) DEFAULT NULL,
  `body` text,
  `body_html` text,
  `deleted` tinyint(1) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `text_only` tinyint(1) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_email_template_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `email_templates`
--

INSERT INTO `email_templates` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `published`, `name`, `description`, `subject`, `body`, `body_html`, `deleted`, `assigned_user_id`, `text_only`, `type`) VALUES
('43195e98-7bdb-ff13-d955-5301d003b50c', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '1', 'off', 'Case Closure', 'Template for informing a contact that their case has been closed.', '$acase_name [CASE:$acase_case_number] closed', 'Hi $contact_first_name $contact_last_name,\r\n\r\n					   Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered\r\n					   Status:				$acase_status\r\n					   Reference:			$acase_case_number\r\n					   Resolution:			$acase_resolution', '<p> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p>Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\r\n					    <table border="0"><tbody><tr><td>Status</td><td>$acase_status</td></tr><tr><td>Reference</td><td>$acase_case_number</td></tr><tr><td>Resolution</td><td>$acase_resolution</td></tr></tbody></table>', 0, NULL, NULL, NULL),
('5120a6b0-b0e1-5f08-07e6-5301d09135bf', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '1', 'off', 'Joomla Account Creation', 'Template used when informing a contact that they''ve been given an account on the joomla portal.', 'Support Portal Account Created', 'Hi $contact_name,\r\n					   An account has been created for you at $portal_address.\r\n					   You may login using this email address and the password $joomla_pass', '<p>Hi $contact_name,</p>\r\n					    <p>An account has been created for you at <a href="$portal_address">$portal_address</a>.</p>\r\n					    <p>You may login using this email address and the password $joomla_pass</p>', 0, NULL, NULL, NULL),
('6a6020cf-bb2c-b593-1238-5301d0456bd0', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '1', 'off', 'Case Creation', 'Template to send to a contact when a case is received from them.', '$acase_name [CASE:$acase_case_number]', 'Hi $contact_first_name $contact_last_name,\r\n\r\n					   We''ve received your case $acase_name (# $acase_case_number) on $acase_date_entered\r\n					   Status:		$acase_status\r\n					   Reference:	$acase_case_number\r\n					   Description:	$acase_description', '<p> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p>We''ve received your case $acase_name (# $acase_case_number) on $acase_date_entered</p>\r\n					    <table border="0"><tbody><tr><td>Status</td><td>$acase_status</td></tr><tr><td>Reference</td><td>$acase_case_number</td></tr><tr><td>Description</td><td>$acase_description</td></tr></tbody></table>', 0, NULL, NULL, NULL),
('793a4c0d-7c78-b91a-b55f-5301d051055f', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '1', 'off', 'Contact Case Update', 'Template to send to a contact when their case is updated.', '$acase_name update [CASE:$acase_case_number]', 'Hi $user_first_name $user_last_name,\r\n\r\n					   You''ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:\r\n					       $contact_first_name $contact_last_name, said:\r\n					               $aop_case_updates_description', '<p>Hi $contact_first_name $contact_last_name,</p>\r\n					    <p> </p>\r\n					    <p>You''ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:</p>\r\n					    <p><strong>$user_first_name $user_last_name said:</strong></p>\r\n					    <p style="padding-left:30px;">$aop_case_updates_description</p>', 0, NULL, NULL, NULL),
('862a13b0-b764-e535-e7d7-5301d085cf41', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '1', 'off', 'User Case Update', 'Email template to send to a Sugar user when their case is updated.', '$acase_name (# $acase_case_number) update', 'Hi $user_first_name $user_last_name,\r\n\r\n					   You''ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:\r\n					       $contact_first_name $contact_last_name, said:\r\n					               $aop_case_updates_description\r\n                        You may review this Case at:\r\n                            $sugarurl/index.php?module=Cases&action=DetailView&record=$acase_id;', '<p>Hi $user_first_name $user_last_name,</p>\r\n					   <p> </p>\r\n					   <p>You''ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:</p>\r\n					   <p><strong>$contact_first_name $contact_last_name, said:</strong></p>\r\n					   <p style="padding-left:30px;">$aop_case_updates_description</p>\r\n					   <p>You may review this Case at: $sugarurl/index.php?module=Cases&action=DetailView&record=$acase_id;</p>\r\n					   ', 0, NULL, NULL, NULL),
('d780fc40-76e7-57e9-50b2-5301d08c1146', '2013-05-24 14:31:45', '2014-02-17 09:00:55', '1', '1', 'off', 'Event Invite Template', 'Default event invite template.', 'You have been invited to $fp_events_name', 'Dear $contact_name,\r\nYou have been invited to $fp_events_name on $fp_events_date_start to $fp_events_date_end\r\n$fp_events_description\r\nYours Sincerely,\r\n', '\r\n<p>Dear $contact_name,</p>\r\n<p>You have been invited to $fp_events_name on $fp_events_date_start to $fp_events_date_end</p>\r\n<p>$fp_events_description</p>\r\n<p>If you would like to accept this invititation please click accept.</p>\r\n<p> $fp_events_link or $fp_events_link_declined</p>\r\n<p>Yours Sincerely,</p>\r\n', 0, NULL, NULL, 'email'),
('d9fdd7de-cf3e-be07-44ed-5301d0de5914', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '1', 'off', 'Email de contraseña generada por el sistema', 'Esta plantilla es utilizada cuando un Administrador de Sistema envía una nueva contraseña a un usuario.', 'Información de la Nueva Cuenta de Usuario', '\nAquí está su nuevo nombre de usuario y contraseña temporal:\nNombre de Usuario : $contact_user_user_name\nContraseña : $contact_user_user_hash\n\n$config_site_url\n\nDespués de ingresar utilizando la contraseña de arriba, puede que se le pida cambiar la contraseña por una de su propia elección.', '<div><table width="550"><tbody><tr><td><p>Aquí está su nuevo nombre de usuario y contraseña temporal:</p><p>Nombre de Usuario : $contact_user_user_name </p><p>Contraseña : $contact_user_user_hash </p><br /><p>$config_site_url</p><br /><p>Después de ingresar utilizando la contraseña de arriba, puede que se le pida cambiar la contraseña por una de su propia elección.</p>   </td>         </tr><tr><td></td>         </tr></tbody></table></div>', 0, NULL, 0, NULL),
('e78674a2-fe55-2aa0-e271-5301d0acfa4d', '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '1', 'off', 'Email de Contraseña Olvidada', 'Esta plantilla es utilizada para enviarle un enlace al usuario que al cliquearse reestablece la contraseña de la cuenta del usuario.', 'Reestablecer su contraseña', '\nRecientemente ($contact_user_pwd_last_changed) ha requerido reestablecer la contraseña de su cuenta.\n\nHaga click en el siguiente enlace para reestablecer su contraseña:\n\n$contact_user_link_guid', '<div><table width="550"><tbody><tr><td><p>Recientemente ($contact_user_pwd_last_changed) ha requerido reestablecer la contraseña de su cuenta. </p><p>Haga click en el siguiente enlace para reestablecer su contraseña:</p><p> $contact_user_link_guid </p>  </td>         </tr><tr><td></td>         </tr></tbody></table></div>', 0, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fact_facturas`
--

CREATE TABLE IF NOT EXISTS `fact_facturas` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `fact_facturas_type` varchar(100) DEFAULT NULL,
  `lead_source` varchar(50) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `amount_usdollar` double DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `date_closed` date DEFAULT NULL,
  `next_step` varchar(100) DEFAULT NULL,
  `sales_stage` varchar(100) DEFAULT NULL,
  `probability` double DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `descuento` varchar(25) DEFAULT NULL,
  `repercutido` float DEFAULT NULL,
  `tipo_repercutido` varchar(18) DEFAULT '01',
  `retencion` float DEFAULT NULL,
  `estado` varchar(100) DEFAULT 'elaborando',
  `condiciones` text,
  `total_items` float(18,2) DEFAULT NULL,
  `total_descuento` float(18,2) DEFAULT NULL,
  `total_base` float(18,2) DEFAULT NULL,
  `total_iva` float(18,2) DEFAULT NULL,
  `total_retencion` float(18,2) DEFAULT NULL,
  `impuesto_unico` tinyint(1) DEFAULT NULL,
  `retencion_unica` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fact_facturas_audit`
--

CREATE TABLE IF NOT EXISTS `fact_facturas_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_fact_facturas_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fact_factura_items`
--

CREATE TABLE IF NOT EXISTS `fact_factura_items` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `factura_id` varchar(36) DEFAULT NULL,
  `item_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `indice_factura` (`factura_id`),
  KEY `indice_item` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fact_items`
--

CREATE TABLE IF NOT EXISTS `fact_items` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `tipo` varchar(100) DEFAULT 'product',
  `precio_ud` decimal(26,2) DEFAULT NULL,
  `unidad` varchar(25) DEFAULT NULL,
  `unidad_custom` varchar(15) DEFAULT NULL,
  `cantidad` decimal(26,2) DEFAULT '1.00',
  `orden` int(11) DEFAULT NULL,
  `tipo_repercutido` varchar(18) DEFAULT NULL,
  `retencion` float DEFAULT NULL,
  `impuesto` float DEFAULT NULL,
  `descuento` varchar(25) DEFAULT NULL,
  `total_antes` float(18,2) DEFAULT NULL,
  `total_descuento` float(18,2) DEFAULT NULL,
  `total_impuesto` float(18,2) DEFAULT NULL,
  `total_retencion` float(18,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fact_items_audit`
--

CREATE TABLE IF NOT EXISTS `fact_items_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_fact_items_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fields_meta_data`
--

CREATE TABLE IF NOT EXISTS `fields_meta_data` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `vname` varchar(255) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `help` varchar(255) DEFAULT NULL,
  `custom_module` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `len` int(11) DEFAULT NULL,
  `required` tinyint(1) DEFAULT '0',
  `default_value` varchar(255) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `audited` tinyint(1) DEFAULT '0',
  `massupdate` tinyint(1) DEFAULT '0',
  `duplicate_merge` smallint(6) DEFAULT '0',
  `reportable` tinyint(1) DEFAULT '1',
  `importable` varchar(255) DEFAULT NULL,
  `ext1` varchar(255) DEFAULT NULL,
  `ext2` varchar(255) DEFAULT NULL,
  `ext3` varchar(255) DEFAULT NULL,
  `ext4` text,
  PRIMARY KEY (`id`),
  KEY `idx_meta_id_del` (`id`,`deleted`),
  KEY `idx_meta_cm_del` (`custom_module`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `fields_meta_data`
--

INSERT INTO `fields_meta_data` (`id`, `name`, `vname`, `comments`, `help`, `custom_module`, `type`, `len`, `required`, `default_value`, `date_modified`, `deleted`, `audited`, `massupdate`, `duplicate_merge`, `reportable`, `importable`, `ext1`, `ext2`, `ext3`, `ext4`) VALUES
('Accountsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Accounts', 'varchar', 255, 0, NULL, '2014-02-17 09:00:55', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Accountsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Accounts', 'varchar', 255, 0, NULL, '2014-02-17 09:00:55', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Accountsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Accounts', 'float', 10, 0, '0.00000000', '2014-02-17 09:00:55', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Accountsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Accounts', 'float', 11, 0, '0.00000000', '2014-02-17 09:00:55', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Casesjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Cases', 'varchar', 255, 0, NULL, '2014-02-17 09:00:55', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Casesjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Cases', 'varchar', 255, 0, NULL, '2014-02-17 09:00:55', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Casesjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Cases', 'float', 10, 0, '0.00000000', '2014-02-17 09:00:55', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Casesjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Cases', 'float', 11, 0, '0.00000000', '2014-02-17 09:00:55', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Contactsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Contacts', 'varchar', 255, 0, NULL, '2014-02-17 09:00:55', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Contactsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Contacts', 'varchar', 255, 0, NULL, '2014-02-17 09:00:55', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Contactsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Contacts', 'float', 10, 0, '0.00000000', '2014-02-17 09:00:55', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Contactsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Contacts', 'float', 11, 0, '0.00000000', '2014-02-17 09:00:55', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Leadsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Leads', 'varchar', 255, 0, NULL, '2014-02-17 09:00:55', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Leadsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Leads', 'varchar', 255, 0, NULL, '2014-02-17 09:00:55', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Leadsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Leads', 'float', 10, 0, '0.00000000', '2014-02-17 09:00:55', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Leadsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Leads', 'float', 11, 0, '0.00000000', '2014-02-17 09:00:55', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Meetingsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Meetings', 'varchar', 255, 0, NULL, '2014-02-17 09:00:55', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Meetingsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Meetings', 'varchar', 255, 0, NULL, '2014-02-17 09:00:55', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Meetingsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Meetings', 'float', 10, 0, '0.00000000', '2014-02-17 09:00:55', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Meetingsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Meetings', 'float', 11, 0, '0.00000000', '2014-02-17 09:00:55', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Opportunitiesjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Opportunities', 'varchar', 255, 0, NULL, '2014-02-17 09:00:55', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Opportunitiesjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Opportunities', 'varchar', 255, 0, NULL, '2014-02-17 09:00:55', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Opportunitiesjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Opportunities', 'float', 10, 0, '0.00000000', '2014-02-17 09:00:55', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Opportunitiesjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Opportunities', 'float', 11, 0, '0.00000000', '2014-02-17 09:00:55', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Projectjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Project', 'varchar', 255, 0, NULL, '2014-02-17 09:00:55', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Projectjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Project', 'varchar', 255, 0, NULL, '2014-02-17 09:00:55', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Projectjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Project', 'float', 10, 0, '0.00000000', '2014-02-17 09:00:55', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Projectjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Project', 'float', 11, 0, '0.00000000', '2014-02-17 09:00:55', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Prospectsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Prospects', 'varchar', 255, 0, NULL, '2014-02-17 09:00:55', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Prospectsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Prospects', 'varchar', 255, 0, NULL, '2014-02-17 09:00:55', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Prospectsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Prospects', 'float', 10, 0, '0.00000000', '2014-02-17 09:00:55', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Prospectsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Prospects', 'float', 11, 0, '0.00000000', '2014-02-17 09:00:55', 0, 0, 0, 0, 1, 'true', '8', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `folders`
--

CREATE TABLE IF NOT EXISTS `folders` (
  `id` char(36) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `folder_type` varchar(25) DEFAULT NULL,
  `parent_folder` char(36) DEFAULT NULL,
  `has_child` tinyint(1) DEFAULT '0',
  `is_group` tinyint(1) DEFAULT '0',
  `is_dynamic` tinyint(1) DEFAULT '0',
  `dynamic_query` text,
  `assign_to_id` char(36) DEFAULT NULL,
  `created_by` char(36) NOT NULL,
  `modified_by` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_parent_folder` (`parent_folder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `folders`
--

INSERT INTO `folders` (`id`, `name`, `folder_type`, `parent_folder`, `has_child`, `is_group`, `is_dynamic`, `dynamic_query`, `assign_to_id`, `created_by`, `modified_by`, `deleted`) VALUES
('150e3401-79ed-640c-46ce-530724c15bb0', 'Borradores', 'draft', 'e5f3b753-b5b7-d792-1c18-5307246f3c51', 0, 0, 1, 'SELECT emails.id polymorphic_id, ''Emails'' polymorphic_module FROM emails\n								   JOIN emails_text on emails.id = emails_text.email_id\n                                   WHERE (type = ''draft'' OR status = ''draft'') AND assigned_user_id = ''1'' AND emails.deleted = ''0'' AND status NOT IN (''archived'') AND type NOT IN (''archived'')', '', '1', '1', 0),
('35a28f42-2634-08f9-c4f1-530724192561', 'Emails Enviados', 'sent', 'e5f3b753-b5b7-d792-1c18-5307246f3c51', 0, 0, 1, 'SELECT emails.id polymorphic_id, ''Emails'' polymorphic_module FROM emails\n								   JOIN emails_text on emails.id = emails_text.email_id\n                                   WHERE (type = ''out'' OR status = ''sent'') AND assigned_user_id = ''1'' AND emails.deleted = ''0'' AND status NOT IN (''archived'') AND type NOT IN (''archived'')', '', '1', '1', 0),
('56172340-4901-0b2b-7a27-530724cab632', 'Mis Emails Archivados', 'archived', 'e5f3b753-b5b7-d792-1c18-5307246f3c51', 0, 0, 1, '', '', '1', '1', 0),
('e5f3b753-b5b7-d792-1c18-5307246f3c51', 'Mi Correo', 'inbound', '', 1, 0, 1, 'SELECT emails.id polymorphic_id, ''Emails'' polymorphic_module FROM emails\n								   JOIN emails_text on emails.id = emails_text.email_id\n                                   WHERE (type = ''inbound'' OR status = ''inbound'') AND assigned_user_id = ''1'' AND emails.deleted = ''0'' AND status NOT IN (''sent'', ''archived'', ''draft'') AND type NOT IN (''out'', ''archived'', ''draft'')', '', '1', '1', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `folders_rel`
--

CREATE TABLE IF NOT EXISTS `folders_rel` (
  `id` char(36) NOT NULL,
  `folder_id` char(36) NOT NULL,
  `polymorphic_module` varchar(25) DEFAULT NULL,
  `polymorphic_id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_poly_module_poly_id` (`polymorphic_module`,`polymorphic_id`),
  KEY `idx_fr_id_deleted_poly` (`folder_id`,`deleted`,`polymorphic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `folders_subscriptions`
--

CREATE TABLE IF NOT EXISTS `folders_subscriptions` (
  `id` char(36) NOT NULL,
  `folder_id` char(36) NOT NULL,
  `assigned_user_id` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_folder_id_assigned_user_id` (`folder_id`,`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `folders_subscriptions`
--

INSERT INTO `folders_subscriptions` (`id`, `folder_id`, `assigned_user_id`) VALUES
('1517d020-4336-47ab-78bb-5307243735f7', '150e3401-79ed-640c-46ce-530724c15bb0', '1'),
('35ac7319-0f24-8f10-33a5-5307249e2669', '35a28f42-2634-08f9-c4f1-530724192561', '1'),
('561bb86d-efb5-dc49-4356-53072431edfd', '56172340-4901-0b2b-7a27-530724cab632', '1'),
('e5fd977b-07fe-be1c-e403-53072439e9aa', 'e5f3b753-b5b7-d792-1c18-5307246f3c51', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fp_events`
--

CREATE TABLE IF NOT EXISTS `fp_events` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `duration_hours` int(3) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `budget` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `invite_templates` varchar(100) DEFAULT NULL,
  `accept_redirect` varchar(255) DEFAULT NULL,
  `decline_redirect` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fp_events_audit`
--

CREATE TABLE IF NOT EXISTS `fp_events_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_fp_events_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fp_events_contacts_c`
--

CREATE TABLE IF NOT EXISTS `fp_events_contacts_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_contactsfp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_contactscontacts_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int(2) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fp_events_contacts_alt` (`fp_events_contactsfp_events_ida`,`fp_events_contactscontacts_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fp_events_fp_event_delegates_1_c`
--

CREATE TABLE IF NOT EXISTS `fp_events_fp_event_delegates_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_fp_event_delegates_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_fp_event_delegates_1fp_event_delegates_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fp_events_fp_event_delegates_1_ida1` (`fp_events_fp_event_delegates_1fp_events_ida`),
  KEY `fp_events_fp_event_delegates_1_alt` (`fp_events_fp_event_delegates_1fp_event_delegates_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fp_events_fp_event_locations_1_c`
--

CREATE TABLE IF NOT EXISTS `fp_events_fp_event_locations_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_fp_event_locations_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_fp_event_locations_1fp_event_locations_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fp_events_fp_event_locations_1_alt` (`fp_events_fp_event_locations_1fp_events_ida`,`fp_events_fp_event_locations_1fp_event_locations_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fp_events_leads_1_c`
--

CREATE TABLE IF NOT EXISTS `fp_events_leads_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_leads_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_leads_1leads_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int(2) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fp_events_leads_1_alt` (`fp_events_leads_1fp_events_ida`,`fp_events_leads_1leads_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fp_events_prospects_1_c`
--

CREATE TABLE IF NOT EXISTS `fp_events_prospects_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_prospects_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_prospects_1prospects_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int(2) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fp_events_prospects_1_alt` (`fp_events_prospects_1fp_events_ida`,`fp_events_prospects_1prospects_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fp_event_locations`
--

CREATE TABLE IF NOT EXISTS `fp_event_locations` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `address_city` varchar(100) DEFAULT NULL,
  `address_country` varchar(100) DEFAULT NULL,
  `address_postalcode` varchar(20) DEFAULT NULL,
  `address_state` varchar(100) DEFAULT NULL,
  `capacity` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fp_event_locations_audit`
--

CREATE TABLE IF NOT EXISTS `fp_event_locations_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_fp_event_locations_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fp_event_locations_fp_events_1_c`
--

CREATE TABLE IF NOT EXISTS `fp_event_locations_fp_events_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_event_locations_fp_events_1fp_event_locations_ida` varchar(36) DEFAULT NULL,
  `fp_event_locations_fp_events_1fp_events_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fp_event_locations_fp_events_1_ida1` (`fp_event_locations_fp_events_1fp_event_locations_ida`),
  KEY `fp_event_locations_fp_events_1_alt` (`fp_event_locations_fp_events_1fp_events_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `import_maps`
--

CREATE TABLE IF NOT EXISTS `import_maps` (
  `id` char(36) NOT NULL,
  `name` varchar(254) DEFAULT NULL,
  `source` varchar(36) DEFAULT NULL,
  `enclosure` varchar(1) DEFAULT ' ',
  `delimiter` varchar(1) DEFAULT ',',
  `module` varchar(36) DEFAULT NULL,
  `content` text,
  `default_values` text,
  `has_header` tinyint(1) DEFAULT '1',
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_published` varchar(3) DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `idx_owner_module_name` (`assigned_user_id`,`module`,`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inbound_email`
--

CREATE TABLE IF NOT EXISTS `inbound_email` (
  `id` varchar(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Active',
  `server_url` varchar(100) DEFAULT NULL,
  `email_user` varchar(100) DEFAULT NULL,
  `email_password` varchar(100) DEFAULT NULL,
  `port` int(5) DEFAULT NULL,
  `service` varchar(50) DEFAULT NULL,
  `mailbox` text,
  `delete_seen` tinyint(1) DEFAULT '0',
  `mailbox_type` varchar(10) DEFAULT NULL,
  `template_id` char(36) DEFAULT NULL,
  `stored_options` text,
  `group_id` char(36) DEFAULT NULL,
  `is_personal` tinyint(1) DEFAULT '0',
  `groupfolder_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inbound_email_autoreply`
--

CREATE TABLE IF NOT EXISTS `inbound_email_autoreply` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `autoreplied_to` varchar(100) DEFAULT NULL,
  `ie_id` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_ie_autoreplied_to` (`autoreplied_to`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inbound_email_cache_ts`
--

CREATE TABLE IF NOT EXISTS `inbound_email_cache_ts` (
  `id` varchar(255) NOT NULL,
  `ie_timestamp` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jjwg_address_cache`
--

CREATE TABLE IF NOT EXISTS `jjwg_address_cache` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `lat` float(10,8) DEFAULT NULL,
  `lng` float(11,8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jjwg_address_cache_audit`
--

CREATE TABLE IF NOT EXISTS `jjwg_address_cache_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_jjwg_address_cache_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jjwg_areas`
--

CREATE TABLE IF NOT EXISTS `jjwg_areas` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `coordinates` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jjwg_areas_audit`
--

CREATE TABLE IF NOT EXISTS `jjwg_areas_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_jjwg_areas_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jjwg_maps`
--

CREATE TABLE IF NOT EXISTS `jjwg_maps` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `distance` float(9,4) DEFAULT NULL,
  `unit_type` varchar(100) DEFAULT 'mi',
  `module_type` varchar(100) DEFAULT 'Accounts',
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jjwg_maps_audit`
--

CREATE TABLE IF NOT EXISTS `jjwg_maps_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_jjwg_maps_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jjwg_maps_jjwg_areas_c`
--

CREATE TABLE IF NOT EXISTS `jjwg_maps_jjwg_areas_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `jjwg_maps_5304wg_maps_ida` varchar(36) DEFAULT NULL,
  `jjwg_maps_41f2g_areas_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `jjwg_maps_jjwg_areas_alt` (`jjwg_maps_5304wg_maps_ida`,`jjwg_maps_41f2g_areas_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jjwg_maps_jjwg_markers_c`
--

CREATE TABLE IF NOT EXISTS `jjwg_maps_jjwg_markers_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `jjwg_maps_b229wg_maps_ida` varchar(36) DEFAULT NULL,
  `jjwg_maps_2e31markers_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `jjwg_maps_jjwg_markers_alt` (`jjwg_maps_b229wg_maps_ida`,`jjwg_maps_2e31markers_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jjwg_markers`
--

CREATE TABLE IF NOT EXISTS `jjwg_markers` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `jjwg_maps_lat` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_lng` float(11,8) DEFAULT '0.00000000',
  `marker_image` varchar(100) DEFAULT 'company',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jjwg_markers_audit`
--

CREATE TABLE IF NOT EXISTS `jjwg_markers_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_jjwg_markers_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `job_queue`
--

CREATE TABLE IF NOT EXISTS `job_queue` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `scheduler_id` char(36) DEFAULT NULL,
  `execute_time` datetime DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `resolution` varchar(20) DEFAULT NULL,
  `message` text,
  `target` varchar(255) DEFAULT NULL,
  `data` text,
  `requeue` tinyint(1) DEFAULT '0',
  `retry_count` tinyint(4) DEFAULT NULL,
  `failure_count` tinyint(4) DEFAULT NULL,
  `job_delay` int(11) DEFAULT NULL,
  `client` varchar(255) DEFAULT NULL,
  `percent_complete` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_status_scheduler` (`status`,`scheduler_id`),
  KEY `idx_status_time` (`status`,`execute_time`,`date_entered`),
  KEY `idx_status_entered` (`status`,`date_entered`),
  KEY `idx_status_modified` (`status`,`date_modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `leads`
--

CREATE TABLE IF NOT EXISTS `leads` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `converted` tinyint(1) DEFAULT '0',
  `refered_by` varchar(100) DEFAULT NULL,
  `lead_source` varchar(100) DEFAULT NULL,
  `lead_source_description` text,
  `status` varchar(100) DEFAULT NULL,
  `status_description` text,
  `reports_to_id` char(36) DEFAULT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `account_description` text,
  `contact_id` char(36) DEFAULT NULL,
  `account_id` char(36) DEFAULT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `opportunity_name` varchar(255) DEFAULT NULL,
  `opportunity_amount` varchar(50) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `portal_name` varchar(255) DEFAULT NULL,
  `portal_app` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_lead_acct_name_first` (`account_name`,`deleted`),
  KEY `idx_lead_last_first` (`last_name`,`first_name`,`deleted`),
  KEY `idx_lead_del_stat` (`last_name`,`status`,`deleted`,`first_name`),
  KEY `idx_lead_opp_del` (`opportunity_id`,`deleted`),
  KEY `idx_leads_acct_del` (`account_id`,`deleted`),
  KEY `idx_del_user` (`deleted`,`assigned_user_id`),
  KEY `idx_lead_assigned` (`assigned_user_id`),
  KEY `idx_lead_contact` (`contact_id`),
  KEY `idx_reports_to` (`reports_to_id`),
  KEY `idx_lead_phone_work` (`phone_work`),
  KEY `idx_leads_id_del` (`id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `leads_audit`
--

CREATE TABLE IF NOT EXISTS `leads_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_leads_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `leads_cstm`
--

CREATE TABLE IF NOT EXISTS `leads_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `linked_documents`
--

CREATE TABLE IF NOT EXISTS `linked_documents` (
  `id` varchar(36) NOT NULL,
  `parent_id` varchar(36) DEFAULT NULL,
  `parent_type` varchar(25) DEFAULT NULL,
  `document_id` varchar(36) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_parent_document` (`parent_type`,`parent_id`,`document_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `meetings`
--

CREATE TABLE IF NOT EXISTS `meetings` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `join_url` varchar(200) DEFAULT NULL,
  `host_url` varchar(400) DEFAULT NULL,
  `displayed_url` varchar(400) DEFAULT NULL,
  `creator` varchar(50) DEFAULT NULL,
  `external_id` varchar(50) DEFAULT NULL,
  `duration_hours` int(3) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Planned',
  `type` varchar(255) DEFAULT 'Sugar',
  `parent_id` char(36) DEFAULT NULL,
  `reminder_time` int(11) DEFAULT '-1',
  `email_reminder_time` int(11) DEFAULT '-1',
  `email_reminder_sent` tinyint(1) DEFAULT '0',
  `outlook_id` varchar(255) DEFAULT NULL,
  `sequence` int(11) DEFAULT '0',
  `repeat_type` varchar(36) DEFAULT NULL,
  `repeat_interval` int(3) DEFAULT '1',
  `repeat_dow` varchar(7) DEFAULT NULL,
  `repeat_until` date DEFAULT NULL,
  `repeat_count` int(7) DEFAULT NULL,
  `repeat_parent_id` char(36) DEFAULT NULL,
  `recurring_source` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_mtg_name` (`name`),
  KEY `idx_meet_par_del` (`parent_id`,`parent_type`,`deleted`),
  KEY `idx_meet_stat_del` (`assigned_user_id`,`status`,`deleted`),
  KEY `idx_meet_date_start` (`date_start`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `meetings_contacts`
--

CREATE TABLE IF NOT EXISTS `meetings_contacts` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_mtg_mtg` (`meeting_id`),
  KEY `idx_con_mtg_con` (`contact_id`),
  KEY `idx_meeting_contact` (`meeting_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `meetings_cstm`
--

CREATE TABLE IF NOT EXISTS `meetings_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `meetings_leads`
--

CREATE TABLE IF NOT EXISTS `meetings_leads` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `lead_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_lead_meeting_meeting` (`meeting_id`),
  KEY `idx_lead_meeting_lead` (`lead_id`),
  KEY `idx_meeting_lead` (`meeting_id`,`lead_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `meetings_users`
--

CREATE TABLE IF NOT EXISTS `meetings_users` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_usr_mtg_mtg` (`meeting_id`),
  KEY `idx_usr_mtg_usr` (`user_id`),
  KEY `idx_meeting_users` (`meeting_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notes`
--

CREATE TABLE IF NOT EXISTS `notes` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `file_mime_type` varchar(100) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `portal_flag` tinyint(1) DEFAULT NULL,
  `embed_flag` tinyint(1) DEFAULT '0',
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_note_name` (`name`),
  KEY `idx_notes_parent` (`parent_id`,`parent_type`),
  KEY `idx_note_contact` (`contact_id`),
  KEY `idx_notes_assigned_del` (`deleted`,`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_consumer`
--

CREATE TABLE IF NOT EXISTS `oauth_consumer` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `c_key` varchar(255) DEFAULT NULL,
  `c_secret` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ckey` (`c_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_nonce`
--

CREATE TABLE IF NOT EXISTS `oauth_nonce` (
  `conskey` varchar(32) NOT NULL,
  `nonce` varchar(32) NOT NULL,
  `nonce_ts` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`conskey`,`nonce`),
  KEY `oauth_nonce_keyts` (`conskey`,`nonce_ts`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_tokens`
--

CREATE TABLE IF NOT EXISTS `oauth_tokens` (
  `id` char(36) NOT NULL,
  `secret` varchar(32) DEFAULT NULL,
  `tstate` varchar(1) DEFAULT NULL,
  `consumer` char(36) NOT NULL,
  `token_ts` bigint(20) DEFAULT NULL,
  `verify` varchar(32) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `callback_url` varchar(255) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`,`deleted`),
  KEY `oauth_state_ts` (`tstate`,`token_ts`),
  KEY `constoken_key` (`consumer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opportunities`
--

CREATE TABLE IF NOT EXISTS `opportunities` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `opportunity_type` varchar(255) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `lead_source` varchar(50) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `amount_usdollar` double DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `date_closed` date DEFAULT NULL,
  `next_step` varchar(100) DEFAULT NULL,
  `sales_stage` varchar(255) DEFAULT NULL,
  `probability` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_opp_name` (`name`),
  KEY `idx_opp_assigned` (`assigned_user_id`),
  KEY `idx_opp_id_deleted` (`id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `opportunities`
--

INSERT INTO `opportunities` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `opportunity_type`, `campaign_id`, `lead_source`, `amount`, `amount_usdollar`, `currency_id`, `date_closed`, `next_step`, `sales_stage`, `probability`) VALUES
('3830fa9b-e961-b38d-4c29-53071b24255c', 'Prueba', '2014-02-21 09:23:34', '2014-02-21 09:23:34', '1', '1', '', 0, '1', '', '', '', 2000, 2000, '-99', '2014-02-28', '', 'Prospecting', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opportunities_audit`
--

CREATE TABLE IF NOT EXISTS `opportunities_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_opportunities_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opportunities_contacts`
--

CREATE TABLE IF NOT EXISTS `opportunities_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_opp_con` (`contact_id`),
  KEY `idx_con_opp_opp` (`opportunity_id`),
  KEY `idx_opportunities_contacts` (`opportunity_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opportunities_cstm`
--

CREATE TABLE IF NOT EXISTS `opportunities_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `opportunities_cstm`
--

INSERT INTO `opportunities_cstm` (`id_c`, `jjwg_maps_lng_c`, `jjwg_maps_lat_c`, `jjwg_maps_geocode_status_c`, `jjwg_maps_address_c`) VALUES
('3830fa9b-e961-b38d-4c29-53071b24255c', 0.00000000, 0.00000000, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `outbound_email`
--

CREATE TABLE IF NOT EXISTS `outbound_email` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `type` varchar(15) DEFAULT 'user',
  `user_id` char(36) NOT NULL,
  `mail_sendtype` varchar(8) DEFAULT 'smtp',
  `mail_smtptype` varchar(20) DEFAULT 'other',
  `mail_smtpserver` varchar(100) DEFAULT NULL,
  `mail_smtpport` int(5) DEFAULT '0',
  `mail_smtpuser` varchar(100) DEFAULT NULL,
  `mail_smtppass` varchar(100) DEFAULT NULL,
  `mail_smtpauth_req` tinyint(1) DEFAULT '0',
  `mail_smtpssl` int(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `oe_user_id_idx` (`id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `outbound_email`
--

INSERT INTO `outbound_email` (`id`, `name`, `type`, `user_id`, `mail_sendtype`, `mail_smtptype`, `mail_smtpserver`, `mail_smtpport`, `mail_smtpuser`, `mail_smtppass`, `mail_smtpauth_req`, `mail_smtpssl`) VALUES
('6150c30c-9ce4-48dc-4baf-5301d18ff533', 'system', 'system', '1', 'SMTP', 'gmail', 'smtp.gmail.com', 993, 'logicforma@gmail.com', 'WTnS2yE+iEUYxuhrBJPUIA==', 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `project`
--

CREATE TABLE IF NOT EXISTS `project` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `estimated_start_date` date DEFAULT NULL,
  `estimated_end_date` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `projects_accounts`
--

CREATE TABLE IF NOT EXISTS `projects_accounts` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_acct_proj` (`project_id`),
  KEY `idx_proj_acct_acct` (`account_id`),
  KEY `projects_accounts_alt` (`project_id`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `projects_bugs`
--

CREATE TABLE IF NOT EXISTS `projects_bugs` (
  `id` varchar(36) NOT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_bug_proj` (`project_id`),
  KEY `idx_proj_bug_bug` (`bug_id`),
  KEY `projects_bugs_alt` (`project_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `projects_cases`
--

CREATE TABLE IF NOT EXISTS `projects_cases` (
  `id` varchar(36) NOT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_case_proj` (`project_id`),
  KEY `idx_proj_case_case` (`case_id`),
  KEY `projects_cases_alt` (`project_id`,`case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `projects_contacts`
--

CREATE TABLE IF NOT EXISTS `projects_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_con_proj` (`project_id`),
  KEY `idx_proj_con_con` (`contact_id`),
  KEY `projects_contacts_alt` (`project_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `projects_opportunities`
--

CREATE TABLE IF NOT EXISTS `projects_opportunities` (
  `id` varchar(36) NOT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_opp_proj` (`project_id`),
  KEY `idx_proj_opp_opp` (`opportunity_id`),
  KEY `projects_opportunities_alt` (`project_id`,`opportunity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `projects_products`
--

CREATE TABLE IF NOT EXISTS `projects_products` (
  `id` varchar(36) NOT NULL,
  `product_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_prod_project` (`project_id`),
  KEY `idx_proj_prod_product` (`product_id`),
  KEY `projects_products_alt` (`project_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `project_cstm`
--

CREATE TABLE IF NOT EXISTS `project_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `project_task`
--

CREATE TABLE IF NOT EXISTS `project_task` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `project_id` char(36) NOT NULL,
  `project_task_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `description` text,
  `predecessors` text,
  `date_start` date DEFAULT NULL,
  `time_start` int(11) DEFAULT NULL,
  `time_finish` int(11) DEFAULT NULL,
  `date_finish` date DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `duration_unit` text,
  `actual_duration` int(11) DEFAULT NULL,
  `percent_complete` int(11) DEFAULT NULL,
  `date_due` date DEFAULT NULL,
  `time_due` time DEFAULT NULL,
  `parent_task_id` int(11) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `milestone_flag` tinyint(1) DEFAULT NULL,
  `order_number` int(11) DEFAULT '1',
  `task_number` int(11) DEFAULT NULL,
  `estimated_effort` int(11) DEFAULT NULL,
  `actual_effort` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `utilization` int(11) DEFAULT '100',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `project_task_audit`
--

CREATE TABLE IF NOT EXISTS `project_task_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_project_task_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prospects`
--

CREATE TABLE IF NOT EXISTS `prospects` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `tracker_key` int(11) NOT NULL AUTO_INCREMENT,
  `birthdate` date DEFAULT NULL,
  `lead_id` char(36) DEFAULT NULL,
  `account_name` varchar(150) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `prospect_auto_tracker_key` (`tracker_key`),
  KEY `idx_prospects_last_first` (`last_name`,`first_name`,`deleted`),
  KEY `idx_prospecs_del_last` (`last_name`,`deleted`),
  KEY `idx_prospects_id_del` (`id`,`deleted`),
  KEY `idx_prospects_assigned` (`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prospects_cstm`
--

CREATE TABLE IF NOT EXISTS `prospects_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prospect_lists`
--

CREATE TABLE IF NOT EXISTS `prospect_lists` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `list_type` varchar(100) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `description` text,
  `domain_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_prospect_list_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `prospect_lists`
--

INSERT INTO `prospect_lists` (`assigned_user_id`, `id`, `name`, `list_type`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `deleted`, `description`, `domain_name`) VALUES
('', '504e091e-0ca1-1836-4735-53071f5a669a', 'kjk', 'default', '2014-02-21 09:41:38', '2014-02-21 09:43:09', '1', '1', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prospect_lists_prospects`
--

CREATE TABLE IF NOT EXISTS `prospect_lists_prospects` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `related_id` varchar(36) DEFAULT NULL,
  `related_type` varchar(25) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_plp_pro_id` (`prospect_list_id`),
  KEY `idx_plp_rel_id` (`related_id`,`related_type`,`prospect_list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `prospect_lists_prospects`
--

INSERT INTO `prospect_lists_prospects` (`id`, `prospect_list_id`, `related_id`, `related_type`, `date_modified`, `deleted`) VALUES
('70380f46-7bef-b1a1-eb43-53071f72b67a', '504e091e-0ca1-1836-4735-53071f5a669a', 'ef5151a9-9e4b-5fb4-39f3-5301f2aa0841', 'Contacts', '2014-02-21 09:43:09', 0),
('7e9fa953-befe-9ba4-fab8-53071f1b0471', '504e091e-0ca1-1836-4735-53071f5a669a', '1003c096-8de6-651d-4847-52987645943d', 'Contacts', '2014-02-21 09:43:09', 0),
('8c7a65ff-7704-7782-f4eb-53071fba0c21', '504e091e-0ca1-1836-4735-53071f5a669a', '1119f864-0a9f-de08-6bdf-5298751fd158', 'Contacts', '2014-02-21 09:43:09', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prospect_list_campaigns`
--

CREATE TABLE IF NOT EXISTS `prospect_list_campaigns` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `campaign_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_pro_id` (`prospect_list_id`),
  KEY `idx_cam_id` (`campaign_id`),
  KEY `idx_prospect_list_campaigns` (`prospect_list_id`,`campaign_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `prospect_list_campaigns`
--

INSERT INTO `prospect_list_campaigns` (`id`, `prospect_list_id`, `campaign_id`, `date_modified`, `deleted`) VALUES
('6c1d6920-050d-7afe-7b71-53071f16ac97', '504e091e-0ca1-1836-4735-53071f5a669a', '3bca8af3-3436-26da-97ff-53071f58a470', '2014-02-21 09:41:38', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relationships`
--

CREATE TABLE IF NOT EXISTS `relationships` (
  `id` char(36) NOT NULL,
  `relationship_name` varchar(150) DEFAULT NULL,
  `lhs_module` varchar(100) DEFAULT NULL,
  `lhs_table` varchar(64) DEFAULT NULL,
  `lhs_key` varchar(64) DEFAULT NULL,
  `rhs_module` varchar(100) DEFAULT NULL,
  `rhs_table` varchar(64) DEFAULT NULL,
  `rhs_key` varchar(64) DEFAULT NULL,
  `join_table` varchar(64) DEFAULT NULL,
  `join_key_lhs` varchar(64) DEFAULT NULL,
  `join_key_rhs` varchar(64) DEFAULT NULL,
  `relationship_type` varchar(64) DEFAULT NULL,
  `relationship_role_column` varchar(64) DEFAULT NULL,
  `relationship_role_column_value` varchar(50) DEFAULT NULL,
  `reverse` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_rel_name` (`relationship_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `relationships`
--

INSERT INTO `relationships` (`id`, `relationship_name`, `lhs_module`, `lhs_table`, `lhs_key`, `rhs_module`, `rhs_table`, `rhs_key`, `join_table`, `join_key_lhs`, `join_key_rhs`, `relationship_type`, `relationship_role_column`, `relationship_role_column_value`, `reverse`, `deleted`) VALUES
('113e7aec-de79-9558-6ffb-5301da05dcb3', 'prospects_email_addresses', 'Prospects', 'prospects', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Prospects', 0, 0),
('1198fbd4-6ac8-3add-e02e-5301da952035', 'emails_contacts_rel', 'Emails', 'emails', 'id', 'Contacts', 'contacts', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Contacts', 0, 0),
('12cf56fd-271d-2a7f-d168-5301da2adcca', 'account_leads', 'Accounts', 'accounts', 'id', 'Leads', 'leads', 'account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('132b399f-e316-314f-2df3-5301dad4472b', 'project_tasks_notes', 'ProjectTask', 'project_task', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('134355eb-4fae-d002-e9c1-5301da1cdaaf', 'aos_products_modified_user', 'Users', 'users', 'id', 'AOS_Products', 'aos_products', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('135ceea3-da58-5b28-db8d-5301da3dd2c2', 'fact_items_created_by', 'Users', 'users', 'id', 'fact_Items', 'fact_items', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('14f5bb04-5299-edcc-9fcb-5301daa5c1bb', 'prospect_list_contacts', 'ProspectLists', 'prospect_lists', 'id', 'Contacts', 'contacts', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Contacts', 0, 0),
('152e1088-8c4e-f50d-1964-5301da5d1aeb', 'contact_aos_quotes', 'Contacts', 'contacts', 'id', 'AOS_Quotes', 'aos_quotes', 'billing_contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('160743e3-9b98-d655-76cf-5301da043c6a', 'contacts_assigned_user', 'Users', 'users', 'id', 'Contacts', 'contacts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('16a2166d-31a7-aae2-0ce5-5301da35cf63', 'users_email_addresses_primary', 'Users', 'users', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('16a380ed-d4a6-6460-1c34-5301dad0bb69', 'aor_reports_modified_user', 'Users', 'users', 'id', 'AOR_Reports', 'aor_reports', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('16fa0e83-0101-26fa-47fc-5301da776e22', 'jjwg_maps_jjwg_areas', 'jjwg_Maps', 'jjwg_maps', 'id', 'jjwg_Areas', 'jjwg_areas', 'id', 'jjwg_maps_jjwg_areas_c', 'jjwg_maps_5304wg_maps_ida', 'jjwg_maps_41f2g_areas_idb', 'many-to-many', NULL, NULL, 0, 0),
('170e73f9-e155-2252-a5be-5301da7e9182', 'aos_contracts_created_by', 'Users', 'users', 'id', 'AOS_Contracts', 'aos_contracts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('18d6a68b-b060-bcef-c8f8-5301dac27150', 'optimistic_locking', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
('1937ef6c-7786-1452-1d24-5301da182b5a', 'case_emails', 'Cases', 'cases', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('1a03d18c-c814-fde8-d9ce-5301dab70395', 'campaign_contacts', 'Campaigns', 'campaigns', 'id', 'Contacts', 'contacts', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1af001e8-ddd5-8574-ef56-5301da4d92cf', 'account_campaign_log', 'Accounts', 'accounts', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Accounts', 0, 0),
('1b35df6b-4f51-e32c-6ca9-5301da27dc1e', 'oauthkeys_created_by', 'Users', 'users', 'id', 'OAuthKeys', 'oauthkeys', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1ceb9e0a-9e4e-50ef-34fc-5301daeb6570', 'prospect_list_prospects', 'ProspectLists', 'prospect_lists', 'id', 'Prospects', 'prospects', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Prospects', 0, 0),
('1eee62ea-35bb-049b-485a-5301daa58656', 'fact_items_assigned_user', 'Users', 'users', 'id', 'fact_Items', 'fact_items', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1f082f0b-8905-d60a-d3f1-5301da5bd0b1', 'prospects_email_addresses_primary', 'Prospects', 'prospects', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('1f351b10-b6fa-50a5-39f7-5301da5926e1', 'aos_products_created_by', 'Users', 'users', 'id', 'AOS_Products', 'aos_products', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('20062d12-daec-6f35-1ef3-5301dac40285', 'aos_line_item_groups_assigned_user', 'Users', 'users', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('213e8865-f7c9-db88-771d-5301da4dfcee', 'jjwg_maps_jjwg_markers', 'jjwg_Maps', 'jjwg_maps', 'id', 'jjwg_Markers', 'jjwg_markers', 'id', 'jjwg_maps_jjwg_markers_c', 'jjwg_maps_b229wg_maps_ida', 'jjwg_maps_2e31markers_idb', 'many-to-many', NULL, NULL, 0, 0),
('2298eb35-7539-bd58-2169-5301dab6ecbd', 'aow_processed_created_by', 'Users', 'users', 'id', 'AOW_Processed', 'aow_processed', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('22bdb572-c81e-7530-36c8-5301daa33df1', 'documents_modified_user', 'Users', 'users', 'id', 'Documents', 'documents', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('23d84a27-07fc-1d24-f96e-5301da738d62', 'lead_tasks', 'Leads', 'leads', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('24a5a788-75e2-3574-df69-5301da851b3c', 'calls_users', 'Calls', 'calls', 'id', 'Users', 'users', 'id', 'calls_users', 'call_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('251a08bb-b801-a859-2c05-5301da303a87', 'account_aos_quotes', 'Accounts', 'accounts', 'id', 'AOS_Quotes', 'aos_quotes', 'billing_account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('254c2b36-00ff-2329-17a7-5301da57033e', 'campaignlog_contact', 'CampaignLog', 'campaign_log', 'related_id', 'Contacts', 'contacts', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('255c0fbe-84a8-467b-8cb4-5301daa4de75', 'emails_notes_rel', 'Emails', 'emails', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2561263c-7e28-e59f-f3ac-5301da91ce30', 'project_tasks_tasks', 'ProjectTask', 'project_task', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('27084bba-61e5-088e-37ee-5301da0236a0', 'emails_accounts_rel', 'Emails', 'emails', 'id', 'Accounts', 'accounts', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Accounts', 0, 0),
('27a8152e-8eb6-4ee0-e7c7-5301da112a69', 'unified_search', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
('27c34d8b-2675-8c42-0d7f-5301da2f70b2', 'opportunity_aos_contracts', 'Opportunities', 'opportunities', 'id', 'AOS_Contracts', 'aos_contracts', 'opportunity_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('27c6bc2b-8fe8-1e22-3a5d-5301dacbb17c', 'aor_reports_created_by', 'Users', 'users', 'id', 'AOR_Reports', 'aor_reports', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('27f83d9a-e583-f52a-c3d9-5301dac7d444', 'contact_aos_invoices', 'Contacts', 'contacts', 'id', 'AOS_Invoices', 'aos_invoices', 'billing_contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('28358eb4-e403-a9aa-57de-5301da6bd3b7', 'calls_reschedule_modified_user', 'Users', 'users', 'id', 'Calls_Reschedule', 'calls_reschedule', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('28f59a9c-83b9-cf2c-b26d-5301dab40d38', 'aos_products_assigned_user', 'Users', 'users', 'id', 'AOS_Products', 'aos_products', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2928b1ef-7b0d-3fae-ce4d-5301da68c9b1', 'schedulersjobs_assigned_user', 'Users', 'users', 'id', 'SchedulersJobs', 'schedulersjobs', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2972e10d-4543-91db-26d4-5301daa5b96f', 'securitygroups_acl_roles', 'SecurityGroups', 'securitygroups', 'id', 'ACLRoles', 'acl_roles', 'id', 'securitygroups_acl_roles', 'securitygroup_id', 'role_id', 'many-to-many', NULL, NULL, 0, 0),
('2a76e2f2-93cb-30a4-da31-5301dae49acd', 'aos_contracts_assigned_user', 'Users', 'users', 'id', 'AOS_Contracts', 'aos_contracts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2ab006d1-0184-f058-9616-5301da438c94', 'fp_events_prospects_1', 'FP_events', 'fp_events', 'id', 'Prospects', 'prospects', 'id', 'fp_events_prospects_1_c', 'fp_events_prospects_1fp_events_ida', 'fp_events_prospects_1prospects_idb', 'many-to-many', NULL, NULL, 0, 0),
('2b7e30ae-1155-5366-1775-5301dab4825a', 'campaign_leads', 'Campaigns', 'campaigns', 'id', 'Leads', 'leads', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2c990f11-085b-55ef-2e69-5301da2f337f', 'contact_campaign_log', 'Contacts', 'contacts', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Contacts', 0, 0),
('2e8e6268-7991-6e76-106c-5301da7778dc', 'bugs_modified_user', 'Users', 'users', 'id', 'Bugs', 'bugs', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('30a73774-1890-ac23-8e95-5301da1a987a', 'prospect_list_leads', 'ProspectLists', 'prospect_lists', 'id', 'Leads', 'leads', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Leads', 0, 0),
('31479a0a-a7b0-48fc-955d-5301dae96d36', 'account_aos_invoices', 'Accounts', 'accounts', 'id', 'AOS_Invoices', 'aos_invoices', 'billing_account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('31a0acae-4bbc-0fec-c1a7-5301da031e37', 'calls_leads', 'Calls', 'calls', 'id', 'Leads', 'leads', 'id', 'calls_leads', 'call_id', 'lead_id', 'many-to-many', NULL, NULL, 0, 0),
('3205087c-4211-2800-6d06-5301daa61fe3', 'securitygroups_accounts', 'SecurityGroups', 'securitygroups', 'id', 'Accounts', 'accounts', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Accounts', 0, 0),
('324d4d5b-47a7-1362-103f-5301da2837d5', 'product_categories', 'AOS_Product_Categories', 'aos_product_categories', 'id', 'AOS_Products', 'aos_products', 'aos_product_category_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('32e60d35-a63d-bae4-030a-5301dae14834', 'prospect_list_campaigns', 'ProspectLists', 'prospect_lists', 'id', 'Campaigns', 'campaigns', 'id', 'prospect_list_campaigns', 'prospect_list_id', 'campaign_id', 'many-to-many', NULL, NULL, 0, 0),
('32e744f9-5231-a572-3704-5301dabf81fb', 'campaignlog_lead', 'CampaignLog', 'campaign_log', 'related_id', 'Leads', 'leads', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('33224deb-cb85-df2d-0a0f-5301da8490b3', 'documents_created_by', 'Users', 'users', 'id', 'Documents', 'documents', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('335393de-b828-9928-d064-5301da09a21b', 'aos_quotes_modified_user', 'Users', 'users', 'id', 'AOS_Quotes', 'aos_quotes', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('34862ee7-3067-f058-bb81-5301da164ee8', 'prospect_tasks', 'Prospects', 'prospects', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('349258a9-87a5-1534-e9c8-5301dad89e78', 'aow_conditions_modified_user', 'Users', 'users', 'id', 'AOW_Conditions', 'aow_conditions', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('350f67ea-9f77-2ee6-b930-5301dacb9d7e', 'lead_notes', 'Leads', 'leads', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('35b92eb6-fe7a-e071-df97-5301da045cf7', 'jjwg_markers_assigned_user', 'Users', 'users', 'id', 'jjwg_Markers', 'jjwg_markers', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('363752c3-c0a3-7c2b-34b6-5301da94cae3', 'securitygroups_prospect_lists', 'SecurityGroups', 'securitygroups', 'id', 'ProspectLists', 'prospect_lists', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'ProspectLists', 0, 0),
('371e7954-ed83-ce4c-7dd8-5301daea83e5', 'contact_aos_contracts', 'Contacts', 'contacts', 'id', 'AOS_Contracts', 'aos_contracts', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('376f26f7-0644-ee55-a592-5301da02b2a8', 'aor_reports_assigned_user', 'Users', 'users', 'id', 'AOR_Reports', 'aor_reports', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('396fd2ce-c597-c88f-2d60-5301da34d482', 'securitygroups_bugs', 'SecurityGroups', 'securitygroups', 'id', 'Bugs', 'bugs', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Bugs', 0, 0),
('39b8fd59-ed93-79e2-30c5-5301da0ff4ff', 'cases_bugs', 'Cases', 'cases', 'id', 'Bugs', 'bugs', 'id', 'cases_bugs', 'case_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('39c139f1-8dae-cf26-0f2f-5301dad20e3c', 'emails_leads_rel', 'Emails', 'emails', 'id', 'Leads', 'leads', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Leads', 0, 0),
('3bc0386c-d964-6e99-412d-5301dac65686', 'email_marketing_prospect_lists', 'EmailMarketing', 'email_marketing', 'id', 'ProspectLists', 'prospect_lists', 'id', 'email_marketing_prospect_lists', 'email_marketing_id', 'prospect_list_id', 'many-to-many', NULL, NULL, 0, 0),
('3bda5a8f-deed-967b-4e69-5301dadf3d6d', 'calls_reschedule_created_by', 'Users', 'users', 'id', 'Calls_Reschedule', 'calls_reschedule', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3ca7801e-2caa-5220-a537-5301da8e7c42', 'aos_contracts_aos_product_quotes', 'AOS_Contracts', 'aos_contracts', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3ce64c2e-78e9-0b4c-fcfe-5301da5d070d', 'oauthkeys_assigned_user', 'Users', 'users', 'id', 'OAuthKeys', 'oauthkeys', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3d340c41-dda5-7693-5ef7-5301daa04fe2', 'projects_created_by', 'Users', 'users', 'id', 'Project', 'project', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3dcde0c7-ab9a-eb9b-28ca-5301dadf91de', 'aop_case_events_modified_user', 'Users', 'users', 'id', 'AOP_Case_Events', 'aop_case_events', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3e9238ad-34e8-0dfa-670c-5301da4c930f', 'project_tasks_meetings', 'ProjectTask', 'project_task', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('3fe4e4ff-8cd7-df45-dddb-5301da9321ad', 'campaign_prospects', 'Campaigns', 'campaigns', 'id', 'Prospects', 'prospects', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('410708db-df39-db8d-f33a-5301da45813a', 'aos_line_item_groups_created_by', 'Users', 'users', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('41821ae3-2e6f-1a72-926d-5301daf67d42', 'account_aos_contracts', 'Accounts', 'accounts', 'id', 'AOS_Contracts', 'aos_contracts', 'contract_account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('41c90b15-d832-1c2f-6131-5301da351d6c', 'aos_quotes_created_by', 'Users', 'users', 'id', 'AOS_Quotes', 'aos_quotes', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('41dd1fab-efb1-5285-2f77-5301dab80d21', 'documents_assigned_user', 'Users', 'users', 'id', 'Documents', 'documents', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('41e2dad2-abe2-fb91-54c1-5301daf2fbe4', 'prospect_notes', 'Prospects', 'prospects', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('420aeabb-0df3-1fd3-4d96-5301dafb9cf3', 'contacts_bugs', 'Contacts', 'contacts', 'id', 'Bugs', 'bugs', 'id', 'contacts_bugs', 'contact_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('42226613-f806-6698-7ff7-5301da5320b0', 'bugs_created_by', 'Users', 'users', 'id', 'Bugs', 'bugs', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('43f12ad6-4e52-6f62-13f1-5301dab235fe', 'contacts_aop_case_updates', 'Contacts', 'contacts', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('450493e2-0d51-7d76-608c-5301daf9a4b4', 'prospect_list_users', 'ProspectLists', 'prospect_lists', 'id', 'Users', 'users', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Users', 0, 0),
('4533b3fa-a187-03aa-b02d-5301da8eb8eb', 'lead_meetings', 'Leads', 'leads', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('455ce423-93c1-aeb5-dfe9-5301da2dc267', 'campaignlog_created_opportunities', 'CampaignLog', 'campaign_log', 'related_id', 'Opportunities', 'opportunities', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4576331c-1680-1f4d-5768-5301da5ed610', 'aos_products_quotes_modified_user', 'Users', 'users', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('46f96a06-450e-36f5-e32d-5301daf79569', 'jjwg_areas_modified_user', 'Users', 'users', 'id', 'jjwg_Areas', 'jjwg_areas', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('49509a97-0f4b-1655-43c4-5301da043c70', 'securitygroups_calls', 'SecurityGroups', 'securitygroups', 'id', 'Calls', 'calls', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Calls', 0, 0),
('49c7cb49-2419-c82a-e404-5301da60e603', 'contacts_cases', 'Contacts', 'contacts', 'id', 'Cases', 'cases', 'id', 'contacts_cases', 'contact_id', 'case_id', 'many-to-many', NULL, NULL, 0, 0),
('49fba56e-eac8-e4ca-06c4-5301da77672f', 'emails_meetings_rel', 'Emails', 'emails', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4ac5daf5-6565-c75b-dbdb-5301daeecd35', 'contacts_email_addresses', 'Contacts', 'contacts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Contacts', 0, 0),
('4ae6f58c-466e-1dd0-e1f6-5301da1a984d', 'aor_reports_aor_fields', 'AOR_Reports', 'aor_reports', 'id', 'AOR_Fields', 'aor_field', 'aor_report_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4bb70c88-cc8f-2d08-96f3-5301da53d630', 'campaign_accounts', 'Campaigns', 'campaigns', 'id', 'Accounts', 'accounts', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4c2d4e79-b0cb-97f5-0d82-5301da7c029b', 'aos_invoices_modified_user', 'Users', 'users', 'id', 'AOS_Invoices', 'aos_invoices', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4df44f7a-7a0b-8b15-4d20-5301da4d0a7c', 'document_revisions', 'Documents', 'documents', 'id', 'DocumentRevisions', 'document_revisions', 'document_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4dfcf276-44fa-9112-682d-5301daa28e66', 'campaign_opportunities', 'Campaigns', 'campaigns', 'id', 'Opportunities', 'opportunities', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4e8acf56-fdba-da78-cbee-5301da4c8c68', 'emailtemplates_assigned_user', 'Users', 'users', 'id', 'EmailTemplates', 'email_templates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4ed751c9-99b4-78a0-8d21-5301dacd1134', 'calls_reschedule_assigned_user', 'Users', 'users', 'id', 'Calls_Reschedule', 'calls_reschedule', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4fca36b7-2ded-56cf-e4eb-5301da0924d3', 'jjwg_areas_created_by', 'Users', 'users', 'id', 'jjwg_Areas', 'jjwg_areas', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('50f5ad83-2ad7-fe68-e1fc-5301da4d252d', 'accounts_modified_user', 'Users', 'users', 'id', 'Accounts', 'accounts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('51ee389f-67e4-7054-467b-5301da7a1516', 'leads_documents', 'Leads', 'leads', 'id', 'Documents', 'documents', 'id', 'linked_documents', 'parent_id', 'document_id', 'many-to-many', 'parent_type', 'Leads', 0, 0),
('52aa0c12-4ef9-28db-f894-5301da8af78b', 'aos_quotes_assigned_user', 'Users', 'users', 'id', 'AOS_Quotes', 'aos_quotes', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('52b1477d-481e-e42c-c386-5301daeee132', 'opportunities_modified_user', 'Users', 'users', 'id', 'Opportunities', 'opportunities', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5348350b-9b98-3fa7-2a02-5301daa84d78', 'campaignlog_targeted_users', 'CampaignLog', 'campaign_log', 'target_id', 'Users', 'users', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5477c3c9-7f7c-192a-d575-5301da68eafd', 'contacts_users', 'Contacts', 'contacts', 'id', 'Users', 'users', 'id', 'contacts_users', 'contact_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('554042bf-71d8-13a4-5bb6-5301dadc855d', 'lead_calls', 'Leads', 'leads', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('55965821-175b-29d3-4e28-5301da37848d', 'consumer_tokens', 'OAuthKeys', 'oauth_consumer', 'id', 'OAuthTokens', 'oauth_tokens', 'consumer', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('55c57b11-d01c-b6be-3312-5301da9e7eb9', 'bugs_assigned_user', 'Users', 'users', 'id', 'Bugs', 'bugs', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('55ce8167-76f5-9814-a86e-5301dad7d5c8', 'aos_products_quotes_created_by', 'Users', 'users', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5613a9bb-27d8-61a6-09ec-5301da493057', 'securitygroups_campaigns', 'SecurityGroups', 'securitygroups', 'id', 'Campaigns', 'campaigns', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Campaigns', 0, 0),
('5669322e-eed4-d7c1-59f2-5301da67c6b3', 'prospect_meetings', 'Prospects', 'prospects', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('57de7c68-8d1e-0614-bf7d-5301da5be107', 'aow_conditions_created_by', 'Users', 'users', 'id', 'AOW_Conditions', 'aow_conditions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('59e6ed1e-d777-6a10-7c3a-5301da21becd', 'prospect_list_accounts', 'ProspectLists', 'prospect_lists', 'id', 'Accounts', 'accounts', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Accounts', 0, 0),
('5a3cc122-b6cb-ac75-7228-5301daccec1d', 'documents_accounts', 'Documents', 'documents', 'id', 'Accounts', 'accounts', 'id', 'documents_accounts', 'document_id', 'account_id', 'many-to-many', NULL, NULL, 0, 0),
('5a5186eb-7e94-6616-fe5b-5301da7ed648', 'aor_reports_aor_conditions', 'AOR_Reports', 'aor_reports', 'id', 'AOR_Conditions', 'aor_conditions', 'aor_report_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5a8332a3-1eeb-4c81-047e-5301dae06e3b', 'revisions_created_by', 'Users', 'users', 'id', 'DocumentRevisions', 'document_revisions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5a8c2cc1-d04b-86be-d463-5301da4b6b35', 'securitygroups_prospects', 'SecurityGroups', 'securitygroups', 'id', 'Prospects', 'prospects', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Prospects', 0, 0),
('5ab1882a-7612-c628-1f59-5301da072796', 'aop_case_events_created_by', 'Users', 'users', 'id', 'AOP_Case_Events', 'aop_case_events', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5b42c342-a362-53c0-abf7-5301da534101', 'meetings_modified_user', 'Users', 'users', 'id', 'Meetings', 'meetings', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5bb694e6-aeb2-0ec5-defa-5301da61c167', 'opportunities_created_by', 'Users', 'users', 'id', 'Opportunities', 'opportunities', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5e088355-311f-47ab-318a-5301da45b615', 'securitygroups_cases', 'SecurityGroups', 'securitygroups', 'id', 'Cases', 'cases', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Cases', 0, 0),
('5e16de7b-14d6-18bd-7d10-5301da7fd966', 'jjwg_areas_assigned_user', 'Users', 'users', 'id', 'jjwg_Areas', 'jjwg_areas', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5eacf6d5-0503-9ceb-f0f7-5301da48d525', 'notes_assigned_user', 'Users', 'users', 'id', 'Notes', 'notes', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5eed2cd2-fd50-1674-ea20-5301dab28120', 'aos_invoices_created_by', 'Users', 'users', 'id', 'AOS_Invoices', 'aos_invoices', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('60b65a0a-090a-4857-9fbb-5301dac7283f', 'accounts_created_by', 'Users', 'users', 'id', 'Accounts', 'accounts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('60f812e3-4861-b4f2-a225-5301daf7bd1a', 'campaign_email_marketing', 'Campaigns', 'campaigns', 'id', 'EmailMarketing', 'email_marketing', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6273bcbf-c781-2dd0-e1d3-5301daa89d87', 'aos_products_quotes_assigned_user', 'Users', 'users', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6274ada3-b41c-77d7-d7da-5301da490f65', 'securitygroups_tasks', 'SecurityGroups', 'securitygroups', 'id', 'Tasks', 'tasks', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Tasks', 0, 0),
('62882e5c-b4a7-e759-7aec-5301dad4ccf0', 'documents_contacts', 'Documents', 'documents', 'id', 'Contacts', 'contacts', 'id', 'documents_contacts', 'document_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('636169dd-ef2f-e517-f6f8-5301dad0df8a', 'emails_bugs_rel', 'Emails', 'emails', 'id', 'Bugs', 'bugs', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Bugs', 0, 0),
('63a2d5f0-927a-85f9-b60f-5301daf9cc04', 'aos_quotes_aos_product_quotes', 'AOS_Quotes', 'aos_quotes', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('63b921a7-81b8-1ca8-b839-5301da64bbe1', 'opportunities_assigned_user', 'Users', 'users', 'id', 'Opportunities', 'opportunities', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('647cc5c5-3394-9447-7277-5301da41ead1', 'project_tasks_calls', 'ProjectTask', 'project_task', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('64ced510-bf67-99e4-98d3-5301da7eeb40', 'contacts_email_addresses_primary', 'Contacts', 'contacts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('651e04e5-f1a5-d9ab-825d-5301da5313b8', 'securitygroups_modified_user', 'Users', 'users', 'id', 'SecurityGroups', 'securitygroups', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('65b8427a-3411-3e18-320d-5301dab514e3', 'campaignlog_sent_emails', 'CampaignLog', 'campaign_log', 'related_id', 'Emails', 'emails', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('65f5f577-4c18-d476-3a5f-5301da0abf57', 'bug_tasks', 'Bugs', 'bugs', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('66651fdd-c20b-e084-3fca-5301da9e6538', 'securitygroups_contacts', 'SecurityGroups', 'securitygroups', 'id', 'Contacts', 'contacts', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Contacts', 0, 0),
('67c47089-cec9-5551-b065-5301dafcd890', 'jjwg_address_cache_modified_user', 'Users', 'users', 'id', 'jjwg_Address_Cache', 'jjwg_address_cache', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('68c0a208-f16e-513f-e28f-5301da6f1a30', 'prospect_calls', 'Prospects', 'prospects', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('696f85f5-34e0-2070-68e8-5301da086128', 'lead_emails', 'Leads', 'leads', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('6a11bf4d-77f2-3069-2a22-5301dae7ef17', 'notes_modified_user', 'Users', 'users', 'id', 'Notes', 'notes', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6a66b8ad-ec16-ea06-51a0-5301da74f1ca', 'aor_fields_modified_user', 'Users', 'users', 'id', 'AOR_Fields', 'aor_fields', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6b2c18e8-1b0d-a753-7432-5301da65fc00', 'jjwg_maps_modified_user', 'Users', 'users', 'id', 'jjwg_Maps', 'jjwg_maps', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6bde3655-1479-8e91-0a17-5301dabf2e90', 'opportunity_calls', 'Opportunities', 'opportunities', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('6d19ef1c-6911-5b98-15f2-5301da3fc163', 'meetings_created_by', 'Users', 'users', 'id', 'Meetings', 'meetings', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6d2494f9-e039-cd16-b7cc-5301daf3055b', 'inbound_email_created_by', 'Users', 'users', 'id', 'InboundEmail', 'inbound_email', 'created_by', NULL, NULL, NULL, 'one-to-one', NULL, NULL, 0, 0),
('6e65081b-1ba0-9dff-11d6-5301dabf3207', 'case_meetings', 'Cases', 'cases', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('6f58912f-5851-277f-79a4-5301dab8b69b', 'campaign_emailman', 'Campaigns', 'campaigns', 'id', 'EmailMan', 'emailman', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('701cf8eb-298b-0240-da2f-5301da2e59f8', 'securitygroups_users', 'SecurityGroups', 'securitygroups', 'id', 'Users', 'users', 'id', 'securitygroups_users', 'securitygroup_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('704a52e8-a7f9-5bd4-c2e4-5301daf598fb', 'securitygroups_documents', 'SecurityGroups', 'securitygroups', 'id', 'Documents', 'documents', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Documents', 0, 0),
('71a9b4db-0c44-6031-2c98-5301dad3ffc8', 'emails_cases_rel', 'Emails', 'emails', 'id', 'Cases', 'cases', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Cases', 0, 0),
('722cbdca-a1e9-c2dd-1a2d-5301da7609fb', 'notes_created_by', 'Users', 'users', 'id', 'Notes', 'notes', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('72b708f4-4851-5dc1-f673-5301da8dcea0', 'accounts_assigned_user', 'Users', 'users', 'id', 'Accounts', 'accounts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('73ef067c-c760-80a8-ab17-5301dad56b94', 'aop_case_events_assigned_user', 'Users', 'users', 'id', 'AOP_Case_Events', 'aop_case_events', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('748c84b8-d0c3-cafa-0799-5301da0d249f', 'roles_users', 'Roles', 'roles', 'id', 'Users', 'users', 'id', 'roles_users', 'role_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('74a0c6ab-5ca0-e928-7ea2-5301daa38749', 'securitygroups_created_by', 'Users', 'users', 'id', 'SecurityGroups', 'securitygroups', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('751229d4-4aab-880a-f801-5301da131a15', 'aow_actions_modified_user', 'Users', 'users', 'id', 'AOW_Actions', 'aow_actions', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7698ae9e-550b-7bfb-0b49-5301da52fcb4', 'opportunity_meetings', 'Opportunities', 'opportunities', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('76b7bb43-989c-97d6-2be9-5301dacea32a', 'documents_opportunities', 'Documents', 'documents', 'id', 'Opportunities', 'opportunities', 'id', 'documents_opportunities', 'document_id', 'opportunity_id', 'many-to-many', NULL, NULL, 0, 0),
('776fcd25-6d36-ca4c-c7e3-5301da926d98', 'projects_notes', 'Project', 'project', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('7784613b-4a5d-265b-4d6f-5301da392c82', 'project_tasks_emails', 'ProjectTask', 'project_task', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('7853ba07-93a1-dc91-f00b-5301daf0bdb9', 'bug_meetings', 'Bugs', 'bugs', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('78f8fa79-29b3-204a-0ae8-5301da16e5f0', 'oauthtokens_assigned_user', 'Users', 'users', 'id', 'OAuthTokens', 'oauth_tokens', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('79aca3a1-594f-c30f-7657-5301da0d2860', 'aos_invoices_assigned_user', 'Users', 'users', 'id', 'AOS_Invoices', 'aos_invoices', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7b0a9708-2817-1457-13fd-5301da2f833e', 'lead_campaign_log', 'Leads', 'leads', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Leads', 0, 0),
('7c776e97-26ed-2fb5-70c1-5301dafebf5e', 'inbound_email_modified_user_id', 'Users', 'users', 'id', 'InboundEmail', 'inbound_email', 'modified_user_id', NULL, NULL, NULL, 'one-to-one', NULL, NULL, 0, 0),
('7cbfc199-c6e9-5d5b-53a2-5301dadef031', 'securitygroups_assigned_user', 'Users', 'users', 'id', 'SecurityGroups', 'securitygroups', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7ceee948-b1fe-290a-c047-5301da20c03c', 'prospect_emails', 'Prospects', 'prospects', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('7eb76903-f79b-0de8-e9f0-5301da49555c', 'documents_cases', 'Documents', 'documents', 'id', 'Cases', 'cases', 'id', 'documents_cases', 'document_id', 'case_id', 'many-to-many', NULL, NULL, 0, 0),
('7eec5cbf-2b9e-d729-623c-5301da545b59', 'aor_fields_created_by', 'Users', 'users', 'id', 'AOR_Fields', 'aor_fields', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('80388b78-f62d-3d5d-05d0-5301da180ac2', 'opportunity_tasks', 'Opportunities', 'opportunities', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('80be1233-4c22-1542-4f4d-5301da14a38e', 'jjwg_address_cache_created_by', 'Users', 'users', 'id', 'jjwg_Address_Cache', 'jjwg_address_cache', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('822f7bd2-a3db-5288-dfcb-5301da72827c', 'meetings_assigned_user', 'Users', 'users', 'id', 'Meetings', 'meetings', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('828872a6-4a93-7823-7c95-5301daa5e24f', 'aow_actions_created_by', 'Users', 'users', 'id', 'AOW_Actions', 'aow_actions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('82a4df88-63be-05cb-7ee8-5301da78474a', 'securitygroups_emails', 'SecurityGroups', 'securitygroups', 'id', 'Emails', 'emails', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Emails', 0, 0),
('82b4027b-2240-9bfb-73a6-5301da3a9977', 'contact_direct_reports', 'Contacts', 'contacts', 'id', 'Contacts', 'contacts', 'reports_to_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('830743c8-1f55-b884-5538-5301dac2ed5a', 'calls_modified_user', 'Users', 'users', 'id', 'Calls', 'calls', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('830eb5bd-8046-6005-7a31-5301da61f038', 'campaign_campaignlog', 'Campaigns', 'campaigns', 'id', 'CampaignLog', 'campaign_log', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('84233e3b-4440-39b9-9069-5301dac10aab', 'accounts_email_addresses', 'Accounts', 'accounts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Accounts', 0, 0),
('8435acd4-cb55-9f81-e110-5301dace8917', 'emails_opportunities_rel', 'Emails', 'emails', 'id', 'Opportunities', 'opportunities', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Opportunities', 0, 0),
('8443d153-8106-d57f-a847-5301da4a05fd', 'projects_tasks', 'Project', 'project', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('871cd186-0fe8-24a4-71e8-5301da711260', 'documents_bugs', 'Documents', 'documents', 'id', 'Bugs', 'bugs', 'id', 'documents_bugs', 'document_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('87c75f88-4875-6e81-4ec8-5301daa1e69b', 'contacts_modified_user', 'Users', 'users', 'id', 'Contacts', 'contacts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8881354d-07c8-4018-4ff0-5301daaa86e6', 'project_tasks_assigned_user', 'Users', 'users', 'id', 'ProjectTask', 'project_task', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8973798b-04d1-2efa-2f65-5301da9178fb', 'cases_modified_user', 'Users', 'users', 'id', 'Cases', 'cases', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('89e80e8c-3ec1-e425-8a91-5301da10bafd', 'sub_product_categories', 'AOS_Product_Categories', 'aos_product_categories', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'parent_category_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8a5202b3-e626-0708-a891-5301da8a7d87', 'fp_event_locations_assigned_user', 'Users', 'users', 'id', 'FP_Event_Locations', 'fp_event_locations', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8a8cb46e-df25-8e59-6726-5301da3193f3', 'fp_events_modified_user', 'Users', 'users', 'id', 'FP_events', 'fp_events', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8a929af8-2c1d-6cc8-1453-5301da8f51a9', 'prospect_campaign_log', 'Prospects', 'prospects', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Prospects', 0, 0),
('8ac0c669-50a3-c55f-b32b-5301da5f7bdf', 'jjwg_address_cache_assigned_user', 'Users', 'users', 'id', 'jjwg_Address_Cache', 'jjwg_address_cache', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8ad580b5-9043-1e97-0331-5301da728ca7', 'opportunity_notes', 'Opportunities', 'opportunities', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('8b21b2e8-1a94-3a6f-52f9-5301da1276ea', 'bug_calls', 'Bugs', 'bugs', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('8b757ade-0e44-c8a3-6a38-5301daac4de9', 'cases_aop_case_events', 'Cases', 'cases', 'id', 'AOP_Case_Events', 'aop_case_events', 'case_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8baf9d0a-5e29-7501-aba2-5301dab38be2', 'saved_search_assigned_user', 'Users', 'users', 'id', 'SavedSearch', 'saved_search', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8bb0018d-a096-bb6c-e759-5301dadecf07', 'prospects_assigned_user', 'Users', 'users', 'id', 'Prospects', 'prospects', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8d97a52d-fa33-175c-b5bf-5301da1d957b', 'aos_invoices_aos_product_quotes', 'AOS_Invoices', 'aos_invoices', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8dbb046e-83c7-307f-9a51-5301da12dcff', 'account_emails', 'Accounts', 'accounts', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('8fbf35a3-286e-0706-dc05-5301dacfc6c1', 'aow_workflow_modified_user', 'Users', 'users', 'id', 'AOW_WorkFlow', 'aow_workflow', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8fd7d47a-eb3e-0c50-4122-5301da7d01c6', 'calls_created_by', 'Users', 'users', 'id', 'Calls', 'calls', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('908a5904-c9e7-634f-ebb8-5301da6ab9c4', 'projects_bugs', 'Project', 'project', 'id', 'Bugs', 'bugs', 'id', 'projects_bugs', 'project_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('908d578c-e602-6581-1d78-5301da038fa3', 'securitygroups_emailtemplates', 'SecurityGroups', 'securitygroups', 'id', 'EmailTemplates', 'email_templates', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'EmailTemplates', 0, 0),
('90b9d374-6438-053e-3551-5301dad23b48', 'accounts_email_addresses_primary', 'Accounts', 'accounts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('90bf4745-a099-9bf9-c799-5301da338b1f', 'aor_charts_modified_user', 'Users', 'users', 'id', 'AOR_Charts', 'aor_charts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('90c2978b-624d-fa78-035e-5301dad641cd', 'leads_modified_user', 'Users', 'users', 'id', 'Leads', 'leads', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9123ddea-ff85-bca1-4d4c-5301da9c95e8', 'jjwg_maps_created_by', 'Users', 'users', 'id', 'jjwg_Maps', 'jjwg_maps', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('92f73090-0310-a496-d759-5301da44b18d', 'opportunity_emails', 'Opportunities', 'opportunities', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('9331dfa7-39e7-a148-148c-5301da51a943', 'meetings_notes', 'Meetings', 'meetings', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Meetings', 0, 0),
('93c0826d-ce3d-bafa-a23a-5301dad1b3b7', 'accounts_fact_facturas', 'Accounts', 'accounts', 'id', 'fact_Facturas', 'fact_facturas', 'id', 'accounts_fact_facturas_c', 'accounts_f4ffcccounts_ida', 'accounts_fbc88acturas_idb', 'many-to-many', NULL, NULL, 0, 0),
('9522f338-ac74-f0ee-8c9d-5301da2fefa3', 'fact_facturas_modified_user', 'Users', 'users', 'id', 'fact_Facturas', 'fact_facturas', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('95f9479f-a841-cd15-b548-5301da9f41c4', 'projects_meetings', 'Project', 'project', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('965f0d28-113e-2c59-45cc-5301da2d4973', 'users_email_addresses', 'Users', 'users', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Users', 0, 0),
('96be4920-eaf5-a79b-aedc-5301da9fd9ab', 'project_tasks_modified_user', 'Users', 'users', 'id', 'ProjectTask', 'project_task', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('97894faf-239b-a161-d1f4-5301da468f5f', 'emails_tasks_rel', 'Emails', 'emails', 'id', 'Tasks', 'tasks', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Tasks', 0, 0),
('98e59b0b-422a-c82c-f9b0-5301daec9049', 'aop_case_updates_modified_user', 'Users', 'users', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9921cdba-cda0-b93b-04d1-5301da9e3aca', 'cases_created_by', 'Users', 'users', 'id', 'Cases', 'cases', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('993139d8-a364-f967-cefe-5301daee5e50', 'projects_cases', 'Project', 'project', 'id', 'Cases', 'cases', 'id', 'projects_cases', 'project_id', 'case_id', 'many-to-many', NULL, NULL, 0, 0),
('9ac99937-f6e0-3f5a-611e-5301daf7bd87', 'campaign_assigned_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9af8f7b5-2d8d-a768-7bf2-5301da69495c', 'sugarfeed_modified_user', 'Users', 'users', 'id', 'SugarFeed', 'sugarfeed', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9b0b86b8-e444-0c1d-f090-5301dae5617a', 'contact_leads', 'Contacts', 'contacts', 'id', 'Leads', 'leads', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9b573b82-1d0b-b78e-9ee0-5301da5980a3', 'securitygroups_leads', 'SecurityGroups', 'securitygroups', 'id', 'Leads', 'leads', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Leads', 0, 0),
('9c2681c1-1abf-3125-a2f0-5301da44e6f6', 'email_template_email_marketings', 'EmailTemplates', 'email_templates', 'id', 'EmailMarketing', 'email_marketing', 'template_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9cfb4604-bdb5-d4e6-70c5-5301da031f64', 'leads_created_by', 'Users', 'users', 'id', 'Leads', 'leads', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9d2476b9-6b80-b5ef-3834-5301daba30e9', 'calls_assigned_user', 'Users', 'users', 'id', 'Calls', 'calls', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9d46ab9a-a4df-d1f8-f27a-5301da3a4606', 'aow_workflow_created_by', 'Users', 'users', 'id', 'AOW_WorkFlow', 'aow_workflow', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9d85364c-cf78-ac8e-97a2-5301da04afe1', 'bug_emails', 'Bugs', 'bugs', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('9dd6f264-bd6d-9071-2c92-5301daac464f', 'aos_pdf_templates_modified_user', 'Users', 'users', 'id', 'AOS_PDF_Templates', 'aos_pdf_templates', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9edb7bc5-5642-1563-3c48-5301da419feb', 'fp_events_created_by', 'Users', 'users', 'id', 'FP_events', 'fp_events', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9efbb554-b8dc-e6dc-5f4e-5301da5437b3', 'fact_facturas_created_by', 'Users', 'users', 'id', 'fact_Facturas', 'fact_facturas', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9f153c4a-8023-c2a9-40ae-5301da1c95af', 'aor_charts_created_by', 'Users', 'users', 'id', 'AOR_Charts', 'aor_charts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9f5a01c4-906b-51a2-4b31-5301dad21db3', 'emails_users_rel', 'Emails', 'emails', 'id', 'Users', 'users', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Users', 0, 0),
('a15db8ba-3ba2-d265-7306-5301daa63bcd', 'projects_accounts', 'Project', 'project', 'id', 'Accounts', 'accounts', 'id', 'projects_accounts', 'project_id', 'account_id', 'many-to-many', NULL, NULL, 0, 0),
('a32991fe-928f-921f-3815-5301da8b4100', 'tasks_modified_user', 'Users', 'users', 'id', 'Tasks', 'tasks', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a32e2252-bd5f-5ec7-bc60-5301da3b690d', 'securitygroups_meetings', 'SecurityGroups', 'securitygroups', 'id', 'Meetings', 'meetings', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Meetings', 0, 0),
('a331aefe-e18b-3681-4197-5301da8cc2a1', 'aos_contracts_documents', 'AOS_Contracts', 'aos_contracts', 'id', 'Documents', 'documents', 'id', 'aos_contracts_documents', 'aos_contracts_id', 'documents_id', 'many-to-many', NULL, NULL, 0, 0),
('a3f81e2a-4ba2-860e-a597-5301daefab21', 'opportunity_leads', 'Opportunities', 'opportunities', 'id', 'Leads', 'leads', 'opportunity_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a4b00766-3699-4818-bfdd-5301da2f8abe', 'account_calls', 'Accounts', 'accounts', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('a4d6ab65-75d3-865e-b6fc-5301daa97463', 'projects_calls', 'Project', 'project', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('a70217cf-a4a3-3335-0cc1-5301da0b6ee5', 'project_tasks_created_by', 'Users', 'users', 'id', 'ProjectTask', 'project_task', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a70fd689-95c4-d0ac-45ea-5301da1e30f0', 'calls_notes', 'Calls', 'calls', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Calls', 0, 0),
('a775e134-de6c-f2f1-578c-5301daeb4c54', 'aop_case_updates_created_by', 'Users', 'users', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a8f8242a-403b-6de7-b055-5301da2c5273', 'contact_notes', 'Contacts', 'contacts', 'id', 'Notes', 'notes', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a9136b5b-a2ee-2b0f-fd07-5301da97e4b2', 'sugarfeed_created_by', 'Users', 'users', 'id', 'SugarFeed', 'sugarfeed', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a9420f32-42f9-f402-286f-5301da4f9e66', 'emails_project_task_rel', 'Emails', 'emails', 'id', 'ProjectTask', 'project_task', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'ProjectTask', 0, 0),
('a956f130-6676-8238-6faf-5301da2a3356', 'aow_workflow_assigned_user', 'Users', 'users', 'id', 'AOW_WorkFlow', 'aow_workflow', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a9579bcc-e818-2e67-06ad-5301dac92418', 'aos_pdf_templates_created_by', 'Users', 'users', 'id', 'AOS_PDF_Templates', 'aos_pdf_templates', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a95c482e-fb4d-d480-523b-5301da261415', 'member_accounts', 'Accounts', 'accounts', 'id', 'Accounts', 'accounts', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('abaa6f3e-cf2d-4162-691c-5301daa364cb', 'campaign_modified_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ad51103f-6d61-7c18-50d0-5301da3c6291', 'securitygroups_notes', 'SecurityGroups', 'securitygroups', 'id', 'Notes', 'notes', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Notes', 0, 0);
INSERT INTO `relationships` (`id`, `relationship_name`, `lhs_module`, `lhs_table`, `lhs_key`, `rhs_module`, `rhs_table`, `rhs_key`, `join_table`, `join_key_lhs`, `join_key_rhs`, `relationship_type`, `relationship_role_column`, `relationship_role_column_value`, `reverse`, `deleted`) VALUES
('ad536076-90b0-3ba3-5d48-5301dad12f2d', 'aos_quotes_aos_contracts', 'AOS_Quotes', 'aos_quotes', 'id', 'AOS_Contracts', 'aos_contracts', 'id', 'aos_quotes_os_contracts_c', 'aos_quotese81e_quotes_ida', 'aos_quotes4dc0ntracts_idb', 'many-to-many', NULL, NULL, 0, 0),
('adbd85a8-49ab-dc8a-e7c3-5301da0f178e', 'bug_notes', 'Bugs', 'bugs', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('adef69cf-d508-25c5-c514-5301dabe869c', 'leads_assigned_user', 'Users', 'users', 'id', 'Leads', 'leads', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('af4be3bc-e3a8-78d6-e1a9-5301daa5a7a5', 'cases_assigned_user', 'Users', 'users', 'id', 'Cases', 'cases', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b0c1b2d7-3ca5-53ea-645d-5301da4579cb', 'projects_contacts', 'Project', 'project', 'id', 'Contacts', 'contacts', 'id', 'projects_contacts', 'project_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('b0e17d76-fc76-4068-854c-5301daf44fa6', 'tasks_created_by', 'Users', 'users', 'id', 'Tasks', 'tasks', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b151f70c-b587-6f64-ac70-5301dab4ed91', 'calls_reschedule', 'Calls', 'calls', 'id', 'Calls_Reschedule', 'calls_reschedule', 'call_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b17508c6-6711-4640-ac01-5301da8d6f56', 'aow_workflow_aow_conditions', 'AOW_WorkFlow', 'aow_workflow', 'id', 'AOW_Conditions', 'aow_conditions', 'aow_workflow_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b3132b1b-7ad1-21d3-b525-5301da330362', 'aos_product_quotes_aos_products', 'AOS_Products', 'aos_products', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'product_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b33c7b3f-8e26-41c2-48ed-5301da51d5b4', 'projects_emails', 'Project', 'project', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('b389feb6-14c9-721e-1a8a-5301da65d6eb', 'emails_projects_rel', 'Emails', 'emails', 'id', 'Project', 'project', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Project', 0, 0),
('b3ca82b2-d947-86b0-77cb-5301da3a1a99', 'jjwg_maps_assigned_user', 'Users', 'users', 'id', 'jjwg_Maps', 'jjwg_maps', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b48aec80-84dc-1754-2b2e-5301daf1295b', 'accounts_bugs', 'Accounts', 'accounts', 'id', 'Bugs', 'bugs', 'id', 'accounts_bugs', 'account_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('b54eec5f-1b27-43b9-575f-5301dadecfa9', 'aor_conditions_modified_user', 'Users', 'users', 'id', 'AOR_Conditions', 'aor_conditions', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b58eda55-552d-fd5c-f3be-5301da00e963', 'campaign_campaigntrakers', 'Campaigns', 'campaigns', 'id', 'CampaignTrackers', 'campaign_trkrs', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b59a01de-3fc3-c497-1172-5301dae4ad6d', 'fp_events_assigned_user', 'Users', 'users', 'id', 'FP_events', 'fp_events', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b5a57305-e327-671e-9f81-5301dab1adf4', 'aos_quotes_aos_invoices', 'AOS_Quotes', 'aos_quotes', 'id', 'AOS_Invoices', 'aos_invoices', 'id', 'aos_quotes_aos_invoices_c', 'aos_quotes77d9_quotes_ida', 'aos_quotes6b83nvoices_idb', 'many-to-many', NULL, NULL, 0, 0),
('b7541409-e1df-532d-8cb0-5301daabb45f', 'sugarfeed_assigned_user', 'Users', 'users', 'id', 'SugarFeed', 'sugarfeed', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b8337acf-d2b6-20ee-8d85-5301da84b429', 'campaigns_modified_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b8822371-d65e-b958-47c5-5301dabb2251', 'fact_facturas_assigned_user', 'Users', 'users', 'id', 'fact_Facturas', 'fact_facturas', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b8b59587-2d1a-60dd-22cf-5301da68a17b', 'aop_case_updates_assigned_user', 'Users', 'users', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b9090149-07c5-3e91-c625-5301daf42af6', 'securitygroups_opportunities', 'SecurityGroups', 'securitygroups', 'id', 'Opportunities', 'opportunities', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Opportunities', 0, 0),
('b93a02bf-d4db-61c7-020e-5301da3d0b72', 'opportunity_aos_quotes', 'Opportunities', 'opportunities', 'id', 'AOS_Quotes', 'aos_quotes', 'opportunity_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b9670347-8e71-ac04-544b-5301daed846e', 'aos_pdf_templates_assigned_user', 'Users', 'users', 'id', 'AOS_PDF_Templates', 'aos_pdf_templates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b9dd3393-bba8-8aa1-d019-5301da4204e5', 'contact_tasks', 'Contacts', 'contacts', 'id', 'Tasks', 'tasks', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bb371504-4d14-f9be-a363-5301daf433a7', 'opportunity_currencies', 'Opportunities', 'opportunities', 'currency_id', 'Currencies', 'currencies', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bbb5e254-a933-8121-21d8-5301da91ca02', 'emails_prospects_rel', 'Emails', 'emails', 'id', 'Prospects', 'prospects', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Prospects', 0, 0),
('bd24ba9a-8207-760d-fe97-5301da9942ad', 'aow_workflow_aow_actions', 'AOW_WorkFlow', 'aow_workflow', 'id', 'AOW_Actions', 'aow_actions', 'aow_workflow_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bdcb8c7f-cff6-7fa2-a78d-5301da75d719', 'aos_quotes_project', 'AOS_Quotes', 'aos_quotes', 'id', 'Project', 'project', 'id', 'aos_quotes_project_c', 'aos_quotes1112_quotes_ida', 'aos_quotes7207project_idb', 'many-to-many', NULL, NULL, 0, 0),
('bdecf35c-893d-104e-70fd-5301da3a2ac0', 'bugs_release', 'Releases', 'releases', 'id', 'Bugs', 'bugs', 'found_in_release', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('be3208e4-75e6-910c-0681-5301dabf6b8b', 'securitygroups_project_task', 'SecurityGroups', 'securitygroups', 'id', 'ProjectTask', 'project_task', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'ProjectTask', 0, 0),
('bf558ec8-00bd-4b08-1446-5301da86ea5e', 'leads_email_addresses', 'Leads', 'leads', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Leads', 0, 0),
('bf81bc10-32bc-1925-6e73-5301da1a06eb', 'projects_opportunities', 'Project', 'project', 'id', 'Opportunities', 'opportunities', 'id', 'projects_opportunities', 'project_id', 'opportunity_id', 'many-to-many', NULL, NULL, 0, 0),
('bff4d4cd-22e9-591a-fd78-5301da9046e3', 'account_cases', 'Accounts', 'accounts', 'id', 'Cases', 'cases', 'account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c02dbbdf-ae0d-e5fa-44df-5301da77c917', 'prospectlists_assigned_user', 'Users', 'users', 'id', 'prospectlists', 'prospect_lists', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c07ed9e8-f515-214e-f6e6-5301dabe6e7c', 'tasks_assigned_user', 'Users', 'users', 'id', 'Tasks', 'tasks', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c1f50106-895a-28fb-078b-5301da1a921d', 'accounts_contacts', 'Accounts', 'accounts', 'id', 'Contacts', 'contacts', 'id', 'accounts_contacts', 'account_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('c27cc8d1-b8a6-0533-1cbd-5301da6a5762', 'aor_conditions_created_by', 'Users', 'users', 'id', 'AOR_Conditions', 'aor_conditions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c33c8eb1-b5de-991b-dd86-5301da3a9802', 'case_calls', 'Cases', 'cases', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('c396b645-9a9a-1142-af88-5301daaa4141', 'emails_assigned_user', 'Users', 'users', 'id', 'Emails', 'emails', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c464be53-1093-dc5a-98fb-5301da7b98da', 'meetings_contacts', 'Meetings', 'meetings', 'id', 'Contacts', 'contacts', 'id', 'meetings_contacts', 'meeting_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('c6257a14-e5ed-c8c7-e0d5-5301da7bf0bf', 'projects_project_tasks', 'Project', 'project', 'id', 'ProjectTask', 'project_task', 'project_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c6f79fb6-cc91-b1ed-2fe7-5301da42c805', 'eapm_modified_user', 'Users', 'users', 'id', 'EAPM', 'eapm', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c72c16cc-edf3-57b1-ee67-5301da3941a9', 'aos_line_item_groups_modified_user', 'Users', 'users', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c732a814-65d1-f204-006a-5301dad60d4a', 'schedulers_created_by_rel', 'Users', 'users', 'id', 'Schedulers', 'schedulers', 'created_by', NULL, NULL, NULL, 'one-to-one', NULL, NULL, 0, 0),
('c805160f-1f1e-fe77-6452-5301daed9812', 'aow_processed_aow_actions', 'AOW_Processed', 'aow_processed', 'id', 'AOW_Actions', 'aow_actions', 'id', 'aow_processed_aow_actions', 'aow_processed_id', 'aow_action_id', 'many-to-many', NULL, NULL, 0, 0),
('c85eaec7-f00d-40c1-78a8-5301daa49551', 'jjwg_markers_modified_user', 'Users', 'users', 'id', 'jjwg_Markers', 'jjwg_markers', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c9077dc8-548b-09ed-99e7-5301da33327a', 'contact_tasks_parent', 'Contacts', 'contacts', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Contacts', 0, 0),
('ca0beb30-7f85-06cb-6212-5301dabdad66', 'contacts_created_by', 'Users', 'users', 'id', 'Contacts', 'contacts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ca2229de-b6ca-1bdc-1d54-5301da19b037', 'accounts_opportunities', 'Accounts', 'accounts', 'id', 'Opportunities', 'opportunities', 'id', 'accounts_opportunities', 'account_id', 'opportunity_id', 'many-to-many', NULL, NULL, 0, 0),
('ca41cb80-6748-96c3-5acb-5301daaab6e5', 'campaigns_created_by', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('cb84dc0b-008d-8ab9-3601-5301daf27f67', 'securitygroups_project', 'SecurityGroups', 'securitygroups', 'id', 'Project', 'project', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Project', 0, 0),
('cc136bb2-3a97-3d67-4c0b-5301da6ca40a', 'meetings_users', 'Meetings', 'meetings', 'id', 'Users', 'users', 'id', 'meetings_users', 'meeting_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('cc5604bd-5bc3-4c50-c1ec-5301da99d6e3', 'acl_roles_actions', 'ACLRoles', 'acl_roles', 'id', 'ACLActions', 'acl_actions', 'id', 'acl_roles_actions', 'role_id', 'action_id', 'many-to-many', NULL, NULL, 0, 0),
('cd970d3c-9e75-37d4-294d-5301da8de36b', 'bugs_fixed_in_release', 'Releases', 'releases', 'id', 'Bugs', 'bugs', 'fixed_in_release', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ce034944-2e15-7a0f-41eb-5301dac02486', 'aow_workflow_aow_processed', 'AOW_WorkFlow', 'aow_workflow', 'id', 'AOW_Processed', 'aow_processed', 'aow_workflow_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ce06abe3-6931-ba03-0732-5301da8e2b3a', 'account_tasks', 'Accounts', 'accounts', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('ce14cd85-65f1-74eb-72f5-5301da7683d4', 'aos_product_categories_modified_user', 'Users', 'users', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('cec00113-b3a8-6a49-232f-5301daa2312c', 'leads_email_addresses_primary', 'Leads', 'leads', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('cf6ba93f-dc4a-675c-2842-5301da49ab02', 'fp_event_locations_modified_user', 'Users', 'users', 'id', 'FP_Event_Locations', 'fp_event_locations', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d02e79e4-1aa0-c380-9795-5301da76654d', 'factura_items', 'fact_Facturas', 'fact_facturas', 'id', 'fact_Items', 'fact_items', 'id', 'fact_factura_items', 'factura_id', 'item_id', 'many-to-many', NULL, NULL, 0, 0),
('d10ae513-a416-4ce7-bf29-5301dacefe49', 'eapm_created_by', 'Users', 'users', 'id', 'EAPM', 'eapm', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d28c4a6c-4818-a036-3f12-5301da6c526c', 'case_tasks', 'Cases', 'cases', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('d348592e-e09b-5b45-44d2-5301daf3f921', 'tasks_notes', 'Tasks', 'tasks', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d348c89e-3ad1-4930-6daa-5301da355ecf', 'cases_aop_case_updates', 'Cases', 'cases', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'case_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d4d771aa-6d8c-905d-4fa0-5301dace0c65', 'opportunities_campaign', 'Campaigns', 'campaigns', 'id', 'Opportunities', 'opportunities', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d4f00dec-7b4f-e943-999d-5301da763568', 'prospects_modified_user', 'Users', 'users', 'id', 'Prospects', 'prospects', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d501f673-6397-cea7-7d4e-5301daff3bf0', 'emails_modified_user', 'Users', 'users', 'id', 'Emails', 'emails', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d60ab4b7-583c-e7db-a3c8-5301da5ff0ac', 'meetings_leads', 'Meetings', 'meetings', 'id', 'Leads', 'leads', 'id', 'meetings_leads', 'meeting_id', 'lead_id', 'many-to-many', NULL, NULL, 0, 0),
('d7c13b6e-e021-ab1f-a5f9-5301daf173a7', 'schedulers_modified_user_id_rel', 'Users', 'users', 'id', 'Schedulers', 'schedulers', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d7c35520-552c-7eff-6d47-5301dac34c7e', 'aos_contracts_modified_user', 'Users', 'users', 'id', 'AOS_Contracts', 'aos_contracts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d81f06b3-5ed1-c8e1-774d-5301dafd29a9', 'aos_product_categories_created_by', 'Users', 'users', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d8455cfe-4d9e-1340-3bb5-5301da303039', 'fp_events_contacts', 'FP_events', 'fp_events', 'id', 'Contacts', 'contacts', 'id', 'fp_events_contacts_c', 'fp_events_contactsfp_events_ida', 'fp_events_contactscontacts_idb', 'many-to-many', NULL, NULL, 0, 0),
('d8fd1590-fe42-158d-e53b-5301da98c980', 'projects_assigned_user', 'Users', 'users', 'id', 'Project', 'project', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d9193eeb-98df-f3c6-4961-5301da743364', 'calls_contacts', 'Calls', 'calls', 'id', 'Contacts', 'contacts', 'id', 'calls_contacts', 'call_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('d9d3241e-d125-4dd4-ff39-5301da5356d0', 'factura_notes', 'fact_Facturas', 'fact_facturas', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'fact_Facturas', 0, 0),
('d9f549b1-7a77-35fb-eb22-5301daf337d5', 'account_notes', 'Accounts', 'accounts', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('dfcb6cbf-2a95-129d-3852-5301da5e87c3', 'contact_notes_parent', 'Contacts', 'contacts', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Contacts', 0, 0),
('e0954c28-c0b9-8482-9c85-5301daa10775', 'case_notes', 'Cases', 'cases', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('e1c0c200-b543-9ae3-b109-5301dac6dfad', 'eapm_assigned_user', 'Users', 'users', 'id', 'EAPM', 'eapm', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e24bfa05-bcad-4833-5f5c-5301dad77350', 'fp_events_fp_event_locations_1', 'FP_events', 'fp_events', 'id', 'FP_Event_Locations', 'fp_event_locations', 'id', 'fp_events_fp_event_locations_1_c', 'fp_events_fp_event_locations_1fp_events_ida', 'fp_events_fp_event_locations_1fp_event_locations_idb', 'many-to-many', NULL, NULL, 0, 0),
('e44f0273-90a0-d55e-46c7-5301dab9b8e7', 'lead_direct_reports', 'Leads', 'leads', 'id', 'Leads', 'leads', 'reports_to_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e45e8dd4-d56c-3785-32d0-5301da11f202', 'aos_product_categories_assigned_user', 'Users', 'users', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e518c58c-e5bc-eb52-40d5-5301da66b4d4', 'prospects_created_by', 'Users', 'users', 'id', 'Prospects', 'prospects', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e53ace64-0e5b-fa01-50b1-5301da7330eb', 'account_meetings', 'Accounts', 'accounts', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('e68134b6-a799-efcb-8278-5301da0e35d2', 'emails_created_by', 'Users', 'users', 'id', 'Emails', 'emails', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e6f27c77-6f42-11ed-9b43-5301daed054d', 'campaigns_assigned_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e78eec81-6d3d-d58f-0792-5301da4ad8f5', 'projects_modified_user', 'Users', 'users', 'id', 'Project', 'project', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e80010d5-06b1-99c3-47a8-5301da0b7284', 'opportunities_contacts', 'Opportunities', 'opportunities', 'id', 'Contacts', 'contacts', 'id', 'opportunities_contacts', 'opportunity_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('ea650e41-d748-3518-11ed-5301daa90b34', 'user_direct_reports', 'Users', 'users', 'id', 'Users', 'users', 'reports_to_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ea66a72c-c684-7a0e-b2fc-5301da1f38c2', 'fp_events_leads_1', 'FP_events', 'fp_events', 'id', 'Leads', 'leads', 'id', 'fp_events_leads_1_c', 'fp_events_leads_1fp_events_ida', 'fp_events_leads_1leads_idb', 'many-to-many', NULL, NULL, 0, 0),
('ec98b4f4-a089-8146-8ba8-5301dabba7a8', 'fp_event_locations_created_by', 'Users', 'users', 'id', 'FP_Event_Locations', 'fp_event_locations', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ecfe730e-f4a6-c515-698d-5301da1c26d1', 'aow_processed_modified_user', 'Users', 'users', 'id', 'AOW_Processed', 'aow_processed', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ee39e5cb-4ce2-0612-0879-5301dadb8dee', 'fact_items_modified_user', 'Users', 'users', 'id', 'fact_Items', 'fact_items', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ef44017f-6161-9819-effa-5301da4788f9', 'fp_event_locations_fp_events_1', 'FP_Event_Locations', 'fp_event_locations', 'id', 'FP_events', 'fp_events', 'id', 'fp_event_locations_fp_events_1_c', 'fp_event_locations_fp_events_1fp_event_locations_ida', 'fp_event_locations_fp_events_1fp_events_idb', 'many-to-many', NULL, NULL, 0, 0),
('f097f6eb-a341-118b-59e8-5301da30f15d', 'schedulers_jobs_rel', 'Schedulers', 'schedulers', 'id', 'SchedulersJobs', 'job_queue', 'scheduler_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f194f6cc-5447-ef14-d272-5301da058757', 'aop_case_updates_notes', 'AOP_Case_Updates', 'aop_case_updates', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'AOP_Case_Updates', 0, 0),
('f2080806-78c0-0b43-9c74-5301da534e70', 'oauthkeys_modified_user', 'Users', 'users', 'id', 'OAuthKeys', 'oauthkeys', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f3cfcfd6-8f5e-cfe5-1b70-5301dada237f', 'acl_roles_users', 'ACLRoles', 'acl_roles', 'id', 'Users', 'users', 'id', 'acl_roles_users', 'role_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('f4620aef-e126-63ff-ee51-5301dac014de', 'jjwg_markers_created_by', 'Users', 'users', 'id', 'jjwg_Markers', 'jjwg_markers', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `releases`
--

CREATE TABLE IF NOT EXISTS `releases` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `list_order` int(4) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_releases` (`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` text,
  `modules` text,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_role_id_del` (`id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles_modules`
--

CREATE TABLE IF NOT EXISTS `roles_modules` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `module_id` varchar(36) DEFAULT NULL,
  `allow` tinyint(1) DEFAULT '0',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_role_id` (`role_id`),
  KEY `idx_module_id` (`module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles_users`
--

CREATE TABLE IF NOT EXISTS `roles_users` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_ru_role_id` (`role_id`),
  KEY `idx_ru_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `saved_search`
--

CREATE TABLE IF NOT EXISTS `saved_search` (
  `id` char(36) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `search_module` varchar(150) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `contents` text,
  `description` text,
  PRIMARY KEY (`id`),
  KEY `idx_desc` (`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `schedulers`
--

CREATE TABLE IF NOT EXISTS `schedulers` (
  `id` varchar(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL,
  `date_time_start` datetime DEFAULT NULL,
  `date_time_end` datetime DEFAULT NULL,
  `job_interval` varchar(100) DEFAULT NULL,
  `time_from` time DEFAULT NULL,
  `time_to` time DEFAULT NULL,
  `last_run` datetime DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `catch_up` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_schedule` (`date_time_start`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `schedulers`
--

INSERT INTO `schedulers` (`id`, `deleted`, `date_entered`, `date_modified`, `created_by`, `modified_user_id`, `name`, `job`, `date_time_start`, `date_time_end`, `job_interval`, `time_from`, `time_to`, `last_run`, `status`, `catch_up`) VALUES
('119d097b-b591-2b15-63d2-5301d021f132', 0, '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '1', 'Extracción de documentos del sistema de archivos', 'function::removeDocumentsFromFS', '2012-01-01 17:30:01', '2030-12-31 23:59:59', '0::3::1::*::*', NULL, NULL, NULL, 'Active', 0),
('1da94cf0-2925-9607-1f92-5301d017d60a', 0, '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '1', 'Limpiar Tablas de SugarFeed', 'function::trimSugarFeeds', '2005-01-01 12:15:01', '2020-12-31 23:59:59', '0::2::1::*::*', NULL, NULL, NULL, 'Active', 1),
('32a980b4-a813-3186-7649-5301d08327e8', 0, '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '1', 'Run AOW WorkFlow', 'function::processAOW_Workflow', '2005-01-01 09:45:01', '2020-12-31 23:59:59', '*::*::*::*::*', NULL, NULL, NULL, 'Active', 0),
('37290071-d204-56da-9129-5301d00d0802', 0, '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '1', 'Limpiar Cola de Trabajos', 'function::cleanJobQueue', '2012-01-01 19:45:01', '2030-12-31 23:59:59', '0::5::*::*::*', NULL, NULL, NULL, 'Active', 0),
('6d8d0740-c93c-661d-8c1f-5301d0c2302f', 0, '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '1', 'Truncar Tablas de Monitorización', 'function::trimTracker', '2005-01-01 18:00:01', '2020-12-31 23:59:59', '0::2::1::*::*', NULL, NULL, NULL, 'Active', 1),
('82d0325d-8d08-3159-42aa-5301d0059f3b', 0, '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '1', 'Comprobar Bandejas de Entrada', 'function::pollMonitoredInboxes', '2005-01-01 11:45:01', '2020-12-31 23:59:59', '*::*::*::*::*', NULL, NULL, NULL, 'Inactive', 0),
('8d943202-8bd6-6ad8-fba7-5301d0976076', 0, '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '1', 'Ejecutar Proceso Nocturno de Emails de Campaña Rebotados', 'function::pollMonitoredInboxesForBouncedCampaignEmails', '2005-01-01 17:00:01', '2020-12-31 23:59:59', '0::2-6::*::*::*', NULL, NULL, NULL, 'Active', 1),
('a5de7601-73fd-7e3a-7a3b-5301d0326420', 0, '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '1', 'AOP Check Inbound Mailboxes', 'function::pollMonitoredInboxesCustomAOP', '2005-01-01 11:15:00', '2020-12-31 00:00:00', '*/1::*::*::*::*', NULL, NULL, NULL, 'Active', 0),
('ab1a8ead-b00b-1bbd-5e9e-5301d07fbf16', 0, '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '1', 'Ejecutar Proceso Nocturno de Campañas de Email Masivo', 'function::runMassEmailCampaign', '2005-01-01 15:45:01', '2020-12-31 23:59:59', '0::2-6::*::*::*', NULL, NULL, NULL, 'Active', 1),
('c6fcb321-8ab6-0b51-4c77-5301d085e27c', 0, '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '1', 'Truncar Base de datos al Inicio del Mes', 'function::pruneDatabase', '2005-01-01 11:30:01', '2020-12-31 23:59:59', '0::4::1::*::*', NULL, NULL, NULL, 'Inactive', 0),
('d6cfb472-db69-a297-4a43-5301d07f93ef', 0, '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '1', 'Ejecutar Envío de Emails de Recordatorios', 'function::sendEmailReminders', '2008-01-01 11:30:01', '2020-12-31 23:59:59', '*::*::*::*::*', NULL, NULL, NULL, 'Active', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `securitygroups`
--

CREATE TABLE IF NOT EXISTS `securitygroups` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `noninheritable` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `securitygroups_acl_roles`
--

CREATE TABLE IF NOT EXISTS `securitygroups_acl_roles` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `role_id` char(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `securitygroups_audit`
--

CREATE TABLE IF NOT EXISTS `securitygroups_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_securitygroups_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `securitygroups_default`
--

CREATE TABLE IF NOT EXISTS `securitygroups_default` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `module` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `securitygroups_records`
--

CREATE TABLE IF NOT EXISTS `securitygroups_records` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `record_id` char(36) DEFAULT NULL,
  `module` char(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_securitygroups_records_mod` (`module`,`deleted`,`record_id`,`securitygroup_id`),
  KEY `idx_securitygroups_records_del` (`deleted`,`record_id`,`module`,`securitygroup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `securitygroups_users`
--

CREATE TABLE IF NOT EXISTS `securitygroups_users` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `securitygroup_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `primary_group` tinyint(1) DEFAULT NULL,
  `noninheritable` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `securitygroups_users_idxa` (`securitygroup_id`),
  KEY `securitygroups_users_idxb` (`user_id`),
  KEY `securitygroups_users_idxc` (`user_id`,`deleted`,`securitygroup_id`,`id`),
  KEY `securitygroups_users_idxd` (`user_id`,`deleted`,`securitygroup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sugarfeed`
--

CREATE TABLE IF NOT EXISTS `sugarfeed` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `related_module` varchar(100) DEFAULT NULL,
  `related_id` char(36) DEFAULT NULL,
  `link_url` varchar(255) DEFAULT NULL,
  `link_type` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sgrfeed_date` (`date_entered`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sugarfeed`
--

INSERT INTO `sugarfeed` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `related_module`, `related_id`, `link_url`, `link_type`) VALUES
('2cee87f1-b76c-914c-edb1-5301f2e1cee0', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:ef5151a9-9e4b-5fb4-39f3-5301f2aa0841:Antonio Martínez]', '2014-02-17 11:30:49', '2014-02-17 11:30:49', '1', '1', NULL, 0, '1', 'Contacts', 'ef5151a9-9e4b-5fb4-39f3-5301f2aa0841', NULL, NULL),
('764d4484-1856-ab16-2ecc-53071b6f6ffc', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:3830fa9b-e961-b38d-4c29-53071b24255c:Prueba] {SugarFeed.WITH} [Accounts:25849816-ef86-1477-24d5-52987598d0df:24/7 Couriers] {SugarFeed.FOR} €2.000,00', '2014-02-21 09:23:34', '2014-02-21 09:23:34', '1', '1', NULL, 0, '1', 'Opportunities', '3830fa9b-e961-b38d-4c29-53071b24255c', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tasks`
--

CREATE TABLE IF NOT EXISTS `tasks` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `date_due_flag` tinyint(1) DEFAULT '0',
  `date_due` datetime DEFAULT NULL,
  `date_start_flag` tinyint(1) DEFAULT '0',
  `date_start` datetime DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_tsk_name` (`name`),
  KEY `idx_task_con_del` (`contact_id`,`deleted`),
  KEY `idx_task_par_del` (`parent_id`,`parent_type`,`deleted`),
  KEY `idx_task_assigned` (`assigned_user_id`),
  KEY `idx_task_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tracker`
--

CREATE TABLE IF NOT EXISTS `tracker` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `monitor_id` char(36) NOT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `module_name` varchar(255) DEFAULT NULL,
  `item_id` varchar(36) DEFAULT NULL,
  `item_summary` varchar(255) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `session_id` varchar(36) DEFAULT NULL,
  `visible` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_tracker_iid` (`item_id`),
  KEY `idx_tracker_userid_vis_id` (`user_id`,`visible`,`id`),
  KEY `idx_tracker_userid_itemid_vis` (`user_id`,`item_id`,`visible`),
  KEY `idx_tracker_monitor_id` (`monitor_id`),
  KEY `idx_tracker_date_modified` (`date_modified`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- Volcado de datos para la tabla `tracker`
--

INSERT INTO `tracker` (`id`, `monitor_id`, `user_id`, `module_name`, `item_id`, `item_summary`, `date_modified`, `action`, `session_id`, `visible`, `deleted`) VALUES
(12, 'df69ecac-0b2c-49d6-65bc-5301f57bc1da', '1', 'AOS_Quotes', 'e0fc355b-40e5-dffd-b6c8-5301f3bbf2f5', 'Factura de prueba', '2014-02-17 11:40:07', 'detailview', 'unjic07c60otanqilrg6d593s6', 1, 0),
(18, '51d62822-99eb-c5c9-197e-5307022b8ab0', '1', 'Employees', 'f2e0750f-ee66-7a15-fd82-530702f43fb6', 'José Luis Cebrián Márquez', '2014-02-21 07:38:22', 'detailview', 'e4f80sbsmigemsp340etrq3df6', 1, 0),
(19, 'ce61369c-5191-e6fd-46c4-530712cfbc7b', '1', 'Users', '1', 'Admin Admin', '2014-02-21 08:45:29', 'editview', 'e4f80sbsmigemsp340etrq3df6', 1, 0),
(20, '59f905fa-2149-42c7-6cd9-530716add3aa', '1', 'EmailTemplates', '43195e98-7bdb-ff13-d955-5301d003b50c', 'Case Closure', '2014-02-21 09:04:36', 'detailview', 'rkl1dh3ec6t8bmdfubt66usm16', 1, 0),
(21, 'd50639c4-8414-a5a2-f626-53071ba8c397', '1', 'Opportunities', '3830fa9b-e961-b38d-4c29-53071b24255c', 'Prueba', '2014-02-21 09:23:34', 'detailview', '4dpige0qmtunvs544bevaeimb3', 1, 0),
(23, '638591b2-e376-a68b-1add-53071db2904e', '1', 'Contacts', 'ef5151a9-9e4b-5fb4-39f3-5301f2aa0841', 'Sr. Antonio Martínez', '2014-02-21 09:33:02', 'editview', '4dpige0qmtunvs544bevaeimb3', 1, 0),
(24, '472335e4-9f0e-5213-a7f0-53071e778542', '1', 'AOS_Invoices', '2b0aa908-ab02-bfee-133c-5301f34264bc', 'Factura de prueba', '2014-02-21 09:37:30', 'detailview', '4dpige0qmtunvs544bevaeimb3', 1, 0),
(26, '9b26e307-ea1c-28b0-b564-53071f03cb33', '1', 'ProspectLists', '504e091e-0ca1-1836-4735-53071f5a669a', 'kjk', '2014-02-21 09:42:52', 'detailview', '4dpige0qmtunvs544bevaeimb3', 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `upgrade_history`
--

CREATE TABLE IF NOT EXISTS `upgrade_history` (
  `id` char(36) NOT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `md5sum` varchar(32) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `version` varchar(64) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `id_name` varchar(255) DEFAULT NULL,
  `manifest` longtext,
  `date_entered` datetime DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `upgrade_history_md5_uk` (`md5sum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `upgrade_history`
--

INSERT INTO `upgrade_history` (`id`, `filename`, `md5sum`, `type`, `status`, `version`, `name`, `description`, `id_name`, `manifest`, `date_entered`, `enabled`) VALUES
('24dd07c5-8c1b-4369-2da2-5301da044734', 'upload/upgrades/module/Regoluna_Invoices-1.2.zip', '529add3aa0242388ec5c4e9eed5b695f', 'module', 'installed', '1.2', 'Regoluna Invoices', 'Proporciona soporte básico para generar facturas sencillas. Orientado a pequeñas empresas y autónomos que facturan servicios.', 'reg_invoices', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjExOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e3M6MTM6InJlZ2V4X21hdGNoZXMiO2E6MTp7aTowO3M6NjoiNi4qXC4qIjt9fXM6MjQ6ImFjY2VwdGFibGVfc3VnYXJfZmxhdm9ycyI7YTozOntpOjA7czoyOiJDRSI7aToxO3M6MzoiUFJPIjtpOjI7czozOiJFTlQiO31zOjM6ImtleSI7czozOiJyZWciO3M6NjoiYXV0aG9yIjtzOjIxOiJSb2RyaWdvIFNhaXogQ2FtYXJlcm8iO3M6MTE6ImRlc2NyaXB0aW9uIjtzOjEyODoiUHJvcG9yY2lvbmEgc29wb3J0ZSBiw6FzaWNvIHBhcmEgZ2VuZXJhciBmYWN0dXJhcyBzZW5jaWxsYXMuIE9yaWVudGFkbyBhIHBlcXVlw7FhcyBlbXByZXNhcyB5IGF1dMOzbm9tb3MgcXVlIGZhY3R1cmFuIHNlcnZpY2lvcy4iO3M6NDoiaWNvbiI7czowOiIiO3M6MTY6ImlzX3VuaW5zdGFsbGFibGUiO2I6MTtzOjQ6Im5hbWUiO3M6MTc6IlJlZ29sdW5hIEludm9pY2VzIjtzOjE0OiJwdWJsaXNoZWRfZGF0ZSI7czoxMDoiMjAxMC0xMS0wNiI7czo0OiJ0eXBlIjtzOjY6Im1vZHVsZSI7czo3OiJ2ZXJzaW9uIjtzOjM6IjEuMiI7fXM6MTE6Imluc3RhbGxkZWZzIjthOjk6e3M6MjoiaWQiO3M6MTI6InJlZ19pbnZvaWNlcyI7czo5OiJpbWFnZV9kaXIiO3M6MTY6IjxiYXNlcGF0aD4vaWNvbnMiO3M6MTA6ImxheW91dGRlZnMiO2E6MTp7aTowO2E6Mjp7czo0OiJmcm9tIjtzOjQzOiI8YmFzZXBhdGg+L3N1YnBhbmVscy9hY2NvdW50c19zdWJwYW5lbHMucGhwIjtzOjk6InRvX21vZHVsZSI7czo4OiJBY2NvdW50cyI7fX1zOjU6ImJlYW5zIjthOjI6e2k6MDthOjQ6e3M6NjoibW9kdWxlIjtzOjEzOiJmYWN0X0ZhY3R1cmFzIjtzOjU6ImNsYXNzIjtzOjEzOiJmYWN0X0ZhY3R1cmFzIjtzOjQ6InBhdGgiO3M6Mzk6Im1vZHVsZXMvZmFjdF9GYWN0dXJhcy9mYWN0X0ZhY3R1cmFzLnBocCI7czozOiJ0YWIiO2I6MTt9aToxO2E6NDp7czo2OiJtb2R1bGUiO3M6MTA6ImZhY3RfSXRlbXMiO3M6NToiY2xhc3MiO3M6MTA6ImZhY3RfSXRlbXMiO3M6NDoicGF0aCI7czozMzoibW9kdWxlcy9mYWN0X0l0ZW1zL2ZhY3RfSXRlbXMucGhwIjtzOjM6InRhYiI7YjowO319czoxMzoicmVsYXRpb25zaGlwcyI7YToyOntpOjA7YToxOntzOjk6Im1ldGFfZGF0YSI7czo1OToiPGJhc2VwYXRoPi9yZWxhdGlvbnNoaXBzL2FjY291bnRzX2ZhY3RfZmFjdHVyYXNNZXRhRGF0YS5waHAiO31pOjE7YToxOntzOjk6Im1ldGFfZGF0YSI7czo2MToiPGJhc2VwYXRoPi9yZWxhdGlvbnNoaXBzL2ZhY3RfZmFjdHVyYXNfZmFjdF9pdGVtc01ldGFEYXRhLnBocCI7fX1zOjQ6ImNvcHkiO2E6MjE6e2k6MDthOjI6e3M6NDoiZnJvbSI7czoyOToiPGJhc2VwYXRoPi9tb2R1bGVzL2ZhY3RfSXRlbXMiO3M6MjoidG8iO3M6MTg6Im1vZHVsZXMvZmFjdF9JdGVtcyI7fWk6MTthOjI6e3M6NDoiZnJvbSI7czozMjoiPGJhc2VwYXRoPi9tb2R1bGVzL2ZhY3RfRmFjdHVyYXMiO3M6MjoidG8iO3M6MjE6Im1vZHVsZXMvZmFjdF9GYWN0dXJhcyI7fWk6MjthOjI6e3M6NDoiZnJvbSI7czo0NjoiPGJhc2VwYXRoPi9jdXN0b20vaW5jbHVkZS9nZW5lcmljL2l0ZW1VdGlscy5qcyI7czoyOiJ0byI7czozNToiY3VzdG9tL2luY2x1ZGUvZ2VuZXJpYy9pdGVtVXRpbHMuanMiO31pOjM7YToyOntzOjQ6ImZyb20iO3M6ODI6IjxiYXNlcGF0aD4vaW5jbHVkZS9nZW5lcmljL1N1Z2FyV2lkZ2V0cy9TdWdhcldpZGdldFN1YlBhbmVsRGVsZXRlUmVsYXRlZEJ1dHRvbi5waHAiO3M6MjoidG8iO3M6NzE6ImluY2x1ZGUvZ2VuZXJpYy9TdWdhcldpZGdldHMvU3VnYXJXaWRnZXRTdWJQYW5lbERlbGV0ZVJlbGF0ZWRCdXR0b24ucGhwIjt9aTo0O2E6Mjp7czo0OiJmcm9tIjtzOjc5OiI8YmFzZXBhdGg+L2luY2x1ZGUvZ2VuZXJpYy9TdWdhcldpZGdldHMvU3VnYXJXaWRnZXRTdWJQYW5lbFRvcEJ1dHRvbk5ld0l0ZW0ucGhwIjtzOjI6InRvIjtzOjY4OiJpbmNsdWRlL2dlbmVyaWMvU3VnYXJXaWRnZXRzL1N1Z2FyV2lkZ2V0U3ViUGFuZWxUb3BCdXR0b25OZXdJdGVtLnBocCI7fWk6NTthOjI6e3M6NDoiZnJvbSI7czo3MjoiPGJhc2VwYXRoPi9pbmNsdWRlL2dlbmVyaWMvU3VnYXJXaWRnZXRzL1N1Z2FyV2lkZ2V0U3ViUGFuZWxRdWlja0l0ZW0ucGhwIjtzOjI6InRvIjtzOjYxOiJpbmNsdWRlL2dlbmVyaWMvU3VnYXJXaWRnZXRzL1N1Z2FyV2lkZ2V0U3ViUGFuZWxRdWlja0l0ZW0ucGhwIjt9aTo2O2E6Mjp7czo0OiJmcm9tIjtzOjc1OiI8YmFzZXBhdGg+L2luY2x1ZGUvZ2VuZXJpYy9TdWdhcldpZGdldHMvU3VnYXJXaWRnZXRTdWJQYW5lbFVwRG93bkJ1dHRvbi5waHAiO3M6MjoidG8iO3M6NjQ6ImluY2x1ZGUvZ2VuZXJpYy9TdWdhcldpZGdldHMvU3VnYXJXaWRnZXRTdWJQYW5lbFVwRG93bkJ1dHRvbi5waHAiO31pOjc7YToyOntzOjQ6ImZyb20iO3M6Nzk6IjxiYXNlcGF0aD4vaW5jbHVkZS9nZW5lcmljL1N1Z2FyV2lkZ2V0cy9TdWdhcldpZGdldFN1YlBhbmVsVG9wQnV0dG9uU2lnblhtbC5waHAiO3M6MjoidG8iO3M6Njg6ImluY2x1ZGUvZ2VuZXJpYy9TdWdhcldpZGdldHMvU3VnYXJXaWRnZXRTdWJQYW5lbFRvcEJ1dHRvblNpZ25YbWwucGhwIjt9aTo4O2E6Mjp7czo0OiJmcm9tIjtzOjc4OiI8YmFzZXBhdGg+L2luY2x1ZGUvZ2VuZXJpYy9TdWdhcldpZGdldHMvU3VnYXJXaWRnZXRTdWJwYW5lbEl0ZW1EZXNjcmlwdGlvbi5waHAiO3M6MjoidG8iO3M6Njc6ImluY2x1ZGUvZ2VuZXJpYy9TdWdhcldpZGdldHMvU3VnYXJXaWRnZXRTdWJwYW5lbEl0ZW1EZXNjcmlwdGlvbi5waHAiO31pOjk7YToyOntzOjQ6ImZyb20iO3M6NTU6IjxiYXNlcGF0aD4vY3VzdG9tL3RoZW1lcy9kZWZhdWx0L2ZhY3RfRmFjdHVyYXNTdHlsZS5jc3MiO3M6MjoidG8iO3M6NDQ6ImN1c3RvbS90aGVtZXMvZGVmYXVsdC9mYWN0X0ZhY3R1cmFzU3R5bGUuY3NzIjt9aToxMDthOjI6e3M6NDoiZnJvbSI7czo2NjoiPGJhc2VwYXRoPi9pbmNsdWRlL2dlbmVyaWMvU3VnYXJXaWRnZXRzL1N1Z2FyV2lkZ2V0U3VicGFuZWxUYXgucGhwIjtzOjI6InRvIjtzOjU1OiJpbmNsdWRlL2dlbmVyaWMvU3VnYXJXaWRnZXRzL1N1Z2FyV2lkZ2V0U3VicGFuZWxUYXgucGhwIjt9aToxMTthOjI6e3M6NDoiZnJvbSI7czo0NjoiPGJhc2VwYXRoPi9pbmNsdWRlL1N1Z2FyRmllbGRzL0ZpZWxkcy9IdG1sZWRpdCI7czoyOiJ0byI7czozNToiaW5jbHVkZS9TdWdhckZpZWxkcy9GaWVsZHMvSHRtbGVkaXQiO31pOjEyO2E6Mjp7czo0OiJmcm9tIjtzOjQ2OiI8YmFzZXBhdGg+L2luY2x1ZGUvU3VnYXJGaWVsZHMvRmllbGRzL0ltcHVlc3RvIjtzOjI6InRvIjtzOjM1OiJpbmNsdWRlL1N1Z2FyRmllbGRzL0ZpZWxkcy9JbXB1ZXN0byI7fWk6MTM7YToyOntzOjQ6ImZyb20iO3M6NDg6IjxiYXNlcGF0aD4vaW5jbHVkZS9TdWdhckZpZWxkcy9GaWVsZHMvTnVtRmFjdHVyYSI7czoyOiJ0byI7czozNzoiaW5jbHVkZS9TdWdhckZpZWxkcy9GaWVsZHMvTnVtRmFjdHVyYSI7fWk6MTQ7YToyOntzOjQ6ImZyb20iO3M6MzM6IjxiYXNlcGF0aD4vaW5jbHVkZS9odG1sMnBkZl92My4yOCI7czoyOiJ0byI7czoxNjoiaW5jbHVkZS9odG1sMnBkZiI7fWk6MTU7YToyOntzOjQ6ImZyb20iO3M6Mzg6IjxiYXNlcGF0aD4vY2hhcnRzL0ZhY3R1cmFzQ2hhcnREYXNobGV0IjtzOjI6InRvIjtzOjQ0OiJtb2R1bGVzL0NoYXJ0cy9EYXNobGV0cy9GYWN0dXJhc0NoYXJ0RGFzaGxldCI7fWk6MTY7YToyOntzOjQ6ImZyb20iO3M6NjA6IjxiYXNlcGF0aD4vY3VzdG9tL2luY2x1ZGUvU3VnYXJDaGFydHMvSml0L0ppdFJlZ0ludm9pY2VzLnBocCI7czoyOiJ0byI7czo0OToiY3VzdG9tL2luY2x1ZGUvU3VnYXJDaGFydHMvSml0L0ppdFJlZ0ludm9pY2VzLnBocCI7fWk6MTc7YToyOntzOjQ6ImZyb20iO3M6NjM6IjxiYXNlcGF0aD4vY3VzdG9tL21vZHVsZXMvQ29uZmlndXJhdG9yL2ZhY3RfRmFjdHVyYXNfQ29uZmlnLnBocCI7czoyOiJ0byI7czo1MjoiY3VzdG9tL21vZHVsZXMvQ29uZmlndXJhdG9yL2ZhY3RfRmFjdHVyYXNfQ29uZmlnLnBocCI7fWk6MTg7YToyOntzOjQ6ImZyb20iO3M6Njg6IjxiYXNlcGF0aD4vY3VzdG9tL21vZHVsZXMvQ29uZmlndXJhdG9yL3RwbHMvZmFjdF9GYWN0dXJhc19Db25maWcudHBsIjtzOjI6InRvIjtzOjU3OiJjdXN0b20vbW9kdWxlcy9Db25maWd1cmF0b3IvdHBscy9mYWN0X0ZhY3R1cmFzX0NvbmZpZy50cGwiO31pOjE5O2E6Mjp7czo0OiJmcm9tIjtzOjY0OiI8YmFzZXBhdGg+L2N1c3RvbS9tb2R1bGVzL0FkbWluaXN0cmF0aW9uL2ZhY3RfRmFjdHVyYXNfQ2hlY2sucGhwIjtzOjI6InRvIjtzOjUzOiJjdXN0b20vbW9kdWxlcy9BZG1pbmlzdHJhdGlvbi9mYWN0X0ZhY3R1cmFzX0NoZWNrLnBocCI7fWk6MjA7YToyOntzOjQ6ImZyb20iO3M6MTU6IjxiYXNlcGF0aD4vdGVzdCI7czoyOiJ0byI7czoyNDoiY3VzdG9tL3Rlc3QvcmVnX2ludm9pY2VzIjt9fXM6ODoibGFuZ3VhZ2UiO2E6ODp7aTowO2E6Mzp7czo0OiJmcm9tIjtzOjQ2OiI8YmFzZXBhdGg+L2xhbmd1YWdlL2FwcGxpY2F0aW9uX2VzX2VzLmxhbmcucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMToiYXBwbGljYXRpb24iO3M6ODoibGFuZ3VhZ2UiO3M6NToiZXNfZXMiO31pOjE7YTozOntzOjQ6ImZyb20iO3M6NDY6IjxiYXNlcGF0aD4vbGFuZ3VhZ2UvYXBwbGljYXRpb25fZW5fdXMubGFuZy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJhcHBsaWNhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJlbl91cyI7fWk6MjthOjM6e3M6NDoiZnJvbSI7czo0MzoiPGJhc2VwYXRoPi9sYW5ndWFnZS9hY2NvdW50c19lc19lcy5sYW5nLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6ODoiQWNjb3VudHMiO3M6ODoibGFuZ3VhZ2UiO3M6NToiZXNfZXMiO31pOjM7YTozOntzOjQ6ImZyb20iO3M6NDM6IjxiYXNlcGF0aD4vbGFuZ3VhZ2UvYWNjb3VudHNfZW5fdXMubGFuZy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjg6IkFjY291bnRzIjtzOjg6Imxhbmd1YWdlIjtzOjU6ImVuX3VzIjt9aTo0O2E6Mzp7czo0OiJmcm9tIjtzOjQ3OiI8YmFzZXBhdGg+L2xhbmd1YWdlL2NvbmZpZ3VyYXRvcl9lc19lcy5sYW5nLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTI6IkNvbmZpZ3VyYXRvciI7czo4OiJsYW5ndWFnZSI7czo1OiJlc19lcyI7fWk6NTthOjM6e3M6NDoiZnJvbSI7czo0NzoiPGJhc2VwYXRoPi9sYW5ndWFnZS9jb25maWd1cmF0b3JfZW5fdXMubGFuZy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjEyOiJDb25maWd1cmF0b3IiO3M6ODoibGFuZ3VhZ2UiO3M6NToiZW5fdXMiO31pOjY7YTozOntzOjQ6ImZyb20iO3M6NDk6IjxiYXNlcGF0aD4vbGFuZ3VhZ2UvYWRtaW5pc3RyYXRpb25fZXNfZXMubGFuZy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjE0OiJBZG1pbmlzdHJhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJlc19lcyI7fWk6NzthOjM6e3M6NDoiZnJvbSI7czo0OToiPGJhc2VwYXRoPi9sYW5ndWFnZS9hZG1pbmlzdHJhdGlvbl9lbl91cy5sYW5nLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTQ6IkFkbWluaXN0cmF0aW9uIjtzOjg6Imxhbmd1YWdlIjtzOjU6ImVuX3VzIjt9fXM6NzoidmFyZGVmcyI7YToxOntpOjA7YToyOntzOjQ6ImZyb20iO3M6Mzk6IjxiYXNlcGF0aD4vdmFyZGVmcy9hY2NvdW50c192YXJkZWZzLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6ODoiQWNjb3VudHMiO319czoxNDoiYWRtaW5pc3RyYXRpb24iO2E6MTp7aTowO2E6MTp7czo0OiJmcm9tIjtzOjUxOiI8YmFzZXBhdGg+L2FkbWluaXN0cmF0aW9uL2ZhY3RfRmFjdHVyYXNfb3B0aW9ucy5waHAiO319fXM6MTY6InVwZ3JhZGVfbWFuaWZlc3QiO3M6MDoiIjt9', '2014-02-17 09:44:11', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` char(36) NOT NULL,
  `user_name` varchar(60) DEFAULT NULL,
  `user_hash` varchar(255) DEFAULT NULL,
  `system_generated_password` tinyint(1) DEFAULT NULL,
  `pwd_last_changed` datetime DEFAULT NULL,
  `authenticate_id` varchar(100) DEFAULT NULL,
  `sugar_login` tinyint(1) DEFAULT '1',
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT '0',
  `external_auth_only` tinyint(1) DEFAULT '0',
  `receive_notifications` tinyint(1) DEFAULT '1',
  `description` text,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `phone_home` varchar(50) DEFAULT NULL,
  `phone_mobile` varchar(50) DEFAULT NULL,
  `phone_work` varchar(50) DEFAULT NULL,
  `phone_other` varchar(50) DEFAULT NULL,
  `phone_fax` varchar(50) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `address_street` varchar(150) DEFAULT NULL,
  `address_city` varchar(100) DEFAULT NULL,
  `address_state` varchar(100) DEFAULT NULL,
  `address_country` varchar(100) DEFAULT NULL,
  `address_postalcode` varchar(20) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `portal_only` tinyint(1) DEFAULT '0',
  `show_on_employees` tinyint(1) DEFAULT '1',
  `employee_status` varchar(100) DEFAULT NULL,
  `messenger_id` varchar(100) DEFAULT NULL,
  `messenger_type` varchar(100) DEFAULT NULL,
  `reports_to_id` char(36) DEFAULT NULL,
  `is_group` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_name` (`user_name`,`is_group`,`status`,`last_name`,`first_name`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `user_name`, `user_hash`, `system_generated_password`, `pwd_last_changed`, `authenticate_id`, `sugar_login`, `first_name`, `last_name`, `is_admin`, `external_auth_only`, `receive_notifications`, `description`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `title`, `department`, `phone_home`, `phone_mobile`, `phone_work`, `phone_other`, `phone_fax`, `status`, `address_street`, `address_city`, `address_state`, `address_country`, `address_postalcode`, `deleted`, `portal_only`, `show_on_employees`, `employee_status`, `messenger_id`, `messenger_type`, `reports_to_id`, `is_group`) VALUES
('1', 'admin', '$1$WQ..nK/.$aDFCtcBHLNTv/4rgXMfGJ/', 0, NULL, NULL, 1, 'Admin', 'Admin', 1, 0, 1, NULL, '2014-02-17 09:00:55', '2014-02-17 09:15:21', '1', '', 'Administrator', NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 'Active', NULL, NULL, '', 0),
('f2e0750f-ee66-7a15-fd82-530702f43fb6', '', NULL, 0, NULL, NULL, 1, 'José Luis', 'Cebrián Márquez', 0, 0, 1, '', '2014-02-21 07:38:21', '2014-02-21 07:38:21', '1', '1', 'D.', '', '', '', '', '', '', NULL, '', '', '', '', '', 0, 0, 1, 'Active', '', '', '', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_feeds`
--

CREATE TABLE IF NOT EXISTS `users_feeds` (
  `user_id` varchar(36) DEFAULT NULL,
  `feed_id` varchar(36) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  KEY `idx_ud_user_id` (`user_id`,`feed_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_last_import`
--

CREATE TABLE IF NOT EXISTS `users_last_import` (
  `id` char(36) NOT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `import_module` varchar(36) DEFAULT NULL,
  `bean_type` varchar(36) DEFAULT NULL,
  `bean_id` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_password_link`
--

CREATE TABLE IF NOT EXISTS `users_password_link` (
  `id` char(36) NOT NULL,
  `username` varchar(36) DEFAULT NULL,
  `date_generated` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_signatures`
--

CREATE TABLE IF NOT EXISTS `users_signatures` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `signature` text,
  `signature_html` text,
  PRIMARY KEY (`id`),
  KEY `idx_usersig_uid` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_preferences`
--

CREATE TABLE IF NOT EXISTS `user_preferences` (
  `id` char(36) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `contents` longtext,
  PRIMARY KEY (`id`),
  KEY `idx_userprefnamecat` (`assigned_user_id`,`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `user_preferences`
--

INSERT INTO `user_preferences` (`id`, `category`, `deleted`, `date_entered`, `date_modified`, `assigned_user_id`, `contents`) VALUES
('139edad6-a9ec-fd23-a853-5301d4bd9e01', 'Opportunities2_OPPORTUNITY', 0, '2014-02-17 09:22:27', '2014-02-17 09:22:27', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('14b29836-c5e9-71c1-0a1b-53071d491b0d', 'Calls2_CALL', 0, '2014-02-21 09:33:58', '2014-02-21 09:33:58', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('1a572ba6-f27c-6a01-5fb1-5307247fa67c', 'Emails', 0, '2014-02-21 10:04:48', '2014-02-21 10:04:48', '1', 'YToxOntzOjExOiJmb2N1c0ZvbGRlciI7czo2MjoiYToyOntzOjQ6ImllSWQiO3M6OToidW5kZWZpbmVkIjtzOjY6ImZvbGRlciI7czo5OiJ1bmRlZmluZWQiO30iO30='),
('1a885816-6178-08c1-d3f6-5301d3d37cd9', 'Home2_LEAD', 0, '2014-02-17 09:15:22', '2014-02-17 09:15:22', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('1b5e0bc3-35fe-1286-d830-5301d38ab813', 'Home2_OPPORTUNITY', 0, '2014-02-17 09:15:22', '2014-02-17 09:15:22', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('20e121cc-c01b-0aed-c75d-53071d2d4b31', 'Users2_USER', 0, '2014-02-21 09:33:18', '2014-02-21 09:33:18', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('26c6d674-156b-c6f8-46e9-5301d34655ac', 'Home2_SUGARFEED', 0, '2014-02-17 09:15:22', '2014-02-17 09:15:22', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('2c20b7a0-a3db-970c-b4c0-5301d4afbd7e', 'Contacts2_CONTACT', 0, '2014-02-17 09:22:25', '2014-02-17 09:22:25', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('2f1c2737-54f9-bf13-b510-53071f5cbece', 'ProspectLists2_PROSPECTLIST', 0, '2014-02-21 09:42:46', '2014-02-21 09:42:46', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('5b6d7e06-3c40-5b89-6d16-5301d08a15f2', 'global', 0, '2014-02-17 09:00:55', '2014-02-21 07:28:21', '1', 'YToyNzp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MzY6IjViMzFhNjgwLTQ1NzktM2FlOC0xOGU0LTUzMDFkMGJhNjExZSI7czoxMDoidXNlcl90aGVtZSI7czo2OiJTdWl0ZTciO3M6MTM6InJlbWluZGVyX3RpbWUiO2k6MTgwMDtzOjEyOiJtYWlsbWVyZ2Vfb24iO3M6Mjoib24iO3M6ODoidGltZXpvbmUiO3M6MTM6IkV1cm9wZS9Mb25kb24iO3M6MTY6InN3YXBfbGFzdF92aWV3ZWQiO3M6MDoiIjtzOjE0OiJzd2FwX3Nob3J0Y3V0cyI7czowOiIiO3M6MTk6Im5hdmlnYXRpb25fcGFyYWRpZ20iO3M6MjoiZ20iO3M6MTM6InN1YnBhbmVsX3RhYnMiO3M6MDoiIjtzOjE0OiJtb2R1bGVfZmF2aWNvbiI7czowOiIiO3M6OToiaGlkZV90YWJzIjthOjA6e31zOjExOiJyZW1vdmVfdGFicyI7YTowOnt9czo3OiJub19vcHBzIjtzOjM6Im9mZiI7czoxOToiZW1haWxfcmVtaW5kZXJfdGltZSI7aTotMTtzOjI6InV0IjtzOjE6IjEiO3M6ODoiY3VycmVuY3kiO3M6MzoiLTk5IjtzOjM1OiJkZWZhdWx0X2N1cnJlbmN5X3NpZ25pZmljYW50X2RpZ2l0cyI7czoxOiIyIjtzOjExOiJudW1fZ3JwX3NlcCI7czoxOiIuIjtzOjc6ImRlY19zZXAiO3M6MToiLCI7czo1OiJkYXRlZiI7czo1OiJtL2QvWSI7czo1OiJ0aW1lZiI7czo0OiJoOmlBIjtzOjI2OiJkZWZhdWx0X2xvY2FsZV9uYW1lX2Zvcm1hdCI7czo1OiJzIGYgbCI7czoxNDoidXNlX3JlYWxfbmFtZXMiO3M6Mjoib24iO3M6MTc6Im1haWxfc210cGF1dGhfcmVxIjtzOjA6IiI7czoxMjoibWFpbF9zbXRwc3NsIjtpOjA7czoxNzoiZW1haWxfc2hvd19jb3VudHMiO2k6MDtzOjEwOiJFbXBsb3llZXNRIjthOjM6e3M6NjoibW9kdWxlIjtzOjk6IkVtcGxveWVlcyI7czo2OiJhY3Rpb24iO3M6NToiaW5kZXgiO3M6NToicXVlcnkiO3M6NDoidHJ1ZSI7fX0='),
('5cbe3b2c-d7f2-164c-f515-53071da2d365', 'ACLRoles2_ACLROLE', 0, '2014-02-21 09:34:58', '2014-02-21 09:34:58', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('632ee64c-feff-2875-c170-5301da4dcf3a', 'AOS_Invoices2_AOS_INVOICES', 0, '2014-02-17 09:48:06', '2014-02-17 09:48:06', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('64770f0a-b8e8-6b1e-7a00-530700943892', 'Employees2_EMPLOYEE', 0, '2014-02-21 07:28:21', '2014-02-21 07:28:21', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('9d929322-1288-6366-32e9-5301f54581f2', 'AOS_PDF_Templates2_AOS_PDF_TEMPLATES', 0, '2014-02-17 11:40:34', '2014-02-17 11:40:34', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('9e7f1e97-bc51-9e96-95bd-53071ecd41fe', 'Documents2_DOCUMENT', 0, '2014-02-21 09:38:41', '2014-02-21 09:38:41', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('a0452669-4908-81ab-df67-5301d4abfdac', 'Leads2_LEAD', 0, '2014-02-17 09:22:29', '2014-02-17 09:22:29', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('a8b091d4-8e1c-f314-11c0-5307217c0ff8', 'AOS_Quotes2_AOS_QUOTES', 0, '2014-02-21 09:51:02', '2014-02-21 09:51:02', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('c0301507-4ee5-c4cc-db02-5301d345e319', 'ETag', 0, '2014-02-17 09:15:21', '2014-02-17 09:44:11', '1', 'YToxOntzOjEyOiJtYWluTWVudUVUYWciO2k6Mjt9'),
('c29d5827-8f16-f30b-369e-5301d33bfc22', 'Home', 0, '2014-02-17 09:15:22', '2014-02-21 07:26:01', '1', 'YToyOntzOjg6ImRhc2hsZXRzIjthOjU6e3M6MzY6IjZlZWNhMDdhLTVjNTMtZjZmNy0zZjVlLTUzMDFkMzUyZThlZCI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYWxsc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9DYWxscy9EYXNobGV0cy9NeUNhbGxzRGFzaGxldC9NeUNhbGxzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjcxNDk4YWM1LTE3OWYtODc1MC0wNjM1LTUzMDFkMzk4MDZkYyI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlNZWV0aW5nc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6Ik1lZXRpbmdzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9NZWV0aW5ncy9EYXNobGV0cy9NeU1lZXRpbmdzRGFzaGxldC9NeU1lZXRpbmdzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjczNWNjNmU1LWU4NzItYTUyNC05OWNlLTUzMDFkMzMzMzc1NiI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoyMjoiTXlPcHBvcnR1bml0aWVzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjgwOiJtb2R1bGVzL09wcG9ydHVuaXRpZXMvRGFzaGxldHMvTXlPcHBvcnR1bml0aWVzRGFzaGxldC9NeU9wcG9ydHVuaXRpZXNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiNzVmNjAzOTMtY2M5Yy1kNjEyLTkwYjEtNTMwMWQzZmE0ZWQ3IjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeUFjY291bnRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiQWNjb3VudHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY1OiJtb2R1bGVzL0FjY291bnRzL0Rhc2hsZXRzL015QWNjb3VudHNEYXNobGV0L015QWNjb3VudHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiNzg4ZGNmMjgtZmE4MC01YTUwLWMxMTItNTMwMWQzZDRhOWQzIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUxlYWRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiTGVhZHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0xlYWRzL0Rhc2hsZXRzL015TGVhZHNEYXNobGV0L015TGVhZHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319fXM6NToicGFnZXMiO2E6MTp7aTowO2E6Mzp7czo3OiJjb2x1bW5zIjthOjI6e2k6MDthOjI6e3M6NToid2lkdGgiO3M6MzoiNjAlIjtzOjg6ImRhc2hsZXRzIjthOjU6e2k6MTtzOjM2OiI2ZWVjYTA3YS01YzUzLWY2ZjctM2Y1ZS01MzAxZDM1MmU4ZWQiO2k6MjtzOjM2OiI3MTQ5OGFjNS0xNzlmLTg3NTAtMDYzNS01MzAxZDM5ODA2ZGMiO2k6MztzOjM2OiI3MzVjYzZlNS1lODcyLWE1MjQtOTljZS01MzAxZDMzMzM3NTYiO2k6NDtzOjM2OiI3NWY2MDM5My1jYzljLWQ2MTItOTBiMS01MzAxZDNmYTRlZDciO2k6NTtzOjM2OiI3ODhkY2YyOC1mYTgwLTVhNTAtYzExMi01MzAxZDNkNGE5ZDMiO319aToxO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI0MCUiO3M6ODoiZGFzaGxldHMiO2E6MDp7fX19czoxMDoibnVtQ29sdW1ucyI7czoxOiIyIjtzOjE0OiJwYWdlVGl0bGVMYWJlbCI7czoyMDoiTEJMX0hPTUVfUEFHRV8xX05BTUUiO319fQ=='),
('d4bb47f0-9d04-925e-8130-5301d34a15d4', 'Home2_CALL', 0, '2014-02-17 09:15:22', '2014-02-17 09:15:22', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('d70c765f-0081-1187-5a32-5301d355f972', 'Accounts2_ACCOUNT', 0, '2014-02-17 09:16:45', '2014-02-17 09:16:45', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('d8e8eca0-d93b-a8e6-27e5-53071604693e', 'EmailTemplates2_EMAILTEMPLATE', 0, '2014-02-21 09:04:33', '2014-02-21 09:04:33', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('de46a4a8-0312-d0ae-3090-53071d25521e', 'Campaigns2_CAMPAIGN', 0, '2014-02-21 09:33:56', '2014-02-21 09:33:56', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('ea01a6aa-5c6e-72d1-d904-5301d38c3aa0', 'Home2_MEETING', 0, '2014-02-17 09:15:22', '2014-02-17 09:15:22', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('ef1b6311-6671-fb8e-16ea-53071c3a20ac', 'Meetings2_MEETING', 0, '2014-02-21 09:28:34', '2014-02-21 09:28:34', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('f2140243-0bd6-6143-cd03-5301d3b458a4', 'Home2_ACCOUNT', 0, '2014-02-17 09:15:22', '2014-02-17 09:15:22', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ==');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vcals`
--

CREATE TABLE IF NOT EXISTS `vcals` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `user_id` char(36) NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`),
  KEY `idx_vcal` (`type`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `versions`
--

CREATE TABLE IF NOT EXISTS `versions` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `file_version` varchar(255) DEFAULT NULL,
  `db_version` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_version` (`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `versions`
--

INSERT INTO `versions` (`id`, `deleted`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `name`, `file_version`, `db_version`) VALUES
('93a94d85-fd97-8197-ec3f-5301d0c079b7', 0, '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '1', 'Chart Data Cache', '3.5.1', '3.5.1'),
('9e5b840e-81d4-964f-9c2c-5301d0c42e76', 0, '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '1', 'htaccess', '3.5.1', '3.5.1'),
('a32668bc-45e5-1ac5-2351-5301dadaefd7', 0, '2014-02-17 09:45:30', '2014-02-17 09:45:30', '1', '1', 'Rebuild Relationships', '4.0.0', '4.0.0'),
('c1640bbb-b24c-f560-77ba-5301d0c0bdb7', 0, '2014-02-17 09:00:55', '2014-02-17 09:00:55', '1', '1', 'Rebuild Extensions', '4.0.0', '4.0.0');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
