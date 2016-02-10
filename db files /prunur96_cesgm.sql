-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 10, 2016 at 09:16 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prunur96_cesgm`
--
CREATE DATABASE IF NOT EXISTS `prunur96_cesgm` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `prunur96_cesgm`;

-- --------------------------------------------------------

--
-- Table structure for table `test_accountingaccount`
--

DROP TABLE IF EXISTS `test_accountingaccount`;
CREATE TABLE `test_accountingaccount` (
  `rowid` int(11) NOT NULL,
  `fk_pcg_version` varchar(12) NOT NULL,
  `pcg_type` varchar(20) NOT NULL,
  `pcg_subtype` varchar(20) NOT NULL,
  `account_number` varchar(20) NOT NULL,
  `account_parent` varchar(20) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_accountingaccount`
--

INSERT INTO `test_accountingaccount` (`rowid`, `fk_pcg_version`, `pcg_type`, `pcg_subtype`, `account_number`, `account_parent`, `label`, `active`) VALUES
(1, 'PCG99-ABREGE', 'CAPIT', 'CAPITAL', '101', '1401', 'Capital', 1),
(2, 'PCG99-ABREGE', 'CAPIT', 'XXXXXX', '105', '1401', 'Ecarts de réévaluation', 1),
(3, 'PCG99-ABREGE', 'CAPIT', 'XXXXXX', '1061', '1401', 'Réserve légale', 1),
(4, 'PCG99-ABREGE', 'CAPIT', 'XXXXXX', '1063', '1401', 'Réserves statutaires ou contractuelles', 1),
(5, 'PCG99-ABREGE', 'CAPIT', 'XXXXXX', '1064', '1401', 'Réserves réglementées', 1),
(6, 'PCG99-ABREGE', 'CAPIT', 'XXXXXX', '1068', '1401', 'Autres réserves', 1),
(7, 'PCG99-ABREGE', 'CAPIT', 'XXXXXX', '108', '1401', 'Compte de l''exploitant', 1),
(8, 'PCG99-ABREGE', 'CAPIT', 'XXXXXX', '12', '1401', 'Résultat de l''exercice', 1),
(9, 'PCG99-ABREGE', 'CAPIT', 'XXXXXX', '145', '1401', 'Amortissements dérogatoires', 1),
(10, 'PCG99-ABREGE', 'CAPIT', 'XXXXXX', '146', '1401', 'Provision spéciale de réévaluation', 1),
(11, 'PCG99-ABREGE', 'CAPIT', 'XXXXXX', '147', '1401', 'Plus-values réinvesties', 1),
(12, 'PCG99-ABREGE', 'CAPIT', 'XXXXXX', '148', '1401', 'Autres provisions réglementées', 1),
(13, 'PCG99-ABREGE', 'CAPIT', 'XXXXXX', '15', '1401', 'Provisions pour risques et charges', 1),
(14, 'PCG99-ABREGE', 'CAPIT', 'XXXXXX', '16', '1401', 'Emprunts et dettes assimilees', 1),
(15, 'PCG99-ABREGE', 'IMMO', 'XXXXXX', '20', '1402', 'Immobilisations incorporelles', 1),
(16, 'PCG99-ABREGE', 'IMMO', 'XXXXXX', '201', '15', 'Frais d''établissement', 1),
(17, 'PCG99-ABREGE', 'IMMO', 'XXXXXX', '206', '15', 'Droit au bail', 1),
(18, 'PCG99-ABREGE', 'IMMO', 'XXXXXX', '207', '15', 'Fonds commercial', 1),
(19, 'PCG99-ABREGE', 'IMMO', 'XXXXXX', '208', '15', 'Autres immobilisations incorporelles', 1),
(20, 'PCG99-ABREGE', 'IMMO', 'XXXXXX', '21', '1402', 'Immobilisations corporelles', 1),
(21, 'PCG99-ABREGE', 'IMMO', 'XXXXXX', '23', '1402', 'Immobilisations en cours', 1),
(22, 'PCG99-ABREGE', 'IMMO', 'XXXXXX', '27', '1402', 'Autres immobilisations financieres', 1),
(23, 'PCG99-ABREGE', 'IMMO', 'XXXXXX', '280', '1402', 'Amortissements des immobilisations incorporelles', 1),
(24, 'PCG99-ABREGE', 'IMMO', 'XXXXXX', '281', '1402', 'Amortissements des immobilisations corporelles', 1),
(25, 'PCG99-ABREGE', 'IMMO', 'XXXXXX', '290', '1402', 'Provisions pour dépréciation des immobilisations incorporelles', 1),
(26, 'PCG99-ABREGE', 'IMMO', 'XXXXXX', '291', '1402', 'Provisions pour dépréciation des immobilisations corporelles', 1),
(27, 'PCG99-ABREGE', 'IMMO', 'XXXXXX', '297', '1402', 'Provisions pour dépréciation des autres immobilisations financières', 1),
(28, 'PCG99-ABREGE', 'STOCK', 'XXXXXX', '31', '1403', 'Matieres premières', 1),
(29, 'PCG99-ABREGE', 'STOCK', 'XXXXXX', '32', '1403', 'Autres approvisionnements', 1),
(30, 'PCG99-ABREGE', 'STOCK', 'XXXXXX', '33', '1403', 'En-cours de production de biens', 1),
(31, 'PCG99-ABREGE', 'STOCK', 'XXXXXX', '34', '1403', 'En-cours de production de services', 1),
(32, 'PCG99-ABREGE', 'STOCK', 'XXXXXX', '35', '1403', 'Stocks de produits', 1),
(33, 'PCG99-ABREGE', 'STOCK', 'XXXXXX', '37', '1403', 'Stocks de marchandises', 1),
(34, 'PCG99-ABREGE', 'STOCK', 'XXXXXX', '391', '1403', 'Provisions pour dépréciation des matières premières', 1),
(35, 'PCG99-ABREGE', 'STOCK', 'XXXXXX', '392', '1403', 'Provisions pour dépréciation des autres approvisionnements', 1),
(36, 'PCG99-ABREGE', 'STOCK', 'XXXXXX', '393', '1403', 'Provisions pour dépréciation des en-cours de production de biens', 1),
(37, 'PCG99-ABREGE', 'STOCK', 'XXXXXX', '394', '1403', 'Provisions pour dépréciation des en-cours de production de services', 1),
(38, 'PCG99-ABREGE', 'STOCK', 'XXXXXX', '395', '1403', 'Provisions pour dépréciation des stocks de produits', 1),
(39, 'PCG99-ABREGE', 'STOCK', 'XXXXXX', '397', '1403', 'Provisions pour dépréciation des stocks de marchandises', 1),
(40, 'PCG99-ABREGE', 'TIERS', 'SUPPLIER', '400', '1404', 'Fournisseurs et Comptes rattachés', 1),
(41, 'PCG99-ABREGE', 'TIERS', 'XXXXXX', '409', '1404', 'Fournisseurs débiteurs', 1),
(42, 'PCG99-ABREGE', 'TIERS', 'CUSTOMER', '410', '1404', 'Clients et Comptes rattachés', 1),
(43, 'PCG99-ABREGE', 'TIERS', 'XXXXXX', '419', '1404', 'Clients créditeurs', 1),
(44, 'PCG99-ABREGE', 'TIERS', 'XXXXXX', '421', '1404', 'Personnel', 1),
(45, 'PCG99-ABREGE', 'TIERS', 'XXXXXX', '428', '1404', 'Personnel', 1),
(46, 'PCG99-ABREGE', 'TIERS', 'XXXXXX', '43', '1404', 'Sécurité sociale et autres organismes sociaux', 1),
(47, 'PCG99-ABREGE', 'TIERS', 'XXXXXX', '444', '1404', 'Etat - impôts sur bénéfice', 1),
(48, 'PCG99-ABREGE', 'TIERS', 'XXXXXX', '445', '1404', 'Etat - Taxes sur chiffre affaires', 1),
(49, 'PCG99-ABREGE', 'TIERS', 'XXXXXX', '447', '1404', 'Autres impôts, taxes et versements assimilés', 1),
(50, 'PCG99-ABREGE', 'TIERS', 'XXXXXX', '45', '1404', 'Groupe et associes', 1),
(51, 'PCG99-ABREGE', 'TIERS', 'XXXXXX', '455', '50', 'Associés', 1),
(52, 'PCG99-ABREGE', 'TIERS', 'XXXXXX', '46', '1404', 'Débiteurs divers et créditeurs divers', 1),
(53, 'PCG99-ABREGE', 'TIERS', 'XXXXXX', '47', '1404', 'Comptes transitoires ou d''attente', 1),
(54, 'PCG99-ABREGE', 'TIERS', 'XXXXXX', '481', '1404', 'Charges à répartir sur plusieurs exercices', 1),
(55, 'PCG99-ABREGE', 'TIERS', 'XXXXXX', '486', '1404', 'Charges constatées d''avance', 1),
(56, 'PCG99-ABREGE', 'TIERS', 'XXXXXX', '487', '1404', 'Produits constatés d''avance', 1),
(57, 'PCG99-ABREGE', 'TIERS', 'XXXXXX', '491', '1404', 'Provisions pour dépréciation des comptes de clients', 1),
(58, 'PCG99-ABREGE', 'TIERS', 'XXXXXX', '496', '1404', 'Provisions pour dépréciation des comptes de débiteurs divers', 1),
(59, 'PCG99-ABREGE', 'FINAN', 'XXXXXX', '50', '1405', 'Valeurs mobilières de placement', 1),
(60, 'PCG99-ABREGE', 'FINAN', 'BANK', '51', '1405', 'Banques, établissements financiers et assimilés', 1),
(61, 'PCG99-ABREGE', 'FINAN', 'CASH', '53', '1405', 'Caisse', 1),
(62, 'PCG99-ABREGE', 'FINAN', 'XXXXXX', '54', '1405', 'Régies d''avance et accréditifs', 1),
(63, 'PCG99-ABREGE', 'FINAN', 'XXXXXX', '58', '1405', 'Virements internes', 1),
(64, 'PCG99-ABREGE', 'FINAN', 'XXXXXX', '590', '1405', 'Provisions pour dépréciation des valeurs mobilières de placement', 1),
(65, 'PCG99-ABREGE', 'CHARGE', 'PRODUCT', '60', '1406', 'Achats', 1),
(66, 'PCG99-ABREGE', 'CHARGE', 'XXXXXX', '603', '65', 'Variations des stocks', 1),
(67, 'PCG99-ABREGE', 'CHARGE', 'SERVICE', '61', '1406', 'Services extérieurs', 1),
(68, 'PCG99-ABREGE', 'CHARGE', 'XXXXXX', '62', '1406', 'Autres services extérieurs', 1),
(69, 'PCG99-ABREGE', 'CHARGE', 'XXXXXX', '63', '1406', 'Impôts, taxes et versements assimiles', 1),
(70, 'PCG99-ABREGE', 'CHARGE', 'XXXXXX', '641', '1406', 'Rémunérations du personnel', 1),
(71, 'PCG99-ABREGE', 'CHARGE', 'XXXXXX', '644', '1406', 'Rémunération du travail de l''exploitant', 1),
(72, 'PCG99-ABREGE', 'CHARGE', 'SOCIAL', '645', '1406', 'Charges de sécurité sociale et de prévoyance', 1),
(73, 'PCG99-ABREGE', 'CHARGE', 'XXXXXX', '646', '1406', 'Cotisations sociales personnelles de l''exploitant', 1),
(74, 'PCG99-ABREGE', 'CHARGE', 'XXXXXX', '65', '1406', 'Autres charges de gestion courante', 1),
(75, 'PCG99-ABREGE', 'CHARGE', 'XXXXXX', '66', '1406', 'Charges financières', 1),
(76, 'PCG99-ABREGE', 'CHARGE', 'XXXXXX', '67', '1406', 'Charges exceptionnelles', 1),
(77, 'PCG99-ABREGE', 'CHARGE', 'XXXXXX', '681', '1406', 'Dotations aux amortissements et aux provisions', 1),
(78, 'PCG99-ABREGE', 'CHARGE', 'XXXXXX', '686', '1406', 'Dotations aux amortissements et aux provisions', 1),
(79, 'PCG99-ABREGE', 'CHARGE', 'XXXXXX', '687', '1406', 'Dotations aux amortissements et aux provisions', 1),
(80, 'PCG99-ABREGE', 'CHARGE', 'XXXXXX', '691', '1406', 'Participation des salariés aux résultats', 1),
(81, 'PCG99-ABREGE', 'CHARGE', 'XXXXXX', '695', '1406', 'Impôts sur les bénéfices', 1),
(82, 'PCG99-ABREGE', 'CHARGE', 'XXXXXX', '697', '1406', 'Imposition forfaitaire annuelle des sociétés', 1),
(83, 'PCG99-ABREGE', 'CHARGE', 'XXXXXX', '699', '1406', 'Produits', 1),
(84, 'PCG99-ABREGE', 'PROD', 'PRODUCT', '701', '1407', 'Ventes de produits finis', 1),
(85, 'PCG99-ABREGE', 'PROD', 'SERVICE', '706', '1407', 'Prestations de services', 1),
(86, 'PCG99-ABREGE', 'PROD', 'PRODUCT', '707', '1407', 'Ventes de marchandises', 1),
(87, 'PCG99-ABREGE', 'PROD', 'PRODUCT', '708', '1407', 'Produits des activités annexes', 1),
(88, 'PCG99-ABREGE', 'PROD', 'XXXXXX', '709', '1407', 'Rabais, remises et ristournes accordés par l''entreprise', 1),
(89, 'PCG99-ABREGE', 'PROD', 'XXXXXX', '713', '1407', 'Variation des stocks', 1),
(90, 'PCG99-ABREGE', 'PROD', 'XXXXXX', '72', '1407', 'Production immobilisée', 1),
(91, 'PCG99-ABREGE', 'PROD', 'XXXXXX', '73', '1407', 'Produits nets partiels sur opérations à long terme', 1),
(92, 'PCG99-ABREGE', 'PROD', 'XXXXXX', '74', '1407', 'Subventions d''exploitation', 1),
(93, 'PCG99-ABREGE', 'PROD', 'XXXXXX', '75', '1407', 'Autres produits de gestion courante', 1),
(94, 'PCG99-ABREGE', 'PROD', 'XXXXXX', '753', '93', 'Jetons de présence et rémunérations d''administrateurs, gérants,...', 1),
(95, 'PCG99-ABREGE', 'PROD', 'XXXXXX', '754', '93', 'Ristournes perçues des coopératives', 1),
(96, 'PCG99-ABREGE', 'PROD', 'XXXXXX', '755', '93', 'Quotes-parts de résultat sur opérations faites en commun', 1),
(97, 'PCG99-ABREGE', 'PROD', 'XXXXXX', '76', '1407', 'Produits financiers', 1),
(98, 'PCG99-ABREGE', 'PROD', 'XXXXXX', '77', '1407', 'Produits exceptionnels', 1),
(99, 'PCG99-ABREGE', 'PROD', 'XXXXXX', '781', '1407', 'Reprises sur amortissements et provisions', 1),
(100, 'PCG99-ABREGE', 'PROD', 'XXXXXX', '786', '1407', 'Reprises sur provisions pour risques', 1),
(101, 'PCG99-ABREGE', 'PROD', 'XXXXXX', '787', '1407', 'Reprises sur provisions', 1),
(102, 'PCG99-ABREGE', 'PROD', 'XXXXXX', '79', '1407', 'Transferts de charges', 1),
(103, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '10', '1501', 'Capital  et réserves', 1),
(104, 'PCG99-BASE', 'CAPIT', 'CAPITAL', '101', '103', 'Capital', 1),
(105, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '104', '103', 'Primes liées au capital social', 1),
(106, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '105', '103', 'Ecarts de réévaluation', 1),
(107, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '106', '103', 'Réserves', 1),
(108, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '107', '103', 'Ecart d''equivalence', 1),
(109, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '108', '103', 'Compte de l''exploitant', 1),
(110, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '109', '103', 'Actionnaires : capital souscrit - non appelé', 1),
(111, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '11', '1501', 'Report à nouveau (solde créditeur ou débiteur)', 1),
(112, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '110', '111', 'Report à nouveau (solde créditeur)', 1),
(113, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '119', '111', 'Report à nouveau (solde débiteur)', 1),
(114, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '12', '1501', 'Résultat de l''exercice (bénéfice ou perte)', 1),
(115, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '120', '114', 'Résultat de l''exercice (bénéfice)', 1),
(116, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '129', '114', 'Résultat de l''exercice (perte)', 1),
(117, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '13', '1501', 'Subventions d''investissement', 1),
(118, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '131', '117', 'Subventions d''équipement', 1),
(119, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '138', '117', 'Autres subventions d''investissement', 1),
(120, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '139', '117', 'Subventions d''investissement inscrites au compte de résultat', 1),
(121, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '14', '1501', 'Provisions réglementées', 1),
(122, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '142', '121', 'Provisions réglementées relatives aux immobilisations', 1),
(123, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '143', '121', 'Provisions réglementées relatives aux stocks', 1),
(124, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '144', '121', 'Provisions réglementées relatives aux autres éléments de l''actif', 1),
(125, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '145', '121', 'Amortissements dérogatoires', 1),
(126, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '146', '121', 'Provision spéciale de réévaluation', 1),
(127, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '147', '121', 'Plus-values réinvesties', 1),
(128, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '148', '121', 'Autres provisions réglementées', 1),
(129, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '15', '1501', 'Provisions pour risques et charges', 1),
(130, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '151', '129', 'Provisions pour risques', 1),
(131, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '153', '129', 'Provisions pour pensions et obligations similaires', 1),
(132, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '154', '129', 'Provisions pour restructurations', 1),
(133, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '155', '129', 'Provisions pour impôts', 1),
(134, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '156', '129', 'Provisions pour renouvellement des immobilisations (entreprises concessionnaires)', 1),
(135, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '157', '129', 'Provisions pour charges à répartir sur plusieurs exercices', 1),
(136, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '158', '129', 'Autres provisions pour charges', 1),
(137, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '16', '1501', 'Emprunts et dettes assimilees', 1),
(138, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '161', '137', 'Emprunts obligataires convertibles', 1),
(139, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '163', '137', 'Autres emprunts obligataires', 1),
(140, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '164', '137', 'Emprunts auprès des établissements de crédit', 1),
(141, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '165', '137', 'Dépôts et cautionnements reçus', 1),
(142, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '166', '137', 'Participation des salariés aux résultats', 1),
(143, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '167', '137', 'Emprunts et dettes assortis de conditions particulières', 1),
(144, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '168', '137', 'Autres emprunts et dettes assimilées', 1),
(145, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '169', '137', 'Primes de remboursement des obligations', 1),
(146, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '17', '1501', 'Dettes rattachées à des participations', 1),
(147, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '171', '146', 'Dettes rattachées à des participations (groupe)', 1),
(148, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '174', '146', 'Dettes rattachées à des participations (hors groupe)', 1),
(149, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '178', '146', 'Dettes rattachées à des sociétés en participation', 1),
(150, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '18', '1501', 'Comptes de liaison des établissements et sociétés en participation', 1),
(151, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '181', '150', 'Comptes de liaison des établissements', 1),
(152, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '186', '150', 'Biens et prestations de services échangés entre établissements (charges)', 1),
(153, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '187', '150', 'Biens et prestations de services échangés entre établissements (produits)', 1),
(154, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '188', '150', 'Comptes de liaison des sociétés en participation', 1),
(155, 'PCG99-BASE', 'IMMO', 'XXXXXX', '20', '1502', 'Immobilisations incorporelles', 1),
(156, 'PCG99-BASE', 'IMMO', 'XXXXXX', '201', '155', 'Frais d''établissement', 1),
(157, 'PCG99-BASE', 'IMMO', 'XXXXXX', '203', '155', 'Frais de recherche et de développement', 1),
(158, 'PCG99-BASE', 'IMMO', 'XXXXXX', '205', '155', 'Concessions et droits similaires, brevets, licences, marques, procédés, logiciels, droits et valeurs similaires', 1),
(159, 'PCG99-BASE', 'IMMO', 'XXXXXX', '206', '155', 'Droit au bail', 1),
(160, 'PCG99-BASE', 'IMMO', 'XXXXXX', '207', '155', 'Fonds commercial', 1),
(161, 'PCG99-BASE', 'IMMO', 'XXXXXX', '208', '155', 'Autres immobilisations incorporelles', 1),
(162, 'PCG99-BASE', 'IMMO', 'XXXXXX', '21', '1502', 'Immobilisations corporelles', 1),
(163, 'PCG99-BASE', 'IMMO', 'XXXXXX', '211', '162', 'Terrains', 1),
(164, 'PCG99-BASE', 'IMMO', 'XXXXXX', '212', '162', 'Agencements et aménagements de terrains', 1),
(165, 'PCG99-BASE', 'IMMO', 'XXXXXX', '213', '162', 'Constructions', 1),
(166, 'PCG99-BASE', 'IMMO', 'XXXXXX', '214', '162', 'Constructions sur sol d''autrui', 1),
(167, 'PCG99-BASE', 'IMMO', 'XXXXXX', '215', '162', 'Installations techniques, matériels et outillage industriels', 1),
(168, 'PCG99-BASE', 'IMMO', 'XXXXXX', '218', '162', 'Autres immobilisations corporelles', 1),
(169, 'PCG99-BASE', 'IMMO', 'XXXXXX', '22', '1502', 'Immobilisations mises en concession', 1),
(170, 'PCG99-BASE', 'IMMO', 'XXXXXX', '23', '1502', 'Immobilisations en cours', 1),
(171, 'PCG99-BASE', 'IMMO', 'XXXXXX', '231', '170', 'Immobilisations corporelles en cours', 1),
(172, 'PCG99-BASE', 'IMMO', 'XXXXXX', '232', '170', 'Immobilisations incorporelles en cours', 1),
(173, 'PCG99-BASE', 'IMMO', 'XXXXXX', '237', '170', 'Avances et acomptes versés sur immobilisations incorporelles', 1),
(174, 'PCG99-BASE', 'IMMO', 'XXXXXX', '238', '170', 'Avances et acomptes versés sur commandes d''immobilisations corporelles', 1),
(175, 'PCG99-BASE', 'IMMO', 'XXXXXX', '25', '1502', 'Parts dans des entreprises liées et créances sur des entreprises liées', 1),
(176, 'PCG99-BASE', 'IMMO', 'XXXXXX', '26', '1502', 'Participations et créances rattachées à des participations', 1),
(177, 'PCG99-BASE', 'IMMO', 'XXXXXX', '261', '176', 'Titres de participation', 1),
(178, 'PCG99-BASE', 'IMMO', 'XXXXXX', '266', '176', 'Autres formes de participation', 1),
(179, 'PCG99-BASE', 'IMMO', 'XXXXXX', '267', '176', 'Créances rattachées à des participations', 1),
(180, 'PCG99-BASE', 'IMMO', 'XXXXXX', '268', '176', 'Créances rattachées à des sociétés en participation', 1),
(181, 'PCG99-BASE', 'IMMO', 'XXXXXX', '269', '176', 'Versements restant à effectuer sur titres de participation non libérés', 1),
(182, 'PCG99-BASE', 'IMMO', 'XXXXXX', '27', '1502', 'Autres immobilisations financieres', 1),
(183, 'PCG99-BASE', 'IMMO', 'XXXXXX', '271', '183', 'Titres immobilisés autres que les titres immobilisés de l''activité de portefeuille (droit de propriété)', 1),
(184, 'PCG99-BASE', 'IMMO', 'XXXXXX', '272', '183', 'Titres immobilisés (droit de créance)', 1),
(185, 'PCG99-BASE', 'IMMO', 'XXXXXX', '273', '183', 'Titres immobilisés de l''activité de portefeuille', 1),
(186, 'PCG99-BASE', 'IMMO', 'XXXXXX', '274', '183', 'Prêts', 1),
(187, 'PCG99-BASE', 'IMMO', 'XXXXXX', '275', '183', 'Dépôts et cautionnements versés', 1),
(188, 'PCG99-BASE', 'IMMO', 'XXXXXX', '276', '183', 'Autres créances immobilisées', 1),
(189, 'PCG99-BASE', 'IMMO', 'XXXXXX', '277', '183', '(Actions propres ou parts propres)', 1),
(190, 'PCG99-BASE', 'IMMO', 'XXXXXX', '279', '183', 'Versements restant à effectuer sur titres immobilisés non libérés', 1),
(191, 'PCG99-BASE', 'IMMO', 'XXXXXX', '28', '1502', 'Amortissements des immobilisations', 1),
(192, 'PCG99-BASE', 'IMMO', 'XXXXXX', '280', '191', 'Amortissements des immobilisations incorporelles', 1),
(193, 'PCG99-BASE', 'IMMO', 'XXXXXX', '281', '191', 'Amortissements des immobilisations corporelles', 1),
(194, 'PCG99-BASE', 'IMMO', 'XXXXXX', '282', '191', 'Amortissements des immobilisations mises en concession', 1),
(195, 'PCG99-BASE', 'IMMO', 'XXXXXX', '29', '1502', 'Dépréciations des immobilisations', 1),
(196, 'PCG99-BASE', 'IMMO', 'XXXXXX', '290', '195', 'Dépréciations des immobilisations incorporelles', 1),
(197, 'PCG99-BASE', 'IMMO', 'XXXXXX', '291', '195', 'Dépréciations des immobilisations corporelles', 1),
(198, 'PCG99-BASE', 'IMMO', 'XXXXXX', '292', '195', 'Dépréciations des immobilisations mises en concession', 1),
(199, 'PCG99-BASE', 'IMMO', 'XXXXXX', '293', '195', 'Dépréciations des immobilisations en cours', 1),
(200, 'PCG99-BASE', 'IMMO', 'XXXXXX', '296', '195', 'Provisions pour dépréciation des participations et créances rattachées à des participations', 1),
(201, 'PCG99-BASE', 'IMMO', 'XXXXXX', '297', '195', 'Provisions pour dépréciation des autres immobilisations financières', 1),
(202, 'PCG99-BASE', 'STOCK', 'XXXXXX', '31', '1503', 'Matières premières (et fournitures)', 1),
(203, 'PCG99-BASE', 'STOCK', 'XXXXXX', '311', '202', 'Matières (ou groupe) A', 1),
(204, 'PCG99-BASE', 'STOCK', 'XXXXXX', '312', '202', 'Matières (ou groupe) B', 1),
(205, 'PCG99-BASE', 'STOCK', 'XXXXXX', '317', '202', 'Fournitures A, B, C,', 1),
(206, 'PCG99-BASE', 'STOCK', 'XXXXXX', '32', '1503', 'Autres approvisionnements', 1),
(207, 'PCG99-BASE', 'STOCK', 'XXXXXX', '321', '206', 'Matières consommables', 1),
(208, 'PCG99-BASE', 'STOCK', 'XXXXXX', '322', '206', 'Fournitures consommables', 1),
(209, 'PCG99-BASE', 'STOCK', 'XXXXXX', '326', '206', 'Emballages', 1),
(210, 'PCG99-BASE', 'STOCK', 'XXXXXX', '33', '1503', 'En-cours de production de biens', 1),
(211, 'PCG99-BASE', 'STOCK', 'XXXXXX', '331', '210', 'Produits en cours', 1),
(212, 'PCG99-BASE', 'STOCK', 'XXXXXX', '335', '210', 'Travaux en cours', 1),
(213, 'PCG99-BASE', 'STOCK', 'XXXXXX', '34', '1503', 'En-cours de production de services', 1),
(214, 'PCG99-BASE', 'STOCK', 'XXXXXX', '341', '213', 'Etudes en cours', 1),
(215, 'PCG99-BASE', 'STOCK', 'XXXXXX', '345', '213', 'Prestations de services en cours', 1),
(216, 'PCG99-BASE', 'STOCK', 'XXXXXX', '35', '1503', 'Stocks de produits', 1),
(217, 'PCG99-BASE', 'STOCK', 'XXXXXX', '351', '216', 'Produits intermédiaires', 1),
(218, 'PCG99-BASE', 'STOCK', 'XXXXXX', '355', '216', 'Produits finis', 1),
(219, 'PCG99-BASE', 'STOCK', 'XXXXXX', '358', '216', 'Produits résiduels (ou matières de récupération)', 1),
(220, 'PCG99-BASE', 'STOCK', 'XXXXXX', '37', '1503', 'Stocks de marchandises', 1),
(221, 'PCG99-BASE', 'STOCK', 'XXXXXX', '371', '220', 'Marchandises (ou groupe) A', 1),
(222, 'PCG99-BASE', 'STOCK', 'XXXXXX', '372', '220', 'Marchandises (ou groupe) B', 1),
(223, 'PCG99-BASE', 'STOCK', 'XXXXXX', '39', '1503', 'Provisions pour dépréciation des stocks et en-cours', 1),
(224, 'PCG99-BASE', 'STOCK', 'XXXXXX', '391', '223', 'Provisions pour dépréciation des matières premières', 1),
(225, 'PCG99-BASE', 'STOCK', 'XXXXXX', '392', '223', 'Provisions pour dépréciation des autres approvisionnements', 1),
(226, 'PCG99-BASE', 'STOCK', 'XXXXXX', '393', '223', 'Provisions pour dépréciation des en-cours de production de biens', 1),
(227, 'PCG99-BASE', 'STOCK', 'XXXXXX', '394', '223', 'Provisions pour dépréciation des en-cours de production de services', 1),
(228, 'PCG99-BASE', 'STOCK', 'XXXXXX', '395', '223', 'Provisions pour dépréciation des stocks de produits', 1),
(229, 'PCG99-BASE', 'STOCK', 'XXXXXX', '397', '223', 'Provisions pour dépréciation des stocks de marchandises', 1),
(230, 'PCG99-BASE', 'TIERS', 'XXXXXX', '40', '1504', 'Fournisseurs et Comptes rattachés', 1),
(231, 'PCG99-BASE', 'TIERS', 'XXXXXX', '400', '230', 'Fournisseurs et Comptes rattachés', 1),
(232, 'PCG99-BASE', 'TIERS', 'SUPPLIER', '401', '230', 'Fournisseurs', 1),
(233, 'PCG99-BASE', 'TIERS', 'XXXXXX', '403', '230', 'Fournisseurs - Effets à payer', 1),
(234, 'PCG99-BASE', 'TIERS', 'XXXXXX', '404', '230', 'Fournisseurs d''immobilisations', 1),
(235, 'PCG99-BASE', 'TIERS', 'XXXXXX', '405', '230', 'Fournisseurs d''immobilisations - Effets à payer', 1),
(236, 'PCG99-BASE', 'TIERS', 'XXXXXX', '408', '230', 'Fournisseurs - Factures non parvenues', 1),
(237, 'PCG99-BASE', 'TIERS', 'XXXXXX', '409', '230', 'Fournisseurs débiteurs', 1),
(238, 'PCG99-BASE', 'TIERS', 'XXXXXX', '41', '1504', 'Clients et comptes rattachés', 1),
(239, 'PCG99-BASE', 'TIERS', 'XXXXXX', '410', '238', 'Clients et Comptes rattachés', 1),
(240, 'PCG99-BASE', 'TIERS', 'CUSTOMER', '411', '238', 'Clients', 1),
(241, 'PCG99-BASE', 'TIERS', 'XXXXXX', '413', '238', 'Clients - Effets à recevoir', 1),
(242, 'PCG99-BASE', 'TIERS', 'XXXXXX', '416', '238', 'Clients douteux ou litigieux', 1),
(243, 'PCG99-BASE', 'TIERS', 'XXXXXX', '418', '238', 'Clients - Produits non encore facturés', 1),
(244, 'PCG99-BASE', 'TIERS', 'XXXXXX', '419', '238', 'Clients créditeurs', 1),
(245, 'PCG99-BASE', 'TIERS', 'XXXXXX', '42', '1504', 'Personnel et comptes rattachés', 1),
(246, 'PCG99-BASE', 'TIERS', 'XXXXXX', '421', '245', 'Personnel - Rémunérations dues', 1),
(247, 'PCG99-BASE', 'TIERS', 'XXXXXX', '422', '245', 'Comités d''entreprises, d''établissement, ...', 1),
(248, 'PCG99-BASE', 'TIERS', 'XXXXXX', '424', '245', 'Participation des salariés aux résultats', 1),
(249, 'PCG99-BASE', 'TIERS', 'XXXXXX', '425', '245', 'Personnel - Avances et acomptes', 1),
(250, 'PCG99-BASE', 'TIERS', 'XXXXXX', '426', '245', 'Personnel - Dépôts', 1),
(251, 'PCG99-BASE', 'TIERS', 'XXXXXX', '427', '245', 'Personnel - Oppositions', 1),
(252, 'PCG99-BASE', 'TIERS', 'XXXXXX', '428', '245', 'Personnel - Charges à payer et produits à recevoir', 1),
(253, 'PCG99-BASE', 'TIERS', 'XXXXXX', '43', '1504', 'Sécurité sociale et autres organismes sociaux', 1),
(254, 'PCG99-BASE', 'TIERS', 'XXXXXX', '431', '253', 'Sécurité sociale', 1),
(255, 'PCG99-BASE', 'TIERS', 'XXXXXX', '437', '253', 'Autres organismes sociaux', 1),
(256, 'PCG99-BASE', 'TIERS', 'XXXXXX', '438', '253', 'Organismes sociaux - Charges à payer et produits à recevoir', 1),
(257, 'PCG99-BASE', 'TIERS', 'XXXXXX', '44', '1504', 'État et autres collectivités publiques', 1),
(258, 'PCG99-BASE', 'TIERS', 'XXXXXX', '441', '257', 'État - Subventions à recevoir', 1),
(259, 'PCG99-BASE', 'TIERS', 'XXXXXX', '442', '257', 'Etat - Impôts et taxes recouvrables sur des tiers', 1),
(260, 'PCG99-BASE', 'TIERS', 'XXXXXX', '443', '257', 'Opérations particulières avec l''Etat, les collectivités publiques, les organismes internationaux', 1),
(261, 'PCG99-BASE', 'TIERS', 'XXXXXX', '444', '257', 'Etat - Impôts sur les bénéfices', 1),
(262, 'PCG99-BASE', 'TIERS', 'XXXXXX', '445', '257', 'Etat - Taxes sur le chiffre d''affaires', 1),
(263, 'PCG99-BASE', 'TIERS', 'XXXXXX', '446', '257', 'Obligations cautionnées', 1),
(264, 'PCG99-BASE', 'TIERS', 'XXXXXX', '447', '257', 'Autres impôts, taxes et versements assimilés', 1),
(265, 'PCG99-BASE', 'TIERS', 'XXXXXX', '448', '257', 'Etat - Charges à payer et produits à recevoir', 1),
(266, 'PCG99-BASE', 'TIERS', 'XXXXXX', '449', '257', 'Quotas d''émission à restituer à l''Etat', 1),
(267, 'PCG99-BASE', 'TIERS', 'XXXXXX', '45', '1504', 'Groupe et associes', 1),
(268, 'PCG99-BASE', 'TIERS', 'XXXXXX', '451', '267', 'Groupe', 1),
(269, 'PCG99-BASE', 'TIERS', 'XXXXXX', '455', '267', 'Associés - Comptes courants', 1),
(270, 'PCG99-BASE', 'TIERS', 'XXXXXX', '456', '267', 'Associés - Opérations sur le capital', 1),
(271, 'PCG99-BASE', 'TIERS', 'XXXXXX', '457', '267', 'Associés - Dividendes à payer', 1),
(272, 'PCG99-BASE', 'TIERS', 'XXXXXX', '458', '267', 'Associés - Opérations faites en commun et en G.I.E.', 1),
(273, 'PCG99-BASE', 'TIERS', 'XXXXXX', '46', '1504', 'Débiteurs divers et créditeurs divers', 1),
(274, 'PCG99-BASE', 'TIERS', 'XXXXXX', '462', '273', 'Créances sur cessions d''immobilisations', 1),
(275, 'PCG99-BASE', 'TIERS', 'XXXXXX', '464', '273', 'Dettes sur acquisitions de valeurs mobilières de placement', 1),
(276, 'PCG99-BASE', 'TIERS', 'XXXXXX', '465', '273', 'Créances sur cessions de valeurs mobilières de placement', 1),
(277, 'PCG99-BASE', 'TIERS', 'XXXXXX', '467', '273', 'Autres comptes débiteurs ou créditeurs', 1),
(278, 'PCG99-BASE', 'TIERS', 'XXXXXX', '468', '273', 'Divers - Charges à payer et produits à recevoir', 1),
(279, 'PCG99-BASE', 'TIERS', 'XXXXXX', '47', '1504', 'Comptes transitoires ou d''attente', 1),
(280, 'PCG99-BASE', 'TIERS', 'XXXXXX', '471', '279', 'Comptes d''attente', 1),
(281, 'PCG99-BASE', 'TIERS', 'XXXXXX', '476', '279', 'Différence de conversion - Actif', 1),
(282, 'PCG99-BASE', 'TIERS', 'XXXXXX', '477', '279', 'Différences de conversion - Passif', 1),
(283, 'PCG99-BASE', 'TIERS', 'XXXXXX', '478', '279', 'Autres comptes transitoires', 1),
(284, 'PCG99-BASE', 'TIERS', 'XXXXXX', '48', '1504', 'Comptes de régularisation', 1),
(285, 'PCG99-BASE', 'TIERS', 'XXXXXX', '481', '284', 'Charges à répartir sur plusieurs exercices', 1),
(286, 'PCG99-BASE', 'TIERS', 'XXXXXX', '486', '284', 'Charges constatées d''avance', 1),
(287, 'PCG99-BASE', 'TIERS', 'XXXXXX', '487', '284', 'Produits constatés d''avance', 1),
(288, 'PCG99-BASE', 'TIERS', 'XXXXXX', '488', '284', 'Comptes de répartition périodique des charges et des produits', 1),
(289, 'PCG99-BASE', 'TIERS', 'XXXXXX', '489', '284', 'Quotas d''émission alloués par l''Etat', 1),
(290, 'PCG99-BASE', 'TIERS', 'XXXXXX', '49', '1504', 'Provisions pour dépréciation des comptes de tiers', 1),
(291, 'PCG99-BASE', 'TIERS', 'XXXXXX', '491', '290', 'Provisions pour dépréciation des comptes de clients', 1),
(292, 'PCG99-BASE', 'TIERS', 'XXXXXX', '495', '290', 'Provisions pour dépréciation des comptes du groupe et des associés', 1),
(293, 'PCG99-BASE', 'TIERS', 'XXXXXX', '496', '290', 'Provisions pour dépréciation des comptes de débiteurs divers', 1),
(294, 'PCG99-BASE', 'FINAN', 'XXXXXX', '50', '1505', 'Valeurs mobilières de placement', 1),
(295, 'PCG99-BASE', 'FINAN', 'XXXXXX', '501', '294', 'Parts dans des entreprises liées', 1),
(296, 'PCG99-BASE', 'FINAN', 'XXXXXX', '502', '294', 'Actions propres', 1),
(297, 'PCG99-BASE', 'FINAN', 'XXXXXX', '503', '294', 'Actions', 1),
(298, 'PCG99-BASE', 'FINAN', 'XXXXXX', '504', '294', 'Autres titres conférant un droit de propriété', 1),
(299, 'PCG99-BASE', 'FINAN', 'XXXXXX', '505', '294', 'Obligations et bons émis par la société et rachetés par elle', 1),
(300, 'PCG99-BASE', 'FINAN', 'XXXXXX', '506', '294', 'Obligations', 1),
(301, 'PCG99-BASE', 'FINAN', 'XXXXXX', '507', '294', 'Bons du Trésor et bons de caisse à court terme', 1),
(302, 'PCG99-BASE', 'FINAN', 'XXXXXX', '508', '294', 'Autres valeurs mobilières de placement et autres créances assimilées', 1),
(303, 'PCG99-BASE', 'FINAN', 'XXXXXX', '509', '294', 'Versements restant à effectuer sur valeurs mobilières de placement non libérées', 1),
(304, 'PCG99-BASE', 'FINAN', 'XXXXXX', '51', '1505', 'Banques, établissements financiers et assimilés', 1),
(305, 'PCG99-BASE', 'FINAN', 'XXXXXX', '511', '304', 'Valeurs à l''encaissement', 1),
(306, 'PCG99-BASE', 'FINAN', 'BANK', '512', '304', 'Banques', 1),
(307, 'PCG99-BASE', 'FINAN', 'XXXXXX', '514', '304', 'Chèques postaux', 1),
(308, 'PCG99-BASE', 'FINAN', 'XXXXXX', '515', '304', '"Caisses" du Trésor et des établissements publics', 1),
(309, 'PCG99-BASE', 'FINAN', 'XXXXXX', '516', '304', 'Sociétés de bourse', 1),
(310, 'PCG99-BASE', 'FINAN', 'XXXXXX', '517', '304', 'Autres organismes financiers', 1),
(311, 'PCG99-BASE', 'FINAN', 'XXXXXX', '518', '304', 'Intérêts courus', 1),
(312, 'PCG99-BASE', 'FINAN', 'XXXXXX', '519', '304', 'Concours bancaires courants', 1),
(313, 'PCG99-BASE', 'FINAN', 'XXXXXX', '52', '1505', 'Instruments de trésorerie', 1),
(314, 'PCG99-BASE', 'FINAN', 'CASH', '53', '1505', 'Caisse', 1),
(315, 'PCG99-BASE', 'FINAN', 'XXXXXX', '531', '314', 'Caisse siège social', 1),
(316, 'PCG99-BASE', 'FINAN', 'XXXXXX', '532', '314', 'Caisse succursale (ou usine) A', 1),
(317, 'PCG99-BASE', 'FINAN', 'XXXXXX', '533', '314', 'Caisse succursale (ou usine) B', 1),
(318, 'PCG99-BASE', 'FINAN', 'XXXXXX', '54', '1505', 'Régies d''avance et accréditifs', 1),
(319, 'PCG99-BASE', 'FINAN', 'XXXXXX', '58', '1505', 'Virements internes', 1),
(320, 'PCG99-BASE', 'FINAN', 'XXXXXX', '59', '1505', 'Provisions pour dépréciation des comptes financiers', 1),
(321, 'PCG99-BASE', 'FINAN', 'XXXXXX', '590', '320', 'Provisions pour dépréciation des valeurs mobilières de placement', 1),
(322, 'PCG99-BASE', 'CHARGE', 'PRODUCT', '60', '1506', 'Achats', 1),
(323, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '601', '322', 'Achats stockés - Matières premières (et fournitures)', 1),
(324, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '602', '322', 'Achats stockés - Autres approvisionnements', 1),
(325, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '603', '322', 'Variations des stocks (approvisionnements et marchandises)', 1),
(326, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '604', '322', 'Achats stockés - Matières premières (et fournitures)', 1),
(327, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '605', '322', 'Achats de matériel, équipements et travaux', 1),
(328, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '606', '322', 'Achats non stockés de matière et fournitures', 1),
(329, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '607', '322', 'Achats de marchandises', 1),
(330, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '608', '322', '(Compte réservé, le cas échéant, à la récapitulation des frais accessoires incorporés aux achats)', 1),
(331, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '609', '322', 'Rabais, remises et ristournes obtenus sur achats', 1),
(332, 'PCG99-BASE', 'CHARGE', 'SERVICE', '61', '1506', 'Services extérieurs', 1),
(333, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '611', '332', 'Sous-traitance générale', 1),
(334, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '612', '332', 'Redevances de crédit-bail', 1),
(335, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '613', '332', 'Locations', 1),
(336, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '614', '332', 'Charges locatives et de copropriété', 1),
(337, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '615', '332', 'Entretien et réparations', 1),
(338, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '616', '332', 'Primes d''assurances', 1),
(339, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '617', '332', 'Etudes et recherches', 1),
(340, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '618', '332', 'Divers', 1),
(341, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '619', '332', 'Rabais, remises et ristournes obtenus sur services extérieurs', 1),
(342, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '62', '1506', 'Autres services extérieurs', 1),
(343, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '621', '342', 'Personnel extérieur à l''entreprise', 1),
(344, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '622', '342', 'Rémunérations d''intermédiaires et honoraires', 1),
(345, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '623', '342', 'Publicité, publications, relations publiques', 1),
(346, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '624', '342', 'Transports de biens et transports collectifs du personnel', 1),
(347, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '625', '342', 'Déplacements, missions et réceptions', 1),
(348, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '626', '342', 'Frais postaux et de télécommunications', 1),
(349, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '627', '342', 'Services bancaires et assimilés', 1),
(350, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '628', '342', 'Divers', 1),
(351, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '629', '342', 'Rabais, remises et ristournes obtenus sur autres services extérieurs', 1),
(352, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '63', '1506', 'Impôts, taxes et versements assimilés', 1),
(353, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '631', '352', 'Impôts, taxes et versements assimilés sur rémunérations (administrations des impôts)', 1),
(354, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '633', '352', 'Impôts, taxes et versements assimilés sur rémunérations (autres organismes)', 1),
(355, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '635', '352', 'Autres impôts, taxes et versements assimilés (administrations des impôts)', 1),
(356, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '637', '352', 'Autres impôts, taxes et versements assimilés (autres organismes)', 1),
(357, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '64', '1506', 'Charges de personnel', 1),
(358, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '641', '357', 'Rémunérations du personnel', 1),
(359, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '644', '357', 'Rémunération du travail de l''exploitant', 1),
(360, 'PCG99-BASE', 'CHARGE', 'SOCIAL', '645', '357', 'Charges de sécurité sociale et de prévoyance', 1),
(361, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '646', '357', 'Cotisations sociales personnelles de l''exploitant', 1),
(362, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '647', '357', 'Autres charges sociales', 1),
(363, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '648', '357', 'Autres charges de personnel', 1),
(364, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '65', '1506', 'Autres charges de gestion courante', 1),
(365, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '651', '364', 'Redevances pour concessions, brevets, licences, marques, procédés, logiciels, droits et valeurs similaires', 1),
(366, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '653', '364', 'Jetons de présence', 1),
(367, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '654', '364', 'Pertes sur créances irrécouvrables', 1),
(368, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '655', '364', 'Quote-part de résultat sur opérations faites en commun', 1),
(369, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '658', '364', 'Charges diverses de gestion courante', 1),
(370, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '66', '1506', 'Charges financières', 1),
(371, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '661', '370', 'Charges d''intérêts', 1),
(372, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '664', '370', 'Pertes sur créances liées à des participations', 1),
(373, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '665', '370', 'Escomptes accordés', 1),
(374, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '666', '370', 'Pertes de change', 1),
(375, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '667', '370', 'Charges nettes sur cessions de valeurs mobilières de placement', 1),
(376, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '668', '370', 'Autres charges financières', 1),
(377, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '67', '1506', 'Charges exceptionnelles', 1),
(378, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '671', '377', 'Charges exceptionnelles sur opérations de gestion', 1),
(379, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '672', '377', '(Compte à la disposition des entités pour enregistrer, en cours d''exercice, les charges sur exercices antérieurs)', 1),
(380, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '675', '377', 'Valeurs comptables des éléments d''actif cédés', 1),
(381, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '678', '377', 'Autres charges exceptionnelles', 1),
(382, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '68', '1506', 'Dotations aux amortissements et aux provisions', 1),
(383, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '681', '382', 'Dotations aux amortissements et aux provisions - Charges d''exploitation', 1),
(384, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '686', '382', 'Dotations aux amortissements et aux provisions - Charges financières', 1),
(385, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '687', '382', 'Dotations aux amortissements et aux provisions - Charges exceptionnelles', 1),
(386, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '69', '1506', 'Participation des salariés - impôts sur les bénéfices et assimiles', 1),
(387, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '691', '386', 'Participation des salariés aux résultats', 1),
(388, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '695', '386', 'Impôts sur les bénéfices', 1),
(389, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '696', '386', 'Suppléments d''impôt sur les sociétés liés aux distributions', 1),
(390, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '697', '386', 'Imposition forfaitaire annuelle des sociétés', 1),
(391, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '698', '386', 'Intégration fiscale', 1),
(392, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '699', '386', 'Produits - Reports en arrière des déficits', 1),
(393, 'PCG99-BASE', 'PROD', 'XXXXXX', '70', '1507', 'Ventes de produits fabriqués, prestations de services, marchandises', 1),
(394, 'PCG99-BASE', 'PROD', 'PRODUCT', '701', '393', 'Ventes de produits finis', 1),
(395, 'PCG99-BASE', 'PROD', 'XXXXXX', '702', '393', 'Ventes de produits intermédiaires', 1),
(396, 'PCG99-BASE', 'PROD', 'XXXXXX', '703', '393', 'Ventes de produits résiduels', 1),
(397, 'PCG99-BASE', 'PROD', 'XXXXXX', '704', '393', 'Travaux', 1),
(398, 'PCG99-BASE', 'PROD', 'XXXXXX', '705', '393', 'Etudes', 1),
(399, 'PCG99-BASE', 'PROD', 'SERVICE', '706', '393', 'Prestations de services', 1),
(400, 'PCG99-BASE', 'PROD', 'PRODUCT', '707', '393', 'Ventes de marchandises', 1),
(401, 'PCG99-BASE', 'PROD', 'PRODUCT', '708', '393', 'Produits des activités annexes', 1),
(402, 'PCG99-BASE', 'PROD', 'XXXXXX', '709', '393', 'Rabais, remises et ristournes accordés par l''entreprise', 1),
(403, 'PCG99-BASE', 'PROD', 'XXXXXX', '71', '1507', 'Production stockée (ou déstockage)', 1),
(404, 'PCG99-BASE', 'PROD', 'XXXXXX', '713', '403', 'Variation des stocks (en-cours de production, produits)', 1),
(405, 'PCG99-BASE', 'PROD', 'XXXXXX', '72', '1507', 'Production immobilisée', 1),
(406, 'PCG99-BASE', 'PROD', 'XXXXXX', '721', '405', 'Immobilisations incorporelles', 1),
(407, 'PCG99-BASE', 'PROD', 'XXXXXX', '722', '405', 'Immobilisations corporelles', 1),
(408, 'PCG99-BASE', 'PROD', 'XXXXXX', '74', '1507', 'Subventions d''exploitation', 1),
(409, 'PCG99-BASE', 'PROD', 'XXXXXX', '75', '1507', 'Autres produits de gestion courante', 1),
(410, 'PCG99-BASE', 'PROD', 'XXXXXX', '751', '409', 'Redevances pour concessions, brevets, licences, marques, procédés, logiciels, droits et valeurs similaires', 1),
(411, 'PCG99-BASE', 'PROD', 'XXXXXX', '752', '409', 'Revenus des immeubles non affectés à des activités professionnelles', 1),
(412, 'PCG99-BASE', 'PROD', 'XXXXXX', '753', '409', 'Jetons de présence et rémunérations d''administrateurs, gérants,...', 1),
(413, 'PCG99-BASE', 'PROD', 'XXXXXX', '754', '409', 'Ristournes perçues des coopératives (provenant des excédents)', 1),
(414, 'PCG99-BASE', 'PROD', 'XXXXXX', '755', '409', 'Quotes-parts de résultat sur opérations faites en commun', 1),
(415, 'PCG99-BASE', 'PROD', 'XXXXXX', '758', '409', 'Produits divers de gestion courante', 1),
(416, 'PCG99-BASE', 'PROD', 'XXXXXX', '76', '1507', 'Produits financiers', 1),
(417, 'PCG99-BASE', 'PROD', 'XXXXXX', '761', '416', 'Produits de participations', 1),
(418, 'PCG99-BASE', 'PROD', 'XXXXXX', '762', '416', 'Produits des autres immobilisations financières', 1),
(419, 'PCG99-BASE', 'PROD', 'XXXXXX', '763', '416', 'Revenus des autres créances', 1),
(420, 'PCG99-BASE', 'PROD', 'XXXXXX', '764', '416', 'Revenus des valeurs mobilières de placement', 1),
(421, 'PCG99-BASE', 'PROD', 'XXXXXX', '765', '416', 'Escomptes obtenus', 1),
(422, 'PCG99-BASE', 'PROD', 'XXXXXX', '766', '416', 'Gains de change', 1),
(423, 'PCG99-BASE', 'PROD', 'XXXXXX', '767', '416', 'Produits nets sur cessions de valeurs mobilières de placement', 1),
(424, 'PCG99-BASE', 'PROD', 'XXXXXX', '768', '416', 'Autres produits financiers', 1),
(425, 'PCG99-BASE', 'PROD', 'XXXXXX', '77', '1507', 'Produits exceptionnels', 1),
(426, 'PCG99-BASE', 'PROD', 'XXXXXX', '771', '425', 'Produits exceptionnels sur opérations de gestion', 1),
(427, 'PCG99-BASE', 'PROD', 'XXXXXX', '772', '425', '(Compte à la disposition des entités pour enregistrer, en cours d''exercice, les produits sur exercices antérieurs)', 1),
(428, 'PCG99-BASE', 'PROD', 'XXXXXX', '775', '425', 'Produits des cessions d''éléments d''actif', 1),
(429, 'PCG99-BASE', 'PROD', 'XXXXXX', '777', '425', 'Quote-part des subventions d''investissement virée au résultat de l''exercice', 1),
(430, 'PCG99-BASE', 'PROD', 'XXXXXX', '778', '425', 'Autres produits exceptionnels', 1),
(431, 'PCG99-BASE', 'PROD', 'XXXXXX', '78', '1507', 'Reprises sur amortissements et provisions', 1),
(432, 'PCG99-BASE', 'PROD', 'XXXXXX', '781', '431', 'Reprises sur amortissements et provisions (à inscrire dans les produits d''exploitation)', 1),
(433, 'PCG99-BASE', 'PROD', 'XXXXXX', '786', '431', 'Reprises sur provisions pour risques (à inscrire dans les produits financiers)', 1),
(434, 'PCG99-BASE', 'PROD', 'XXXXXX', '787', '431', 'Reprises sur provisions (à inscrire dans les produits exceptionnels)', 1),
(435, 'PCG99-BASE', 'PROD', 'XXXXXX', '79', '1507', 'Transferts de charges', 1),
(436, 'PCG99-BASE', 'PROD', 'XXXXXX', '791', '435', 'Transferts de charges d''exploitation ', 1),
(437, 'PCG99-BASE', 'PROD', 'XXXXXX', '796', '435', 'Transferts de charges financières', 1),
(438, 'PCG99-BASE', 'PROD', 'XXXXXX', '797', '435', 'Transferts de charges exceptionnelles', 1),
(439, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '10', '1351', 'Capital', 1),
(440, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '100', '439', 'Capital souscrit ou capital personnel', 1),
(441, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1000', '440', 'Capital non amorti', 1),
(442, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1001', '440', 'Capital amorti', 1),
(443, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '101', '439', 'Capital non appelé', 1),
(444, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '109', '439', 'Compte de l''exploitant', 1),
(445, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1090', '444', 'Opérations courantes', 1),
(446, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1091', '444', 'Impôts personnels', 1),
(447, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1092', '444', 'Rémunérations et autres avantages', 1),
(448, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '11', '1351', 'Primes d''émission', 1),
(449, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '12', '1351', 'Plus-values de réévaluation', 1),
(450, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '120', '449', 'Plus-values de réévaluation sur immobilisations incorporelles', 1),
(451, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1200', '450', 'Plus-values de réévaluation', 1),
(452, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1201', '450', 'Reprises de réductions de valeur', 1),
(453, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '121', '449', 'Plus-values de réévaluation sur immobilisations corporelles', 1),
(454, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1210', '453', 'Plus-values de réévaluation', 1),
(455, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1211', '453', 'Reprises de réductions de valeur', 1),
(456, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '122', '449', 'Plus-values de réévaluation sur immobilisations financières', 1),
(457, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1220', '456', 'Plus-values de réévaluation', 1),
(458, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1221', '456', 'Reprises de réductions de valeur', 1),
(459, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '123', '449', 'Plus-values de réévaluation sur stocks', 1),
(460, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '124', '449', 'Reprises de réductions de valeur sur placements de trésorerie', 1),
(461, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '13', '1351', 'Réserve', 1),
(462, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '130', '461', 'Réserve légale', 1),
(463, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '131', '461', 'Réserves indisponibles', 1),
(464, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1310', '463', 'Réserve pour actions propres', 1),
(465, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1311', '463', 'Autres réserves indisponibles', 1),
(466, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '132', '461', 'Réserves immunisées', 1),
(467, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '133', '461', 'Réserves disponibles', 1),
(468, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1330', '467', 'Réserve pour régularisation de dividendes', 1),
(469, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1331', '467', 'Réserve pour renouvellement des immobilisations', 1),
(470, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1332', '467', 'Réserve pour installations en faveur du personnel 1333 Réserves libres', 1),
(471, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '14', '1351', 'Bénéfice reporté (ou perte reportée)', 1),
(472, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '15', '1351', 'Subsides en capital', 1),
(473, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '150', '472', 'Montants obtenus', 1),
(474, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '151', '472', 'Montants transférés aux résultats', 1),
(475, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '16', '1351', 'Provisions pour risques et charges', 1),
(476, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '160', '475', 'Provisions pour pensions et obligations similaires', 1),
(477, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '161', '475', 'Provisions pour charges fiscales', 1),
(478, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '162', '475', 'Provisions pour grosses réparations et gros entretiens', 1),
(479, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '163', '475', 'à 169 Provisions pour autres risques et charges', 1),
(480, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '164', '475', 'Provisions pour sûretés personnelles ou réelles constituées à l''appui de dettes et d''engagements de tiers', 1),
(481, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '165', '475', 'Provisions pour engagements relatifs à l''acquisition ou à la cession d''immobilisations', 1),
(482, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '166', '475', 'Provisions pour exécution de commandes passées ou reçues', 1),
(483, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '167', '475', 'Provisions pour positions et marchés à terme en devises ou positions et marchés à terme en marchandises', 1),
(484, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '168', '475', 'Provisions pour garanties techniques attachées aux ventes et prestations déjà effectuées par l''entreprise', 1),
(485, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '169', '475', 'Provisions pour autres risques et charges', 1),
(486, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1690', '485', 'Pour litiges en cours', 1),
(487, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1691', '485', 'Pour amendes, doubles droits et pénalités', 1),
(488, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1692', '485', 'Pour propre assureur', 1),
(489, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1693', '485', 'Pour risques inhérents aux opérations de crédits à moyen ou long terme', 1),
(490, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1695', '485', 'Provision pour charge de liquidation', 1),
(491, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1696', '485', 'Provision pour départ de personnel', 1),
(492, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1699', '485', 'Pour risques divers', 1),
(493, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '17', '1351', 'Dettes à plus d''un an', 1),
(494, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '170', '493', 'Emprunts subordonnés', 1),
(495, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1700', '494', 'Convertibles', 1),
(496, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1701', '494', 'Non convertibles', 1),
(497, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '171', '493', 'Emprunts obligataires non subordonnés', 1),
(498, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1710', '498', 'Convertibles', 1),
(499, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1711', '498', 'Non convertibles', 1),
(500, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '172', '493', 'Dettes de location-financement et assimilés', 1),
(501, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1720', '500', 'Dettes de location-financement de biens immobiliers', 1),
(502, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1721', '500', 'Dettes de location-financement de biens mobiliers', 1),
(503, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1722', '500', 'Dettes sur droits réels sur immeubles', 1),
(504, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '173', '493', 'Etablissements de crédit', 1),
(505, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1730', '504', 'Dettes en compte', 1),
(506, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '17300', '505', 'Banque A', 1),
(507, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '17301', '505', 'Banque B', 1),
(508, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '17302', '505', 'Banque C', 1),
(509, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '17303', '505', 'Banque D', 1),
(510, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1731', '504', 'Promesses', 1),
(511, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '17310', '510', 'Banque A', 1),
(512, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '17311', '510', 'Banque B', 1),
(513, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '17312', '510', 'Banque C', 1),
(514, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '17313', '510', 'Banque D', 1),
(515, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1732', '504', 'Crédits d''acceptation', 1),
(516, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '17320', '515', 'Banque A', 1),
(517, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '17321', '515', 'Banque B', 1),
(518, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '17322', '515', 'Banque C', 1),
(519, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '17323', '515', 'Banque D', 1),
(520, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '174', '493', 'Autres emprunts', 1),
(521, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '175', '493', 'Dettes commerciales', 1),
(522, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1750', '521', 'Fournisseurs : dettes en compte', 1);
INSERT INTO `test_accountingaccount` (`rowid`, `fk_pcg_version`, `pcg_type`, `pcg_subtype`, `account_number`, `account_parent`, `label`, `active`) VALUES
(523, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '17500', '522', 'Entreprises apparentées', 1),
(524, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '175000', '523', 'Entreprises liées', 1),
(525, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '175001', '523', 'Entreprises avec lesquelles il existe un lien de participation', 1),
(526, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '17501', '522', 'Fournisseurs ordinaires', 1),
(527, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '175010', '526', 'Fournisseurs belges', 1),
(528, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '175011', '526', 'Fournisseurs C.E.E.', 1),
(529, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '175012', '526', 'Fournisseurs importation', 1),
(530, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1751', '521', 'Effets à payer', 1),
(531, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '17510', '530', 'Entreprises apparentées', 1),
(532, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '175100', '531', 'Entreprises liées', 1),
(533, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '175101', '531', 'Entreprises avec lesquelles il existe un lien de participation', 1),
(534, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '17511', '530', 'Fournisseurs ordinaires', 1),
(535, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '175110', '534', 'Fournisseurs belges', 1),
(536, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '175111', '534', 'Fournisseurs C.E.E.', 1),
(537, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '175112', '534', 'Fournisseurs importation', 1),
(538, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '176', '493', 'Acomptes reçus sur commandes', 1),
(539, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '178', '493', 'Cautionnements reçus en numéraires', 1),
(540, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '179', '493', 'Dettes diverses', 1),
(541, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1790', '540', 'Entreprises liées', 1),
(542, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1791', '540', 'Autres entreprises avec lesquelles il existe un lien de participation', 1),
(543, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1792', '540', 'Administrateurs, gérants et associés', 1),
(544, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1794', '540', 'Rentes viagères capitalisées', 1),
(545, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1798', '540', 'Dettes envers les coparticipants des associations momentanées et en participation', 1),
(546, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1799', '540', 'Autres dettes diverses', 1),
(547, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '18', '1351', 'Comptes de liaison des établissements et succursales', 1),
(548, 'PCMN-BASE', 'IMMO', 'XXXXXX', '20', '1352', 'Frais d''établissement', 1),
(549, 'PCMN-BASE', 'IMMO', 'XXXXXX', '200', '548', 'Frais de constitution et d''augmentation de capital', 1),
(550, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2000', '549', 'Frais de constitution et d''augmentation de capital', 1),
(551, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2009', '549', 'Amortissements sur frais de constitution et d''augmentation de capital', 1),
(552, 'PCMN-BASE', 'IMMO', 'XXXXXX', '201', '548', 'Frais d''émission d''emprunts et primes de remboursement', 1),
(553, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2010', '552', 'Agios sur emprunts et frais d''émission d''emprunts', 1),
(554, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2019', '552', 'Amortissements sur agios sur emprunts et frais d''émission d''emprunts', 1),
(555, 'PCMN-BASE', 'IMMO', 'XXXXXX', '202', '548', 'Autres frais d''établissement', 1),
(556, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2020', '555', 'Autres frais d''établissement', 1),
(557, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2029', '555', 'Amortissements sur autres frais d''établissement', 1),
(558, 'PCMN-BASE', 'IMMO', 'XXXXXX', '203', '548', 'Intérêts intercalaires', 1),
(559, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2030', '558', 'Intérêts intercalaires', 1),
(560, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2039', '558', 'Amortissements sur intérêts intercalaires', 1),
(561, 'PCMN-BASE', 'IMMO', 'XXXXXX', '204', '548', 'Frais de restructuration', 1),
(562, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2040', '561', 'Coût des frais de restructuration', 1),
(563, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2049', '561', 'Amortissements sur frais de restructuration', 1),
(564, 'PCMN-BASE', 'IMMO', 'XXXXXX', '21', '1352', 'Immobilisations incorporelles', 1),
(565, 'PCMN-BASE', 'IMMO', 'XXXXXX', '210', '564', 'Frais de recherche et de développement', 1),
(566, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2100', '565', 'Frais de recherche et de mise au point', 1),
(567, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2108', '565', 'Plus-values actées sur frais de recherche et de mise au point', 1),
(568, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2109', '565', 'Amortissements sur frais de recherche et de mise au point', 1),
(569, 'PCMN-BASE', 'IMMO', 'XXXXXX', '211', '564', 'Concessions, brevets, licences, savoir-faire, marque et droits similaires', 1),
(570, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2110', '569', 'Concessions, brevets, licences, marques, etc', 1),
(571, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2118', '569', 'Plus-values actées sur concessions, etc', 1),
(572, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2119', '569', 'Amortissements sur concessions, etc', 1),
(573, 'PCMN-BASE', 'IMMO', 'XXXXXX', '212', '564', 'Goodwill', 1),
(574, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2120', '573', 'Coût d''acquisition', 1),
(575, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2128', '573', 'Plus-values actées', 1),
(576, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2129', '573', 'Amortissements sur goodwill', 1),
(577, 'PCMN-BASE', 'IMMO', 'XXXXXX', '213', '564', 'Acomptes versés', 1),
(578, 'PCMN-BASE', 'IMMO', 'XXXXXX', '22', '1352', 'Terrains et constructions', 1),
(579, 'PCMN-BASE', 'IMMO', 'XXXXXX', '220', '578', 'Terrains', 1),
(580, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2200', '579', 'Terrains', 1),
(581, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2201', '579', 'Frais d''acquisition sur terrains', 1),
(582, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2208', '579', 'Plus-values actées sur terrains', 1),
(583, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2209', '579', 'Amortissements et réductions de valeur', 1),
(584, 'PCMN-BASE', 'IMMO', 'XXXXXX', '22090', '583', 'Amortissements sur frais d''acquisition', 1),
(585, 'PCMN-BASE', 'IMMO', 'XXXXXX', '22091', '583', 'Réductions de valeur sur terrains', 1),
(586, 'PCMN-BASE', 'IMMO', 'XXXXXX', '221', '578', 'Constructions', 1),
(587, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2210', '586', 'Bâtiments industriels', 1),
(588, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2211', '586', 'Bâtiments administratifs et commerciaux', 1),
(589, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2212', '586', 'Autres bâtiments d''exploitation', 1),
(590, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2213', '586', 'Voies de transport et ouvrages d''art', 1),
(591, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2215', '586', 'Constructions sur sol d''autrui', 1),
(592, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2216', '586', 'Frais d''acquisition sur constructions', 1),
(593, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2218', '586', 'Plus-values actées', 1),
(594, 'PCMN-BASE', 'IMMO', 'XXXXXX', '22180', '593', 'Sur bâtiments industriels', 1),
(595, 'PCMN-BASE', 'IMMO', 'XXXXXX', '22181', '593', 'Sur bâtiments administratifs et commerciaux', 1),
(596, 'PCMN-BASE', 'IMMO', 'XXXXXX', '22182', '593', 'Sur autres bâtiments d''exploitation', 1),
(597, 'PCMN-BASE', 'IMMO', 'XXXXXX', '22184', '593', 'Sur voies de transport et ouvrages d''art', 1),
(598, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2219', '586', 'Amortissements sur constructions', 1),
(599, 'PCMN-BASE', 'IMMO', 'XXXXXX', '22190', '598', 'Sur bâtiments industriels', 1),
(600, 'PCMN-BASE', 'IMMO', 'XXXXXX', '22191', '598', 'Sur bâtiments administratifs et commerciaux', 1),
(601, 'PCMN-BASE', 'IMMO', 'XXXXXX', '22192', '598', 'Sur autres bâtiments d''exploitation', 1),
(602, 'PCMN-BASE', 'IMMO', 'XXXXXX', '22194', '598', 'Sur voies de transport et ouvrages d''art', 1),
(603, 'PCMN-BASE', 'IMMO', 'XXXXXX', '22195', '598', 'Sur constructions sur sol d''autrui', 1),
(604, 'PCMN-BASE', 'IMMO', 'XXXXXX', '22196', '598', 'Sur frais d''acquisition sur constructions', 1),
(605, 'PCMN-BASE', 'IMMO', 'XXXXXX', '222', '578', 'Terrains bâtis', 1),
(606, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2220', '605', 'Valeur d''acquisition', 1),
(607, 'PCMN-BASE', 'IMMO', 'XXXXXX', '22200', '606', 'Bâtiments industriels', 1),
(608, 'PCMN-BASE', 'IMMO', 'XXXXXX', '22201', '606', 'Bâtiments administratifs et commerciaux', 1),
(609, 'PCMN-BASE', 'IMMO', 'XXXXXX', '22202', '606', 'Autres bâtiments d''exploitation', 1),
(610, 'PCMN-BASE', 'IMMO', 'XXXXXX', '22203', '606', 'Voies de transport et ouvrages d''art', 1),
(611, 'PCMN-BASE', 'IMMO', 'XXXXXX', '22204', '606', 'Frais d''acquisition des terrains à bâtir', 1),
(612, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2228', '605', 'Plus-values actées', 1),
(613, 'PCMN-BASE', 'IMMO', 'XXXXXX', '22280', '612', 'Sur bâtiments industriels', 1),
(614, 'PCMN-BASE', 'IMMO', 'XXXXXX', '22281', '612', 'Sur bâtiments administratifs et commerciaux', 1),
(615, 'PCMN-BASE', 'IMMO', 'XXXXXX', '22282', '612', 'Sur autres bâtiments d''exploitation', 1),
(616, 'PCMN-BASE', 'IMMO', 'XXXXXX', '22283', '612', 'Sur voies de transport et ouvrages d''art', 1),
(617, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2229', '605', 'Amortissements sur terrains bâtis', 1),
(618, 'PCMN-BASE', 'IMMO', 'XXXXXX', '22290', '617', 'Sur bâtiments industriels', 1),
(619, 'PCMN-BASE', 'IMMO', 'XXXXXX', '22291', '617', 'Sur bâtiments administratifs et commerciaux', 1),
(620, 'PCMN-BASE', 'IMMO', 'XXXXXX', '22292', '617', 'Sur autres bâtiments d''exploitation', 1),
(621, 'PCMN-BASE', 'IMMO', 'XXXXXX', '22293', '617', 'Sur voies de transport et ouvrages d''art', 1),
(622, 'PCMN-BASE', 'IMMO', 'XXXXXX', '22294', '617', 'Sur frais d''acquisition des terrains bâtis', 1),
(623, 'PCMN-BASE', 'IMMO', 'XXXXXX', '223', '578', 'Autres droits réels sur des immeubles', 1),
(624, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2230', '623', 'Valeur d''acquisition', 1),
(625, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2238', '623', 'Plus-values actées', 1),
(626, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2239', '623', 'Amortissements', 1),
(627, 'PCMN-BASE', 'IMMO', 'XXXXXX', '23', '1352', 'Installations, machines et outillages', 1),
(628, 'PCMN-BASE', 'IMMO', 'XXXXXX', '230', '627', 'Installations', 1),
(629, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2300', '628', 'Installations bâtiments industriels', 1),
(630, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2301', '628', 'Installations bâtiments administratifs et commerciaux', 1),
(631, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2302', '628', 'Installations bâtiments d''exploitation', 1),
(632, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2303', '628', 'Installations voies de transport et ouvrages d''art', 1),
(633, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2300', '628', 'Installation d''eau', 1),
(634, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2301', '628', 'Installation d''électricité', 1),
(635, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2302', '628', 'Installation de vapeur', 1),
(636, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2303', '628', 'Installation de gaz', 1),
(637, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2304', '628', 'Installation de chauffage', 1),
(638, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2305', '628', 'Installation de conditionnement d''air', 1),
(639, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2306', '628', 'Installation de chargement', 1),
(640, 'PCMN-BASE', 'IMMO', 'XXXXXX', '231', '627', 'Machines', 1),
(641, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2310', '640', 'Division A', 1),
(642, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2311', '640', 'Division B', 1),
(643, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2312', '640', 'Division C', 1),
(644, 'PCMN-BASE', 'IMMO', 'XXXXXX', '237', '627', 'Outillage', 1),
(645, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2370', '644', 'Division A', 1),
(646, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2371', '644', 'Division B', 1),
(647, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2372', '644', 'Division C', 1),
(648, 'PCMN-BASE', 'IMMO', 'XXXXXX', '238', '627', 'Plus-values actées', 1),
(649, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2380', '648', 'Sur installations', 1),
(650, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2381', '648', 'Sur machines', 1),
(651, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2382', '648', 'Sur outillage', 1),
(652, 'PCMN-BASE', 'IMMO', 'XXXXXX', '239', '627', 'Amortissements', 1),
(653, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2390', '652', 'Sur installations', 1),
(654, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2391', '652', 'Sur machines', 1),
(655, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2392', '652', 'Sur outillage', 1),
(656, 'PCMN-BASE', 'IMMO', 'XXXXXX', '24', '1352', 'Mobilier et matériel roulant', 1),
(657, 'PCMN-BASE', 'IMMO', 'XXXXXX', '240', '656', 'Mobilier', 1),
(658, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2400', '656', 'Mobilier', 1),
(659, 'PCMN-BASE', 'IMMO', 'XXXXXX', '24000', '658', 'Mobilier des bâtiments industriels', 1),
(660, 'PCMN-BASE', 'IMMO', 'XXXXXX', '24001', '658', 'Mobilier des bâtiments administratifs et commerciaux', 1),
(661, 'PCMN-BASE', 'IMMO', 'XXXXXX', '24002', '658', 'Mobilier des autres bâtiments d''exploitation', 1),
(662, 'PCMN-BASE', 'IMMO', 'XXXXXX', '24003', '658', 'Mobilier oeuvres sociales', 1),
(663, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2401', '657', 'Matériel de bureau et de service social', 1),
(664, 'PCMN-BASE', 'IMMO', 'XXXXXX', '24010', '663', 'Des bâtiments industriels', 1),
(665, 'PCMN-BASE', 'IMMO', 'XXXXXX', '24011', '663', 'Des bâtiments administratifs et commerciaux', 1),
(666, 'PCMN-BASE', 'IMMO', 'XXXXXX', '24012', '663', 'Des autres bâtiments d''exploitation', 1),
(667, 'PCMN-BASE', 'IMMO', 'XXXXXX', '24013', '663', 'Des oeuvres sociales', 1),
(668, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2408', '657', 'Plus-values actées', 1),
(669, 'PCMN-BASE', 'IMMO', 'XXXXXX', '24080', '668', 'Plus-values actées sur mobilier', 1),
(670, 'PCMN-BASE', 'IMMO', 'XXXXXX', '24081', '668', 'Plus-values actées sur matériel de bureau et service social', 1),
(671, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2409', '657', 'Amortissements', 1),
(672, 'PCMN-BASE', 'IMMO', 'XXXXXX', '24090', '671', 'Amortissements sur mobilier', 1),
(673, 'PCMN-BASE', 'IMMO', 'XXXXXX', '24091', '671', 'Amortissements sur matériel de bureau et service social', 1),
(674, 'PCMN-BASE', 'IMMO', 'XXXXXX', '241', '656', 'Matériel roulant', 1),
(675, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2410', '674', 'Matériel automobile', 1),
(676, 'PCMN-BASE', 'IMMO', 'XXXXXX', '24100', '675', 'Voitures', 1),
(677, 'PCMN-BASE', 'IMMO', 'XXXXXX', '24105', '675', 'Camions', 1),
(678, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2411', '674', 'Matériel ferroviaire', 1),
(679, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2412', '674', 'Matériel fluvial', 1),
(680, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2413', '674', 'Matériel naval', 1),
(681, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2414', '674', 'Matériel aérien', 1),
(682, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2418', '674', 'Plus-values sur matériel roulant', 1),
(683, 'PCMN-BASE', 'IMMO', 'XXXXXX', '24180', '682', 'Plus-values sur matériel automobile', 1),
(684, 'PCMN-BASE', 'IMMO', 'XXXXXX', '24181', '682', 'Idem sur matériel ferroviaire', 1),
(685, 'PCMN-BASE', 'IMMO', 'XXXXXX', '24182', '682', 'Idem sur matériel fluvial', 1),
(686, 'PCMN-BASE', 'IMMO', 'XXXXXX', '24183', '682', 'Idem sur matériel naval', 1),
(687, 'PCMN-BASE', 'IMMO', 'XXXXXX', '24184', '682', 'Idem sur matériel aérien', 1),
(688, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2419', '674', 'Amortissements sur matériel roulant', 1),
(689, 'PCMN-BASE', 'IMMO', 'XXXXXX', '24190', '688', 'Amortissements sur matériel automobile', 1),
(690, 'PCMN-BASE', 'IMMO', 'XXXXXX', '24191', '688', 'Idem sur matériel ferroviaire', 1),
(691, 'PCMN-BASE', 'IMMO', 'XXXXXX', '24192', '688', 'Idem sur matériel fluvial', 1),
(692, 'PCMN-BASE', 'IMMO', 'XXXXXX', '24193', '688', 'Idem sur matériel naval', 1),
(693, 'PCMN-BASE', 'IMMO', 'XXXXXX', '24194', '688', 'Idem sur matériel aérien', 1),
(694, 'PCMN-BASE', 'IMMO', 'XXXXXX', '25', '1352', 'Immobilisation détenues en location-financement et droits similaires', 1),
(695, 'PCMN-BASE', 'IMMO', 'XXXXXX', '250', '694', 'Terrains et constructions', 1),
(696, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2500', '695', 'Terrains', 1),
(697, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2501', '695', 'Constructions', 1),
(698, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2508', '695', 'Plus-values sur emphytéose,  leasing et droits similaires : terrains et constructions', 1),
(699, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2509', '695', 'Amortissements et réductions de valeur sur terrains et constructions en leasing', 1),
(700, 'PCMN-BASE', 'IMMO', 'XXXXXX', '251', '694', 'Installations,  machines et outillage', 1),
(701, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2510', '700', 'Installations', 1),
(702, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2511', '700', 'Machines', 1),
(703, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2512', '700', 'Outillage', 1),
(704, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2518', '700', 'Plus-values actées sur installations machines et outillage pris en leasing', 1),
(705, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2519', '700', 'Amortissements sur installations machines et outillage pris en leasing', 1),
(706, 'PCMN-BASE', 'IMMO', 'XXXXXX', '252', '694', 'Mobilier et matériel roulant', 1),
(707, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2520', '706', 'Mobilier', 1),
(708, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2521', '706', 'Matériel roulant', 1),
(709, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2528', '706', 'Plus-values actées sur mobilier et matériel roulant en leasing', 1),
(710, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2529', '706', 'Amortissements sur mobilier et matériel roulant en leasing', 1),
(711, 'PCMN-BASE', 'IMMO', 'XXXXXX', '26', '1352', 'Autres immobilisations corporelles', 1),
(712, 'PCMN-BASE', 'IMMO', 'XXXXXX', '260', '711', 'Frais d''aménagements de locaux pris en location', 1),
(713, 'PCMN-BASE', 'IMMO', 'XXXXXX', '261', '711', 'Maison d''habitation', 1),
(714, 'PCMN-BASE', 'IMMO', 'XXXXXX', '262', '711', 'Réserve immobilière', 1),
(715, 'PCMN-BASE', 'IMMO', 'XXXXXX', '263', '711', 'Matériel d''emballage', 1),
(716, 'PCMN-BASE', 'IMMO', 'XXXXXX', '264', '711', 'Emballages récupérables', 1),
(717, 'PCMN-BASE', 'IMMO', 'XXXXXX', '268', '711', 'Plus-values actées sur autres immobilisations corporelles', 1),
(718, 'PCMN-BASE', 'IMMO', 'XXXXXX', '269', '711', 'Amortissements sur autres immobilisations corporelles', 1),
(719, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2690', '718', 'Amortissements sur frais d''aménagement des locaux pris en location', 1),
(720, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2691', '718', 'Amortissements sur maison d''habitation', 1),
(721, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2692', '718', 'Amortissements sur réserve immobilière', 1),
(722, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2693', '718', 'Amortissements sur matériel d''emballage', 1),
(723, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2694', '718', 'Amortissements sur emballages récupérables', 1),
(724, 'PCMN-BASE', 'IMMO', 'XXXXXX', '27', '1352', 'Immobilisations corporelles en cours et acomptes versés', 1),
(725, 'PCMN-BASE', 'IMMO', 'XXXXXX', '270', '724', 'Immobilisations en cours', 1),
(726, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2700', '725', 'Constructions', 1),
(727, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2701', '725', 'Installations machines et outillage', 1),
(728, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2702', '725', 'Mobilier et matériel roulant', 1),
(729, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2703', '725', 'Autres immobilisations corporelles', 1),
(730, 'PCMN-BASE', 'IMMO', 'XXXXXX', '271', '724', 'Avances et acomptes versés sur immobilisations en cours', 1),
(731, 'PCMN-BASE', 'IMMO', 'XXXXXX', '28', '1352', 'Immobilisations financières', 1),
(732, 'PCMN-BASE', 'IMMO', 'XXXXXX', '280', '731', 'Participations dans des entreprises liées', 1),
(733, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2800', '732', 'Valeur d''acquisition (peut être subdivisé par participation)', 1),
(734, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2801', '732', 'Montants non appelés (idem)', 1),
(735, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2808', '732', 'Plus-values actées (idem)', 1),
(736, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2809', '732', 'Réductions de valeurs actées (idem)', 1),
(737, 'PCMN-BASE', 'IMMO', 'XXXXXX', '281', '731', 'Créances sur des entreprises liées', 1),
(738, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2810', '737', 'Créances en compte', 1),
(739, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2811', '737', 'Effets à recevoir', 1),
(740, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2812', '737', 'Titres à revenu fixes', 1),
(741, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2817', '737', 'Créances douteuses', 1),
(742, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2819', '737', 'Réductions de valeurs actées', 1),
(743, 'PCMN-BASE', 'IMMO', 'XXXXXX', '282', '731', 'Participations dans des entreprises avec lesquelles il existe un lien de participation', 1),
(744, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2820', '743', 'Valeur d''acquisition (peut être subdivisé par participation)', 1),
(745, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2821', '743', 'Montants non appelés (idem)', 1),
(746, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2828', '743', 'Plus-values actées (idem)', 1),
(747, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2829', '743', 'Réductions de valeurs actées (idem)', 1),
(748, 'PCMN-BASE', 'IMMO', 'XXXXXX', '283', '731', 'Créances sur des entreprises avec lesquelles il existe un lien de participation', 1),
(749, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2830', '748', 'Créances en compte', 1),
(750, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2831', '748', 'Effets à recevoir', 1),
(751, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2832', '748', 'Titres à revenu fixe', 1),
(752, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2837', '748', 'Créances douteuses', 1),
(753, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2839', '748', 'Réductions de valeurs actées', 1),
(754, 'PCMN-BASE', 'IMMO', 'XXXXXX', '284', '731', 'Autres actions et parts', 1),
(755, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2840', '754', 'Valeur d''acquisition', 1),
(756, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2841', '754', 'Montants non appelés', 1),
(757, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2848', '754', 'Plus-values actées', 1),
(758, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2849', '754', 'Réductions de valeur actées', 1),
(759, 'PCMN-BASE', 'IMMO', 'XXXXXX', '285', '731', 'Autres créances', 1),
(760, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2850', '759', 'Créances en compte', 1),
(761, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2851', '759', 'Effets à recevoir', 1),
(762, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2852', '759', 'Titres à revenu fixe', 1),
(763, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2857', '759', 'Créances douteuses', 1),
(764, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2859', '759', 'Réductions de valeur actées', 1),
(765, 'PCMN-BASE', 'IMMO', 'XXXXXX', '288', '731', 'Cautionnements versés en numéraires', 1),
(766, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2880', '765', 'Téléphone, téléfax, télex', 1),
(767, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2881', '765', 'Gaz', 1),
(768, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2882', '765', 'Eau', 1),
(769, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2883', '765', 'Electricité', 1),
(770, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2887', '765', 'Autres cautionnements versés en numéraires', 1),
(771, 'PCMN-BASE', 'IMMO', 'XXXXXX', '29', '1352', 'Créances à plus d''un an', 1),
(772, 'PCMN-BASE', 'IMMO', 'XXXXXX', '290', '771', 'Créances commerciales', 1),
(773, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2900', '772', 'Clients', 1),
(774, 'PCMN-BASE', 'IMMO', 'XXXXXX', '29000', '773', 'Créances en compte sur entreprises liées', 1),
(775, 'PCMN-BASE', 'IMMO', 'XXXXXX', '29001', '773', 'Sur entreprises avec lesquelles il existe un lien de participation', 1),
(776, 'PCMN-BASE', 'IMMO', 'XXXXXX', '29002', '773', 'Sur clients Belgique', 1),
(777, 'PCMN-BASE', 'IMMO', 'XXXXXX', '29003', '773', 'Sur clients C.E.E.', 1),
(778, 'PCMN-BASE', 'IMMO', 'XXXXXX', '29004', '773', 'Sur clients exportation hors C.E.E.', 1),
(779, 'PCMN-BASE', 'IMMO', 'XXXXXX', '29005', '773', 'Créances sur les coparticipants (associations momentanées)', 1),
(780, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2901', '772', 'Effets à recevoir', 1),
(781, 'PCMN-BASE', 'IMMO', 'XXXXXX', '29010', '780', 'Sur entreprises liées', 1),
(782, 'PCMN-BASE', 'IMMO', 'XXXXXX', '29011', '780', 'Sur entreprises avec lesquelles il existe un lien de participation', 1),
(783, 'PCMN-BASE', 'IMMO', 'XXXXXX', '29012', '780', 'Sur clients Belgique', 1),
(784, 'PCMN-BASE', 'IMMO', 'XXXXXX', '29013', '780', 'Sur clients C.E.E.', 1),
(785, 'PCMN-BASE', 'IMMO', 'XXXXXX', '29014', '780', 'Sur clients exportation hors C.E.E.', 1),
(786, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2905', '772', 'Retenues sur garanties', 1),
(787, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2906', '772', 'Acomptes versés', 1),
(788, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2907', '772', 'Créances douteuses (à ventiler comme clients 2900)', 1),
(789, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2909', '772', 'Réductions de valeur actées (à ventiler comme clients 2900)', 1),
(790, 'PCMN-BASE', 'IMMO', 'XXXXXX', '291', '771', 'Autres créances', 1),
(791, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2910', '790', 'Créances en compte', 1),
(792, 'PCMN-BASE', 'IMMO', 'XXXXXX', '29100', '791', 'Sur entreprises liées', 1),
(793, 'PCMN-BASE', 'IMMO', 'XXXXXX', '29101', '791', 'Sur entreprises avec lesquelles il existe un lien de participation', 1),
(794, 'PCMN-BASE', 'IMMO', 'XXXXXX', '29102', '791', 'Sur autres débiteurs', 1),
(795, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2911', '790', 'Effets à recevoir', 1),
(796, 'PCMN-BASE', 'IMMO', 'XXXXXX', '29110', '795', 'Sur entreprises liées', 1),
(797, 'PCMN-BASE', 'IMMO', 'XXXXXX', '29111', '795', 'Sur entreprises avec lesquelles il existe un lien de participation', 1),
(798, 'PCMN-BASE', 'IMMO', 'XXXXXX', '29112', '795', 'Sur autres débiteurs', 1),
(799, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2912', '790', 'Créances résultant de la cession d''immobilisations données en leasing', 1),
(800, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2917', '790', 'Créances douteuses', 1),
(801, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2919', '790', 'Réductions de valeur actées', 1),
(802, 'PCMN-BASE', 'STOCK', 'XXXXXX', '30', '1353', 'Approvisionnements - matières premières', 1),
(803, 'PCMN-BASE', 'STOCK', 'XXXXXX', '300', '802', 'Valeur d''acquisition', 1),
(804, 'PCMN-BASE', 'STOCK', 'XXXXXX', '309', '802', 'Réductions de valeur actées', 1),
(805, 'PCMN-BASE', 'STOCK', 'XXXXXX', '31', '1353', 'Approvsionnements et fournitures', 1),
(806, 'PCMN-BASE', 'STOCK', 'XXXXXX', '310', '805', 'Valeur d''acquisition', 1),
(807, 'PCMN-BASE', 'STOCK', 'XXXXXX', '3100', '806', 'Matières d''approvisionnement', 1),
(808, 'PCMN-BASE', 'STOCK', 'XXXXXX', '3101', '806', 'Energie, charbon, coke, mazout, essence, propane', 1),
(809, 'PCMN-BASE', 'STOCK', 'XXXXXX', '3102', '806', 'Produits d''entretien', 1),
(810, 'PCMN-BASE', 'STOCK', 'XXXXXX', '3103', '806', 'Fournitures diverses et petit outillage', 1),
(811, 'PCMN-BASE', 'STOCK', 'XXXXXX', '3104', '806', 'Imprimés et fournitures de bureau', 1),
(812, 'PCMN-BASE', 'STOCK', 'XXXXXX', '3105', '806', 'Fournitures de services sociaux', 1),
(813, 'PCMN-BASE', 'STOCK', 'XXXXXX', '3106', '806', 'Emballages commerciaux', 1),
(814, 'PCMN-BASE', 'STOCK', 'XXXXXX', '31060', '813', 'Emballages perdus', 1),
(815, 'PCMN-BASE', 'STOCK', 'XXXXXX', '31061', '813', 'Emballages récupérables', 1),
(816, 'PCMN-BASE', 'STOCK', 'XXXXXX', '319', '805', 'Réductions de valeur actées', 1),
(817, 'PCMN-BASE', 'STOCK', 'XXXXXX', '32', '1353', 'En cours de fabrication', 1),
(818, 'PCMN-BASE', 'STOCK', 'XXXXXX', '320', '817', 'Valeur d''acquisition', 1),
(819, 'PCMN-BASE', 'STOCK', 'XXXXXX', '3200', '818', 'Produits semi-ouvrés', 1),
(820, 'PCMN-BASE', 'STOCK', 'XXXXXX', '3201', '818', 'Produits en cours de fabrication', 1),
(821, 'PCMN-BASE', 'STOCK', 'XXXXXX', '3202', '818', 'Travaux en cours', 1),
(822, 'PCMN-BASE', 'STOCK', 'XXXXXX', '3205', '818', 'Déchets', 1),
(823, 'PCMN-BASE', 'STOCK', 'XXXXXX', '3206', '818', 'Rebuts', 1),
(824, 'PCMN-BASE', 'STOCK', 'XXXXXX', '3209', '818', 'Travaux en association momentanée', 1),
(825, 'PCMN-BASE', 'STOCK', 'XXXXXX', '329', '817', 'Réductions de valeur actées', 1),
(826, 'PCMN-BASE', 'STOCK', 'XXXXXX', '33', '1353', 'Produits finis', 1),
(827, 'PCMN-BASE', 'STOCK', 'XXXXXX', '330', '826', 'Valeur d''acquisition', 1),
(828, 'PCMN-BASE', 'STOCK', 'XXXXXX', '3300', '827', 'Produits finis', 1),
(829, 'PCMN-BASE', 'STOCK', 'XXXXXX', '339', '826', 'Réductions de valeur actées', 1),
(830, 'PCMN-BASE', 'STOCK', 'XXXXXX', '34', '1353', 'Marchandises', 1),
(831, 'PCMN-BASE', 'STOCK', 'XXXXXX', '340', '830', 'Valeur d''acquisition', 1),
(832, 'PCMN-BASE', 'STOCK', 'XXXXXX', '3400', '831', 'Groupe A', 1),
(833, 'PCMN-BASE', 'STOCK', 'XXXXXX', '3401', '831', 'Groupe B', 1),
(834, 'PCMN-BASE', 'STOCK', 'XXXXXX', '3402', '831', 'Groupe C', 1),
(835, 'PCMN-BASE', 'STOCK', 'XXXXXX', '349', '830', 'Réductions de valeur actées', 1),
(836, 'PCMN-BASE', 'STOCK', 'XXXXXX', '35', '1353', 'Immeubles destinés à la vente', 1),
(837, 'PCMN-BASE', 'STOCK', 'XXXXXX', '350', '836', 'Valeur d''acquisition', 1),
(838, 'PCMN-BASE', 'STOCK', 'XXXXXX', '3500', '837', 'Immeuble A', 1),
(839, 'PCMN-BASE', 'STOCK', 'XXXXXX', '3501', '837', 'Immeuble B', 1),
(840, 'PCMN-BASE', 'STOCK', 'XXXXXX', '3502', '837', 'Immeuble C', 1),
(841, 'PCMN-BASE', 'STOCK', 'XXXXXX', '351', '836', 'Immeubles construits en vue de leur revente', 1),
(842, 'PCMN-BASE', 'STOCK', 'XXXXXX', '3510', '841', 'Immeuble A', 1),
(843, 'PCMN-BASE', 'STOCK', 'XXXXXX', '3511', '841', 'Immeuble B', 1),
(844, 'PCMN-BASE', 'STOCK', 'XXXXXX', '3512', '841', 'Immeuble C', 1),
(845, 'PCMN-BASE', 'STOCK', 'XXXXXX', '359', '836', 'Réductions de valeurs actées', 1),
(846, 'PCMN-BASE', 'STOCK', 'XXXXXX', '36', '1353', 'Acomptes versés sur achats pour stocks', 1),
(847, 'PCMN-BASE', 'STOCK', 'XXXXXX', '360', '846', 'Acomptes versés (à ventiler éventuellement par catégorie)', 1),
(848, 'PCMN-BASE', 'STOCK', 'XXXXXX', '369', '846', 'Réductions de valeur actées', 1),
(849, 'PCMN-BASE', 'STOCK', 'XXXXXX', '37', '1353', 'Commandes en cours d''exécution', 1),
(850, 'PCMN-BASE', 'STOCK', 'XXXXXX', '370', '849', 'Valeur d''acquisition', 1),
(851, 'PCMN-BASE', 'STOCK', 'XXXXXX', '371', '849', 'Bénéfice pris en compte', 1),
(852, 'PCMN-BASE', 'STOCK', 'XXXXXX', '379', '849', 'Réductions de valeur actées', 1),
(853, 'PCMN-BASE', 'TIERS', 'XXXXXX', '40', '1354', 'Créances commerciales', 1),
(854, 'PCMN-BASE', 'TIERS', 'XXXXXX', '400', '853', 'Clients', 1),
(855, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4007', '854', 'Rabais, remises et  ristournes à accorder et autres notes de crédit à établir', 1),
(856, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4008', '854', 'Créances résultant de livraisons de biens (associations momentanées)', 1),
(857, 'PCMN-BASE', 'TIERS', 'XXXXXX', '401', '853', 'Effets à recevoir', 1),
(858, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4010', '857', 'Effets à recevoir', 1),
(859, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4013', '857', 'Effets à l''encaissement', 1),
(860, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4015', '857', 'Effets à l''escompte', 1),
(861, 'PCMN-BASE', 'TIERS', 'XXXXXX', '402', '853', 'Clients, créances courantes, entreprises apparentées, administrateurs et gérants', 1),
(862, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4020', '861', 'Entreprises liées', 1),
(863, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4021', '861', 'Autres entreprises avec lesquelles il existe un lien de participation', 1),
(864, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4022', '861', 'Administrateurs et gérants d''entreprise', 1),
(865, 'PCMN-BASE', 'TIERS', 'XXXXXX', '403', '853', 'Effets à recevoir sur entreprises apparentées et administrateurs et gérants', 1),
(866, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4030', '865', 'Entreprises liées', 1),
(867, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4031', '865', 'Autres entreprises avec lesquelles il existe un lien de participation', 1),
(868, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4032', '865', 'Administrateurs et gérants de l''entreprise', 1),
(869, 'PCMN-BASE', 'TIERS', 'XXXXXX', '404', '853', 'Produits à recevoir (factures à établir)', 1),
(870, 'PCMN-BASE', 'TIERS', 'XXXXXX', '405', '853', 'Clients : retenues sur garanties', 1),
(871, 'PCMN-BASE', 'TIERS', 'XXXXXX', '406', '853', 'Acomptes versés', 1),
(872, 'PCMN-BASE', 'TIERS', 'XXXXXX', '407', '853', 'Créances douteuses', 1),
(873, 'PCMN-BASE', 'TIERS', 'XXXXXX', '408', '853', 'Compensation clients', 1),
(874, 'PCMN-BASE', 'TIERS', 'XXXXXX', '409', '853', 'Réductions de valeur actées', 1),
(875, 'PCMN-BASE', 'TIERS', 'XXXXXX', '41', '1354', 'Autres créances', 1),
(876, 'PCMN-BASE', 'TIERS', 'XXXXXX', '410', '875', 'Capital appelé, non versé', 1),
(877, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4100', '876', 'Appels de fonds', 1),
(878, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4101', '876', 'Actionnaires défaillants', 1),
(879, 'PCMN-BASE', 'TIERS', 'XXXXXX', '411', '875', 'T.V.A. à récupérer', 1),
(880, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4110', '879', 'T.V.A. due', 1),
(881, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4111', '879', 'T.V.A. déductible', 1),
(882, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4112', '879', 'Compte courant administration T.V.A.', 1),
(883, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4118', '879', 'Taxe d''égalisation due', 1),
(884, 'PCMN-BASE', 'TIERS', 'XXXXXX', '412', '875', 'Impôts et versements fiscaux à récupérer', 1),
(885, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4120', '884', 'Impôts belges sur le résultat', 1),
(886, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4125', '884', 'Autres impôts belges', 1),
(887, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4128', '884', 'Impôts étrangers', 1),
(888, 'PCMN-BASE', 'TIERS', 'XXXXXX', '414', '875', 'Produits à recevoir', 1),
(889, 'PCMN-BASE', 'TIERS', 'XXXXXX', '416', '875', 'Créances diverses', 1),
(890, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4160', '889', 'Associés (compte d''apport en société)', 1),
(891, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4161', '889', 'Avances et prêts au personnel', 1),
(892, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4162', '889', 'Compte courant des associés en S.P.R.L.', 1),
(893, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4163', '889', 'Compte courant des administrateurs et gérants', 1),
(894, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4164', '889', 'Créances sur sociétés apparentées', 1),
(895, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4166', '889', 'Emballages et matériel à rendre', 1),
(896, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4167', '889', 'Etat et établissements publics', 1),
(897, 'PCMN-BASE', 'TIERS', 'XXXXXX', '41670', '896', 'Subsides à recevoir', 1),
(898, 'PCMN-BASE', 'TIERS', 'XXXXXX', '41671', '896', 'Autres créances', 1),
(899, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4168', '889', 'Rabais, ristournes et remises à obtenir et autres avoirs non encore reçus', 1),
(900, 'PCMN-BASE', 'TIERS', 'XXXXXX', '417', '875', 'Créances douteuses', 1),
(901, 'PCMN-BASE', 'TIERS', 'XXXXXX', '418', '875', 'Cautionnements versés en numéraires', 1),
(902, 'PCMN-BASE', 'TIERS', 'XXXXXX', '419', '875', 'Réductions de valeur actées', 1),
(903, 'PCMN-BASE', 'TIERS', 'XXXXXX', '42', '1354', 'Dettes à plus d''un an échéant dans l''année', 1),
(904, 'PCMN-BASE', 'TIERS', 'XXXXXX', '420', '903', 'Emprunts subordonnés', 1),
(905, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4200', '904', 'Convertibles', 1),
(906, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4201', '904', 'Non convertibles', 1),
(907, 'PCMN-BASE', 'TIERS', 'XXXXXX', '421', '903', 'Emprunts obligataires non subordonnés', 1),
(908, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4210', '907', 'Convertibles', 1),
(909, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4211', '907', 'Non convertibles', 1),
(910, 'PCMN-BASE', 'TIERS', 'XXXXXX', '422', '903', 'Dettes de location-financement et assimilées', 1),
(911, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4220', '910', 'Financement de biens immobiliers', 1),
(912, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4221', '910', 'Financement de biens mobiliers', 1),
(913, 'PCMN-BASE', 'TIERS', 'XXXXXX', '423', '903', 'Etablissements de crédit', 1),
(914, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4230', '913', 'Dettes en compte', 1),
(915, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4231', '913', 'Promesses', 1),
(916, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4232', '913', 'Crédits d''acceptation', 1),
(917, 'PCMN-BASE', 'TIERS', 'XXXXXX', '424', '903', 'Autres emprunts', 1),
(918, 'PCMN-BASE', 'TIERS', 'XXXXXX', '425', '903', 'Dettes commerciales', 1),
(919, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4250', '918', 'Fournisseurs', 1),
(920, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4251', '918', 'Effets à payer', 1),
(921, 'PCMN-BASE', 'TIERS', 'XXXXXX', '426', '903', 'Cautionnements reçus en numéraires', 1),
(922, 'PCMN-BASE', 'TIERS', 'XXXXXX', '429', '903', 'Dettes diverses', 1),
(923, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4290', '922', 'Entreprises liées', 1),
(924, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4291', '922', 'Entreprises avec lesquelles il existe un lien de participation', 1),
(925, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4292', '922', 'Administrateurs, gérants, associés', 1),
(926, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4299', '922', 'Autres dettes', 1),
(927, 'PCMN-BASE', 'TIERS', 'XXXXXX', '43', '1354', 'Dettes financières', 1),
(928, 'PCMN-BASE', 'TIERS', 'XXXXXX', '430', '927', 'Etablissements de crédit. Emprunts en compte à terme fixe', 1),
(929, 'PCMN-BASE', 'TIERS', 'XXXXXX', '431', '927', 'Etablissements de crédit. Promesses', 1),
(930, 'PCMN-BASE', 'TIERS', 'XXXXXX', '432', '927', 'Etablissements de crédit. Crédits d''acceptation', 1),
(931, 'PCMN-BASE', 'TIERS', 'XXXXXX', '433', '927', 'Etablissements de crédit. Dettes en compte courant', 1),
(932, 'PCMN-BASE', 'TIERS', 'XXXXXX', '439', '927', 'Autres emprunts', 1),
(933, 'PCMN-BASE', 'TIERS', 'XXXXXX', '44', '1354', 'Dettes commerciales', 1),
(934, 'PCMN-BASE', 'TIERS', 'XXXXXX', '440', '933', 'Fournisseurs', 1),
(935, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4400', '934', 'Entreprises apparentées', 1),
(936, 'PCMN-BASE', 'TIERS', 'XXXXXX', '44000', '935', 'Entreprises liées', 1),
(937, 'PCMN-BASE', 'TIERS', 'XXXXXX', '44001', '935', 'Entreprises avec lesquelles il existe un lien de participation', 1),
(938, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4401', '934', 'Fournisseurs ordinaires', 1),
(939, 'PCMN-BASE', 'TIERS', 'XXXXXX', '44010', '938', 'Fournisseurs belges', 1),
(940, 'PCMN-BASE', 'TIERS', 'XXXXXX', '44011', '938', 'Fournisseurs CEE', 1),
(941, 'PCMN-BASE', 'TIERS', 'XXXXXX', '44012', '938', 'Fournisseurs importation', 1),
(942, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4402', '934', 'Dettes envers les coparticipants (associations momentanées)', 1),
(943, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4403', '934', 'Fournisseurs - retenues de garanties', 1),
(944, 'PCMN-BASE', 'TIERS', 'XXXXXX', '441', '933', 'Effets à payer', 1),
(945, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4410', '944', 'Entreprises apparentées', 1),
(946, 'PCMN-BASE', 'TIERS', 'XXXXXX', '44100', '945', 'Entreprises liées', 1),
(947, 'PCMN-BASE', 'TIERS', 'XXXXXX', '44101', '945', 'Entreprises avec lesquelles il existe un lien de participation', 1),
(948, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4411', '944', 'Fournisseurs ordinaires', 1),
(949, 'PCMN-BASE', 'TIERS', 'XXXXXX', '44110', '948', 'Fournisseurs belges', 1),
(950, 'PCMN-BASE', 'TIERS', 'XXXXXX', '44111', '948', 'Fournisseurs CEE', 1),
(951, 'PCMN-BASE', 'TIERS', 'XXXXXX', '44112', '948', 'Fournisseurs importation', 1),
(952, 'PCMN-BASE', 'TIERS', 'XXXXXX', '444', '933', 'Factures à recevoir', 1),
(953, 'PCMN-BASE', 'TIERS', 'XXXXXX', '446', '933', 'Acomptes reçus', 1),
(954, 'PCMN-BASE', 'TIERS', 'XXXXXX', '448', '933', 'Compensations fournisseurs', 1),
(955, 'PCMN-BASE', 'TIERS', 'XXXXXX', '45', '1354', 'Dettes fiscales, salariales et sociales', 1),
(956, 'PCMN-BASE', 'TIERS', 'XXXXXX', '450', '955', 'Dettes fiscales estimées', 1),
(957, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4501', '956', 'Impôts sur le résultat', 1),
(958, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4505', '956', 'Autres impôts en Belgique', 1),
(959, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4508', '956', 'Impôts à l''étranger', 1),
(960, 'PCMN-BASE', 'TIERS', 'XXXXXX', '451', '955', 'T.V.A. à payer', 1),
(961, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4510', '960', 'T.V.A. due', 1),
(962, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4511', '960', 'T.V.A. déductible', 1),
(963, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4512', '960', 'Compte courant administration T.V.A.', 1),
(964, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4518', '960', 'Taxe d''égalisation due', 1),
(965, 'PCMN-BASE', 'TIERS', 'XXXXXX', '452', '955', 'Impôts et taxes à payer', 1),
(966, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4520', '965', 'Autres impôts sur le résultat', 1),
(967, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4525', '965', 'Autres impôts et taxes en Belgique', 1),
(968, 'PCMN-BASE', 'TIERS', 'XXXXXX', '45250', '967', 'Précompte immobilier', 1),
(969, 'PCMN-BASE', 'TIERS', 'XXXXXX', '45251', '967', 'Impôts communaux à payer', 1),
(970, 'PCMN-BASE', 'TIERS', 'XXXXXX', '45252', '967', 'Impôts provinciaux à payer', 1),
(971, 'PCMN-BASE', 'TIERS', 'XXXXXX', '45253', '967', 'Autres impôts et taxes à payer', 1),
(972, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4528', '965', 'Impôts et taxes à l''étranger', 1),
(973, 'PCMN-BASE', 'TIERS', 'XXXXXX', '453', '955', 'Précomptes retenus', 1),
(974, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4530', '973', 'Précompte professionnel retenu sur rémunérations', 1),
(975, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4531', '973', 'Précompte professionnel retenu sur tantièmes', 1),
(976, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4532', '973', 'Précompte mobilier retenu sur dividendes attribués', 1),
(977, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4533', '973', 'Précompte mobilier retenu sur intérêts payés', 1),
(978, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4538', '973', 'Autres précomptes retenus', 1),
(979, 'PCMN-BASE', 'TIERS', 'XXXXXX', '454', '955', 'Office National de la Sécurité Sociale', 1),
(980, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4540', '979', 'Arriérés', 1),
(981, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4541', '979', '1er trimestre', 1),
(982, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4542', '979', '2ème trimestre', 1),
(983, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4543', '979', '3ème trimestre', 1),
(984, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4544', '979', '4ème trimestre', 1),
(985, 'PCMN-BASE', 'TIERS', 'XXXXXX', '455', '955', 'Rémunérations', 1),
(986, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4550', '985', 'Administrateurs,  gérants et commissaires (non réviseurs)', 1),
(987, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4551', '985', 'Direction', 1),
(988, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4552', '985', 'Employés', 1),
(989, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4553', '985', 'Ouvriers', 1),
(990, 'PCMN-BASE', 'TIERS', 'XXXXXX', '456', '955', 'Pécules de vacances', 1),
(991, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4560', '990', 'Direction', 1),
(992, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4561', '990', 'Employés', 1),
(993, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4562', '990', 'Ouvriers', 1),
(994, 'PCMN-BASE', 'TIERS', 'XXXXXX', '459', '955', 'Autres dettes sociales', 1),
(995, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4590', '994', 'Provision pour gratifications de fin d''année', 1),
(996, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4591', '994', 'Départs de personnel', 1),
(997, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4592', '994', 'Oppositions sur rémunérations', 1),
(998, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4593', '994', 'Assurances relatives au personnel', 1),
(999, 'PCMN-BASE', 'TIERS', 'XXXXXX', '45930', '998', 'Assurance loi', 1),
(1000, 'PCMN-BASE', 'TIERS', 'XXXXXX', '45931', '998', 'Assurance salaire garanti', 1),
(1001, 'PCMN-BASE', 'TIERS', 'XXXXXX', '45932', '998', 'Assurance groupe', 1),
(1002, 'PCMN-BASE', 'TIERS', 'XXXXXX', '45933', '998', 'Assurances individuelles', 1),
(1003, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4594', '994', 'Caisse d''assurances sociales pour travailleurs indépendants', 1),
(1004, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4597', '994', 'Dettes et provisions sociales diverses', 1),
(1005, 'PCMN-BASE', 'TIERS', 'XXXXXX', '46', '1354', 'Acomptes reçus sur commande', 1),
(1006, 'PCMN-BASE', 'TIERS', 'XXXXXX', '47', '1354', 'Dettes découlant de l''affectation des résultats', 1),
(1007, 'PCMN-BASE', 'TIERS', 'XXXXXX', '470', '1006', 'Dividendes et tantièmes d''exercices antérieurs', 1),
(1008, 'PCMN-BASE', 'TIERS', 'XXXXXX', '471', '1006', 'Dividendes de l''exercice', 1),
(1009, 'PCMN-BASE', 'TIERS', 'XXXXXX', '472', '1006', 'Tantièmes de l''exercice', 1),
(1010, 'PCMN-BASE', 'TIERS', 'XXXXXX', '473', '1006', 'Autres allocataires', 1),
(1011, 'PCMN-BASE', 'TIERS', 'XXXXXX', '48', '4', 'Dettes diverses', 1),
(1012, 'PCMN-BASE', 'TIERS', 'XXXXXX', '480', '1011', 'Obligations et coupons échus', 1),
(1013, 'PCMN-BASE', 'TIERS', 'XXXXXX', '481', '1011', 'Actionnaires - capital à rembourser', 1),
(1014, 'PCMN-BASE', 'TIERS', 'XXXXXX', '482', '1011', 'Participation du personnel à payer', 1),
(1015, 'PCMN-BASE', 'TIERS', 'XXXXXX', '483', '1011', 'Acomptes reçus d''autres tiers à moins d''un an', 1),
(1016, 'PCMN-BASE', 'TIERS', 'XXXXXX', '486', '1011', 'Emballages et matériel consignés', 1),
(1017, 'PCMN-BASE', 'TIERS', 'XXXXXX', '488', '1011', 'Cautionnements reçus en numéraires', 1),
(1018, 'PCMN-BASE', 'TIERS', 'XXXXXX', '489', '1011', 'Autres dettes diverses', 1),
(1019, 'PCMN-BASE', 'TIERS', 'XXXXXX', '49', '1354', 'Comptes de régularisation et compte d''attente', 1),
(1020, 'PCMN-BASE', 'TIERS', 'XXXXXX', '490', '1019', 'Charges à reporter (à subdiviser par catégorie de charges)', 1),
(1021, 'PCMN-BASE', 'TIERS', 'XXXXXX', '491', '1019', 'Produits acquis', 1),
(1022, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4910', '1021', 'Produits d''exploitation', 1),
(1023, 'PCMN-BASE', 'TIERS', 'XXXXXX', '49100', '1022', 'Ristournes et rabais à obtenir', 1),
(1024, 'PCMN-BASE', 'TIERS', 'XXXXXX', '49101', '1022', 'Commissions à obtenir', 1),
(1025, 'PCMN-BASE', 'TIERS', 'XXXXXX', '49102', '1022', 'Autres produits d''exploitation (redevances par exemple)', 1),
(1026, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4911', '1021', 'Produits financiers', 1),
(1027, 'PCMN-BASE', 'TIERS', 'XXXXXX', '49110', '1026', 'Intérêts courus et non échus sur prêts et débits', 1),
(1028, 'PCMN-BASE', 'TIERS', 'XXXXXX', '49111', '1026', 'Autres produits financiers', 1),
(1029, 'PCMN-BASE', 'TIERS', 'XXXXXX', '492', '1019', 'Charges à imputer (à subdiviser par catégorie de charges)', 1),
(1030, 'PCMN-BASE', 'TIERS', 'XXXXXX', '493', '1019', 'Produits à reporter', 1),
(1031, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4930', '1030', 'Produits d''exploitation à reporter', 1),
(1032, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4931', '1030', 'Produits financiers à reporter', 1),
(1033, 'PCMN-BASE', 'TIERS', 'XXXXXX', '499', '1019', 'Comptes d''attente', 1),
(1034, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4990', '1033', 'Compte d''attente', 1),
(1035, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4991', '1033', 'Compte de répartition périodique des charges', 1),
(1036, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4999', '1033', 'Transferts d''exercice', 1),
(1037, 'PCMN-BASE', 'FINAN', 'XXXXXX', '50', '1355', 'Actions propres', 1),
(1038, 'PCMN-BASE', 'FINAN', 'XXXXXX', '51', '1355', 'Actions et parts', 1),
(1039, 'PCMN-BASE', 'FINAN', 'XXXXXX', '510', '1038', 'Valeur d''acquisition', 1),
(1040, 'PCMN-BASE', 'FINAN', 'XXXXXX', '511', '1038', 'Montants non appelés', 1),
(1041, 'PCMN-BASE', 'FINAN', 'XXXXXX', '519', '1038', 'Réductions de valeur actées', 1),
(1042, 'PCMN-BASE', 'FINAN', 'XXXXXX', '52', '1355', 'Titres à revenus fixes', 1),
(1043, 'PCMN-BASE', 'FINAN', 'XXXXXX', '520', '1042', 'Valeur d''acquisition', 1),
(1044, 'PCMN-BASE', 'FINAN', 'XXXXXX', '529', '1042', 'Réductions de valeur actées', 1),
(1045, 'PCMN-BASE', 'FINAN', 'XXXXXX', '53', '1355', 'Dépots à terme', 1),
(1046, 'PCMN-BASE', 'FINAN', 'XXXXXX', '530', '1045', 'De plus d''un an', 1),
(1047, 'PCMN-BASE', 'FINAN', 'XXXXXX', '531', '1045', 'De plus d''un mois et à un an au plus', 1),
(1048, 'PCMN-BASE', 'FINAN', 'XXXXXX', '532', '1045', 'd''un mois au plus', 1),
(1049, 'PCMN-BASE', 'FINAN', 'XXXXXX', '539', '1045', 'Réductions de valeur actées', 1),
(1050, 'PCMN-BASE', 'FINAN', 'XXXXXX', '54', '1355', 'Valeurs échues à l''encaissement', 1),
(1051, 'PCMN-BASE', 'FINAN', 'XXXXXX', '540', '1050', 'Chèques à encaisser', 1),
(1052, 'PCMN-BASE', 'FINAN', 'XXXXXX', '541', '1050', 'Coupons à encaisser', 1),
(1053, 'PCMN-BASE', 'FINAN', 'XXXXXX', '55', '1355', 'Etablissements de crédit - Comptes ouverts auprès des divers établissements.', 1),
(1054, 'PCMN-BASE', 'FINAN', 'XXXXXX', '550', '1053', 'Comptes courants', 1),
(1055, 'PCMN-BASE', 'FINAN', 'XXXXXX', '551', '1053', 'Chèques émis', 1),
(1056, 'PCMN-BASE', 'FINAN', 'XXXXXX', '559', '1053', 'Réductions de valeur actées', 1),
(1057, 'PCMN-BASE', 'FINAN', 'XXXXXX', '56', '1355', 'Office des chèques postaux', 1),
(1058, 'PCMN-BASE', 'FINAN', 'XXXXXX', '560', '1057', 'Compte courant', 1),
(1059, 'PCMN-BASE', 'FINAN', 'XXXXXX', '561', '1057', 'Chèques émis', 1),
(1060, 'PCMN-BASE', 'FINAN', 'XXXXXX', '57', '1355', 'Caisses', 1),
(1061, 'PCMN-BASE', 'FINAN', 'XXXXXX', '570', '1060', 'à 577 Caisses - espèces ( 0 - centrale ; 7 - succursales et agences)', 1),
(1062, 'PCMN-BASE', 'FINAN', 'XXXXXX', '578', '1060', 'Caisses - timbres ( 0 - fiscaux ; 1 - postaux)', 1),
(1063, 'PCMN-BASE', 'FINAN', 'XXXXXX', '58', '1355', 'Virements internes', 1),
(1064, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '60', '1356', 'Approvisionnements et marchandises', 1),
(1065, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '600', '1064', 'Achats de matières premières', 1),
(1066, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '601', '1064', 'Achats de fournitures', 1),
(1067, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '602', '1064', 'Achats de services, travaux et études', 1),
(1068, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '603', '1064', 'Sous-traitances générales', 1),
(1069, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '604', '1064', 'Achats de marchandises', 1),
(1070, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '605', '1064', 'Achats d''immeubles destinés à la revente', 1),
(1071, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '608', '1064', 'Remises , ristournes et rabais obtenus sur achats', 1),
(1072, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '609', '1064', 'Variations de stocks', 1),
(1073, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6090', '1072', 'De matières premières', 1),
(1074, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6091', '1072', 'De fournitures', 1),
(1075, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6094', '1072', 'De marchandises', 1),
(1076, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6095', '1072', 'd''immeubles destinés à la vente', 1),
(1077, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '61', '1356', 'Services et biens divers', 1),
(1078, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '610', '1077', 'Loyers et charges locatives', 1),
(1079, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6100', '1078', 'Loyers divers', 1),
(1080, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6101', '1078', 'Charges locatives (assurances, frais de confort,etc)', 1),
(1081, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '611', '1077', 'Entretien et réparation (fournitures et prestations)', 1),
(1082, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '612', '1077', 'Fournitures faites à l''entreprise', 1),
(1083, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6120', '1082', 'Eau, gaz, électricité, vapeur', 1),
(1084, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '61200', '1083', 'Eau', 1),
(1085, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '61201', '1083', 'Gaz', 1),
(1086, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '61202', '1083', 'Electricité', 1),
(1087, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '61203', '1083', 'Vapeur', 1),
(1088, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6121', '1082', 'Téléphone, télégrammes, télex, téléfax, frais postaux', 1),
(1089, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '61210', '1088', 'Téléphone', 1),
(1090, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '61211', '1088', 'Télégrammes', 1),
(1091, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '61212', '1088', 'Télex et téléfax', 1),
(1092, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '61213', '1088', 'Frais postaux', 1);
INSERT INTO `test_accountingaccount` (`rowid`, `fk_pcg_version`, `pcg_type`, `pcg_subtype`, `account_number`, `account_parent`, `label`, `active`) VALUES
(1093, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6122', '1082', 'Livres, bibliothèque', 1),
(1094, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6123', '1082', 'Imprimés et fournitures de bureau (si non comptabilisé au 601)', 1),
(1095, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '613', '1077', 'Rétributions de tiers', 1),
(1096, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6130', '1095', 'Redevances et royalties', 1),
(1097, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '61300', '1096', 'Redevances pour brevets, licences, marques et accessoires', 1),
(1098, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '61301', '1096', 'Autres redevances (procédés de fabrication)', 1),
(1099, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6131', '1095', 'Assurances non relatives au personnel', 1),
(1100, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '61310', '1099', 'Assurance incendie', 1),
(1101, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '61311', '1099', 'Assurance vol', 1),
(1102, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '61312', '1099', 'Assurance autos', 1),
(1103, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '61313', '1099', 'Assurance crédit', 1),
(1104, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '61314', '1099', 'Assurances frais généraux', 1),
(1105, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6132', '1095', 'Divers', 1),
(1106, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '61320', '1105', 'Commissions aux tiers', 1),
(1107, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '61321', '1105', 'Honoraires d''avocats, d''experts, etc', 1),
(1108, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '61322', '1105', 'Cotisations aux groupements professionnels', 1),
(1109, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '61323', '1105', 'Dons, libéralités, etc', 1),
(1110, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '61324', '1105', 'Frais de contentieux', 1),
(1111, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '61325', '1105', 'Publications légales', 1),
(1112, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6133', '1095', 'Transports et déplacements', 1),
(1113, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '61330', '1112', 'Transports de personnel', 1),
(1114, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '61331', '1112', 'Voyages, déplacements et représentations', 1),
(1115, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6134', '1095', 'Personnel intérimaire', 1),
(1116, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '614', '1077', 'Annonces, publicité, propagande et documentation', 1),
(1117, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6140', '1116', 'Annonces et insertions', 1),
(1118, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6141', '1116', 'Catalogues et imprimés', 1),
(1119, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6142', '1116', 'Echantillons', 1),
(1120, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6143', '1116', 'Foires et expositions', 1),
(1121, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6144', '1116', 'Primes', 1),
(1122, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6145', '1116', 'Cadeaux à la clientèle', 1),
(1123, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6146', '1116', 'Missions et réceptions', 1),
(1124, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6147', '1116', 'Documentation', 1),
(1125, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '615', '1077', 'Sous-traitants', 1),
(1126, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6150', '1125', 'Sous-traitants pour activités propres', 1),
(1127, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6151', '1125', 'Sous-traitants d''associations momentanées (coparticipants)', 1),
(1128, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6152', '1125', 'Quote-part bénéficiaire des coparticipants', 1),
(1129, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '617', '1077', 'Personnel intérimaire et personnes mises à la disposition de l''entreprise', 1),
(1130, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '618', '1077', 'Rémunérations, primes pour assurances extralégales, pensions de retraite et de survie des administrateurs, gérants et associés actifs qui ne sont pas attribuées en vertu d''un contrat de travail', 1),
(1131, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '62', '1356', 'Rémunérations, charges sociales et pensions', 1),
(1132, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '620', '1131', 'Rémunérations et avantages sociaux directs', 1),
(1133, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6200', '1132', 'Administrateurs ou gérants', 1),
(1134, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6201', '1132', 'Personnel de direction', 1),
(1135, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6202', '1132', 'Employés', 1),
(1136, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6203', '1132', 'Ouvriers', 1),
(1137, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6204', '1132', 'Autres membres du personnel', 1),
(1138, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '621', '1131', 'Cotisations patronales d''assurances sociales', 1),
(1139, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6210', '1138', 'Sur salaires', 1),
(1140, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6211', '1138', 'Sur appointements et commissions', 1),
(1141, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '622', '1131', 'Primes patronales pour assurances extralégales', 1),
(1142, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '623', '1131', 'Autres frais de personnel', 1),
(1143, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6230', '1142', 'Assurances du personnel', 1),
(1144, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '62300', '1143', 'Assurances loi, responsabilité civile, chemin du travail', 1),
(1145, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '62301', '1143', 'Assurance salaire garanti', 1),
(1146, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '62302', '1143', 'Assurances individuelles', 1),
(1147, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6231', '1142', 'Charges sociales diverses', 1),
(1148, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '62310', '1147', 'Jours fériés payés', 1),
(1149, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '62311', '1147', 'Salaire hebdomadaire garanti', 1),
(1150, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '62312', '1147', 'Allocations familiales complémentaires', 1),
(1151, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6232', '1142', 'Charges sociales des administrateurs, gérants et commissaires', 1),
(1152, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '62320', '1151', 'Allocations familiales complémentaires pour non salariés', 1),
(1153, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '62321', '1151', 'Lois sociales pour indépendants', 1),
(1154, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '62322', '1151', 'Divers', 1),
(1155, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '624', '1131', 'Pensions de retraite et de survie', 1),
(1156, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6240', '1155', 'Administrateurs et gérants', 1),
(1157, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6241', '1155', 'Personnel', 1),
(1158, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '625', '1131', 'Provision pour pécule de vacances', 1),
(1159, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6250', '1158', 'Dotations', 1),
(1160, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6251', '1158', 'Utilisations et reprises', 1),
(1161, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '63', '1356', 'Amortissements, réductions de valeur et provisions pour risques et charges', 1),
(1162, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '630', '1161', 'Dotations aux amortissements et aux réductions de valeur sur immobilisations', 1),
(1163, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6300', '1162', 'Dotations aux amortissements sur frais d''établissement', 1),
(1164, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6301', '1162', 'Dotations aux amortissements sur immobilisations incorporelles', 1),
(1165, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6302', '1162', 'Dotations aux amortissements sur immobilisations corporelles', 1),
(1166, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6308', '1162', 'Dotations aux réductions de valeur sur immobilisations incorporelles', 1),
(1167, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6309', '1162', 'Dotations aux réductions de valeur sur immobilisations corporelles', 1),
(1168, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '631', '1161', 'Réductions de valeur sur stocks', 1),
(1169, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6310', '1168', 'Dotations', 1),
(1170, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6311', '1168', 'Reprises', 1),
(1171, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '632', '1161', 'Réductions de valeur sur commandes en cours d''exécution', 1),
(1172, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6320', '1171', 'Dotations', 1),
(1173, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6321', '1171', 'Reprises', 1),
(1174, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '633', '1161', 'Réductions de valeur sur créances commerciales à plus d''un an', 1),
(1175, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6330', '1174', 'Dotations', 1),
(1176, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6331', '1174', 'Reprises', 1),
(1177, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '634', '1161', 'Réductions de valeur sur créances commerciales à un an au plus', 1),
(1178, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6340', '1177', 'Dotations', 1),
(1179, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6341', '1177', 'Reprises', 1),
(1180, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '635', '1161', 'Provisions pour pensions et obligations similaires', 1),
(1181, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6350', '1180', 'Dotations', 1),
(1182, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6351', '1180', 'Utilisations et reprises', 1),
(1183, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '636', '11613', 'Provisions pour grosses réparations et gros entretiens', 1),
(1184, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6360', '1183', 'Dotations', 1),
(1185, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6361', '1183', 'Utilisations et reprises', 1),
(1186, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '637', '1161', 'Provisions pour autres risques et charges', 1),
(1187, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6370', '1186', 'Dotations', 1),
(1188, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6371', '1186', 'Utilisations et reprises', 1),
(1189, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '64', '1356', 'Autres charges d''exploitation', 1),
(1190, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '640', '1189', 'Charges fiscales d''exploitation', 1),
(1191, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6400', '1190', 'Taxes et impôts directs', 1),
(1192, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '64000', '1191', 'Taxes sur autos et camions', 1),
(1193, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6401', '1190', 'Taxes et impôts indirects', 1),
(1194, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '64010', '1193', 'Timbres fiscaux pris en charge par la firme', 1),
(1195, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '64011', '1193', 'Droits d''enregistrement', 1),
(1196, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '64012', '1193', 'T.V.A. non déductible', 1),
(1197, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6402', '1190', 'Impôts provinciaux et communaux', 1),
(1198, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '64020', '1197', 'Taxe sur la force motrice', 1),
(1199, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '64021', '1197', 'Taxe sur le personnel occupé', 1),
(1200, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6403', '1190', 'Taxes diverses', 1),
(1201, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '641', '1189', 'Moins-values sur réalisations courantes d''immobilisations corporelles', 1),
(1202, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '642', '1189', 'Moins-values sur réalisations de créances commerciales', 1),
(1203, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '643', '1189', 'à 648 Charges d''exploitations diverses', 1),
(1204, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '649', '1189', 'Charges d''exploitation portées à l''actif au titre de restructuration', 1),
(1205, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '65', '1356', 'Charges financières', 1),
(1206, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '650', '1205', 'Charges des dettes', 1),
(1207, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6500', '1206', 'Intérêts, commissions et frais afférents aux dettes', 1),
(1208, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6501', '1206', 'Amortissements des agios et frais d''émission d''emprunts', 1),
(1209, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6502', '1206', 'Autres charges de dettes', 1),
(1210, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6503', '1206', 'Intérêts intercalaires portés à l''actif', 1),
(1211, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '651', '1205', 'Réductions de valeur sur actifs circulants', 1),
(1212, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6510', '1211', 'Dotations', 1),
(1213, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6511', '1211', 'Reprises', 1),
(1214, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '652', '1205', 'Moins-values sur réalisation d''actifs circulants', 1),
(1215, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '653', '1205', 'Charges d''escompte de créances', 1),
(1216, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '654', '1205', 'Différences de change', 1),
(1217, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '655', '1205', 'Ecarts de conversion des devises', 1),
(1218, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '656', '1205', 'Frais de banques, de chèques postaux', 1),
(1219, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '657', '1205', 'Commissions sur ouvertures de crédit, cautions et avals', 1),
(1220, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '658', '1205', 'Frais de vente des titres', 1),
(1221, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '66', '1356', 'Charges exceptionnelles', 1),
(1222, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '660', '1221', 'Amortissements et réductions de valeur exceptionnels', 1),
(1223, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6600', '1222', 'Sur frais d''établissement', 1),
(1224, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6601', '1222', 'Sur immobilisations incorporelles', 1),
(1225, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6602', '1222', 'Sur immobilisations corporelles', 1),
(1226, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '661', '1221', 'Réductions de valeur sur immobilisations financières', 1),
(1227, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '662', '1221', 'Provisions pour risques et charges exceptionnels', 1),
(1228, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '663', '1221', 'Moins-values sur réalisation d''actifs immobilisés', 1),
(1229, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6630', '1228', 'Sur immobilisations incorporelles', 1),
(1230, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6631', '1228', 'Sur immobilisations corporelles', 1),
(1231, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6632', '1228', 'Sur immobilisations détenues en location-financement et droits similaires', 1),
(1232, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6633', '1228', 'Sur immobilisations financières', 1),
(1233, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6634', '1228', 'Sur immeubles acquis ou construits en vue de la revente', 1),
(1234, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '664', '1221', 'à 668 Autres charges exceptionnelles', 1),
(1235, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '664', '1221', 'Pénalités et amendes diverses', 1),
(1236, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '665', '1221', 'Différence de charge', 1),
(1237, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '669', '1221', 'Charges exceptionnelles transférées à l''actif en frais de restructuration', 1),
(1238, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '67', '1356', 'Impôts sur le résultat', 1),
(1239, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '670', '1238', 'Impôts belges sur le résultat de l''exercice', 1),
(1240, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6700', '1239', 'Impôts et précomptes dus ou versés', 1),
(1241, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6701', '1239', 'Excédent de versements d''impôts et précomptes porté à l''actif', 1),
(1242, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6702', '1239', 'Charges fiscales estimées', 1),
(1243, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '671', '1238', 'Impôts belges sur le résultat d''exercices antérieurs', 1),
(1244, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6710', '1243', 'Suppléments d''impôts dus ou versés', 1),
(1245, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6711', '1243', 'Suppléments d''impôts estimés', 1),
(1246, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6712', '1243', 'Provisions fiscales constituées', 1),
(1247, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '672', '1238', 'Impôts étrangers sur le résultat de l''exercice', 1),
(1248, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '673', '1238', 'Impôts étrangers sur le résultat d''exercices antérieurs', 1),
(1249, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '68', '1356', 'Transferts aux réserves immunisées', 1),
(1250, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '69', '1356', 'Affectation des résultats', 1),
(1251, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '690', '1250', 'Perte reportée de l''exercice précédent', 1),
(1252, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '691', '1250', 'Dotation à la réserve légale', 1),
(1253, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '692', '1250', 'Dotation aux autres réserves', 1),
(1254, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '693', '1250', 'Bénéfice à reporter', 1),
(1255, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '694', '1250', 'Rémunération du capital', 1),
(1256, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '695', '1250', 'Administrateurs ou gérants', 1),
(1257, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '696', '1250', 'Autres allocataires', 1),
(1258, 'PCMN-BASE', 'PROD', 'XXXXXX', '70', '1357', 'Chiffre d''affaires', 1),
(1260, 'PCMN-BASE', 'PROD', 'XXXXXX', '700', '1258', 'Ventes de marchandises', 1),
(1261, 'PCMN-BASE', 'PROD', 'XXXXXX', '7000', '1260', 'Ventes en Belgique', 1),
(1262, 'PCMN-BASE', 'PROD', 'XXXXXX', '7001', '1260', 'Ventes dans les pays membres de la C.E.E.', 1),
(1263, 'PCMN-BASE', 'PROD', 'XXXXXX', '7002', '1260', 'Ventes à l''exportation', 1),
(1264, 'PCMN-BASE', 'PROD', 'XXXXXX', '701', '1258', 'Ventes de produits finis', 1),
(1265, 'PCMN-BASE', 'PROD', 'XXXXXX', '7010', '1264', 'Ventes en Belgique', 1),
(1266, 'PCMN-BASE', 'PROD', 'XXXXXX', '7011', '1264', 'Ventes dans les pays membres de la C.E.E.', 1),
(1267, 'PCMN-BASE', 'PROD', 'XXXXXX', '7012', '1264', 'Ventes à l''exportation', 1),
(1268, 'PCMN-BASE', 'PROD', 'XXXXXX', '702', '1258', 'Ventes de déchets et rebuts', 1),
(1269, 'PCMN-BASE', 'PROD', 'XXXXXX', '7020', '1268', 'Ventes en Belgique', 1),
(1270, 'PCMN-BASE', 'PROD', 'XXXXXX', '7021', '1268', 'Ventes dans les pays membres de la C.E.E.', 1),
(1271, 'PCMN-BASE', 'PROD', 'XXXXXX', '7022', '1268', 'Ventes à l''exportation', 1),
(1272, 'PCMN-BASE', 'PROD', 'XXXXXX', '703', '1258', 'Ventes d''emballages récupérables', 1),
(1273, 'PCMN-BASE', 'PROD', 'XXXXXX', '704', '1258', 'Facturations des travaux en cours (associations momentanées)', 1),
(1274, 'PCMN-BASE', 'PROD', 'XXXXXX', '705', '1258', 'Prestations de services', 1),
(1275, 'PCMN-BASE', 'PROD', 'XXXXXX', '7050', '1274', 'Prestations de services en Belgique', 1),
(1276, 'PCMN-BASE', 'PROD', 'XXXXXX', '7051', '1274', 'Prestations de services dans les pays membres de la C.E.E.', 1),
(1277, 'PCMN-BASE', 'PROD', 'XXXXXX', '7052', '1274', 'Prestations de services en vue de l''exportation', 1),
(1278, 'PCMN-BASE', 'PROD', 'XXXXXX', '706', '1258', 'Pénalités et dédits obtenus par l''entreprise', 1),
(1279, 'PCMN-BASE', 'PROD', 'XXXXXX', '708', '1258', 'Remises, ristournes et rabais accordés', 1),
(1280, 'PCMN-BASE', 'PROD', 'XXXXXX', '7080', '1279', 'Sur ventes de marchandises', 1),
(1281, 'PCMN-BASE', 'PROD', 'XXXXXX', '7081', '1279', 'Sur ventes de produits finis', 1),
(1282, 'PCMN-BASE', 'PROD', 'XXXXXX', '7082', '1279', 'Sur ventes de déchets et rebuts', 1),
(1283, 'PCMN-BASE', 'PROD', 'XXXXXX', '7083', '1279', 'Sur prestations de services', 1),
(1284, 'PCMN-BASE', 'PROD', 'XXXXXX', '7084', '1279', 'Mali sur travaux facturés aux associations momentanées', 1),
(1285, 'PCMN-BASE', 'PROD', 'XXXXXX', '71', '1357', 'Variation des stocks et des commandes en cours d''exécution', 1),
(1286, 'PCMN-BASE', 'PROD', 'XXXXXX', '712', '1285', 'Des en cours de fabrication', 1),
(1287, 'PCMN-BASE', 'PROD', 'XXXXXX', '713', '1285', 'Des produits finis', 1),
(1288, 'PCMN-BASE', 'PROD', 'XXXXXX', '715', '1285', 'Des immeubles construits destinés à la vente', 1),
(1289, 'PCMN-BASE', 'PROD', 'XXXXXX', '717', '1285', 'Des commandes en cours d''exécution', 1),
(1290, 'PCMN-BASE', 'PROD', 'XXXXXX', '7170', '1289', 'Commandes en cours - Coût de revient', 1),
(1291, 'PCMN-BASE', 'PROD', 'XXXXXX', '71700', '1290', 'Coût des commandes en cours d''exécution', 1),
(1292, 'PCMN-BASE', 'PROD', 'XXXXXX', '71701', '1290', 'Coût des travaux en cours des associations momentanées', 1),
(1293, 'PCMN-BASE', 'PROD', 'XXXXXX', '7171', '1289', 'Bénéfices portés en compte sur commandes en cours', 1),
(1294, 'PCMN-BASE', 'PROD', 'XXXXXX', '71710', '1293', 'Sur commandes en cours d''exécution', 1),
(1295, 'PCMN-BASE', 'PROD', 'XXXXXX', '71711', '1293', 'Sur travaux en cours des associations momentanées', 1),
(1296, 'PCMN-BASE', 'PROD', 'XXXXXX', '72', '1357', 'Production immobilisée', 1),
(1297, 'PCMN-BASE', 'PROD', 'XXXXXX', '720', '1296', 'En frais d''établissement', 1),
(1298, 'PCMN-BASE', 'PROD', 'XXXXXX', '721', '1296', 'En immobilisations incorporelles', 1),
(1299, 'PCMN-BASE', 'PROD', 'XXXXXX', '722', '1296', 'En immobilisations corporelles', 1),
(1300, 'PCMN-BASE', 'PROD', 'XXXXXX', '723', '1296', 'En immobilisations en cours', 1),
(1301, 'PCMN-BASE', 'PROD', 'XXXXXX', '74', '1357', 'Autres produits d''exploitation', 1),
(1302, 'PCMN-BASE', 'PROD', 'XXXXXX', '740', '1301', 'Subsides d''exploitation et montants compensatoires', 1),
(1303, 'PCMN-BASE', 'PROD', 'XXXXXX', '741', '1301', 'Plus-values sur réalisations courantes d''immobilisations corporelles', 1),
(1304, 'PCMN-BASE', 'PROD', 'XXXXXX', '742', '1301', 'Plus-values sur réalisations de créances commerciales', 1),
(1305, 'PCMN-BASE', 'PROD', 'XXXXXX', '743', '1301', 'à 749 Produits d''exploitation divers', 1),
(1306, 'PCMN-BASE', 'PROD', 'XXXXXX', '743', '1301', 'Produits de services exploités dans l''intérêt du personnel', 1),
(1307, 'PCMN-BASE', 'PROD', 'XXXXXX', '744', '1301', 'Commissions et courtages', 1),
(1308, 'PCMN-BASE', 'PROD', 'XXXXXX', '745', '1301', 'Redevances pour brevets et licences', 1),
(1309, 'PCMN-BASE', 'PROD', 'XXXXXX', '746', '1301', 'Prestations de services (transports, études, etc)', 1),
(1310, 'PCMN-BASE', 'PROD', 'XXXXXX', '747', '1301', 'Revenus des immeubles affectés aux activités non professionnelles', 1),
(1311, 'PCMN-BASE', 'PROD', 'XXXXXX', '748', '1301', 'Locations diverses à caractère professionnel', 1),
(1312, 'PCMN-BASE', 'PROD', 'XXXXXX', '749', '1301', 'Produits divers', 1),
(1313, 'PCMN-BASE', 'PROD', 'XXXXXX', '7490', '1312', 'Bonis sur reprises d''emballages consignés', 1),
(1314, 'PCMN-BASE', 'PROD', 'XXXXXX', '7491', '1312', 'Bonis sur travaux en associations momentanées', 1),
(1315, 'PCMN-BASE', 'PROD', 'XXXXXX', '75', '1357', 'Produits financiers', 1),
(1316, 'PCMN-BASE', 'PROD', 'XXXXXX', '750', '1315', 'Produits des immobilisations financières', 1),
(1317, 'PCMN-BASE', 'PROD', 'XXXXXX', '7500', '1316', 'Revenus des actions', 1),
(1318, 'PCMN-BASE', 'PROD', 'XXXXXX', '7501', '1316', 'Revenus des obligations', 1),
(1319, 'PCMN-BASE', 'PROD', 'XXXXXX', '7502', '1316', 'Revenus des créances à plus d''un an', 1),
(1320, 'PCMN-BASE', 'PROD', 'XXXXXX', '751', '1315', 'Produits des actifs circulants', 1),
(1321, 'PCMN-BASE', 'PROD', 'XXXXXX', '752', '1315', 'Plus-values sur réalisations d''actifs circulants', 1),
(1322, 'PCMN-BASE', 'PROD', 'XXXXXX', '753', '1315', 'Subsides en capital et en intérêts', 1),
(1323, 'PCMN-BASE', 'PROD', 'XXXXXX', '754', '1315', 'Différences de change', 1),
(1324, 'PCMN-BASE', 'PROD', 'XXXXXX', '755', '1315', 'Ecarts de conversion des devises', 1),
(1325, 'PCMN-BASE', 'PROD', 'XXXXXX', '756', '1315', 'à 759 Produits financiers divers', 1),
(1326, 'PCMN-BASE', 'PROD', 'XXXXXX', '756', '1315', 'Produits des autres créances', 1),
(1327, 'PCMN-BASE', 'PROD', 'XXXXXX', '757', '1315', 'Escomptes obtenus', 1),
(1328, 'PCMN-BASE', 'PROD', 'XXXXXX', '76', '1357', 'Produits exceptionnels', 1),
(1329, 'PCMN-BASE', 'PROD', 'XXXXXX', '760', '1328', 'Reprises d''amortissements et de réductions de valeur', 1),
(1330, 'PCMN-BASE', 'PROD', 'XXXXXX', '7600', '1329', 'Sur immobilisations incorporelles', 1),
(1331, 'PCMN-BASE', 'PROD', 'XXXXXX', '7601', '1329', 'Sur immobilisations corporelles', 1),
(1332, 'PCMN-BASE', 'PROD', 'XXXXXX', '761', '1328', 'Reprises de réductions de valeur sur immobilisations financières', 1),
(1333, 'PCMN-BASE', 'PROD', 'XXXXXX', '762', '1328', 'Reprises de provisions pour risques et charges exceptionnelles', 1),
(1334, 'PCMN-BASE', 'PROD', 'XXXXXX', '763', '1328', 'Plus-values sur réalisation d''actifs immobilisés', 1),
(1335, 'PCMN-BASE', 'PROD', 'XXXXXX', '7630', '1334', 'Sur immobilisations incorporelles', 1),
(1336, 'PCMN-BASE', 'PROD', 'XXXXXX', '7631', '1334', 'Sur immobilisations corporelles', 1),
(1337, 'PCMN-BASE', 'PROD', 'XXXXXX', '7632', '1334', 'Sur immobilisations financières', 1),
(1338, 'PCMN-BASE', 'PROD', 'XXXXXX', '764', '1328', 'Autres produits exceptionnels', 1),
(1339, 'PCMN-BASE', 'PROD', 'XXXXXX', '77', '1357', 'Régularisations d''impôts et reprises de provisions fiscales', 1),
(1340, 'PCMN-BASE', 'PROD', 'XXXXXX', '771', '1339', 'Impôts belges sur le résultat', 1),
(1341, 'PCMN-BASE', 'PROD', 'XXXXXX', '7710', '1340', 'Régularisations d''impôts dus ou versés', 1),
(1342, 'PCMN-BASE', 'PROD', 'XXXXXX', '7711', '1340', 'Régularisations d''impôts estimés', 1),
(1343, 'PCMN-BASE', 'PROD', 'XXXXXX', '7712', '1340', 'Reprises de provisions fiscales', 1),
(1344, 'PCMN-BASE', 'PROD', 'XXXXXX', '773', '1339', 'Impôts étrangers sur le résultat', 1),
(1345, 'PCMN-BASE', 'PROD', 'XXXXXX', '79', '1357', 'Affectation aux résultats', 1),
(1346, 'PCMN-BASE', 'PROD', 'XXXXXX', '790', '1345', 'Bénéfice reporté de l''exercice précédent', 1),
(1347, 'PCMN-BASE', 'PROD', 'XXXXXX', '791', '1345', 'Prélèvement sur le capital et les primes d''émission', 1),
(1348, 'PCMN-BASE', 'PROD', 'XXXXXX', '792', '1345', 'Prélèvement sur les réserves', 1),
(1349, 'PCMN-BASE', 'PROD', 'XXXXXX', '793', '1345', 'Perte à reporter', 1),
(1350, 'PCMN-BASE', 'PROD', 'XXXXXX', '794', '1345', 'Intervention d''associés (ou du propriétaire) dans la perte', 1),
(1351, 'PCMN-BASE', 'CAPIT', 'XXXXXX', '1', '', 'Fonds propres, provisions pour risques et charges et dettes à plus d''un an', 1),
(1352, 'PCMN-BASE', 'IMMO', 'XXXXXX', '2', '', 'Frais d''établissement. Actifs immobilisés et créances à plus d''un an', 1),
(1353, 'PCMN-BASE', 'STOCK', 'XXXXXX', '3', '', 'Stock et commandes en cours d''exécution', 1),
(1354, 'PCMN-BASE', 'TIERS', 'XXXXXX', '4', '', 'Créances et dettes à un an au plus', 1),
(1355, 'PCMN-BASE', 'FINAN', 'XXXXXX', '5', '', 'Placement de trésorerie et de valeurs disponibles', 1),
(1356, 'PCMN-BASE', 'CHARGE', 'XXXXXX', '6', '', 'Charges', 1),
(1357, 'PCMN-BASE', 'PROD', 'XXXXXX', '7', '', 'Produits', 1),
(1401, 'PCG99-ABREGE', 'CAPIT', 'XXXXXX', '1', '', 'Fonds propres, provisions pour risques et charges et dettes à plus d''un an', 1),
(1402, 'PCG99-ABREGE', 'IMMO', 'XXXXXX', '2', '', 'Frais d''établissement. Actifs immobilisés et créances à plus d''un an', 1),
(1403, 'PCG99-ABREGE', 'STOCK', 'XXXXXX', '3', '', 'Stock et commandes en cours d''exécution', 1),
(1404, 'PCG99-ABREGE', 'TIERS', 'XXXXXX', '4', '', 'Créances et dettes à un an au plus', 1),
(1405, 'PCG99-ABREGE', 'FINAN', 'XXXXXX', '5', '', 'Placement de trésorerie et de valeurs disponibles', 1),
(1406, 'PCG99-ABREGE', 'CHARGE', 'XXXXXX', '6', '', 'Charges', 1),
(1407, 'PCG99-ABREGE', 'PROD', 'XXXXXX', '7', '', 'Produits', 1),
(1501, 'PCG99-BASE', 'CAPIT', 'XXXXXX', '1', '', 'Fonds propres, provisions pour risques et charges et dettes à plus d''un an', 1),
(1502, 'PCG99-BASE', 'IMMO', 'XXXXXX', '2', '', 'Frais d''établissement. Actifs immobilisés et créances à plus d''un an', 1),
(1503, 'PCG99-BASE', 'STOCK', 'XXXXXX', '3', '', 'Stock et commandes en cours d''exécution', 1),
(1504, 'PCG99-BASE', 'TIERS', 'XXXXXX', '4', '', 'Créances et dettes à un an au plus', 1),
(1505, 'PCG99-BASE', 'FINAN', 'XXXXXX', '5', '', 'Placement de trésorerie et de valeurs disponibles', 1),
(1506, 'PCG99-BASE', 'CHARGE', 'XXXXXX', '6', '', 'Charges', 1),
(1507, 'PCG99-BASE', 'PROD', 'XXXXXX', '7', '', 'Produits', 1);

-- --------------------------------------------------------

--
-- Table structure for table `test_accountingdebcred`
--

DROP TABLE IF EXISTS `test_accountingdebcred`;
CREATE TABLE `test_accountingdebcred` (
  `fk_transaction` int(11) NOT NULL,
  `account_number` varchar(20) NOT NULL,
  `amount` double NOT NULL,
  `direction` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_accountingtransaction`
--

DROP TABLE IF EXISTS `test_accountingtransaction`;
CREATE TABLE `test_accountingtransaction` (
  `rowid` int(11) NOT NULL,
  `label` varchar(128) NOT NULL,
  `datec` date NOT NULL,
  `fk_author` varchar(20) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_source` int(11) NOT NULL,
  `sourcetype` varchar(16) NOT NULL,
  `url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_accounting_system`
--

DROP TABLE IF EXISTS `test_accounting_system`;
CREATE TABLE `test_accounting_system` (
  `rowid` int(11) NOT NULL,
  `pcg_version` varchar(12) NOT NULL,
  `fk_pays` int(11) NOT NULL,
  `label` varchar(128) NOT NULL,
  `active` smallint(6) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_accounting_system`
--

INSERT INTO `test_accounting_system` (`rowid`, `pcg_version`, `fk_pays`, `label`, `active`) VALUES
(1, 'PCG99-ABREGE', 1, 'The simple accountancy french plan', 1),
(2, 'PCG99-BASE', 1, 'The base accountancy french plan', 1),
(3, 'PCMN-BASE', 2, 'The base accountancy belgium plan', 1);

-- --------------------------------------------------------

--
-- Table structure for table `test_actioncomm`
--

DROP TABLE IF EXISTS `test_actioncomm`;
CREATE TABLE `test_actioncomm` (
  `id` int(11) NOT NULL,
  `ref_ext` varchar(128) DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `datep` datetime DEFAULT NULL,
  `datep2` datetime DEFAULT NULL,
  `datea` datetime DEFAULT NULL,
  `datea2` datetime DEFAULT NULL,
  `fk_action` int(11) DEFAULT NULL,
  `code` varchar(32) DEFAULT NULL,
  `label` varchar(128) NOT NULL,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_mod` int(11) DEFAULT NULL,
  `fk_project` int(11) DEFAULT NULL,
  `fk_soc` int(11) DEFAULT NULL,
  `fk_contact` int(11) DEFAULT NULL,
  `fk_parent` int(11) NOT NULL DEFAULT '0',
  `fk_user_action` int(11) DEFAULT NULL,
  `transparency` int(11) DEFAULT NULL,
  `fk_user_done` int(11) DEFAULT NULL,
  `priority` smallint(6) DEFAULT NULL,
  `fulldayevent` smallint(6) NOT NULL DEFAULT '0',
  `punctual` smallint(6) NOT NULL DEFAULT '1',
  `percent` smallint(6) NOT NULL DEFAULT '0',
  `location` varchar(128) DEFAULT NULL,
  `durationp` double DEFAULT NULL,
  `durationa` double DEFAULT NULL,
  `note` text,
  `fk_element` int(11) DEFAULT NULL,
  `elementtype` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_actioncomm`
--

INSERT INTO `test_actioncomm` (`id`, `ref_ext`, `entity`, `datep`, `datep2`, `datea`, `datea2`, `fk_action`, `code`, `label`, `datec`, `tms`, `fk_user_author`, `fk_user_mod`, `fk_project`, `fk_soc`, `fk_contact`, `fk_parent`, `fk_user_action`, `transparency`, `fk_user_done`, `priority`, `fulldayevent`, `punctual`, `percent`, `location`, `durationp`, `durationa`, `note`, `fk_element`, `elementtype`) VALUES
(1, NULL, 1, '2015-12-18 00:00:00', '2015-12-19 23:59:59', NULL, NULL, 50, NULL, 'event TEST événemet sur la journée', '2015-12-18 15:53:47', '2016-01-07 14:36:12', 2, 2, NULL, NULL, NULL, 0, 2, 1, NULL, 0, 1, 1, 100, 'Montreal', 172799, NULL, NULL, NULL, NULL),
(2, NULL, 1, '2015-12-19 03:38:35', '2015-12-19 03:38:35', NULL, NULL, 40, 'AC_OTH_AUTO', 'Tiers créé', '2015-12-19 03:38:35', '2015-12-19 02:38:35', 1, NULL, NULL, 1, NULL, 0, 1, 0, 1, 0, 0, 1, -1, '', NULL, NULL, 'Tiers créé\nAuteur: admin', 1, 'societe'),
(3, NULL, 1, '2015-12-19 03:55:16', '2015-12-19 03:55:16', NULL, NULL, 40, 'AC_OTH_AUTO', 'Third party created', '2015-12-19 03:55:16', '2015-12-19 02:55:16', 2, NULL, NULL, 2, NULL, 0, 2, 0, 2, 0, 0, 1, -1, '', NULL, NULL, 'Third party created\nAuthor: test', 2, 'societe'),
(4, NULL, 1, '2015-12-01 00:00:00', '2015-12-02 00:00:00', NULL, NULL, 50, NULL, 'event test to agenda', '2015-12-19 03:57:45', '2015-12-19 02:57:45', 2, NULL, NULL, 2, 1, 0, 2, 1, NULL, 0, 0, 1, 0, 'ad', 86400, NULL, 'ad', NULL, NULL),
(5, NULL, 1, '2015-12-19 04:01:32', '2015-12-19 04:01:32', NULL, NULL, 40, 'AC_OTH_AUTO', 'Third party created', '2015-12-19 04:01:32', '2015-12-19 03:01:32', 2, NULL, NULL, 3, NULL, 0, 2, 0, 2, 0, 0, 1, -1, '', NULL, NULL, 'Third party created\nAuthor: test', 3, 'societe'),
(6, NULL, 1, '2015-12-19 04:24:00', '2015-12-19 04:24:00', NULL, NULL, 40, 'AC_OTH_AUTO', 'Proposal (PROV3) validated', '2015-12-19 04:24:22', '2015-12-19 03:27:53', 2, 2, NULL, 3, NULL, 0, 2, 0, NULL, 0, 0, 1, -1, NULL, NULL, NULL, 'Proposal (PROV3) validated\r\nAuthor: test', 3, 'propal'),
(7, NULL, 1, '2015-12-21 17:27:15', '2015-12-21 17:27:15', NULL, NULL, 40, 'AC_OTH_AUTO', 'Third party created', '2015-12-21 17:27:15', '2015-12-21 16:27:15', 2, NULL, NULL, 4, NULL, 0, 2, 0, 2, 0, 0, 1, -1, '', NULL, NULL, 'Third party created\nAuthor: test', 4, 'societe'),
(8, NULL, 1, '2015-12-21 17:46:37', '2015-12-21 17:46:37', NULL, NULL, 40, 'AC_OTH_AUTO', 'Proposal (PROV4) validated', '2015-12-21 17:46:37', '2015-12-21 16:46:37', 2, NULL, NULL, 4, NULL, 0, 2, 0, 2, 0, 0, 1, -1, '', NULL, NULL, 'Proposal (PROV4) validated\nAuthor: test', 4, 'propal'),
(9, NULL, 1, '2015-12-21 17:51:28', '2015-12-21 17:51:28', NULL, NULL, 40, 'AC_OTH_AUTO', 'Send proposal by mail', '2015-12-21 17:51:28', '2015-12-21 16:51:28', 2, NULL, NULL, 4, NULL, 0, 2, 0, 2, 0, 0, 1, -1, '', NULL, NULL, 'Email sent by test test <> To maxim@prunus.ca.\nEMail topic: Send commercial proposal PR1512-0002\nEmail body:\nMr. firstname lastname\r\n\r\nYou will find here the commercial proposal PR1512-0002\r\n\r\nSincerely\r\n\r\n\nAttached files and documents: PR1512-0002.pdf', 4, 'propal'),
(10, NULL, 1, '2015-12-21 19:02:58', '2015-12-21 19:02:58', NULL, NULL, 40, 'AC_OTH_AUTO', 'Third party created', '2015-12-21 19:02:58', '2015-12-21 18:02:58', 2, NULL, NULL, 5, NULL, 0, 2, 0, 2, 0, 0, 1, -1, '', NULL, NULL, 'Third party created\nAuthor: test', 5, 'societe'),
(11, NULL, 1, '2015-12-21 19:07:56', '2015-12-21 19:07:56', NULL, NULL, 40, 'AC_OTH_AUTO', 'Proposal (PROV5) validated', '2015-12-21 19:07:56', '2015-12-21 18:07:56', 2, NULL, NULL, 5, NULL, 0, 2, 0, 2, 0, 0, 1, -1, '', NULL, NULL, 'Proposal (PROV5) validated\nAuthor: test', 5, 'propal'),
(12, NULL, 1, '2015-12-22 20:07:22', '2015-12-22 20:07:22', NULL, NULL, 40, 'AC_OTH_AUTO', 'Third party created', '2015-12-22 20:07:22', '2015-12-22 19:07:22', 2, NULL, NULL, 6, NULL, 0, 2, 0, 2, 0, 0, 1, -1, '', NULL, NULL, 'Third party created\nAuthor: test', 6, 'societe'),
(13, NULL, 1, '2015-12-28 16:37:08', '2015-12-28 16:37:08', NULL, NULL, 40, 'AC_OTH_AUTO', 'Proposition (PROV8) validée', '2015-12-28 16:37:08', '2015-12-28 15:37:08', 2, NULL, NULL, 6, NULL, 0, 2, 0, 2, 0, 0, 1, -1, '', NULL, NULL, 'Proposition (PROV8) validée\nAuteur: test', 8, 'propal'),
(14, NULL, 1, '2015-12-28 21:21:35', '2015-12-28 21:21:35', NULL, NULL, 40, 'AC_OTH_AUTO', 'Tiers créé', '2015-12-28 21:21:35', '2015-12-28 20:21:35', 1, NULL, NULL, 7, NULL, 0, 1, 0, 1, 0, 0, 1, -1, '', NULL, NULL, 'Tiers créé\nAuteur: admin', 7, 'societe'),
(15, NULL, 1, '2015-12-28 21:22:34', '2015-12-28 21:22:34', NULL, NULL, 40, 'AC_OTH_AUTO', 'Proposition (PROV9) validée', '2015-12-28 21:22:34', '2015-12-28 20:22:34', 1, NULL, NULL, 7, NULL, 0, 1, 0, 1, 0, 0, 1, -1, '', NULL, NULL, 'Proposition (PROV9) validée\nAuteur: admin', 9, 'propal'),
(16, NULL, 1, '2015-12-30 02:38:43', '2015-12-30 02:38:43', NULL, NULL, 40, 'AC_OTH_AUTO', 'Proposition PR1512-0002 validée', '2015-12-30 02:38:43', '2015-12-30 01:38:43', 1, NULL, NULL, 6, NULL, 0, 1, 0, 1, 0, 0, 1, -1, '', NULL, NULL, 'Proposition PR1512-0002 validée\nAuteur: admin', 8, 'propal'),
(17, NULL, 1, '2015-12-30 02:41:58', '2015-12-30 02:41:58', NULL, NULL, 40, 'AC_OTH_AUTO', 'Proposition PR1512-0002 validée', '2015-12-30 02:41:58', '2015-12-30 01:41:58', 1, NULL, NULL, 6, NULL, 0, 1, 0, 1, 0, 0, 1, -1, '', NULL, NULL, 'Proposition PR1512-0002 validée\nAuteur: admin', 8, 'propal'),
(18, NULL, 1, '2015-12-30 03:46:25', '2015-12-30 03:46:25', NULL, NULL, 40, 'AC_OTH_AUTO', 'Proposition PR1512-0002 validée', '2015-12-30 03:46:25', '2015-12-30 02:46:25', 1, NULL, NULL, 6, NULL, 0, 1, 0, 1, 0, 0, 1, -1, '', NULL, NULL, 'Proposition PR1512-0002 validée\nAuteur: admin', 8, 'propal'),
(19, NULL, 1, '2015-12-30 04:33:57', '2015-12-30 04:33:57', NULL, NULL, 40, 'AC_OTH_AUTO', 'Proposition (PROV6) validée', '2015-12-30 04:33:57', '2015-12-30 03:33:57', 1, NULL, NULL, 4, NULL, 0, 1, 0, 1, 0, 0, 1, -1, '', NULL, NULL, 'Proposition (PROV6) validée\nAuteur: admin', 6, 'propal'),
(20, NULL, 1, '2015-12-30 04:39:08', '2015-12-30 04:39:08', NULL, NULL, 40, 'AC_OTH_AUTO', 'Contrat CT1512-0001 validé dans Dolibarr', '2015-12-30 04:39:08', '2015-12-30 03:39:08', 1, NULL, NULL, 7, NULL, 0, 1, 0, 1, 0, 0, 1, -1, '', NULL, NULL, 'Contrat CT1512-0001 validé dans Dolibarr\nAuteur: admin', 1, 'contract'),
(21, NULL, 1, '2016-01-06 20:53:19', '2016-01-06 20:53:19', NULL, NULL, 40, 'AC_OTH_AUTO', 'Proposition (PROV13) validée', '2016-01-06 20:53:19', '2016-01-06 19:53:19', 1, NULL, NULL, 6, NULL, 0, 1, 0, 1, 0, 0, 1, -1, '', NULL, NULL, 'Proposition (PROV13) validée\nAuteur: admin', 13, 'propal'),
(22, NULL, 1, '2016-01-06 20:56:49', '2016-01-06 20:56:49', NULL, NULL, 40, 'AC_OTH_AUTO', 'Contrat dasd1601-000001 validé dans Dolibarr', '2016-01-06 20:56:49', '2016-01-06 19:56:49', 1, NULL, NULL, 6, NULL, 0, 1, 0, 1, 0, 0, 1, -1, '', NULL, NULL, 'Contrat dasd1601-000001 validé dans Dolibarr\nAuteur: admin', 1, 'contract'),
(23, NULL, 1, '2016-01-07 16:11:08', '2016-01-07 16:11:08', NULL, NULL, 40, 'AC_OTH_AUTO', 'Tiers créé', '2016-01-07 16:11:08', '2016-01-07 15:11:08', 2, NULL, NULL, 8, NULL, 0, 2, 0, 2, 0, 0, 1, -1, '', NULL, NULL, 'Tiers créé\nAuteur: test', 8, 'societe'),
(24, NULL, 1, '2016-01-13 03:05:00', NULL, NULL, NULL, 50, NULL, 'affbkjbkj', '2016-01-12 17:08:19', '2016-01-12 16:08:19', 2, NULL, NULL, 6, 3, 0, 2, 1, NULL, 1, 0, 1, 0, 'Montreal', NULL, NULL, 'fasdgihafgds fasdlsjqef', NULL, NULL),
(25, NULL, 1, '2016-01-12 10:00:00', '2016-01-29 00:00:00', NULL, NULL, 50, NULL, 'test aksbf;ags', '2016-01-13 16:27:33', '2016-01-13 15:27:33', 2, NULL, NULL, NULL, NULL, 0, 2, 0, NULL, 0, 0, 1, -1, '', 1432800, NULL, '', NULL, NULL),
(26, NULL, 1, '2016-01-12 10:00:00', '2016-01-28 00:00:00', NULL, NULL, 50, NULL, 'test 2j', '2016-01-13 16:28:03', '2016-01-13 15:28:03', 2, NULL, NULL, NULL, NULL, 0, 2, 0, NULL, 0, 0, 1, -1, '', 1346400, NULL, 'afdsgf', NULL, NULL),
(27, NULL, 1, '2016-01-12 10:00:00', '2016-01-26 00:00:00', NULL, NULL, 50, NULL, 'fdafgs', '2016-01-13 16:28:17', '2016-01-13 15:28:17', 2, NULL, NULL, NULL, NULL, 0, 2, 0, NULL, 0, 0, 1, -1, '', 1173600, NULL, '', NULL, NULL),
(28, NULL, 1, '2016-01-12 10:00:00', NULL, NULL, NULL, 50, NULL, 'er', '2016-01-13 16:28:52', '2016-01-13 15:28:52', 2, NULL, NULL, NULL, NULL, 0, 2, 0, NULL, 0, 0, 1, -1, '', NULL, NULL, '', NULL, NULL),
(29, NULL, 1, '2016-01-12 10:00:00', NULL, NULL, NULL, 50, NULL, 'rerrw', '2016-01-13 16:29:05', '2016-01-13 15:29:05', 2, NULL, NULL, NULL, NULL, 0, 2, 0, NULL, 0, 0, 1, -1, '', NULL, NULL, '', NULL, NULL),
(30, NULL, 1, '2016-01-12 10:00:00', NULL, NULL, NULL, 50, NULL, 'etwr', '2016-01-13 16:29:09', '2016-01-13 15:29:09', 2, NULL, NULL, NULL, NULL, 0, 2, 0, NULL, 0, 0, 1, -1, '', NULL, NULL, '', NULL, NULL),
(31, NULL, 1, '2016-01-12 10:00:00', NULL, NULL, NULL, 50, NULL, 'rqwktqlewr', '2016-01-13 16:29:16', '2016-01-13 15:29:16', 2, NULL, NULL, NULL, NULL, 0, 2, 0, NULL, 0, 0, 1, -1, '', NULL, NULL, '', NULL, NULL),
(32, NULL, 1, '2016-01-13 19:17:18', '2016-01-13 19:17:18', NULL, NULL, 40, 'AC_OTH_AUTO', 'Proposition (PROV16) validée', '2016-01-13 19:17:18', '2016-01-13 18:17:18', 2, NULL, NULL, 8, NULL, 0, 2, 0, 2, 0, 0, 1, -1, '', NULL, NULL, 'Proposition (PROV16) validée\nAuteur: test', 16, 'propal'),
(33, NULL, 1, '2016-01-13 19:23:21', '2016-01-13 19:23:21', NULL, NULL, 40, 'AC_OTH_AUTO', 'Proposition PR1512-0002 validée', '2016-01-13 19:23:21', '2016-01-13 18:23:21', 2, NULL, NULL, 6, NULL, 0, 2, 0, 2, 0, 0, 1, -1, '', NULL, NULL, 'Proposition PR1512-0002 validée\nAuteur: test', 8, 'propal'),
(34, NULL, 1, '2016-01-20 18:16:56', '2016-01-20 18:16:56', NULL, NULL, 40, 'AC_OTH_AUTO', 'Contrat dasd1601-000002 validé dans Dolibarr', '2016-01-20 18:16:56', '2016-01-20 17:16:56', 2, NULL, NULL, 6, NULL, 0, 2, 0, 2, 0, 0, 1, -1, '', NULL, NULL, 'Contrat dasd1601-000002 validé dans Dolibarr\nAuteur: test', 2, 'contract'),
(35, NULL, 1, '2016-01-20 18:18:10', '2016-01-20 18:18:10', NULL, NULL, 40, 'AC_OTH_AUTO', 'Contrat dasd1601-000003 validé dans Dolibarr', '2016-01-20 18:18:10', '2016-01-20 17:18:10', 2, NULL, NULL, 6, NULL, 0, 2, 0, 2, 0, 0, 1, -1, '', NULL, NULL, 'Contrat dasd1601-000003 validé dans Dolibarr\nAuteur: test', 3, 'contract'),
(36, NULL, 1, '2016-01-20 18:24:11', '2016-01-20 18:24:11', NULL, NULL, 40, 'AC_OTH_AUTO', 'Tiers créé', '2016-01-20 18:24:11', '2016-01-20 17:24:11', 2, NULL, NULL, 9, NULL, 0, 2, 0, 2, 0, 0, 1, -1, '', NULL, NULL, 'Tiers créé\nAuteur: test', 9, 'societe'),
(37, NULL, 1, '2016-01-20 19:30:15', '2016-01-20 19:30:15', NULL, NULL, 40, 'AC_OTH_AUTO', 'Tiers créé', '2016-01-20 19:30:15', '2016-01-20 18:30:15', 2, NULL, NULL, 10, NULL, 0, 2, 0, 2, 0, 0, 1, -1, '', NULL, NULL, 'Tiers créé\nAuteur: test', 10, 'societe'),
(38, NULL, 1, '2016-01-20 19:34:50', '2016-01-20 19:34:50', NULL, NULL, 40, 'AC_OTH_AUTO', 'Proposition (PROV19) validée', '2016-01-20 19:34:50', '2016-01-20 18:34:50', 2, NULL, NULL, 10, NULL, 0, 2, 0, 2, 0, 0, 1, -1, '', NULL, NULL, 'Proposition (PROV19) validée\nAuteur: test', 19, 'propal'),
(39, NULL, 1, '2016-01-20 19:40:33', '2016-01-20 19:40:33', NULL, NULL, 40, 'AC_OTH_AUTO', 'Contrat dasd1601-000004 validé dans Dolibarr', '2016-01-20 19:40:33', '2016-01-20 18:40:33', 2, NULL, NULL, 10, NULL, 0, 2, 0, 2, 0, 0, 1, -1, '', NULL, NULL, 'Contrat dasd1601-000004 validé dans Dolibarr\nAuteur: test', 7, 'contract'),
(40, NULL, 1, '2016-01-20 19:45:55', '2016-01-20 19:45:55', NULL, NULL, 40, 'AC_OTH_AUTO', 'Proposition (PROV20) validée', '2016-01-20 19:45:55', '2016-01-20 18:45:55', 2, NULL, NULL, 10, NULL, 0, 2, 0, 2, 0, 0, 1, -1, '', NULL, NULL, 'Proposition (PROV20) validée\nAuteur: test', 20, 'propal'),
(41, NULL, 1, '2016-01-20 21:43:40', '2016-01-20 21:43:40', NULL, NULL, 40, 'AC_OTH_AUTO', 'Tiers créé', '2016-01-20 21:43:40', '2016-01-20 20:43:40', 2, NULL, NULL, 11, NULL, 0, 2, 0, 2, 0, 0, 1, -1, '', NULL, NULL, 'Tiers créé\nAuteur: test', 11, 'societe'),
(42, NULL, 1, '2016-01-22 19:56:18', '2016-01-22 19:56:18', NULL, NULL, 40, 'AC_OTH_AUTO', 'Tiers créé', '2016-01-22 19:56:18', '2016-01-22 18:56:18', 2, NULL, NULL, 12, NULL, 0, 2, 0, 2, 0, 0, 1, -1, '', NULL, NULL, 'Tiers créé\nAuteur: test', 12, 'societe'),
(43, NULL, 1, '2016-01-22 19:57:56', '2016-01-22 19:57:56', NULL, NULL, 40, 'AC_OTH_AUTO', 'Proposition (PROV23) validée', '2016-01-22 19:57:56', '2016-01-22 18:57:56', 2, NULL, NULL, 12, NULL, 0, 2, 0, 2, 0, 0, 1, -1, '', NULL, NULL, 'Proposition (PROV23) validée\nAuteur: test', 23, 'propal'),
(44, NULL, 1, '2016-01-22 20:06:47', '2016-01-22 20:06:47', NULL, NULL, 40, 'AC_OTH_AUTO', 'Proposition (PROV22) validée', '2016-01-22 20:06:47', '2016-01-22 19:06:47', 2, NULL, NULL, 11, NULL, 0, 2, 0, 2, 0, 0, 1, -1, '', NULL, NULL, 'Proposition (PROV22) validée\nAuteur: test', 22, 'propal'),
(45, NULL, 1, '2016-01-22 20:07:06', '2016-01-22 20:07:06', NULL, NULL, 40, 'AC_OTH_AUTO', 'Proposition CESGM1601-000004 validée', '2016-01-22 20:07:06', '2016-01-22 19:07:06', 2, NULL, NULL, 11, NULL, 0, 2, 0, 2, 0, 0, 1, -1, '', NULL, NULL, 'Proposition CESGM1601-000004 validée\nAuteur: test', 22, 'propal');

-- --------------------------------------------------------

--
-- Table structure for table `test_actioncomm_extrafields`
--

DROP TABLE IF EXISTS `test_actioncomm_extrafields`;
CREATE TABLE `test_actioncomm_extrafields` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_actioncomm_resources`
--

DROP TABLE IF EXISTS `test_actioncomm_resources`;
CREATE TABLE `test_actioncomm_resources` (
  `rowid` int(11) NOT NULL,
  `fk_actioncomm` int(11) NOT NULL,
  `element_type` varchar(50) NOT NULL,
  `fk_element` int(11) NOT NULL,
  `answer_status` varchar(50) DEFAULT NULL,
  `mandatory` smallint(6) DEFAULT NULL,
  `transparent` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_adherent`
--

DROP TABLE IF EXISTS `test_adherent`;
CREATE TABLE `test_adherent` (
  `rowid` int(11) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `ref_ext` varchar(128) DEFAULT NULL,
  `civilite` varchar(6) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `login` varchar(50) DEFAULT NULL,
  `pass` varchar(50) DEFAULT NULL,
  `fk_adherent_type` int(11) NOT NULL,
  `morphy` varchar(3) NOT NULL,
  `societe` varchar(50) DEFAULT NULL,
  `fk_soc` int(11) DEFAULT NULL,
  `address` text,
  `zip` varchar(30) DEFAULT NULL,
  `town` varchar(50) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `country` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `skype` varchar(255) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `phone_perso` varchar(30) DEFAULT NULL,
  `phone_mobile` varchar(30) DEFAULT NULL,
  `birth` date DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `statut` smallint(6) NOT NULL DEFAULT '0',
  `public` smallint(6) NOT NULL DEFAULT '0',
  `datefin` datetime DEFAULT NULL,
  `note` text,
  `datevalid` datetime DEFAULT NULL,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_mod` int(11) DEFAULT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `canvas` varchar(32) DEFAULT NULL,
  `import_key` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_adherent_extrafields`
--

DROP TABLE IF EXISTS `test_adherent_extrafields`;
CREATE TABLE `test_adherent_extrafields` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_adherent_type`
--

DROP TABLE IF EXISTS `test_adherent_type`;
CREATE TABLE `test_adherent_type` (
  `rowid` int(11) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `statut` smallint(6) NOT NULL DEFAULT '0',
  `libelle` varchar(50) NOT NULL,
  `cotisation` varchar(3) NOT NULL DEFAULT 'yes',
  `vote` varchar(3) NOT NULL DEFAULT 'yes',
  `note` text,
  `mail_valid` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_adherent_type_extrafields`
--

DROP TABLE IF EXISTS `test_adherent_type_extrafields`;
CREATE TABLE `test_adherent_type_extrafields` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_bank`
--

DROP TABLE IF EXISTS `test_bank`;
CREATE TABLE `test_bank` (
  `rowid` int(11) NOT NULL,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datev` date DEFAULT NULL,
  `dateo` date DEFAULT NULL,
  `amount` double(24,8) NOT NULL DEFAULT '0.00000000',
  `label` varchar(255) DEFAULT NULL,
  `fk_account` int(11) DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_rappro` int(11) DEFAULT NULL,
  `fk_type` varchar(6) DEFAULT NULL,
  `num_releve` varchar(50) DEFAULT NULL,
  `num_chq` varchar(50) DEFAULT NULL,
  `rappro` tinyint(4) DEFAULT '0',
  `note` text,
  `fk_bordereau` int(11) DEFAULT '0',
  `banque` varchar(255) DEFAULT NULL,
  `emetteur` varchar(255) DEFAULT NULL,
  `author` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_bank`
--

INSERT INTO `test_bank` (`rowid`, `datec`, `tms`, `datev`, `dateo`, `amount`, `label`, `fk_account`, `fk_user_author`, `fk_user_rappro`, `fk_type`, `num_releve`, `num_chq`, `rappro`, `note`, `fk_bordereau`, `banque`, `emetteur`, `author`) VALUES
(1, '2016-01-25 19:27:02', '2016-01-25 18:27:02', '2016-01-25', '2016-01-25', 200.00000000, '(Solde initial)', 1, NULL, NULL, 'SOLD', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `test_bank_account`
--

DROP TABLE IF EXISTS `test_bank_account`;
CREATE TABLE `test_bank_account` (
  `rowid` int(11) NOT NULL,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ref` varchar(12) NOT NULL,
  `label` varchar(30) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `bank` varchar(60) DEFAULT NULL,
  `code_banque` varchar(8) DEFAULT NULL,
  `code_guichet` varchar(6) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `cle_rib` varchar(5) DEFAULT NULL,
  `bic` varchar(11) DEFAULT NULL,
  `iban_prefix` varchar(34) DEFAULT NULL,
  `country_iban` varchar(2) DEFAULT NULL,
  `cle_iban` varchar(2) DEFAULT NULL,
  `domiciliation` varchar(255) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `fk_pays` int(11) NOT NULL,
  `proprio` varchar(60) DEFAULT NULL,
  `owner_address` varchar(255) DEFAULT NULL,
  `courant` smallint(6) NOT NULL DEFAULT '0',
  `clos` smallint(6) NOT NULL DEFAULT '0',
  `rappro` smallint(6) DEFAULT '1',
  `url` varchar(128) DEFAULT NULL,
  `account_number` varchar(24) DEFAULT NULL,
  `currency_code` varchar(3) NOT NULL,
  `min_allowed` int(11) DEFAULT '0',
  `min_desired` int(11) DEFAULT '0',
  `comment` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_bank_account`
--

INSERT INTO `test_bank_account` (`rowid`, `datec`, `tms`, `ref`, `label`, `entity`, `bank`, `code_banque`, `code_guichet`, `number`, `cle_rib`, `bic`, `iban_prefix`, `country_iban`, `cle_iban`, `domiciliation`, `state_id`, `fk_pays`, `proprio`, `owner_address`, `courant`, `clos`, `rappro`, `url`, `account_number`, `currency_code`, `min_allowed`, `min_desired`, `comment`) VALUES
(1, '2016-01-25 19:27:02', '2016-01-25 18:28:17', 'compt1', 'libelle_compte', 1, 'cerd', '1231', '', '12341234', '', '', '', NULL, NULL, '', NULL, 14, '', '', 1, 0, 1, NULL, '', 'CAD', 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `test_bank_categ`
--

DROP TABLE IF EXISTS `test_bank_categ`;
CREATE TABLE `test_bank_categ` (
  `rowid` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_bank_class`
--

DROP TABLE IF EXISTS `test_bank_class`;
CREATE TABLE `test_bank_class` (
  `lineid` int(11) NOT NULL,
  `fk_categ` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_bank_url`
--

DROP TABLE IF EXISTS `test_bank_url`;
CREATE TABLE `test_bank_url` (
  `rowid` int(11) NOT NULL,
  `fk_bank` int(11) DEFAULT NULL,
  `url_id` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_bookmark`
--

DROP TABLE IF EXISTS `test_bookmark`;
CREATE TABLE `test_bookmark` (
  `rowid` int(11) NOT NULL,
  `fk_soc` int(11) DEFAULT NULL,
  `fk_user` int(11) NOT NULL,
  `dateb` datetime DEFAULT NULL,
  `url` varchar(255) NOT NULL,
  `target` varchar(16) DEFAULT NULL,
  `title` varchar(64) DEFAULT NULL,
  `favicon` varchar(24) DEFAULT NULL,
  `position` int(11) DEFAULT '0',
  `entity` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_bordereau_cheque`
--

DROP TABLE IF EXISTS `test_bordereau_cheque`;
CREATE TABLE `test_bordereau_cheque` (
  `rowid` int(11) NOT NULL,
  `number` varchar(16) NOT NULL,
  `ref_ext` varchar(255) DEFAULT NULL,
  `datec` datetime NOT NULL,
  `date_bordereau` date DEFAULT NULL,
  `amount` double(24,8) NOT NULL,
  `nbcheque` smallint(6) NOT NULL,
  `fk_bank_account` int(11) DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `statut` smallint(6) NOT NULL DEFAULT '0',
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `note` text,
  `entity` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_boxes`
--

DROP TABLE IF EXISTS `test_boxes`;
CREATE TABLE `test_boxes` (
  `rowid` int(11) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `box_id` int(11) NOT NULL,
  `position` smallint(6) NOT NULL,
  `box_order` varchar(3) NOT NULL,
  `fk_user` int(11) NOT NULL DEFAULT '0',
  `maxline` int(11) DEFAULT NULL,
  `params` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_boxes`
--

INSERT INTO `test_boxes` (`rowid`, `entity`, `box_id`, `position`, `box_order`, `fk_user`, `maxline`, `params`) VALUES
(11, 1, 11, 0, 'B06', 0, NULL, NULL),
(23, 1, 23, 0, 'A05', 0, NULL, NULL),
(76, 1, 27, 0, '0', 0, NULL, NULL),
(77, 1, 28, 0, '0', 0, NULL, NULL),
(78, 1, 29, 0, '0', 0, NULL, NULL),
(79, 1, 30, 0, '0', 0, NULL, NULL),
(119, 1, 27, 0, 'A02', 2, NULL, NULL),
(120, 1, 23, 0, 'A03', 2, NULL, NULL),
(123, 1, 28, 0, 'B01', 2, NULL, NULL),
(131, 1, 35, 0, '0', 0, NULL, NULL),
(132, 1, 36, 0, '0', 0, NULL, NULL),
(133, 1, 37, 0, '0', 0, NULL, NULL),
(134, 1, 38, 0, '0', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `test_boxes_def`
--

DROP TABLE IF EXISTS `test_boxes_def`;
CREATE TABLE `test_boxes_def` (
  `rowid` int(11) NOT NULL,
  `file` varchar(200) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `note` varchar(130) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_boxes_def`
--

INSERT INTO `test_boxes_def` (`rowid`, `file`, `entity`, `tms`, `note`) VALUES
(11, 'box_services_contracts.php', 1, '2015-12-14 16:37:24', NULL),
(23, 'box_actions.php', 1, '2015-12-15 16:45:59', NULL),
(27, 'box_comptes.php', 1, '2016-01-25 18:00:45', NULL),
(28, 'box_produits.php', 1, '2016-01-25 18:01:17', NULL),
(29, 'box_produits_alerte_stock.php', 1, '2016-01-25 18:01:17', NULL),
(30, 'box_graph_product_distribution.php', 1, '2016-01-25 18:01:17', NULL),
(35, 'box_clients.php', 1, '2016-02-04 17:58:20', NULL),
(36, 'box_prospect.php', 1, '2016-02-04 17:58:20', NULL),
(37, 'box_contacts.php', 1, '2016-02-04 17:58:20', NULL),
(38, 'box_activity.php', 1, '2016-02-04 17:58:20', '(WarningUsingThisBoxSlowDown)');

-- --------------------------------------------------------

--
-- Table structure for table `test_categorie`
--

DROP TABLE IF EXISTS `test_categorie`;
CREATE TABLE `test_categorie` (
  `rowid` int(11) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `fk_parent` int(11) NOT NULL DEFAULT '0',
  `label` varchar(255) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '1',
  `description` text,
  `fk_soc` int(11) DEFAULT NULL,
  `visible` tinyint(4) NOT NULL DEFAULT '1',
  `import_key` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_categories_extrafields`
--

DROP TABLE IF EXISTS `test_categories_extrafields`;
CREATE TABLE `test_categories_extrafields` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_categorie_contact`
--

DROP TABLE IF EXISTS `test_categorie_contact`;
CREATE TABLE `test_categorie_contact` (
  `fk_categorie` int(11) NOT NULL,
  `fk_socpeople` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_categorie_fournisseur`
--

DROP TABLE IF EXISTS `test_categorie_fournisseur`;
CREATE TABLE `test_categorie_fournisseur` (
  `fk_categorie` int(11) NOT NULL,
  `fk_societe` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_categorie_lang`
--

DROP TABLE IF EXISTS `test_categorie_lang`;
CREATE TABLE `test_categorie_lang` (
  `rowid` int(11) NOT NULL,
  `fk_category` int(11) NOT NULL DEFAULT '0',
  `lang` varchar(5) NOT NULL DEFAULT '0',
  `label` varchar(255) NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_categorie_member`
--

DROP TABLE IF EXISTS `test_categorie_member`;
CREATE TABLE `test_categorie_member` (
  `fk_categorie` int(11) NOT NULL,
  `fk_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_categorie_product`
--

DROP TABLE IF EXISTS `test_categorie_product`;
CREATE TABLE `test_categorie_product` (
  `fk_categorie` int(11) NOT NULL,
  `fk_product` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_categorie_societe`
--

DROP TABLE IF EXISTS `test_categorie_societe`;
CREATE TABLE `test_categorie_societe` (
  `fk_categorie` int(11) NOT NULL,
  `fk_societe` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_chargesociales`
--

DROP TABLE IF EXISTS `test_chargesociales`;
CREATE TABLE `test_chargesociales` (
  `rowid` int(11) NOT NULL,
  `date_ech` datetime NOT NULL,
  `libelle` varchar(80) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `date_creation` datetime DEFAULT NULL,
  `date_valid` datetime DEFAULT NULL,
  `fk_type` int(11) NOT NULL,
  `amount` double NOT NULL DEFAULT '0',
  `paye` smallint(6) NOT NULL DEFAULT '0',
  `periode` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_commande`
--

DROP TABLE IF EXISTS `test_commande`;
CREATE TABLE `test_commande` (
  `rowid` int(11) NOT NULL,
  `ref` varchar(30) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `ref_ext` varchar(255) DEFAULT NULL,
  `ref_int` varchar(255) DEFAULT NULL,
  `ref_client` varchar(255) DEFAULT NULL,
  `fk_soc` int(11) NOT NULL,
  `fk_projet` int(11) DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `date_creation` datetime DEFAULT NULL,
  `date_valid` datetime DEFAULT NULL,
  `date_cloture` datetime DEFAULT NULL,
  `date_commande` date DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `fk_user_cloture` int(11) DEFAULT NULL,
  `source` smallint(6) DEFAULT NULL,
  `fk_statut` smallint(6) DEFAULT '0',
  `amount_ht` double DEFAULT '0',
  `remise_percent` double DEFAULT '0',
  `remise_absolue` double DEFAULT '0',
  `remise` double DEFAULT '0',
  `tva` double(24,8) DEFAULT '0.00000000',
  `localtax1` double(24,8) DEFAULT '0.00000000',
  `localtax2` double(24,8) DEFAULT '0.00000000',
  `total_ht` double(24,8) DEFAULT '0.00000000',
  `total_ttc` double(24,8) DEFAULT '0.00000000',
  `note_private` text,
  `note_public` text,
  `model_pdf` varchar(255) DEFAULT NULL,
  `facture` tinyint(4) DEFAULT '0',
  `fk_account` int(11) DEFAULT NULL,
  `fk_currency` varchar(3) DEFAULT NULL,
  `fk_cond_reglement` int(11) DEFAULT NULL,
  `fk_mode_reglement` int(11) DEFAULT NULL,
  `date_livraison` date DEFAULT NULL,
  `fk_availability` int(11) DEFAULT NULL,
  `fk_input_reason` int(11) DEFAULT NULL,
  `fk_delivery_address` int(11) DEFAULT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  `extraparams` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_commandedet`
--

DROP TABLE IF EXISTS `test_commandedet`;
CREATE TABLE `test_commandedet` (
  `rowid` int(11) NOT NULL,
  `fk_commande` int(11) NOT NULL,
  `fk_parent_line` int(11) DEFAULT NULL,
  `fk_product` int(11) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `description` text,
  `tva_tx` double(6,3) DEFAULT NULL,
  `localtax1_tx` double(6,3) DEFAULT '0.000',
  `localtax1_type` varchar(10) DEFAULT NULL,
  `localtax2_tx` double(6,3) DEFAULT '0.000',
  `localtax2_type` varchar(10) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `remise_percent` double DEFAULT '0',
  `remise` double DEFAULT '0',
  `fk_remise_except` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `subprice` double(24,8) DEFAULT '0.00000000',
  `total_ht` double(24,8) DEFAULT '0.00000000',
  `total_tva` double(24,8) DEFAULT '0.00000000',
  `total_localtax1` double(24,8) DEFAULT '0.00000000',
  `total_localtax2` double(24,8) DEFAULT '0.00000000',
  `total_ttc` double(24,8) DEFAULT '0.00000000',
  `product_type` int(11) DEFAULT '0',
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `info_bits` int(11) DEFAULT '0',
  `buy_price_ht` double(24,8) DEFAULT '0.00000000',
  `fk_product_fournisseur_price` int(11) DEFAULT NULL,
  `special_code` int(10) UNSIGNED DEFAULT '0',
  `rang` int(11) DEFAULT '0',
  `import_key` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_commandedet_extrafields`
--

DROP TABLE IF EXISTS `test_commandedet_extrafields`;
CREATE TABLE `test_commandedet_extrafields` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_commande_extrafields`
--

DROP TABLE IF EXISTS `test_commande_extrafields`;
CREATE TABLE `test_commande_extrafields` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_commande_fournisseur`
--

DROP TABLE IF EXISTS `test_commande_fournisseur`;
CREATE TABLE `test_commande_fournisseur` (
  `rowid` int(11) NOT NULL,
  `ref` varchar(30) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `ref_ext` varchar(30) DEFAULT NULL,
  `ref_supplier` varchar(30) DEFAULT NULL,
  `fk_soc` int(11) NOT NULL,
  `fk_projet` int(11) DEFAULT '0',
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `date_creation` datetime DEFAULT NULL,
  `date_valid` datetime DEFAULT NULL,
  `date_approve` datetime DEFAULT NULL,
  `date_commande` date DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `fk_user_approve` int(11) DEFAULT NULL,
  `source` smallint(6) NOT NULL,
  `fk_statut` smallint(6) DEFAULT '0',
  `amount_ht` double DEFAULT '0',
  `remise_percent` double DEFAULT '0',
  `remise` double DEFAULT '0',
  `tva` double(24,8) DEFAULT '0.00000000',
  `localtax1` double(24,8) DEFAULT '0.00000000',
  `localtax2` double(24,8) DEFAULT '0.00000000',
  `total_ht` double(24,8) DEFAULT '0.00000000',
  `total_ttc` double(24,8) DEFAULT '0.00000000',
  `note_private` text,
  `note_public` text,
  `model_pdf` varchar(255) DEFAULT NULL,
  `date_livraison` date DEFAULT NULL,
  `fk_cond_reglement` int(11) DEFAULT NULL,
  `fk_mode_reglement` int(11) DEFAULT NULL,
  `fk_input_method` int(11) DEFAULT '0',
  `import_key` varchar(14) DEFAULT NULL,
  `extraparams` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_commande_fournisseurdet`
--

DROP TABLE IF EXISTS `test_commande_fournisseurdet`;
CREATE TABLE `test_commande_fournisseurdet` (
  `rowid` int(11) NOT NULL,
  `fk_commande` int(11) NOT NULL,
  `fk_product` int(11) DEFAULT NULL,
  `ref` varchar(50) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `description` text,
  `tva_tx` double(6,3) DEFAULT '0.000',
  `localtax1_tx` double(6,3) DEFAULT '0.000',
  `localtax1_type` varchar(10) DEFAULT NULL,
  `localtax2_tx` double(6,3) DEFAULT '0.000',
  `localtax2_type` varchar(10) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `remise_percent` double DEFAULT '0',
  `remise` double DEFAULT '0',
  `subprice` double(24,8) DEFAULT '0.00000000',
  `total_ht` double(24,8) DEFAULT '0.00000000',
  `total_tva` double(24,8) DEFAULT '0.00000000',
  `total_localtax1` double(24,8) DEFAULT '0.00000000',
  `total_localtax2` double(24,8) DEFAULT '0.00000000',
  `total_ttc` double(24,8) DEFAULT '0.00000000',
  `product_type` int(11) DEFAULT '0',
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `info_bits` int(11) DEFAULT '0',
  `import_key` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_commande_fournisseur_dispatch`
--

DROP TABLE IF EXISTS `test_commande_fournisseur_dispatch`;
CREATE TABLE `test_commande_fournisseur_dispatch` (
  `rowid` int(11) NOT NULL,
  `fk_commande` int(11) DEFAULT NULL,
  `fk_product` int(11) DEFAULT NULL,
  `qty` float DEFAULT NULL,
  `fk_entrepot` int(11) DEFAULT NULL,
  `fk_user` int(11) DEFAULT NULL,
  `datec` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_commande_fournisseur_extrafields`
--

DROP TABLE IF EXISTS `test_commande_fournisseur_extrafields`;
CREATE TABLE `test_commande_fournisseur_extrafields` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_commande_fournisseur_log`
--

DROP TABLE IF EXISTS `test_commande_fournisseur_log`;
CREATE TABLE `test_commande_fournisseur_log` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datelog` datetime NOT NULL,
  `fk_commande` int(11) NOT NULL,
  `fk_statut` smallint(6) NOT NULL,
  `fk_user` int(11) NOT NULL,
  `comment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_compta`
--

DROP TABLE IF EXISTS `test_compta`;
CREATE TABLE `test_compta` (
  `rowid` int(11) NOT NULL,
  `datec` datetime DEFAULT NULL,
  `datev` date DEFAULT NULL,
  `amount` double NOT NULL DEFAULT '0',
  `label` varchar(255) DEFAULT NULL,
  `fk_compta_account` int(11) DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `valid` tinyint(4) DEFAULT '0',
  `note` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_compta_account`
--

DROP TABLE IF EXISTS `test_compta_account`;
CREATE TABLE `test_compta_account` (
  `rowid` int(11) NOT NULL,
  `datec` datetime DEFAULT NULL,
  `number` varchar(12) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `note` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_compta_compte_generaux`
--

DROP TABLE IF EXISTS `test_compta_compte_generaux`;
CREATE TABLE `test_compta_compte_generaux` (
  `rowid` int(11) NOT NULL,
  `date_creation` datetime DEFAULT NULL,
  `numero` varchar(50) DEFAULT NULL,
  `intitule` varchar(255) DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `note` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_const`
--

DROP TABLE IF EXISTS `test_const`;
CREATE TABLE `test_const` (
  `rowid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `value` text NOT NULL,
  `type` varchar(6) DEFAULT NULL,
  `visible` tinyint(4) NOT NULL DEFAULT '1',
  `note` text,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_const`
--

INSERT INTO `test_const` (`rowid`, `name`, `entity`, `value`, `type`, `visible`, `note`, `tms`) VALUES
(2, 'MAIN_FEATURES_LEVEL', 0, '0', 'chaine', 1, 'Level of features to show (0=stable only, 1=stable+experimental, 2=stable+experimental+development', '2015-12-14 16:33:24'),
(3, 'MAILING_LIMIT_SENDBYWEB', 0, '25', 'chaine', 1, 'Number of targets to defined packet size when sending mass email', '2015-12-14 16:33:24'),
(4, 'SYSLOG_HANDLERS', 0, '["mod_syslog_file"]', 'chaine', 0, 'Which logger to use', '2015-12-14 16:33:24'),
(5, 'SYSLOG_FILE', 0, 'DOL_DATA_ROOT/dolibarr.log', 'chaine', 0, 'Directory where to write log file', '2015-12-14 16:33:24'),
(6, 'SYSLOG_LEVEL', 0, '7', 'chaine', 0, 'Level of debug info to show', '2015-12-14 16:33:24'),
(7, 'MAIN_MAIL_SMTP_SERVER', 0, '', 'chaine', 0, 'Host or ip address for SMTP server', '2015-12-14 16:33:24'),
(8, 'MAIN_MAIL_SMTP_PORT', 0, '', 'chaine', 0, 'Port for SMTP server', '2015-12-14 16:33:24'),
(9, 'MAIN_UPLOAD_DOC', 0, '2048', 'chaine', 0, 'Max size for file upload (0 means no upload allowed)', '2015-12-14 16:33:24'),
(12, 'MAIN_SIZE_LISTE_LIMIT', 0, '25', 'chaine', 0, 'Longueur maximum des listes', '2015-12-14 16:33:24'),
(13, 'MAIN_SHOW_WORKBOARD', 0, '1', 'yesno', 0, 'Affichage tableau de bord de travail Dolibarr', '2015-12-14 16:33:24'),
(14, 'MAIN_MENU_STANDARD', 1, 'eldy_menu.php', 'chaine', 0, 'Menu manager for internal users', '2015-12-14 16:33:24'),
(15, 'MAIN_MENUFRONT_STANDARD', 1, 'eldy_menu.php', 'chaine', 0, 'Menu manager for external users', '2015-12-14 16:33:24'),
(16, 'MAIN_MENU_SMARTPHONE', 1, 'eldy_menu.php', 'chaine', 0, 'Menu manager for internal users using smartphones', '2015-12-14 16:33:24'),
(17, 'MAIN_MENUFRONT_SMARTPHONE', 1, 'eldy_menu.php', 'chaine', 0, 'Menu manager for external users using smartphones', '2015-12-14 16:33:24'),
(19, 'MAIN_DELAY_ORDERS_TO_PROCESS', 1, '2', 'chaine', 0, 'Tolérance de retard avant alerte (en jours) sur commandes clients non traitées', '2015-12-14 16:33:24'),
(20, 'MAIN_DELAY_SUPPLIER_ORDERS_TO_PROCESS', 1, '7', 'chaine', 0, 'Tolérance de retard avant alerte (en jours) sur commandes fournisseurs non traitées', '2015-12-14 16:33:24'),
(23, 'MAIN_DELAY_CUSTOMER_BILLS_UNPAYED', 1, '31', 'chaine', 0, 'Tolérance de retard avant alerte (en jours) sur factures client impayées', '2015-12-14 16:33:24'),
(24, 'MAIN_DELAY_SUPPLIER_BILLS_TO_PAY', 1, '2', 'chaine', 0, 'Tolérance de retard avant alerte (en jours) sur factures fournisseur impayées', '2015-12-14 16:33:24'),
(27, 'MAIN_DELAY_MEMBERS', 1, '31', 'chaine', 0, 'Tolérance de retard avant alerte (en jours) sur cotisations adhérent en retard', '2015-12-14 16:33:24'),
(28, 'MAIN_DELAY_TRANSACTIONS_TO_CONCILIATE', 1, '62', 'chaine', 0, 'Tolérance de retard avant alerte (en jours) sur rapprochements bancaires à faire', '2015-12-14 16:33:24'),
(29, 'MAIN_FIX_FOR_BUGGED_MTA', 1, '1', 'chaine', 1, 'Set constant to fix email ending from PHP with some linux ike system', '2015-12-14 16:33:24'),
(30, 'MAILING_EMAIL_FROM', 1, 'dolibarr@domain.com', 'chaine', 0, 'EMail emmetteur pour les envois d emailings', '2015-12-14 16:33:24'),
(31, 'MAIN_MODULE_USER', 0, '1', NULL, 0, NULL, '2015-12-14 16:34:18'),
(32, 'MAIN_VERSION_LAST_INSTALL', 0, '3.6.5', 'chaine', 0, 'Dolibarr version when install', '2015-12-14 16:34:19'),
(52, 'SOCIETE_CODECOMPTA_ADDON', 1, 'mod_codecompta_panicum', 'chaine', 0, 'Module to control third parties codes', '2015-12-14 16:37:16'),
(61, 'PROPALE_ADDON_PDF_ODT_PATH', 1, 'DOL_DATA_ROOT/doctemplates/proposals', 'chaine', 0, NULL, '2015-12-14 16:37:18'),
(64, 'COMMANDE_ADDON_PDF', 1, 'einstein', 'chaine', 0, 'Name of PDF model of order', '2015-12-14 16:37:21'),
(65, 'COMMANDE_ADDON', 1, 'mod_commande_marbre', 'chaine', 0, 'Name of numbering numerotation rules of order', '2015-12-14 16:37:21'),
(66, 'COMMANDE_ADDON_PDF_ODT_PATH', 1, 'DOL_DATA_ROOT/doctemplates/orders', 'chaine', 0, NULL, '2015-12-14 16:37:21'),
(71, 'MAIN_MODULE_SERVICE', 1, '1', NULL, 0, NULL, '2015-12-14 16:37:24'),
(73, 'FICHEINTER_ADDON_PDF', 1, 'soleil', 'chaine', 0, NULL, '2015-12-14 16:37:26'),
(74, 'FICHEINTER_ADDON', 1, 'pacific', 'chaine', 0, NULL, '2015-12-14 16:37:26'),
(77, 'EXPEDITION_ADDON_PDF', 1, 'rouget', 'chaine', 0, 'Nom du gestionnaire de generation des bons expeditions en PDF', '2015-12-14 16:37:28'),
(78, 'EXPEDITION_ADDON_NUMBER', 1, 'mod_expedition_safor', 'chaine', 0, 'Nom du gestionnaire de numerotation des expeditions', '2015-12-14 16:37:28'),
(79, 'EXPEDITION_ADDON_PDF_ODT_PATH', 1, 'DOL_DATA_ROOT/doctemplates/shipment', 'chaine', 0, NULL, '2015-12-14 16:37:28'),
(80, 'LIVRAISON_ADDON_PDF', 1, 'typhon', 'chaine', 0, 'Nom du gestionnaire de generation des bons de reception en PDF', '2015-12-14 16:37:28'),
(81, 'LIVRAISON_ADDON_NUMBER', 1, 'mod_livraison_jade', 'chaine', 0, 'Nom du gestionnaire de numerotation des bons de reception', '2015-12-14 16:37:28'),
(82, 'LIVRAISON_ADDON_PDF_ODT_PATH', 1, 'DOL_DATA_ROOT/doctemplates/delivery', 'chaine', 0, NULL, '2015-12-14 16:37:28'),
(85, 'MAIN_VERSION_LAST_UPGRADE', 0, '3.6.5', 'chaine', 0, 'Dolibarr version for last upgrade', '2015-12-14 16:46:09'),
(152, 'FACTURE_ADDON_PDF', 1, 'crabe', 'chaine', 0, 'Name of PDF model of invoice', '2015-12-15 16:44:50'),
(154, 'FACTURE_ADDON_PDF_ODT_PATH', 1, 'DOL_DATA_ROOT/doctemplates/invoices', 'chaine', 0, NULL, '2015-12-15 16:44:50'),
(161, 'MAIN_MODULE_AGENDA', 1, '1', NULL, 0, NULL, '2015-12-15 16:45:59'),
(179, 'PROJECT_ADDON_PDF', 1, 'baleine', 'chaine', 0, 'Name of PDF/ODT project manager class', '2015-12-15 16:46:04'),
(180, 'PROJECT_ADDON', 1, 'mod_project_simple', 'chaine', 0, 'Name of Numbering Rule project manager class', '2015-12-15 16:46:04'),
(181, 'PROJECT_ADDON_PDF_ODT_PATH', 1, 'DOL_DATA_ROOT/doctemplates/projects', 'chaine', 0, NULL, '2015-12-15 16:46:04'),
(182, 'PROJECT_TASK_ADDON_PDF', 1, '', 'chaine', 0, 'Name of PDF/ODT tasks manager class', '2015-12-15 16:46:04'),
(183, 'PROJECT_TASK_ADDON', 1, 'mod_task_simple', 'chaine', 0, 'Name of Numbering Rule task manager class', '2015-12-15 16:46:04'),
(184, 'PROJECT_TASK_ADDON_PDF_ODT_PATH', 1, 'DOL_DATA_ROOT/doctemplates/tasks', 'chaine', 0, NULL, '2015-12-15 16:46:04'),
(185, 'MAIN_MODULE_MAILING', 1, '1', NULL, 0, NULL, '2015-12-15 16:46:10'),
(277, 'COMPANY_ADDON_PDF_ODT_PATH', 1, 'DOL_DATA_ROOT/doctemplates/thirdparties', 'chaine', 0, '', '2015-12-17 19:34:38'),
(278, 'MAIN_MODULE_EXPORT', 1, '1', NULL, 0, NULL, '2015-12-17 19:36:07'),
(279, 'MAIN_MODULE_IMPORT', 1, '1', NULL, 0, NULL, '2015-12-17 19:36:09'),
(304, 'MAIN_INFO_SOCIETE_LOGO', 1, 'cesgm.png', 'chaine', 0, '', '2015-12-18 20:58:27'),
(305, 'MAIN_INFO_SOCIETE_LOGO_SMALL', 1, 'cesgm_small.png', 'chaine', 0, '', '2015-12-18 20:58:27'),
(306, 'MAIN_INFO_SOCIETE_LOGO_MINI', 1, 'cesgm_mini.png', 'chaine', 0, '', '2015-12-18 20:58:27'),
(332, 'PDF_SECURITY_ENCRYPTION', 1, '1', 'chaine', 0, '', '2015-12-21 18:28:39'),
(336, 'MAIN_APPLICATION_TITLE', 1, 'CESGM', 'chaine', 1, 'added after installation. this value will affect title of application', '2015-12-21 19:10:09'),
(340, 'MAIN_INFO_SOCIETE_COUNTRY', 1, '14:CA:Canada', 'chaine', 0, '', '2015-12-21 20:36:44'),
(341, 'MAIN_INFO_SOCIETE_NOM', 1, 'CESGM Inc', 'chaine', 0, '', '2015-12-21 20:36:44'),
(342, 'MAIN_INFO_SOCIETE_ADDRESS', 1, '5181, rue d''Amiens, bureau 500', 'chaine', 0, '', '2015-12-21 20:36:44'),
(343, 'MAIN_INFO_SOCIETE_TOWN', 1, 'Montréal-Nord', 'chaine', 0, '', '2015-12-21 20:36:44'),
(344, 'MAIN_INFO_SOCIETE_ZIP', 1, 'H1G 6N9', 'chaine', 0, '', '2015-12-21 20:36:44'),
(345, 'MAIN_INFO_SOCIETE_STATE', 1, '233', 'chaine', 0, '', '2015-12-21 20:36:44'),
(346, 'MAIN_MONNAIE', 1, 'CAD', 'chaine', 0, '', '2015-12-21 20:36:44'),
(347, 'MAIN_INFO_SOCIETE_TEL', 1, '514.995.3548', 'chaine', 0, '', '2015-12-21 20:36:44'),
(348, 'MAIN_INFO_SOCIETE_FAX', 1, '514.955.6623', 'chaine', 0, '', '2015-12-21 20:36:44'),
(349, 'MAIN_INFO_SOCIETE_MAIL', 1, 'svenne@cesgm.com', 'chaine', 0, '', '2015-12-21 20:36:44'),
(350, 'MAIN_INFO_SOCIETE_WEB', 1, 'cesgm.ca', 'chaine', 0, '', '2015-12-21 20:36:44'),
(351, 'MAIN_INFO_SOCIETE_NOTE', 1, 'Corporation des Entrepreneurs Spécialisés du Grand Montéal Inc.', 'chaine', 0, '', '2015-12-21 20:36:44'),
(352, 'MAIN_INFO_SOCIETE_FORME_JURIDIQUE', 1, '0', 'chaine', 0, '', '2015-12-21 20:36:44'),
(353, 'SOCIETE_FISCAL_MONTH_START', 1, '1', 'chaine', 0, '', '2015-12-21 20:36:44'),
(354, 'FACTURE_TVAOPTION', 1, '1', 'chaine', 0, '', '2015-12-21 20:36:44'),
(355, 'FACTURE_LOCAL_TAX1_OPTION', 1, 'localtax1on', 'chaine', 0, '', '2015-12-21 20:36:44'),
(363, 'MAIN_PDF_MARGIN_RIGHT', 1, '10', 'chaine', 1, 'pdf right border', '2015-12-21 20:53:30'),
(364, 'MAIN_PDF_MARGIN_LEFT', 1, '10', 'chaine', 1, 'pdf left border', '2015-12-21 20:54:01'),
(365, 'MAIN_PDF_MARGIN_TOP', 1, '10', 'chaine', 1, 'pdf top border', '2015-12-21 20:54:14'),
(366, 'MAIN_PDF_MARGIN_BOTTOM', 1, '10', 'chaine', 1, 'pdf bottom border', '2015-12-21 20:54:51'),
(380, 'SOCIETE_CODECLIENT_ADDON', 1, 'mod_codeclient_leopard', 'chaine', 0, '', '2015-12-22 03:24:42'),
(383, 'FCKEDITOR_ENABLE_SOCIETE', 1, '1', 'yesno', 0, 'WYSIWIG for description and note (except products/services)', '2015-12-22 03:33:49'),
(384, 'FCKEDITOR_ENABLE_PRODUCTDESC', 1, '1', 'yesno', 0, 'WYSIWIG for products/services description and note', '2015-12-22 03:33:49'),
(385, 'FCKEDITOR_ENABLE_MAILING', 1, '1', 'yesno', 0, 'WYSIWIG for mass emailings', '2015-12-22 03:33:49'),
(386, 'FCKEDITOR_ENABLE_DETAILS', 1, '1', 'yesno', 0, 'WYSIWIG for products details lines for all entities', '2015-12-22 03:33:49'),
(387, 'FCKEDITOR_ENABLE_USERSIGN', 1, '1', 'yesno', 0, 'WYSIWIG for user signature', '2015-12-22 03:33:49'),
(388, 'FCKEDITOR_ENABLE_MAIL', 1, '1', 'yesno', 0, 'WYSIWIG for products details lines for all entities', '2015-12-22 03:33:49'),
(392, 'PROPALE_ADDON_PDF', 1, 'cesgm', 'chaine', 1, '', '2015-12-22 05:31:51'),
(394, 'LICENCE_RBQ', 1, '4444-4444-22', 'chaine', 1, 'licence rbq d''entrepreneur', '2015-12-22 15:49:04'),
(467, 'FACTURE_ADDON', 1, 'mod_facture_mars', 'chaine', 0, '', '2016-01-06 19:18:17'),
(471, 'ECM_AUTO_TREE_ENABLED', 1, '1', 'chaine', 0, 'Auto tree is enabled by default', '2016-01-06 19:33:15'),
(474, 'CONTRACT_ADDON', 1, 'mod_contract_magre', 'chaine', 0, '', '2016-01-06 19:45:57'),
(477, 'CONTRACT_MAGRE_MASK', 1, 'dasd{yy}{mm}-{000000}', 'chaine', 0, '', '2016-01-06 19:47:26'),
(478, 'PROPALE_ADDON', 1, 'mod_propale_saphir', 'chaine', 0, '', '2016-01-06 19:50:46'),
(491, 'MAIN_PDF_FORMAT', 1, 'USLetter', 'chaine', 0, '', '2016-01-06 20:19:24'),
(492, 'MAIN_PROFID1_IN_ADDRESS', 1, '0', 'chaine', 0, '', '2016-01-06 20:19:24'),
(493, 'MAIN_PROFID2_IN_ADDRESS', 1, '0', 'chaine', 0, '', '2016-01-06 20:19:24'),
(494, 'MAIN_PROFID3_IN_ADDRESS', 1, '0', 'chaine', 0, '', '2016-01-06 20:19:24'),
(495, 'MAIN_PROFID4_IN_ADDRESS', 1, '0', 'chaine', 0, '', '2016-01-06 20:19:24'),
(496, 'MAIN_GENERATE_DOCUMENTS_WITHOUT_VAT', 1, '1', 'chaine', 0, '', '2016-01-06 20:19:24'),
(497, 'MAIN_TVAINTRA_NOT_IN_ADDRESS', 1, '1', 'chaine', 0, '', '2016-01-06 20:19:24'),
(498, 'MAIN_GENERATE_DOCUMENTS_HIDE_DETAILS', 1, '0', 'chaine', 0, '', '2016-01-06 20:19:24'),
(499, 'MAIN_GENERATE_DOCUMENTS_HIDE_DESC', 1, '0', 'chaine', 0, '', '2016-01-06 20:19:24'),
(500, 'MAIN_GENERATE_DOCUMENTS_HIDE_REF', 1, '0', 'chaine', 0, '', '2016-01-06 20:19:24'),
(501, 'MAIN_LANG_DEFAULT', 1, 'fr_CA', 'chaine', 0, '', '2016-01-07 17:56:30'),
(502, 'MAIN_MULTILANGS', 1, '1', 'chaine', 0, '', '2016-01-07 17:56:30'),
(503, 'MAIN_SIZE_LISTE_LIMIT', 1, '25', 'chaine', 0, '', '2016-01-07 17:56:30'),
(504, 'MAIN_DISABLE_JAVASCRIPT', 1, '0', 'chaine', 0, '', '2016-01-07 17:56:30'),
(505, 'MAIN_BUTTON_HIDE_UNAUTHORIZED', 1, '1', 'chaine', 0, '', '2016-01-07 17:56:30'),
(506, 'MAIN_START_WEEK', 1, '1', 'chaine', 0, '', '2016-01-07 17:56:30'),
(507, 'MAIN_SHOW_LOGO', 1, '1', 'chaine', 0, '', '2016-01-07 17:56:30'),
(508, 'MAIN_FIRSTNAME_NAME_POSITION', 1, '0', 'chaine', 0, '', '2016-01-07 17:56:30'),
(509, 'MAIN_THEME', 1, 'bureau2crea', 'chaine', 0, '', '2016-01-07 17:56:30'),
(510, 'MAIN_SEARCHFORM_CONTACT', 1, '1', 'chaine', 0, '', '2016-01-07 17:56:30'),
(511, 'MAIN_SEARCHFORM_SOCIETE', 1, '1', 'chaine', 0, '', '2016-01-07 17:56:30'),
(512, 'MAIN_SEARCHFORM_PRODUITSERVICE', 1, '0', 'chaine', 0, '', '2016-01-07 17:56:30'),
(513, 'MAIN_SEARCHFORM_PRODUITSERVICE_SUPPLIER', 1, '0', 'chaine', 0, '', '2016-01-07 17:56:30'),
(514, 'MAIN_SEARCHFORM_ADHERENT', 1, '0', 'chaine', 0, '', '2016-01-07 17:56:30'),
(515, 'MAIN_HELPCENTER_DISABLELINK', 0, '1', 'chaine', 0, '', '2016-01-07 17:56:30'),
(516, 'MAIN_HELP_DISABLELINK', 0, '1', 'chaine', 0, '', '2016-01-07 17:56:30'),
(517, 'PROPALE_VALIDITY_DURATION', 1, '30', 'chaine', 0, '', '2016-01-12 19:19:34'),
(518, 'MAIN_MODULE_CRON', 1, '1', NULL, 0, NULL, '2016-01-12 20:12:32'),
(519, 'CRON_KEY', 0, '', 'chaine', 0, 'CRON KEY', '2016-01-12 20:12:32'),
(520, 'MAIN_DOCUMENTS_WITH_PICTURE_WIDTH', 1, '5', 'chaine', 1, '', '2016-01-15 08:00:25'),
(522, 'PROPALE_SAPHIR_MASK', 1, 'CESGM{yy}{mm}-{000000}', 'chaine', 0, '', '2016-01-15 08:12:20'),
(523, 'MAIN_DELAY_ACTIONS_TODO', 1, '7', 'chaine', 0, '', '2016-01-15 15:46:25'),
(524, 'MAIN_DELAY_PROPALS_TO_CLOSE', 1, '31', 'chaine', 0, '', '2016-01-15 15:46:25'),
(525, 'MAIN_DELAY_PROPALS_TO_BILL', 1, '7', 'chaine', 0, '', '2016-01-15 15:46:25'),
(526, 'MAIN_DELAY_NOT_ACTIVATED_SERVICES', 1, '0', 'chaine', 0, '', '2016-01-15 15:46:25'),
(527, 'MAIN_DELAY_RUNNING_SERVICES', 1, '0', 'chaine', 0, '', '2016-01-15 15:46:25'),
(528, 'MAIN_DISABLE_METEO', 1, '1', 'chaine', 0, '', '2016-01-15 15:46:25'),
(529, 'MAIN_USE_CONNECT_TIMEOUT', 1, '20', 'chaine', 0, '', '2016-01-15 15:47:07'),
(530, 'MAIN_USE_RESPONSE_TIMEOUT', 1, '30', 'chaine', 0, '', '2016-01-15 15:47:07'),
(531, 'MAIN_PROXY_USE', 1, '0', 'chaine', 0, '', '2016-01-15 15:47:07'),
(532, 'MAIN_MAX_DECIMALS_UNIT', 1, '2', 'chaine', 0, '', '2016-01-15 15:50:15'),
(533, 'MAIN_MAX_DECIMALS_TOT', 1, '2', 'chaine', 0, '', '2016-01-15 15:50:15'),
(534, 'MAIN_MAX_DECIMALS_SHOWN', 1, '2', 'chaine', 0, '', '2016-01-15 15:50:15'),
(535, 'MAIN_DISABLE_ALL_MAILS', 1, '1', 'chaine', 0, '', '2016-01-15 16:29:24'),
(536, 'MAIN_MAIL_SENDMODE', 0, 'mail', 'chaine', 0, '', '2016-01-15 16:29:24'),
(537, 'MAIN_MAIL_EMAIL_FROM', 1, 'maxim@prunus.ca', 'chaine', 0, '', '2016-01-15 16:29:24'),
(538, 'MAIN_MENU_HIDE_UNAUTHORIZED', 1, '1', 'chaine', 1, 'hide used menu link', '2016-01-15 19:17:39'),
(539, 'MAIN_UPLOAD_DOC', 1, '130000', 'chaine', 0, '', '2016-01-15 20:15:32'),
(540, 'SOCIETE_ADD_REF_IN_LIST', 1, '1', 'yesno', 0, '', '2016-01-20 19:24:32'),
(544, 'MAIN_MODULE_BANQUE', 1, '1', NULL, 0, NULL, '2016-01-25 18:00:45'),
(545, 'MAIN_MODULE_SALARIES', 1, '1', NULL, 0, NULL, '2016-01-25 18:01:08'),
(546, 'MAIN_MODULE_PRODUCT', 1, '1', NULL, 0, NULL, '2016-01-25 18:01:17'),
(547, 'PRODUCT_CODEPRODUCT_ADDON', 1, 'mod_codeproduct_leopard', 'chaine', 0, 'Module to control product codes', '2016-01-25 18:01:17'),
(548, 'AGENDA_USE_EVENT_TYPE', 1, '1', 'chaine', 0, '', '2016-01-25 18:02:13'),
(549, 'MAIN_AGENDA_ACTIONAUTO_COMPANY_CREATE', 1, '1', 'chaine', 0, '', '2016-01-25 18:02:33'),
(550, 'MAIN_AGENDA_ACTIONAUTO_COMPANY_SENTBYMAIL', 1, '1', 'chaine', 0, '', '2016-01-25 18:02:33'),
(551, 'MAIN_AGENDA_ACTIONAUTO_PROPAL_VALIDATE', 1, '1', 'chaine', 0, '', '2016-01-25 18:02:33'),
(552, 'MAIN_AGENDA_ACTIONAUTO_PROPAL_SENTBYMAIL', 1, '1', 'chaine', 0, '', '2016-01-25 18:02:33'),
(553, 'MAIN_AGENDA_ACTIONAUTO_BILL_VALIDATE', 1, '1', 'chaine', 0, '', '2016-01-25 18:02:33'),
(554, 'MAIN_AGENDA_ACTIONAUTO_BILL_PAYED', 1, '1', 'chaine', 0, '', '2016-01-25 18:02:33'),
(555, 'MAIN_AGENDA_ACTIONAUTO_BILL_CANCEL', 1, '1', 'chaine', 0, '', '2016-01-25 18:02:33'),
(556, 'MAIN_AGENDA_ACTIONAUTO_BILL_SENTBYMAIL', 1, '1', 'chaine', 0, '', '2016-01-25 18:02:33'),
(557, 'MAIN_AGENDA_ACTIONAUTO_BILL_UNVALIDATE', 1, '1', 'chaine', 0, '', '2016-01-25 18:02:33'),
(558, 'MAIN_AGENDA_ACTIONAUTO_PROPAL_CLOSE_SIGNED', 1, '1', 'chaine', 0, '', '2016-01-25 18:02:33'),
(559, 'MAIN_AGENDA_ACTIONAUTO_PROPAL_CLOSE_REFUSED', 1, '1', 'chaine', 0, '', '2016-01-25 18:02:33'),
(1230, 'MAIN_MODULE_SOCIETE', 1, '1', NULL, 0, NULL, '2016-02-04 17:58:20'),
(1272, 'MYMODULE_IT_WORKS', 1, '1', 'chaine', 1, 'A constant vor my module', '2016-02-08 21:03:35'),
(1273, 'MAIN_MODULE_ESTIMATE', 1, '1', NULL, 0, NULL, '2016-02-08 21:03:35');

-- --------------------------------------------------------

--
-- Table structure for table `test_contrat`
--

DROP TABLE IF EXISTS `test_contrat`;
CREATE TABLE `test_contrat` (
  `rowid` int(11) NOT NULL,
  `ref` varchar(30) DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datec` datetime DEFAULT NULL,
  `date_contrat` datetime DEFAULT NULL,
  `statut` smallint(6) DEFAULT '0',
  `mise_en_service` datetime DEFAULT NULL,
  `fin_validite` datetime DEFAULT NULL,
  `date_cloture` datetime DEFAULT NULL,
  `fk_soc` int(11) NOT NULL,
  `fk_projet` int(11) DEFAULT NULL,
  `fk_commercial_signature` int(11) NOT NULL,
  `fk_commercial_suivi` int(11) NOT NULL,
  `fk_user_author` int(11) NOT NULL DEFAULT '0',
  `fk_user_mise_en_service` int(11) DEFAULT NULL,
  `fk_user_cloture` int(11) DEFAULT NULL,
  `note_private` text,
  `note_public` text,
  `import_key` varchar(14) DEFAULT NULL,
  `extraparams` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_contrat`
--

INSERT INTO `test_contrat` (`rowid`, `ref`, `entity`, `tms`, `datec`, `date_contrat`, `statut`, `mise_en_service`, `fin_validite`, `date_cloture`, `fk_soc`, `fk_projet`, `fk_commercial_signature`, `fk_commercial_suivi`, `fk_user_author`, `fk_user_mise_en_service`, `fk_user_cloture`, `note_private`, `note_public`, `import_key`, `extraparams`) VALUES
(1, 'dasd1601-000001', 1, '2016-01-06 19:56:49', '2016-01-06 20:55:57', '2016-01-06 00:00:00', 1, NULL, NULL, NULL, 6, NULL, 1, 1, 1, NULL, NULL, 'blabla note', NULL, NULL, NULL),
(2, 'dasd1601-000002', 1, '2016-01-20 17:16:56', '2016-01-20 18:16:35', '2016-01-20 00:00:00', 1, NULL, NULL, NULL, 6, NULL, 2, 2, 2, NULL, NULL, 'blabla note', NULL, NULL, NULL),
(3, 'dasd1601-000003', 1, '2016-01-20 17:18:10', '2016-01-20 18:17:43', '2016-01-20 00:00:00', 1, NULL, NULL, NULL, 6, NULL, 2, 2, 2, NULL, NULL, 'blabla note', NULL, NULL, NULL),
(8, '(PROV8)', 1, '2016-01-20 18:43:38', '2016-01-20 19:43:38', '2016-01-20 00:00:00', 0, NULL, NULL, NULL, 10, NULL, 2, 2, 2, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `test_contratdet`
--

DROP TABLE IF EXISTS `test_contratdet`;
CREATE TABLE `test_contratdet` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_contrat` int(11) NOT NULL,
  `fk_product` int(11) DEFAULT NULL,
  `statut` smallint(6) DEFAULT '0',
  `label` text,
  `description` text,
  `fk_remise_except` int(11) DEFAULT NULL,
  `date_commande` datetime DEFAULT NULL,
  `date_ouverture_prevue` datetime DEFAULT NULL,
  `date_ouverture` datetime DEFAULT NULL,
  `date_fin_validite` datetime DEFAULT NULL,
  `date_cloture` datetime DEFAULT NULL,
  `tva_tx` double(6,3) DEFAULT '0.000',
  `localtax1_tx` double(6,3) DEFAULT '0.000',
  `localtax1_type` varchar(10) DEFAULT NULL,
  `localtax2_tx` double(6,3) DEFAULT '0.000',
  `localtax2_type` varchar(10) DEFAULT NULL,
  `qty` double NOT NULL,
  `remise_percent` double DEFAULT '0',
  `subprice` double(24,8) DEFAULT '0.00000000',
  `price_ht` double DEFAULT NULL,
  `remise` double DEFAULT '0',
  `total_ht` double(24,8) DEFAULT '0.00000000',
  `total_tva` double(24,8) DEFAULT '0.00000000',
  `total_localtax1` double(24,8) DEFAULT '0.00000000',
  `total_localtax2` double(24,8) DEFAULT '0.00000000',
  `total_ttc` double(24,8) DEFAULT '0.00000000',
  `product_type` int(11) DEFAULT '1',
  `info_bits` int(11) DEFAULT '0',
  `buy_price_ht` double(24,8) DEFAULT NULL,
  `fk_product_fournisseur_price` int(11) DEFAULT NULL,
  `fk_user_author` int(11) NOT NULL DEFAULT '0',
  `fk_user_ouverture` int(11) DEFAULT NULL,
  `fk_user_cloture` int(11) DEFAULT NULL,
  `commentaire` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_contratdet`
--

INSERT INTO `test_contratdet` (`rowid`, `tms`, `fk_contrat`, `fk_product`, `statut`, `label`, `description`, `fk_remise_except`, `date_commande`, `date_ouverture_prevue`, `date_ouverture`, `date_fin_validite`, `date_cloture`, `tva_tx`, `localtax1_tx`, `localtax1_type`, `localtax2_tx`, `localtax2_type`, `qty`, `remise_percent`, `subprice`, `price_ht`, `remise`, `total_ht`, `total_tva`, `total_localtax1`, `total_localtax2`, `total_ttc`, `product_type`, `info_bits`, `buy_price_ht`, `fk_product_fournisseur_price`, `fk_user_author`, `fk_user_ouverture`, `fk_user_cloture`, `commentaire`) VALUES
(1, '2016-01-06 19:57:03', 1, NULL, 5, '', 'gfknsk', NULL, NULL, NULL, NULL, NULL, '2016-01-06 20:57:03', 5.000, 9.975, '1', 0.000, '0', 1, 0, 2345.00000000, 2345, NULL, 2345.00000000, 117.25000000, 233.91000000, 0.00000000, 2696.16000000, 1, 0, 0.00000000, NULL, 0, NULL, 1, ''),
(2, '2016-01-20 17:16:35', 2, NULL, 0, '', 'gfknsk', NULL, NULL, NULL, NULL, NULL, NULL, 5.000, 9.975, '1', 0.000, '0', 1, 0, 2345.00000000, 2345, 0, 2345.00000000, 117.25000000, 233.91000000, 0.00000000, 2696.16000000, 1, 0, 0.00000000, NULL, 0, NULL, NULL, NULL),
(3, '2016-01-20 17:18:38', 3, NULL, 5, '', 'gfknsk', NULL, NULL, NULL, NULL, NULL, '2016-01-20 18:18:38', 5.000, 9.975, '1', 0.000, '0', 1, 0, 2345.00000000, 2345, NULL, 2345.00000000, 117.25000000, 233.91000000, 0.00000000, 2696.16000000, 1, 0, 0.00000000, NULL, 0, NULL, 2, ''),
(4, '2016-01-20 17:18:38', 3, NULL, 5, '', 'fwgesjb', NULL, NULL, NULL, NULL, NULL, '2016-01-20 18:18:38', 5.000, 9.975, '1', 0.000, '0', 1, 0, 123.00000000, 123, NULL, 123.00000000, 6.15000000, 12.27000000, 0.00000000, 141.42000000, 1, 0, 0.00000000, NULL, 0, NULL, 2, ''),
(7, '2016-01-20 18:43:38', 8, NULL, 0, '', '&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&quot;', NULL, NULL, NULL, NULL, NULL, NULL, 5.000, 9.975, '1', 0.000, '0', 1, 0, 3000.00000000, 3000, 0, 3000.00000000, 150.00000000, 299.25000000, 0.00000000, 3449.25000000, 1, 0, 0.00000000, NULL, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `test_contratdet_log`
--

DROP TABLE IF EXISTS `test_contratdet_log`;
CREATE TABLE `test_contratdet_log` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_contratdet` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `statut` smallint(6) NOT NULL,
  `fk_user_author` int(11) NOT NULL,
  `commentaire` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_contrat_extrafields`
--

DROP TABLE IF EXISTS `test_contrat_extrafields`;
CREATE TABLE `test_contrat_extrafields` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_cotisation`
--

DROP TABLE IF EXISTS `test_cotisation`;
CREATE TABLE `test_cotisation` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datec` datetime DEFAULT NULL,
  `fk_adherent` int(11) DEFAULT NULL,
  `dateadh` datetime DEFAULT NULL,
  `datef` date DEFAULT NULL,
  `cotisation` double DEFAULT NULL,
  `fk_bank` int(11) DEFAULT NULL,
  `note` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_cronjob`
--

DROP TABLE IF EXISTS `test_cronjob`;
CREATE TABLE `test_cronjob` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datec` datetime DEFAULT NULL,
  `jobtype` varchar(10) NOT NULL,
  `label` text NOT NULL,
  `command` varchar(255) DEFAULT NULL,
  `classesname` varchar(255) DEFAULT NULL,
  `objectname` varchar(255) DEFAULT NULL,
  `methodename` varchar(255) DEFAULT NULL,
  `params` text NOT NULL,
  `md5params` varchar(32) DEFAULT NULL,
  `module_name` varchar(255) DEFAULT NULL,
  `priority` int(11) DEFAULT '0',
  `datelastrun` datetime DEFAULT NULL,
  `datenextrun` datetime DEFAULT NULL,
  `datestart` datetime DEFAULT NULL,
  `dateend` datetime DEFAULT NULL,
  `datelastresult` datetime DEFAULT NULL,
  `lastresult` text,
  `lastoutput` text,
  `unitfrequency` int(11) NOT NULL DEFAULT '0',
  `frequency` int(11) NOT NULL DEFAULT '0',
  `nbrun` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_mod` int(11) DEFAULT NULL,
  `note` text,
  `libname` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_c_actioncomm`
--

DROP TABLE IF EXISTS `test_c_actioncomm`;
CREATE TABLE `test_c_actioncomm` (
  `id` int(11) NOT NULL,
  `code` varchar(12) NOT NULL,
  `type` varchar(10) NOT NULL DEFAULT 'system',
  `libelle` varchar(48) NOT NULL,
  `module` varchar(16) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `todo` tinyint(4) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_c_actioncomm`
--

INSERT INTO `test_c_actioncomm` (`id`, `code`, `type`, `libelle`, `module`, `active`, `todo`, `position`) VALUES
(1, 'AC_TEL', 'system', 'Phone call', NULL, 1, NULL, 2),
(2, 'AC_FAX', 'system', 'Send Fax', NULL, 1, NULL, 3),
(3, 'AC_PROP', 'systemauto', 'Send commercial proposal by email', 'propal', 0, NULL, 10),
(4, 'AC_EMAIL', 'system', 'Send Email', NULL, 1, NULL, 4),
(5, 'AC_RDV', 'system', 'Rendez-vous', NULL, 1, NULL, 1),
(8, 'AC_COM', 'systemauto', 'Send customer order by email', 'order', 0, NULL, 8),
(9, 'AC_FAC', 'systemauto', 'Send customer invoice by email', 'invoice', 0, NULL, 6),
(10, 'AC_SHIP', 'systemauto', 'Send shipping by email', 'shipping', 0, NULL, 11),
(30, 'AC_SUP_ORD', 'systemauto', 'Send supplier order by email', 'order_supplier', 0, NULL, 9),
(31, 'AC_SUP_INV', 'systemauto', 'Send supplier invoice by email', 'invoice_supplier', 0, NULL, 7),
(40, 'AC_OTH_AUTO', 'systemauto', 'Other (automatically inserted events)', NULL, 1, NULL, 20),
(50, 'AC_OTH', 'system', 'Other (manually inserted events)', NULL, 1, NULL, 5);

-- --------------------------------------------------------

--
-- Table structure for table `test_c_action_trigger`
--

DROP TABLE IF EXISTS `test_c_action_trigger`;
CREATE TABLE `test_c_action_trigger` (
  `rowid` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `label` varchar(128) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `elementtype` varchar(16) NOT NULL,
  `rang` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_c_action_trigger`
--

INSERT INTO `test_c_action_trigger` (`rowid`, `code`, `label`, `description`, `elementtype`, `rang`) VALUES
(1, 'FICHINTER_VALIDATE', 'Intervention validated', 'Executed when a intervention is validated', 'ficheinter', 19),
(2, 'BILL_VALIDATE', 'Customer invoice validated', 'Executed when a customer invoice is approved', 'facture', 6),
(3, 'ORDER_SUPPLIER_APPROVE', 'Supplier order request approved', 'Executed when a supplier order is approved', 'order_supplier', 12),
(4, 'ORDER_SUPPLIER_REFUSE', 'Supplier order request refused', 'Executed when a supplier order is refused', 'order_supplier', 13),
(5, 'ORDER_VALIDATE', 'Customer order validate', 'Executed when a customer order is validated', 'commande', 4),
(6, 'PROPAL_VALIDATE', 'Customer proposal validated', 'Executed when a commercial proposal is validated', 'propal', 2),
(9, 'COMPANY_SENTBYMAIL', 'Mails sent from third party card', 'Executed when you send email from third party card', 'societe', 1),
(10, 'COMPANY_CREATE', 'Third party created', 'Executed when a third party is created', 'societe', 1),
(11, 'CONTRACT_VALIDATE', 'Contract validated', 'Executed when a contract is validated', 'contrat', 18),
(12, 'PROPAL_SENTBYMAIL', 'Commercial proposal sent by mail', 'Executed when a commercial proposal is sent by mail', 'propal', 3),
(13, 'ORDER_SENTBYMAIL', 'Customer order sent by mail', 'Executed when a customer order is sent by mail ', 'commande', 5),
(14, 'BILL_PAYED', 'Customer invoice payed', 'Executed when a customer invoice is payed', 'facture', 7),
(15, 'BILL_CANCEL', 'Customer invoice canceled', 'Executed when a customer invoice is conceled', 'facture', 8),
(16, 'BILL_SENTBYMAIL', 'Customer invoice sent by mail', 'Executed when a customer invoice is sent by mail', 'facture', 9),
(17, 'ORDER_SUPPLIER_VALIDATE', 'Supplier order validated', 'Executed when a supplier order is validated', 'order_supplier', 11),
(18, 'ORDER_SUPPLIER_SENTBYMAIL', 'Supplier order sent by mail', 'Executed when a supplier order is sent by mail', 'order_supplier', 14),
(19, 'BILL_SUPPLIER_VALIDATE', 'Supplier invoice validated', 'Executed when a supplier invoice is validated', 'invoice_supplier', 15),
(20, 'BILL_SUPPLIER_PAYED', 'Supplier invoice payed', 'Executed when a supplier invoice is payed', 'invoice_supplier', 16),
(21, 'BILL_SUPPLIER_SENTBYMAIL', 'Supplier invoice sent by mail', 'Executed when a supplier invoice is sent by mail', 'invoice_supplier', 17),
(22, 'SHIPPING_VALIDATE', 'Shipping validated', 'Executed when a shipping is validated', 'shipping', 20),
(23, 'SHIPPING_SENTBYMAIL', 'Shipping sent by mail', 'Executed when a shipping is sent by mail', 'shipping', 21),
(24, 'MEMBER_VALIDATE', 'Member validated', 'Executed when a member is validated', 'member', 22),
(25, 'MEMBER_SUBSCRIPTION', 'Member subscribed', 'Executed when a member is subscribed', 'member', 23),
(26, 'MEMBER_RESILIATE', 'Member resiliated', 'Executed when a member is resiliated', 'member', 24),
(27, 'MEMBER_DELETE', 'Member deleted', 'Executed when a member is deleted', 'member', 25),
(28, 'BILL_UNVALIDATE', 'Customer invoice unvalidated', 'Executed when a customer invoice status set back to draft', 'facture', 10),
(29, 'FICHINTER_SENTBYMAIL', 'Intervention sent by mail', 'Executed when a intervention is sent by mail', 'ficheinter', 29),
(30, 'PROJECT_CREATE', 'Project creation', 'Executed when a project is created', 'project', 30),
(31, 'PROPAL_CLOSE_SIGNED', 'Customer proposal closed signed', 'Executed when a customer proposal is closed signed', 'propal', 31),
(32, 'PROPAL_CLOSE_REFUSED', 'Customer proposal closed refused', 'Executed when a customer proposal is closed refused', 'propal', 32),
(33, 'BILL_SUPPLIER_CANCELED', 'Supplier invoice cancelled', 'Executed when a supplier invoice is cancelled', 'invoice_supplier', 33),
(34, 'MEMBER_MODIFY', 'Member modified', 'Executed when a member is modified', 'member', 34),
(35, 'TASK_CREATE', 'Task created', 'Executed when a project task is created', 'project', 35),
(36, 'TASK_MODIFY', 'Task modified', 'Executed when a project task is modified', 'project', 36),
(37, 'TASK_DELETE', 'Task deleted', 'Executed when a project task is deleted', 'project', 37);

-- --------------------------------------------------------

--
-- Table structure for table `test_c_availability`
--

DROP TABLE IF EXISTS `test_c_availability`;
CREATE TABLE `test_c_availability` (
  `rowid` int(11) NOT NULL,
  `code` varchar(30) NOT NULL,
  `label` varchar(60) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_c_availability`
--

INSERT INTO `test_c_availability` (`rowid`, `code`, `label`, `active`) VALUES
(1, 'AV_NOW', 'Immediate', 1),
(2, 'AV_1W', '1 week', 1),
(3, 'AV_2W', '2 weeks', 1),
(4, 'AV_3W', '3 weeks', 1);

-- --------------------------------------------------------

--
-- Table structure for table `test_c_barcode_type`
--

DROP TABLE IF EXISTS `test_c_barcode_type`;
CREATE TABLE `test_c_barcode_type` (
  `rowid` int(11) NOT NULL,
  `code` varchar(16) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `libelle` varchar(50) NOT NULL,
  `coder` varchar(16) NOT NULL,
  `example` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_c_chargesociales`
--

DROP TABLE IF EXISTS `test_c_chargesociales`;
CREATE TABLE `test_c_chargesociales` (
  `id` int(11) NOT NULL,
  `libelle` varchar(80) DEFAULT NULL,
  `deductible` smallint(6) NOT NULL DEFAULT '0',
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `code` varchar(12) NOT NULL,
  `accountancy_code` varchar(24) DEFAULT NULL,
  `fk_pays` int(11) NOT NULL DEFAULT '1',
  `module` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_c_chargesociales`
--

INSERT INTO `test_c_chargesociales` (`id`, `libelle`, `deductible`, `active`, `code`, `accountancy_code`, `fk_pays`, `module`) VALUES
(1, 'Allocations familiales', 1, 1, 'TAXFAM', NULL, 1, NULL),
(2, 'CSG Deductible', 1, 1, 'TAXCSGD', NULL, 1, NULL),
(3, 'CSG/CRDS NON Deductible', 0, 1, 'TAXCSGND', NULL, 1, NULL),
(10, 'Taxe apprentissage', 0, 1, 'TAXAPP', NULL, 1, NULL),
(11, 'Taxe professionnelle', 0, 1, 'TAXPRO', NULL, 1, NULL),
(12, 'Cotisation fonciere des entreprises', 0, 1, 'TAXCFE', NULL, 1, NULL),
(13, 'Cotisation sur la valeur ajoutee des entreprises', 0, 1, 'TAXCVAE', NULL, 1, NULL),
(20, 'Impots locaux/fonciers', 0, 1, 'TAXFON', NULL, 1, NULL),
(25, 'Impots revenus', 0, 1, 'TAXREV', NULL, 1, NULL),
(30, 'Assurance Sante', 0, 1, 'TAXSECU', NULL, 1, NULL),
(40, 'Mutuelle', 0, 1, 'TAXMUT', NULL, 1, NULL),
(50, 'Assurance vieillesse', 0, 1, 'TAXRET', NULL, 1, NULL),
(60, 'Assurance Chomage', 0, 1, 'TAXCHOM', NULL, 1, NULL),
(201, 'ONSS', 1, 1, 'TAXBEONSS', NULL, 2, NULL),
(210, 'Precompte professionnel', 1, 1, 'TAXBEPREPRO', NULL, 2, NULL),
(220, 'Prime existence', 1, 1, 'TAXBEPRIEXI', NULL, 2, NULL),
(230, 'Precompte immobilier', 1, 1, 'TAXBEPREIMMO', NULL, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `test_c_civilite`
--

DROP TABLE IF EXISTS `test_c_civilite`;
CREATE TABLE `test_c_civilite` (
  `rowid` int(11) NOT NULL,
  `code` varchar(6) NOT NULL,
  `civilite` varchar(50) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `module` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_c_civilite`
--

INSERT INTO `test_c_civilite` (`rowid`, `code`, `civilite`, `active`, `module`) VALUES
(1, 'MME', 'Madame', 1, NULL),
(3, 'MR', 'Monsieur', 1, NULL),
(5, 'MLE', 'Mademoiselle', 1, NULL),
(7, 'MTRE', 'Maître', 1, NULL),
(8, 'DR', 'Docteur', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `test_c_currencies`
--

DROP TABLE IF EXISTS `test_c_currencies`;
CREATE TABLE `test_c_currencies` (
  `code_iso` varchar(3) NOT NULL,
  `label` varchar(64) NOT NULL,
  `unicode` varchar(32) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_c_currencies`
--

INSERT INTO `test_c_currencies` (`code_iso`, `label`, `unicode`, `active`) VALUES
('AED', 'United Arab Emirates Dirham', NULL, 0),
('AFN', 'Afghanistan Afghani', '[1547]', 0),
('ALL', 'Albania Lek', '[76,101,107]', 0),
('ANG', 'Netherlands Antilles Guilder', '[402]', 0),
('ARP', 'Pesos argentins', NULL, 0),
('ARS', 'Argentino Peso', '[36]', 0),
('ATS', 'Shiliing autrichiens', NULL, 0),
('AUD', 'Australia Dollar', '[36]', 0),
('AWG', 'Aruba Guilder', '[402]', 0),
('AZN', 'Azerbaijan New Manat', '[1084,1072,1085]', 0),
('BAM', 'Bosnia and Herzegovina Convertible Marka', '[75,77]', 0),
('BBD', 'Barbados Dollar', '[36]', 0),
('BEF', 'Francs belges', NULL, 0),
('BGN', 'Bulgaria Lev', '[1083,1074]', 0),
('BMD', 'Bermuda Dollar', '[36]', 0),
('BND', 'Brunei Darussalam Dollar', '[36]', 0),
('BOB', 'Bolivia Boliviano', '[36,98]', 0),
('BRL', 'Brazil Real', '[82,36]', 0),
('BSD', 'Bahamas Dollar', '[36]', 0),
('BWP', 'Botswana Pula', '[80]', 0),
('BYR', 'Belarus Ruble', '[112,46]', 0),
('BZD', 'Belize Dollar', '[66,90,36]', 0),
('CAD', 'Canada Dollar', '[36]', 1),
('CHF', 'Switzerland Franc', '[67,72,70]', 0),
('CLP', 'Chile Peso', '[36]', 0),
('CNY', 'China Yuan Renminbi', '[165]', 0),
('COP', 'Colombia Peso', '[36]', 0),
('CRC', 'Costa Rica Colon', '[8353]', 0),
('CUP', 'Cuba Peso', '[8369]', 0),
('CZK', 'Czech Republic Koruna', '[75,269]', 0),
('DEM', 'Deutsch mark', NULL, 0),
('DKK', 'Denmark Krone', '[107,114]', 0),
('DOP', 'Dominican Republic Peso', '[82,68,36]', 0),
('DZD', 'Algeria Dinar', NULL, 0),
('EEK', 'Estonia Kroon', '[107,114]', 0),
('EGP', 'Egypt Pound', '[163]', 0),
('ESP', 'Pesete', NULL, 0),
('EUR', 'Euro Member Countries', '[8364]', 0),
('FIM', 'Mark finlandais', NULL, 0),
('FJD', 'Fiji Dollar', '[36]', 0),
('FKP', 'Falkland Islands (Malvinas) Pound', '[163]', 0),
('FRF', 'Francs francais', NULL, 0),
('GBP', 'United Kingdom Pound', '[163]', 0),
('GGP', 'Guernsey Pound', '[163]', 0),
('GHC', 'Ghana Cedis', '[162]', 0),
('GIP', 'Gibraltar Pound', '[163]', 0),
('GRD', 'Drachme (grece)', NULL, 0),
('GTQ', 'Guatemala Quetzal', '[81]', 0),
('GYD', 'Guyana Dollar', '[36]', 0),
('HKD', 'Hong Kong Dollar', '[36]', 0),
('HNL', 'Honduras Lempira', '[76]', 0),
('HRK', 'Croatia Kuna', '[107,110]', 0),
('HUF', 'Hungary Forint', '[70,116]', 0),
('IDR', 'Indonesia Rupiah', '[82,112]', 0),
('IEP', 'Livres irlandaises', NULL, 0),
('ILS', 'Israel Shekel', '[8362]', 0),
('IMP', 'Isle of Man Pound', '[163]', 0),
('INR', 'India Rupee', NULL, 0),
('IRR', 'Iran Rial', '[65020]', 0),
('ISK', 'Iceland Krona', '[107,114]', 0),
('ITL', 'Lires', NULL, 0),
('JEP', 'Jersey Pound', '[163]', 0),
('JMD', 'Jamaica Dollar', '[74,36]', 0),
('JPY', 'Japan Yen', '[165]', 0),
('KES', 'Kenya Shilling', NULL, 0),
('KGS', 'Kyrgyzstan Som', '[1083,1074]', 0),
('KHR', 'Cambodia Riel', '[6107]', 0),
('KPW', 'Korea (North) Won', '[8361]', 0),
('KRW', 'Korea (South) Won', '[8361]', 0),
('KYD', 'Cayman Islands Dollar', '[36]', 0),
('KZT', 'Kazakhstan Tenge', '[1083,1074]', 0),
('LAK', 'Laos Kip', '[8365]', 0),
('LBP', 'Lebanon Pound', '[163]', 0),
('LKR', 'Sri Lanka Rupee', '[8360]', 0),
('LRD', 'Liberia Dollar', '[36]', 0),
('LTL', 'Lithuania Litas', '[76,116]', 0),
('LUF', 'Francs luxembourgeois', NULL, 0),
('LVL', 'Latvia Lat', '[76,115]', 0),
('MAD', 'Morocco Dirham', NULL, 0),
('MKD', 'Macedonia Denar', '[1076,1077,1085]', 0),
('MNT', 'Mongolia Tughrik', '[8366]', 0),
('MRO', 'Mauritania Ouguiya', NULL, 0),
('MUR', 'Mauritius Rupee', '[8360]', 0),
('MXN', 'Mexico Peso', '[36]', 0),
('MXP', 'Pesos Mexicans', NULL, 0),
('MYR', 'Malaysia Ringgit', '[82,77]', 0),
('MZN', 'Mozambique Metical', '[77,84]', 0),
('NAD', 'Namibia Dollar', '[36]', 0),
('NGN', 'Nigeria Naira', '[8358]', 0),
('NIO', 'Nicaragua Cordoba', '[67,36]', 0),
('NLG', 'Florins', NULL, 0),
('NOK', 'Norway Krone', '[107,114]', 0),
('NPR', 'Nepal Rupee', '[8360]', 0),
('NZD', 'New Zealand Dollar', '[36]', 0),
('OMR', 'Oman Rial', '[65020]', 0),
('PAB', 'Panama Balboa', '[66,47,46]', 0),
('PEN', 'Peru Nuevo Sol', '[83,47,46]', 0),
('PHP', 'Philippines Peso', '[8369]', 0),
('PKR', 'Pakistan Rupee', '[8360]', 0),
('PLN', 'Poland Zloty', '[122,322]', 0),
('PTE', 'Escudos', NULL, 0),
('PYG', 'Paraguay Guarani', '[71,115]', 0),
('QAR', 'Qatar Riyal', '[65020]', 0),
('RON', 'Romania New Leu', '[108,101,105]', 0),
('RSD', 'Serbia Dinar', '[1044,1080,1085,46]', 0),
('RUB', 'Russia Ruble', '[1088,1091,1073]', 0),
('SAR', 'Saudi Arabia Riyal', '[65020]', 0),
('SBD', 'Solomon Islands Dollar', '[36]', 0),
('SCR', 'Seychelles Rupee', '[8360]', 0),
('SEK', 'Sweden Krona', '[107,114]', 0),
('SGD', 'Singapore Dollar', '[36]', 0),
('SHP', 'Saint Helena Pound', '[163]', 0),
('SKK', 'Couronnes slovaques', NULL, 0),
('SOS', 'Somalia Shilling', '[83]', 0),
('SRD', 'Suriname Dollar', '[36]', 0),
('SUR', 'Rouble', NULL, 0),
('SVC', 'El Salvador Colon', '[36]', 0),
('SYP', 'Syria Pound', '[163]', 0),
('THB', 'Thailand Baht', '[3647]', 0),
('TND', 'Tunisia Dinar', NULL, 0),
('TRL', 'Turkey Lira', '[84,76]', 0),
('TRY', 'Turkey Lira', '[8356]', 0),
('TTD', 'Trinidad and Tobago Dollar', '[84,84,36]', 0),
('TVD', 'Tuvalu Dollar', '[36]', 0),
('TWD', 'Taiwan New Dollar', '[78,84,36]', 0),
('UAH', 'Ukraine Hryvna', '[8372]', 0),
('USD', 'United States Dollar', '[36]', 0),
('UYU', 'Uruguay Peso', '[36,85]', 0),
('UZS', 'Uzbekistan Som', '[1083,1074]', 0),
('VEF', 'Venezuela Bolivar Fuerte', '[66,115]', 0),
('VND', 'Viet Nam Dong', '[8363]', 0),
('XAF', 'Communaute Financiere Africaine (BEAC) CFA Franc', NULL, 0),
('XCD', 'East Caribbean Dollar', '[36]', 0),
('XEU', 'Ecus', NULL, 0),
('XOF', 'Communaute Financiere Africaine (BCEAO) Franc', NULL, 0),
('YER', 'Yemen Rial', '[65020]', 0),
('ZAR', 'South Africa Rand', '[82]', 0),
('ZWD', 'Zimbabwe Dollar', '[90,36]', 0);

-- --------------------------------------------------------

--
-- Table structure for table `test_c_departements`
--

DROP TABLE IF EXISTS `test_c_departements`;
CREATE TABLE `test_c_departements` (
  `rowid` int(11) NOT NULL,
  `code_departement` varchar(6) NOT NULL,
  `fk_region` int(11) DEFAULT NULL,
  `cheflieu` varchar(50) DEFAULT NULL,
  `tncc` int(11) DEFAULT NULL,
  `ncc` varchar(50) DEFAULT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_c_departements`
--

INSERT INTO `test_c_departements` (`rowid`, `code_departement`, `fk_region`, `cheflieu`, `tncc`, `ncc`, `nom`, `active`) VALUES
(1, '0', 0, '0', 0, '-', '-', 1),
(2, '01', 82, '01053', 5, 'AIN', 'Ain', 1),
(3, '02', 22, '02408', 5, 'AISNE', 'Aisne', 1),
(4, '03', 83, '03190', 5, 'ALLIER', 'Allier', 1),
(5, '04', 93, '04070', 4, 'ALPES-DE-HAUTE-PROVENCE', 'Alpes-de-Haute-Provence', 1),
(6, '05', 93, '05061', 4, 'HAUTES-ALPES', 'Hautes-Alpes', 1),
(7, '06', 93, '06088', 4, 'ALPES-MARITIMES', 'Alpes-Maritimes', 1),
(8, '07', 82, '07186', 5, 'ARDECHE', 'Ardèche', 1),
(9, '08', 21, '08105', 4, 'ARDENNES', 'Ardennes', 1),
(10, '09', 73, '09122', 5, 'ARIEGE', 'Ariège', 1),
(11, '10', 21, '10387', 5, 'AUBE', 'Aube', 1),
(12, '11', 91, '11069', 5, 'AUDE', 'Aude', 1),
(13, '12', 73, '12202', 5, 'AVEYRON', 'Aveyron', 1),
(14, '13', 93, '13055', 4, 'BOUCHES-DU-RHONE', 'Bouches-du-Rhône', 1),
(15, '14', 25, '14118', 2, 'CALVADOS', 'Calvados', 1),
(16, '15', 83, '15014', 2, 'CANTAL', 'Cantal', 1),
(17, '16', 54, '16015', 3, 'CHARENTE', 'Charente', 1),
(18, '17', 54, '17300', 3, 'CHARENTE-MARITIME', 'Charente-Maritime', 1),
(19, '18', 24, '18033', 2, 'CHER', 'Cher', 1),
(20, '19', 74, '19272', 3, 'CORREZE', 'Corrèze', 1),
(21, '2A', 94, '2A004', 3, 'CORSE-DU-SUD', 'Corse-du-Sud', 1),
(22, '2B', 94, '2B033', 3, 'HAUTE-CORSE', 'Haute-Corse', 1),
(23, '21', 26, '21231', 3, 'COTE-D OR', 'Côte-d Or', 1),
(24, '22', 53, '22278', 4, 'COTES-D ARMOR', 'Côtes-d Armor', 1),
(25, '23', 74, '23096', 3, 'CREUSE', 'Creuse', 1),
(26, '24', 72, '24322', 3, 'DORDOGNE', 'Dordogne', 1),
(27, '25', 43, '25056', 2, 'DOUBS', 'Doubs', 1),
(28, '26', 82, '26362', 3, 'DROME', 'Drôme', 1),
(29, '27', 23, '27229', 5, 'EURE', 'Eure', 1),
(30, '28', 24, '28085', 1, 'EURE-ET-LOIR', 'Eure-et-Loir', 1),
(31, '29', 53, '29232', 2, 'FINISTERE', 'Finistère', 1),
(32, '30', 91, '30189', 2, 'GARD', 'Gard', 1),
(33, '31', 73, '31555', 3, 'HAUTE-GARONNE', 'Haute-Garonne', 1),
(34, '32', 73, '32013', 2, 'GERS', 'Gers', 1),
(35, '33', 72, '33063', 3, 'GIRONDE', 'Gironde', 1),
(36, '34', 91, '34172', 5, 'HERAULT', 'Hérault', 1),
(37, '35', 53, '35238', 1, 'ILLE-ET-VILAINE', 'Ille-et-Vilaine', 1),
(38, '36', 24, '36044', 5, 'INDRE', 'Indre', 1),
(39, '37', 24, '37261', 1, 'INDRE-ET-LOIRE', 'Indre-et-Loire', 1),
(40, '38', 82, '38185', 5, 'ISERE', 'Isère', 1),
(41, '39', 43, '39300', 2, 'JURA', 'Jura', 1),
(42, '40', 72, '40192', 4, 'LANDES', 'Landes', 1),
(43, '41', 24, '41018', 0, 'LOIR-ET-CHER', 'Loir-et-Cher', 1),
(44, '42', 82, '42218', 3, 'LOIRE', 'Loire', 1),
(45, '43', 83, '43157', 3, 'HAUTE-LOIRE', 'Haute-Loire', 1),
(46, '44', 52, '44109', 3, 'LOIRE-ATLANTIQUE', 'Loire-Atlantique', 1),
(47, '45', 24, '45234', 2, 'LOIRET', 'Loiret', 1),
(48, '46', 73, '46042', 2, 'LOT', 'Lot', 1),
(49, '47', 72, '47001', 0, 'LOT-ET-GARONNE', 'Lot-et-Garonne', 1),
(50, '48', 91, '48095', 3, 'LOZERE', 'Lozère', 1),
(51, '49', 52, '49007', 0, 'MAINE-ET-LOIRE', 'Maine-et-Loire', 1),
(52, '50', 25, '50502', 3, 'MANCHE', 'Manche', 1),
(53, '51', 21, '51108', 3, 'MARNE', 'Marne', 1),
(54, '52', 21, '52121', 3, 'HAUTE-MARNE', 'Haute-Marne', 1),
(55, '53', 52, '53130', 3, 'MAYENNE', 'Mayenne', 1),
(56, '54', 41, '54395', 0, 'MEURTHE-ET-MOSELLE', 'Meurthe-et-Moselle', 1),
(57, '55', 41, '55029', 3, 'MEUSE', 'Meuse', 1),
(58, '56', 53, '56260', 2, 'MORBIHAN', 'Morbihan', 1),
(59, '57', 41, '57463', 3, 'MOSELLE', 'Moselle', 1),
(60, '58', 26, '58194', 3, 'NIEVRE', 'Nièvre', 1),
(61, '59', 31, '59350', 2, 'NORD', 'Nord', 1),
(62, '60', 22, '60057', 5, 'OISE', 'Oise', 1),
(63, '61', 25, '61001', 5, 'ORNE', 'Orne', 1),
(64, '62', 31, '62041', 2, 'PAS-DE-CALAIS', 'Pas-de-Calais', 1),
(65, '63', 83, '63113', 2, 'PUY-DE-DOME', 'Puy-de-Dôme', 1),
(66, '64', 72, '64445', 4, 'PYRENEES-ATLANTIQUES', 'Pyrénées-Atlantiques', 1),
(67, '65', 73, '65440', 4, 'HAUTES-PYRENEES', 'Hautes-Pyrénées', 1),
(68, '66', 91, '66136', 4, 'PYRENEES-ORIENTALES', 'Pyrénées-Orientales', 1),
(69, '67', 42, '67482', 2, 'BAS-RHIN', 'Bas-Rhin', 1),
(70, '68', 42, '68066', 2, 'HAUT-RHIN', 'Haut-Rhin', 1),
(71, '69', 82, '69123', 2, 'RHONE', 'Rhône', 1),
(72, '70', 43, '70550', 3, 'HAUTE-SAONE', 'Haute-Saône', 1),
(73, '71', 26, '71270', 0, 'SAONE-ET-LOIRE', 'Saône-et-Loire', 1),
(74, '72', 52, '72181', 3, 'SARTHE', 'Sarthe', 1),
(75, '73', 82, '73065', 3, 'SAVOIE', 'Savoie', 1),
(76, '74', 82, '74010', 3, 'HAUTE-SAVOIE', 'Haute-Savoie', 1),
(77, '75', 11, '75056', 0, 'PARIS', 'Paris', 1),
(78, '76', 23, '76540', 3, 'SEINE-MARITIME', 'Seine-Maritime', 1),
(79, '77', 11, '77288', 0, 'SEINE-ET-MARNE', 'Seine-et-Marne', 1),
(80, '78', 11, '78646', 4, 'YVELINES', 'Yvelines', 1),
(81, '79', 54, '79191', 4, 'DEUX-SEVRES', 'Deux-Sèvres', 1),
(82, '80', 22, '80021', 3, 'SOMME', 'Somme', 1),
(83, '81', 73, '81004', 2, 'TARN', 'Tarn', 1),
(84, '82', 73, '82121', 0, 'TARN-ET-GARONNE', 'Tarn-et-Garonne', 1),
(85, '83', 93, '83137', 2, 'VAR', 'Var', 1),
(86, '84', 93, '84007', 0, 'VAUCLUSE', 'Vaucluse', 1),
(87, '85', 52, '85191', 3, 'VENDEE', 'Vendée', 1),
(88, '86', 54, '86194', 3, 'VIENNE', 'Vienne', 1),
(89, '87', 74, '87085', 3, 'HAUTE-VIENNE', 'Haute-Vienne', 1),
(90, '88', 41, '88160', 4, 'VOSGES', 'Vosges', 1),
(91, '89', 26, '89024', 5, 'YONNE', 'Yonne', 1),
(92, '90', 43, '90010', 0, 'TERRITOIRE DE BELFORT', 'Territoire de Belfort', 1),
(93, '91', 11, '91228', 5, 'ESSONNE', 'Essonne', 1),
(94, '92', 11, '92050', 4, 'HAUTS-DE-SEINE', 'Hauts-de-Seine', 1),
(95, '93', 11, '93008', 3, 'SEINE-SAINT-DENIS', 'Seine-Saint-Denis', 1),
(96, '94', 11, '94028', 2, 'VAL-DE-MARNE', 'Val-de-Marne', 1),
(97, '95', 11, '95500', 2, 'VAL-D OISE', 'Val-d Oise', 1),
(98, '971', 1, '97105', 3, 'GUADELOUPE', 'Guadeloupe', 1),
(99, '972', 2, '97209', 3, 'MARTINIQUE', 'Martinique', 1),
(100, '973', 3, '97302', 3, 'GUYANE', 'Guyane', 1),
(101, '974', 4, '97411', 3, 'REUNION', 'Réunion', 1),
(102, '976', 6, '97601', 3, 'MAYOTTE', 'Mayotte', 1),
(103, '01', 201, '', 1, 'ANVERS', 'Anvers', 1),
(104, '02', 203, '', 3, 'BRUXELLES-CAPITALE', 'Bruxelles-Capitale', 1),
(105, '03', 202, '', 2, 'BRABANT-WALLON', 'Brabant-Wallon', 1),
(106, '04', 201, '', 1, 'BRABANT-FLAMAND', 'Brabant-Flamand', 1),
(107, '05', 201, '', 1, 'FLANDRE-OCCIDENTALE', 'Flandre-Occidentale', 1),
(108, '06', 201, '', 1, 'FLANDRE-ORIENTALE', 'Flandre-Orientale', 1),
(109, '07', 202, '', 2, 'HAINAUT', 'Hainaut', 1),
(110, '08', 201, '', 2, 'LIEGE', 'Liège', 1),
(111, '09', 202, '', 1, 'LIMBOURG', 'Limbourg', 1),
(112, '10', 202, '', 2, 'LUXEMBOURG', 'Luxembourg', 1),
(113, '11', 201, '', 2, 'NAMUR', 'Namur', 1),
(114, 'AG', 315, NULL, NULL, NULL, 'AGRIGENTO', 1),
(115, 'AL', 312, NULL, NULL, NULL, 'ALESSANDRIA', 1),
(116, 'AN', 310, NULL, NULL, NULL, 'ANCONA', 1),
(117, 'AO', 319, NULL, NULL, NULL, 'AOSTA', 1),
(118, 'AR', 316, NULL, NULL, NULL, 'AREZZO', 1),
(119, 'AP', 310, NULL, NULL, NULL, 'ASCOLI PICENO', 1),
(120, 'AT', 312, NULL, NULL, NULL, 'ASTI', 1),
(121, 'AV', 304, NULL, NULL, NULL, 'AVELLINO', 1),
(122, 'BA', 313, NULL, NULL, NULL, 'BARI', 1),
(123, 'BT', 313, NULL, NULL, NULL, 'BARLETTA-ANDRIA-TRANI', 1),
(124, 'BL', 320, NULL, NULL, NULL, 'BELLUNO', 1),
(125, 'BN', 304, NULL, NULL, NULL, 'BENEVENTO', 1),
(126, 'BG', 309, NULL, NULL, NULL, 'BERGAMO', 1),
(127, 'BI', 312, NULL, NULL, NULL, 'BIELLA', 1),
(128, 'BO', 305, NULL, NULL, NULL, 'BOLOGNA', 1),
(129, 'BZ', 317, NULL, NULL, NULL, 'BOLZANO', 1),
(130, 'BS', 309, NULL, NULL, NULL, 'BRESCIA', 1),
(131, 'BR', 313, NULL, NULL, NULL, 'BRINDISI', 1),
(132, 'CA', 314, NULL, NULL, NULL, 'CAGLIARI', 1),
(133, 'CL', 315, NULL, NULL, NULL, 'CALTANISSETTA', 1),
(134, 'CB', 311, NULL, NULL, NULL, 'CAMPOBASSO', 1),
(135, 'CI', 314, NULL, NULL, NULL, 'CARBONIA-IGLESIAS', 1),
(136, 'CE', 304, NULL, NULL, NULL, 'CASERTA', 1),
(137, 'CT', 315, NULL, NULL, NULL, 'CATANIA', 1),
(138, 'CZ', 303, NULL, NULL, NULL, 'CATANZARO', 1),
(139, 'CH', 301, NULL, NULL, NULL, 'CHIETI', 1),
(140, 'CO', 309, NULL, NULL, NULL, 'COMO', 1),
(141, 'CS', 303, NULL, NULL, NULL, 'COSENZA', 1),
(142, 'CR', 309, NULL, NULL, NULL, 'CREMONA', 1),
(143, 'KR', 303, NULL, NULL, NULL, 'CROTONE', 1),
(144, 'CN', 312, NULL, NULL, NULL, 'CUNEO', 1),
(145, 'EN', 315, NULL, NULL, NULL, 'ENNA', 1),
(146, 'FM', 310, NULL, NULL, NULL, 'FERMO', 1),
(147, 'FE', 305, NULL, NULL, NULL, 'FERRARA', 1),
(148, 'FI', 316, NULL, NULL, NULL, 'FIRENZE', 1),
(149, 'FG', 313, NULL, NULL, NULL, 'FOGGIA', 1),
(150, 'FC', 305, NULL, NULL, NULL, 'FORLI-CESENA', 1),
(151, 'FR', 307, NULL, NULL, NULL, 'FROSINONE', 1),
(152, 'GE', 308, NULL, NULL, NULL, 'GENOVA', 1),
(153, 'GO', 306, NULL, NULL, NULL, 'GORIZIA', 1),
(154, 'GR', 316, NULL, NULL, NULL, 'GROSSETO', 1),
(155, 'IM', 308, NULL, NULL, NULL, 'IMPERIA', 1),
(156, 'IS', 311, NULL, NULL, NULL, 'ISERNIA', 1),
(157, 'SP', 308, NULL, NULL, NULL, 'LA SPEZIA', 1),
(158, 'AQ', 301, NULL, NULL, NULL, 'L AQUILA', 1),
(159, 'LT', 307, NULL, NULL, NULL, 'LATINA', 1),
(160, 'LE', 313, NULL, NULL, NULL, 'LECCE', 1),
(161, 'LC', 309, NULL, NULL, NULL, 'LECCO', 1),
(162, 'LI', 314, NULL, NULL, NULL, 'LIVORNO', 1),
(163, 'LO', 309, NULL, NULL, NULL, 'LODI', 1),
(164, 'LU', 316, NULL, NULL, NULL, 'LUCCA', 1),
(165, 'MC', 310, NULL, NULL, NULL, 'MACERATA', 1),
(166, 'MN', 309, NULL, NULL, NULL, 'MANTOVA', 1),
(167, 'MS', 316, NULL, NULL, NULL, 'MASSA-CARRARA', 1),
(168, 'MT', 302, NULL, NULL, NULL, 'MATERA', 1),
(169, 'VS', 314, NULL, NULL, NULL, 'MEDIO CAMPIDANO', 1),
(170, 'ME', 315, NULL, NULL, NULL, 'MESSINA', 1),
(171, 'MI', 309, NULL, NULL, NULL, 'MILANO', 1),
(172, 'MB', 309, NULL, NULL, NULL, 'MONZA e BRIANZA', 1),
(173, 'MO', 305, NULL, NULL, NULL, 'MODENA', 1),
(174, 'NA', 304, NULL, NULL, NULL, 'NAPOLI', 1),
(175, 'NO', 312, NULL, NULL, NULL, 'NOVARA', 1),
(176, 'NU', 314, NULL, NULL, NULL, 'NUORO', 1),
(177, 'OG', 314, NULL, NULL, NULL, 'OGLIASTRA', 1),
(178, 'OT', 314, NULL, NULL, NULL, 'OLBIA-TEMPIO', 1),
(179, 'OR', 314, NULL, NULL, NULL, 'ORISTANO', 1),
(180, 'PD', 320, NULL, NULL, NULL, 'PADOVA', 1),
(181, 'PA', 315, NULL, NULL, NULL, 'PALERMO', 1),
(182, 'PR', 305, NULL, NULL, NULL, 'PARMA', 1),
(183, 'PV', 309, NULL, NULL, NULL, 'PAVIA', 1),
(184, 'PG', 318, NULL, NULL, NULL, 'PERUGIA', 1),
(185, 'PU', 310, NULL, NULL, NULL, 'PESARO e URBINO', 1),
(186, 'PE', 301, NULL, NULL, NULL, 'PESCARA', 1),
(187, 'PC', 305, NULL, NULL, NULL, 'PIACENZA', 1),
(188, 'PI', 316, NULL, NULL, NULL, 'PISA', 1),
(189, 'PT', 316, NULL, NULL, NULL, 'PISTOIA', 1),
(190, 'PN', 306, NULL, NULL, NULL, 'PORDENONE', 1),
(191, 'PZ', 302, NULL, NULL, NULL, 'POTENZA', 1),
(192, 'PO', 316, NULL, NULL, NULL, 'PRATO', 1),
(193, 'RG', 315, NULL, NULL, NULL, 'RAGUSA', 1),
(194, 'RA', 305, NULL, NULL, NULL, 'RAVENNA', 1),
(195, 'RC', 303, NULL, NULL, NULL, 'REGGIO CALABRIA', 1),
(196, 'RE', 305, NULL, NULL, NULL, 'REGGIO NELL EMILIA', 1),
(197, 'RI', 307, NULL, NULL, NULL, 'RIETI', 1),
(198, 'RN', 305, NULL, NULL, NULL, 'RIMINI', 1),
(199, 'RM', 307, NULL, NULL, NULL, 'ROMA', 1),
(200, 'RO', 320, NULL, NULL, NULL, 'ROVIGO', 1),
(201, 'SA', 304, NULL, NULL, NULL, 'SALERNO', 1),
(202, 'SS', 314, NULL, NULL, NULL, 'SASSARI', 1),
(203, 'SV', 308, NULL, NULL, NULL, 'SAVONA', 1),
(204, 'SI', 316, NULL, NULL, NULL, 'SIENA', 1),
(205, 'SR', 315, NULL, NULL, NULL, 'SIRACUSA', 1),
(206, 'SO', 309, NULL, NULL, NULL, 'SONDRIO', 1),
(207, 'TA', 313, NULL, NULL, NULL, 'TARANTO', 1),
(208, 'TE', 301, NULL, NULL, NULL, 'TERAMO', 1),
(209, 'TR', 318, NULL, NULL, NULL, 'TERNI', 1),
(210, 'TO', 312, NULL, NULL, NULL, 'TORINO', 1),
(211, 'TP', 315, NULL, NULL, NULL, 'TRAPANI', 1),
(212, 'TN', 317, NULL, NULL, NULL, 'TRENTO', 1),
(213, 'TV', 320, NULL, NULL, NULL, 'TREVISO', 1),
(214, 'TS', 306, NULL, NULL, NULL, 'TRIESTE', 1),
(215, 'UD', 306, NULL, NULL, NULL, 'UDINE', 1),
(216, 'VA', 309, NULL, NULL, NULL, 'VARESE', 1),
(217, 'VE', 320, NULL, NULL, NULL, 'VENEZIA', 1),
(218, 'VB', 312, NULL, NULL, NULL, 'VERBANO-CUSIO-OSSOLA', 1),
(219, 'VC', 312, NULL, NULL, NULL, 'VERCELLI', 1),
(220, 'VR', 320, NULL, NULL, NULL, 'VERONA', 1),
(221, 'VV', 303, NULL, NULL, NULL, 'VIBO VALENTIA', 1),
(222, 'VI', 320, NULL, NULL, NULL, 'VICENZA', 1),
(223, 'VT', 307, NULL, NULL, NULL, 'VITERBO', 1),
(224, 'NSW', 2801, '', 1, '', 'New South Wales', 1),
(225, 'VIC', 2801, '', 1, '', 'Victoria', 1),
(226, 'QLD', 2801, '', 1, '', 'Queensland', 1),
(227, 'SA', 2801, '', 1, '', 'South Australia', 1),
(228, 'ACT', 2801, '', 1, '', 'Australia Capital Territory', 1),
(229, 'TAS', 2801, '', 1, '', 'Tasmania', 1),
(230, 'WA', 2801, '', 1, '', 'Western Australia', 1),
(231, 'NT', 2801, '', 1, '', 'Northern Territory', 1),
(232, 'ON', 1401, '', 1, '', 'Ontario', 1),
(233, 'QC', 1401, '', 1, '', 'Quebec', 1),
(234, 'NS', 1401, '', 1, '', 'Nova Scotia', 1),
(235, 'NB', 1401, '', 1, '', 'New Brunswick', 1),
(236, 'MB', 1401, '', 1, '', 'Manitoba', 1),
(237, 'BC', 1401, '', 1, '', 'British Columbia', 1),
(238, 'PE', 1401, '', 1, '', 'Prince Edward Island', 1),
(239, 'SK', 1401, '', 1, '', 'Saskatchewan', 1),
(240, 'AB', 1401, '', 1, '', 'Alberta', 1),
(241, 'NL', 1401, '', 1, '', 'Newfoundland and Labrador', 1),
(242, '01', 419, '', 19, 'ALAVA', 'Álava', 1),
(243, '02', 404, '', 4, 'ALBACETE', 'Albacete', 1),
(244, '03', 411, '', 11, 'ALICANTE', 'Alicante', 1),
(245, '04', 401, '', 1, 'ALMERIA', 'Almería', 1),
(246, '05', 403, '', 3, 'AVILA', 'Avila', 1),
(247, '06', 412, '', 12, 'BADAJOZ', 'Badajoz', 1),
(248, '07', 414, '', 14, 'ISLAS BALEARES', 'Islas Baleares', 1),
(249, '08', 406, '', 6, 'BARCELONA', 'Barcelona', 1),
(250, '09', 403, '', 8, 'BURGOS', 'Burgos', 1),
(251, '10', 412, '', 12, 'CACERES', 'Cáceres', 1),
(252, '11', 401, '', 1, 'CADIZ', 'Cádiz', 1),
(253, '12', 411, '', 11, 'CASTELLON', 'Castellón', 1),
(254, '13', 404, '', 4, 'CIUDAD REAL', 'Ciudad Real', 1),
(255, '14', 401, '', 1, 'CORDOBA', 'Córdoba', 1),
(256, '15', 413, '', 13, 'LA CORUÑA', 'La Coruña', 1),
(257, '16', 404, '', 4, 'CUENCA', 'Cuenca', 1),
(258, '17', 406, '', 6, 'GERONA', 'Gerona', 1),
(259, '18', 401, '', 1, 'GRANADA', 'Granada', 1),
(260, '19', 404, '', 4, 'GUADALAJARA', 'Guadalajara', 1),
(261, '20', 419, '', 19, 'GUIPUZCOA', 'Guipúzcoa', 1),
(262, '21', 401, '', 1, 'HUELVA', 'Huelva', 1),
(263, '22', 402, '', 2, 'HUESCA', 'Huesca', 1),
(264, '23', 401, '', 1, 'JAEN', 'Jaén', 1),
(265, '24', 403, '', 3, 'LEON', 'León', 1),
(266, '25', 406, '', 6, 'LERIDA', 'Lérida', 1),
(267, '26', 415, '', 15, 'LA RIOJA', 'La Rioja', 1),
(268, '27', 413, '', 13, 'LUGO', 'Lugo', 1),
(269, '28', 416, '', 16, 'MADRID', 'Madrid', 1),
(270, '29', 401, '', 1, 'MALAGA', 'Málaga', 1),
(271, '30', 417, '', 17, 'MURCIA', 'Murcia', 1),
(272, '31', 408, '', 8, 'NAVARRA', 'Navarra', 1),
(273, '32', 413, '', 13, 'ORENSE', 'Orense', 1),
(274, '33', 418, '', 18, 'ASTURIAS', 'Asturias', 1),
(275, '34', 403, '', 3, 'PALENCIA', 'Palencia', 1),
(276, '35', 405, '', 5, 'LAS PALMAS', 'Las Palmas', 1),
(277, '36', 413, '', 13, 'PONTEVEDRA', 'Pontevedra', 1),
(278, '37', 403, '', 3, 'SALAMANCA', 'Salamanca', 1),
(279, '38', 405, '', 5, 'STA. CRUZ DE TENERIFE', 'Sta. Cruz de Tenerife', 1),
(280, '39', 410, '', 10, 'CANTABRIA', 'Cantabria', 1),
(281, '40', 403, '', 3, 'SEGOVIA', 'Segovia', 1),
(282, '41', 401, '', 1, 'SEVILLA', 'Sevilla', 1),
(283, '42', 403, '', 3, 'SORIA', 'Soria', 1),
(284, '43', 406, '', 6, 'TARRAGONA', 'Tarragona', 1),
(285, '44', 402, '', 2, 'TERUEL', 'Teruel', 1),
(286, '45', 404, '', 5, 'TOLEDO', 'Toledo', 1),
(287, '46', 411, '', 11, 'VALENCIA', 'Valencia', 1),
(288, '47', 403, '', 3, 'VALLADOLID', 'Valladolid', 1),
(289, '48', 419, '', 19, 'VIZCAYA', 'Vizcaya', 1),
(290, '49', 403, '', 3, 'ZAMORA', 'Zamora', 1),
(291, '50', 402, '', 1, 'ZARAGOZA', 'Zaragoza', 1),
(292, '51', 407, '', 7, 'CEUTA', 'Ceuta', 1),
(293, '52', 409, '', 9, 'MELILLA', 'Melilla', 1),
(294, '53', 420, '', 20, 'OTROS', 'Otros', 1),
(295, 'BW', 501, NULL, NULL, 'BADEN-WÜRTTEMBERG', 'Baden-Württemberg', 1),
(296, 'BY', 501, NULL, NULL, 'BAYERN', 'Bayern', 1),
(297, 'BE', 501, NULL, NULL, 'BERLIN', 'Berlin', 1),
(298, 'BB', 501, NULL, NULL, 'BRANDENBURG', 'Brandenburg', 1),
(299, 'HB', 501, NULL, NULL, 'BREMEN', 'Bremen', 1),
(300, 'HH', 501, NULL, NULL, 'HAMBURG', 'Hamburg', 1),
(301, 'HE', 501, NULL, NULL, 'HESSEN', 'Hessen', 1),
(302, 'MV', 501, NULL, NULL, 'MECKLENBURG-VORPOMMERN', 'Mecklenburg-Vorpommern', 1),
(303, 'NI', 501, NULL, NULL, 'NIEDERSACHSEN', 'Niedersachsen', 1),
(304, 'NW', 501, NULL, NULL, 'NORDRHEIN-WESTFALEN', 'Nordrhein-Westfalen', 1),
(305, 'RP', 501, NULL, NULL, 'RHEINLAND-PFALZ', 'Rheinland-Pfalz', 1),
(306, 'SL', 501, NULL, NULL, 'SAARLAND', 'Saarland', 1),
(307, 'SN', 501, NULL, NULL, 'SACHSEN', 'Sachsen', 1),
(308, 'ST', 501, NULL, NULL, 'SACHSEN-ANHALT', 'Sachsen-Anhalt', 1),
(309, 'SH', 501, NULL, NULL, 'SCHLESWIG-HOLSTEIN', 'Schleswig-Holstein', 1),
(310, 'TH', 501, NULL, NULL, 'THÜRINGEN', 'Thüringen', 1),
(311, '66', 10201, '', 0, '', '?????', 1),
(312, '67', 10205, '', 0, '', '?????', 1),
(313, '01', 10205, '', 0, '', '?????', 1),
(314, '02', 10205, '', 0, '', '?????', 1),
(315, '03', 10205, '', 0, '', '??????', 1),
(316, '04', 10205, '', 0, '', '?????', 1),
(317, '05', 10205, '', 0, '', '??????', 1),
(318, '06', 10203, '', 0, '', '??????', 1),
(319, '07', 10203, '', 0, '', '???????????', 1),
(320, '08', 10203, '', 0, '', '??????', 1),
(321, '09', 10203, '', 0, '', '?????', 1),
(322, '10', 10203, '', 0, '', '??????', 1),
(323, '11', 10203, '', 0, '', '??????', 1),
(324, '12', 10203, '', 0, '', '?????????', 1),
(325, '13', 10206, '', 0, '', '????', 1),
(326, '14', 10206, '', 0, '', '?????????', 1),
(327, '15', 10206, '', 0, '', '????????', 1),
(328, '16', 10206, '', 0, '', '???????', 1),
(329, '17', 10213, '', 0, '', '???????', 1),
(330, '18', 10213, '', 0, '', '????????', 1),
(331, '19', 10213, '', 0, '', '??????', 1),
(332, '20', 10213, '', 0, '', '???????', 1),
(333, '21', 10212, '', 0, '', '????????', 1),
(334, '22', 10212, '', 0, '', '??????', 1),
(335, '23', 10212, '', 0, '', '????????', 1),
(336, '24', 10212, '', 0, '', '???????', 1),
(337, '25', 10212, '', 0, '', '????????', 1),
(338, '26', 10212, '', 0, '', '???????', 1),
(339, '27', 10202, '', 0, '', '??????', 1),
(340, '28', 10202, '', 0, '', '?????????', 1),
(341, '29', 10202, '', 0, '', '????????', 1),
(342, '30', 10202, '', 0, '', '??????', 1),
(343, '31', 10209, '', 0, '', '????????', 1),
(344, '32', 10209, '', 0, '', '???????', 1),
(345, '33', 10209, '', 0, '', '????????', 1),
(346, '34', 10209, '', 0, '', '???????', 1),
(347, '35', 10209, '', 0, '', '????????', 1),
(348, '36', 10211, '', 0, '', '???????????????', 1),
(349, '37', 10211, '', 0, '', '?????', 1),
(350, '38', 10211, '', 0, '', '?????', 1),
(351, '39', 10207, '', 0, '', '????????', 1),
(352, '40', 10207, '', 0, '', '???????', 1),
(353, '41', 10207, '', 0, '', '??????????', 1),
(354, '42', 10207, '', 0, '', '?????', 1),
(355, '43', 10207, '', 0, '', '???????', 1),
(356, '44', 10208, '', 0, '', '??????', 1),
(357, '45', 10208, '', 0, '', '??????', 1),
(358, '46', 10208, '', 0, '', '??????', 1),
(359, '47', 10208, '', 0, '', '?????', 1),
(360, '48', 10208, '', 0, '', '????', 1),
(361, '49', 10210, '', 0, '', '??????', 1),
(362, '50', 10210, '', 0, '', '????', 1),
(363, '51', 10210, '', 0, '', '????????', 1),
(364, '52', 10210, '', 0, '', '????????', 1),
(365, '53', 10210, '', 0, '', '???-??????', 1),
(366, '54', 10210, '', 0, '', '??', 1),
(367, '55', 10210, '', 0, '', '?????', 1),
(368, '56', 10210, '', 0, '', '???????', 1),
(369, '57', 10210, '', 0, '', '?????', 1),
(370, '58', 10210, '', 0, '', '?????', 1),
(371, '59', 10210, '', 0, '', '?????', 1),
(372, '60', 10210, '', 0, '', '?????', 1),
(373, '61', 10210, '', 0, '', '?????', 1),
(374, '62', 10204, '', 0, '', '????????', 1),
(375, '63', 10204, '', 0, '', '??????', 1),
(376, '64', 10204, '', 0, '', '???????', 1),
(377, '65', 10204, '', 0, '', '?????', 1),
(378, 'AG', 601, NULL, NULL, 'ARGOVIE', 'Argovie', 1),
(379, 'AI', 601, NULL, NULL, 'APPENZELL RHODES INTERIEURES', 'Appenzell Rhodes intérieures', 1),
(380, 'AR', 601, NULL, NULL, 'APPENZELL RHODES EXTERIEURES', 'Appenzell Rhodes extérieures', 1),
(381, 'BE', 601, NULL, NULL, 'BERNE', 'Berne', 1),
(382, 'BL', 601, NULL, NULL, 'BALE CAMPAGNE', 'Bâle Campagne', 1),
(383, 'BS', 601, NULL, NULL, 'BALE VILLE', 'Bâle Ville', 1),
(384, 'FR', 601, NULL, NULL, 'FRIBOURG', 'Fribourg', 1),
(385, 'GE', 601, NULL, NULL, 'GENEVE', 'Genève', 1),
(386, 'GL', 601, NULL, NULL, 'GLARIS', 'Glaris', 1),
(387, 'GR', 601, NULL, NULL, 'GRISONS', 'Grisons', 1),
(388, 'JU', 601, NULL, NULL, 'JURA', 'Jura', 1),
(389, 'LU', 601, NULL, NULL, 'LUCERNE', 'Lucerne', 1),
(390, 'NE', 601, NULL, NULL, 'NEUCHATEL', 'Neuchâtel', 1),
(391, 'NW', 601, NULL, NULL, 'NIDWALD', 'Nidwald', 1),
(392, 'OW', 601, NULL, NULL, 'OBWALD', 'Obwald', 1),
(393, 'SG', 601, NULL, NULL, 'SAINT-GALL', 'Saint-Gall', 1),
(394, 'SH', 601, NULL, NULL, 'SCHAFFHOUSE', 'Schaffhouse', 1),
(395, 'SO', 601, NULL, NULL, 'SOLEURE', 'Soleure', 1),
(396, 'SZ', 601, NULL, NULL, 'SCHWYZ', 'Schwyz', 1),
(397, 'TG', 601, NULL, NULL, 'THURGOVIE', 'Thurgovie', 1),
(398, 'TI', 601, NULL, NULL, 'TESSIN', 'Tessin', 1),
(399, 'UR', 601, NULL, NULL, 'URI', 'Uri', 1),
(400, 'VD', 601, NULL, NULL, 'VAUD', 'Vaud', 1),
(401, 'VS', 601, NULL, NULL, 'VALAIS', 'Valais', 1),
(402, 'ZG', 601, NULL, NULL, 'ZUG', 'Zug', 1),
(403, 'ZH', 601, NULL, NULL, 'ZURICH', 'Zürich', 1),
(404, '701', 701, NULL, 0, NULL, 'Bedfordshire', 1),
(405, '702', 701, NULL, 0, NULL, 'Berkshire', 1),
(406, '703', 701, NULL, 0, NULL, 'Bristol, City of', 1),
(407, '704', 701, NULL, 0, NULL, 'Buckinghamshire', 1),
(408, '705', 701, NULL, 0, NULL, 'Cambridgeshire', 1),
(409, '706', 701, NULL, 0, NULL, 'Cheshire', 1),
(410, '707', 701, NULL, 0, NULL, 'Cleveland', 1),
(411, '708', 701, NULL, 0, NULL, 'Cornwall', 1),
(412, '709', 701, NULL, 0, NULL, 'Cumberland', 1),
(413, '710', 701, NULL, 0, NULL, 'Cumbria', 1),
(414, '711', 701, NULL, 0, NULL, 'Derbyshire', 1),
(415, '712', 701, NULL, 0, NULL, 'Devon', 1),
(416, '713', 701, NULL, 0, NULL, 'Dorset', 1),
(417, '714', 701, NULL, 0, NULL, 'Co. Durham', 1),
(418, '715', 701, NULL, 0, NULL, 'East Riding of Yorkshire', 1),
(419, '716', 701, NULL, 0, NULL, 'East Sussex', 1),
(420, '717', 701, NULL, 0, NULL, 'Essex', 1),
(421, '718', 701, NULL, 0, NULL, 'Gloucestershire', 1),
(422, '719', 701, NULL, 0, NULL, 'Greater Manchester', 1),
(423, '720', 701, NULL, 0, NULL, 'Hampshire', 1),
(424, '721', 701, NULL, 0, NULL, 'Hertfordshire', 1),
(425, '722', 701, NULL, 0, NULL, 'Hereford and Worcester', 1),
(426, '723', 701, NULL, 0, NULL, 'Herefordshire', 1),
(427, '724', 701, NULL, 0, NULL, 'Huntingdonshire', 1),
(428, '725', 701, NULL, 0, NULL, 'Isle of Man', 1),
(429, '726', 701, NULL, 0, NULL, 'Isle of Wight', 1),
(430, '727', 701, NULL, 0, NULL, 'Jersey', 1),
(431, '728', 701, NULL, 0, NULL, 'Kent', 1),
(432, '729', 701, NULL, 0, NULL, 'Lancashire', 1),
(433, '730', 701, NULL, 0, NULL, 'Leicestershire', 1),
(434, '731', 701, NULL, 0, NULL, 'Lincolnshire', 1),
(435, '732', 701, NULL, 0, NULL, 'London - City of London', 1),
(436, '733', 701, NULL, 0, NULL, 'Merseyside', 1),
(437, '734', 701, NULL, 0, NULL, 'Middlesex', 1),
(438, '735', 701, NULL, 0, NULL, 'Norfolk', 1),
(439, '736', 701, NULL, 0, NULL, 'North Yorkshire', 1),
(440, '737', 701, NULL, 0, NULL, 'North Riding of Yorkshire', 1),
(441, '738', 701, NULL, 0, NULL, 'Northamptonshire', 1),
(442, '739', 701, NULL, 0, NULL, 'Northumberland', 1),
(443, '740', 701, NULL, 0, NULL, 'Nottinghamshire', 1),
(444, '741', 701, NULL, 0, NULL, 'Oxfordshire', 1),
(445, '742', 701, NULL, 0, NULL, 'Rutland', 1),
(446, '743', 701, NULL, 0, NULL, 'Shropshire', 1),
(447, '744', 701, NULL, 0, NULL, 'Somerset', 1),
(448, '745', 701, NULL, 0, NULL, 'Staffordshire', 1),
(449, '746', 701, NULL, 0, NULL, 'Suffolk', 1),
(450, '747', 701, NULL, 0, NULL, 'Surrey', 1),
(451, '748', 701, NULL, 0, NULL, 'Sussex', 1),
(452, '749', 701, NULL, 0, NULL, 'Tyne and Wear', 1),
(453, '750', 701, NULL, 0, NULL, 'Warwickshire', 1),
(454, '751', 701, NULL, 0, NULL, 'West Midlands', 1),
(455, '752', 701, NULL, 0, NULL, 'West Sussex', 1),
(456, '753', 701, NULL, 0, NULL, 'West Yorkshire', 1),
(457, '754', 701, NULL, 0, NULL, 'West Riding of Yorkshire', 1),
(458, '755', 701, NULL, 0, NULL, 'Wiltshire', 1),
(459, '756', 701, NULL, 0, NULL, 'Worcestershire', 1),
(460, '757', 701, NULL, 0, NULL, 'Yorkshire', 1),
(461, '758', 702, NULL, 0, NULL, 'Anglesey', 1),
(462, '759', 702, NULL, 0, NULL, 'Breconshire', 1),
(463, '760', 702, NULL, 0, NULL, 'Caernarvonshire', 1),
(464, '761', 702, NULL, 0, NULL, 'Cardiganshire', 1),
(465, '762', 702, NULL, 0, NULL, 'Carmarthenshire', 1),
(466, '763', 702, NULL, 0, NULL, 'Ceredigion', 1),
(467, '764', 702, NULL, 0, NULL, 'Denbighshire', 1),
(468, '765', 702, NULL, 0, NULL, 'Flintshire', 1),
(469, '766', 702, NULL, 0, NULL, 'Glamorgan', 1),
(470, '767', 702, NULL, 0, NULL, 'Gwent', 1),
(471, '768', 702, NULL, 0, NULL, 'Gwynedd', 1),
(472, '769', 702, NULL, 0, NULL, 'Merionethshire', 1),
(473, '770', 702, NULL, 0, NULL, 'Monmouthshire', 1),
(474, '771', 702, NULL, 0, NULL, 'Mid Glamorgan', 1),
(475, '772', 702, NULL, 0, NULL, 'Montgomeryshire', 1),
(476, '773', 702, NULL, 0, NULL, 'Pembrokeshire', 1),
(477, '774', 702, NULL, 0, NULL, 'Powys', 1),
(478, '775', 702, NULL, 0, NULL, 'Radnorshire', 1),
(479, '776', 702, NULL, 0, NULL, 'South Glamorgan', 1),
(480, '777', 703, NULL, 0, NULL, 'Aberdeen, City of', 1),
(481, '778', 703, NULL, 0, NULL, 'Angus', 1),
(482, '779', 703, NULL, 0, NULL, 'Argyll', 1),
(483, '780', 703, NULL, 0, NULL, 'Ayrshire', 1),
(484, '781', 703, NULL, 0, NULL, 'Banffshire', 1),
(485, '782', 703, NULL, 0, NULL, 'Berwickshire', 1),
(486, '783', 703, NULL, 0, NULL, 'Bute', 1),
(487, '784', 703, NULL, 0, NULL, 'Caithness', 1),
(488, '785', 703, NULL, 0, NULL, 'Clackmannanshire', 1),
(489, '786', 703, NULL, 0, NULL, 'Dumfriesshire', 1),
(490, '787', 703, NULL, 0, NULL, 'Dumbartonshire', 1),
(491, '788', 703, NULL, 0, NULL, 'Dundee, City of', 1),
(492, '789', 703, NULL, 0, NULL, 'East Lothian', 1),
(493, '790', 703, NULL, 0, NULL, 'Fife', 1),
(494, '791', 703, NULL, 0, NULL, 'Inverness', 1),
(495, '792', 703, NULL, 0, NULL, 'Kincardineshire', 1),
(496, '793', 703, NULL, 0, NULL, 'Kinross-shire', 1),
(497, '794', 703, NULL, 0, NULL, 'Kirkcudbrightshire', 1),
(498, '795', 703, NULL, 0, NULL, 'Lanarkshire', 1),
(499, '796', 703, NULL, 0, NULL, 'Midlothian', 1),
(500, '797', 703, NULL, 0, NULL, 'Morayshire', 1),
(501, '798', 703, NULL, 0, NULL, 'Nairnshire', 1),
(502, '799', 703, NULL, 0, NULL, 'Orkney', 1),
(503, '800', 703, NULL, 0, NULL, 'Peebleshire', 1),
(504, '801', 703, NULL, 0, NULL, 'Perthshire', 1),
(505, '802', 703, NULL, 0, NULL, 'Renfrewshire', 1),
(506, '803', 703, NULL, 0, NULL, 'Ross & Cromarty', 1),
(507, '804', 703, NULL, 0, NULL, 'Roxburghshire', 1),
(508, '805', 703, NULL, 0, NULL, 'Selkirkshire', 1),
(509, '806', 703, NULL, 0, NULL, 'Shetland', 1),
(510, '807', 703, NULL, 0, NULL, 'Stirlingshire', 1),
(511, '808', 703, NULL, 0, NULL, 'Sutherland', 1),
(512, '809', 703, NULL, 0, NULL, 'West Lothian', 1),
(513, '810', 703, NULL, 0, NULL, 'Wigtownshire', 1),
(514, '811', 704, NULL, 0, NULL, 'Antrim', 1),
(515, '812', 704, NULL, 0, NULL, 'Armagh', 1),
(516, '813', 704, NULL, 0, NULL, 'Co. Down', 1),
(517, '814', 704, NULL, 0, NULL, 'Co. Fermanagh', 1),
(518, '815', 704, NULL, 0, NULL, 'Co. Londonderry', 1),
(519, 'AL', 1101, '', 0, 'ALABAMA', 'Alabama', 1),
(520, 'AK', 1101, '', 0, 'ALASKA', 'Alaska', 1),
(521, 'AZ', 1101, '', 0, 'ARIZONA', 'Arizona', 1),
(522, 'AR', 1101, '', 0, 'ARKANSAS', 'Arkansas', 1),
(523, 'CA', 1101, '', 0, 'CALIFORNIA', 'California', 1),
(524, 'CO', 1101, '', 0, 'COLORADO', 'Colorado', 1),
(525, 'CT', 1101, '', 0, 'CONNECTICUT', 'Connecticut', 1),
(526, 'DE', 1101, '', 0, 'DELAWARE', 'Delaware', 1),
(527, 'FL', 1101, '', 0, 'FLORIDA', 'Florida', 1),
(528, 'GA', 1101, '', 0, 'GEORGIA', 'Georgia', 1),
(529, 'HI', 1101, '', 0, 'HAWAII', 'Hawaii', 1),
(530, 'ID', 1101, '', 0, 'IDAHO', 'Idaho', 1),
(531, 'IL', 1101, '', 0, 'ILLINOIS', 'Illinois', 1),
(532, 'IN', 1101, '', 0, 'INDIANA', 'Indiana', 1),
(533, 'IA', 1101, '', 0, 'IOWA', 'Iowa', 1),
(534, 'KS', 1101, '', 0, 'KANSAS', 'Kansas', 1),
(535, 'KY', 1101, '', 0, 'KENTUCKY', 'Kentucky', 1),
(536, 'LA', 1101, '', 0, 'LOUISIANA', 'Louisiana', 1),
(537, 'ME', 1101, '', 0, 'MAINE', 'Maine', 1),
(538, 'MD', 1101, '', 0, 'MARYLAND', 'Maryland', 1),
(539, 'MA', 1101, '', 0, 'MASSACHUSSETTS', 'Massachusetts', 1),
(540, 'MI', 1101, '', 0, 'MICHIGAN', 'Michigan', 1),
(541, 'MN', 1101, '', 0, 'MINNESOTA', 'Minnesota', 1),
(542, 'MS', 1101, '', 0, 'MISSISSIPPI', 'Mississippi', 1),
(543, 'MO', 1101, '', 0, 'MISSOURI', 'Missouri', 1),
(544, 'MT', 1101, '', 0, 'MONTANA', 'Montana', 1),
(545, 'NE', 1101, '', 0, 'NEBRASKA', 'Nebraska', 1),
(546, 'NV', 1101, '', 0, 'NEVADA', 'Nevada', 1),
(547, 'NH', 1101, '', 0, 'NEW HAMPSHIRE', 'New Hampshire', 1),
(548, 'NJ', 1101, '', 0, 'NEW JERSEY', 'New Jersey', 1),
(549, 'NM', 1101, '', 0, 'NEW MEXICO', 'New Mexico', 1),
(550, 'NY', 1101, '', 0, 'NEW YORK', 'New York', 1),
(551, 'NC', 1101, '', 0, 'NORTH CAROLINA', 'North Carolina', 1),
(552, 'ND', 1101, '', 0, 'NORTH DAKOTA', 'North Dakota', 1),
(553, 'OH', 1101, '', 0, 'OHIO', 'Ohio', 1),
(554, 'OK', 1101, '', 0, 'OKLAHOMA', 'Oklahoma', 1),
(555, 'OR', 1101, '', 0, 'OREGON', 'Oregon', 1),
(556, 'PA', 1101, '', 0, 'PENNSYLVANIA', 'Pennsylvania', 1),
(557, 'RI', 1101, '', 0, 'RHODE ISLAND', 'Rhode Island', 1),
(558, 'SC', 1101, '', 0, 'SOUTH CAROLINA', 'South Carolina', 1),
(559, 'SD', 1101, '', 0, 'SOUTH DAKOTA', 'South Dakota', 1),
(560, 'TN', 1101, '', 0, 'TENNESSEE', 'Tennessee', 1),
(561, 'TX', 1101, '', 0, 'TEXAS', 'Texas', 1),
(562, 'UT', 1101, '', 0, 'UTAH', 'Utah', 1),
(563, 'VT', 1101, '', 0, 'VERMONT', 'Vermont', 1),
(564, 'VA', 1101, '', 0, 'VIRGINIA', 'Virginia', 1),
(565, 'WA', 1101, '', 0, 'WASHINGTON', 'Washington', 1),
(566, 'WV', 1101, '', 0, 'WEST VIRGINIA', 'West Virginia', 1),
(567, 'WI', 1101, '', 0, 'WISCONSIN', 'Wisconsin', 1),
(568, 'WY', 1101, '', 0, 'WYOMING', 'Wyoming', 1),
(569, 'GR', 1701, NULL, NULL, NULL, 'Groningen', 1),
(570, 'FR', 1701, NULL, NULL, NULL, 'Friesland', 1),
(571, 'DR', 1701, NULL, NULL, NULL, 'Drenthe', 1),
(572, 'OV', 1701, NULL, NULL, NULL, 'Overijssel', 1),
(573, 'GD', 1701, NULL, NULL, NULL, 'Gelderland', 1),
(574, 'FL', 1701, NULL, NULL, NULL, 'Flevoland', 1),
(575, 'UT', 1701, NULL, NULL, NULL, 'Utrecht', 1),
(576, 'NH', 1701, NULL, NULL, NULL, 'Noord-Holland', 1),
(577, 'ZH', 1701, NULL, NULL, NULL, 'Zuid-Holland', 1),
(578, 'ZL', 1701, NULL, NULL, NULL, 'Zeeland', 1),
(579, 'NB', 1701, NULL, NULL, NULL, 'Noord-Brabant', 1),
(580, 'LB', 1701, NULL, NULL, NULL, 'Limburg', 1),
(581, 'SS', 8601, '', 0, '', 'San Salvador', 1),
(582, 'SA', 8603, '', 0, '', 'Santa Ana', 1),
(583, 'AH', 8603, '', 0, '', 'Ahuachapan', 1),
(584, 'SO', 8603, '', 0, '', 'Sonsonate', 1),
(585, 'US', 8602, '', 0, '', 'Usulutan', 1),
(586, 'SM', 8602, '', 0, '', 'San Miguel', 1),
(587, 'MO', 8602, '', 0, '', 'Morazan', 1),
(588, 'LU', 8602, '', 0, '', 'La Union', 1),
(589, 'LL', 8601, '', 0, '', 'La Libertad', 1),
(590, 'CH', 8601, '', 0, '', 'Chalatenango', 1),
(591, 'CA', 8601, '', 0, '', 'Cabañas', 1),
(592, 'LP', 8601, '', 0, '', 'La Paz', 1),
(593, 'SV', 8601, '', 0, '', 'San Vicente', 1),
(594, 'CU', 8601, '', 0, '', 'Cuscatlan', 1),
(595, '2301', 2301, '', 0, 'CATAMARCA', 'Catamarca', 1),
(596, '2302', 2301, '', 0, 'JUJUY', 'Jujuy', 1),
(597, '2303', 2301, '', 0, 'TUCAMAN', 'Tucamán', 1),
(598, '2304', 2301, '', 0, 'SANTIAGO DEL ESTERO', 'Santiago del Estero', 1),
(599, '2305', 2301, '', 0, 'SALTA', 'Salta', 1),
(600, '2306', 2302, '', 0, 'CHACO', 'Chaco', 1),
(601, '2307', 2302, '', 0, 'CORRIENTES', 'Corrientes', 1),
(602, '2308', 2302, '', 0, 'ENTRE RIOS', 'Entre Ríos', 1),
(603, '2309', 2302, '', 0, 'FORMOSA MISIONES', 'Formosa Misiones', 1),
(604, '2310', 2302, '', 0, 'SANTA FE', 'Santa Fe', 1),
(605, '2311', 2303, '', 0, 'LA RIOJA', 'La Rioja', 1),
(606, '2312', 2303, '', 0, 'MENDOZA', 'Mendoza', 1),
(607, '2313', 2303, '', 0, 'SAN JUAN', 'San Juan', 1),
(608, '2314', 2303, '', 0, 'SAN LUIS', 'San Luis', 1),
(609, '2315', 2304, '', 0, 'CORDOBA', 'Córdoba', 1),
(610, '2316', 2304, '', 0, 'BUENOS AIRES', 'Buenos Aires', 1),
(611, '2317', 2304, '', 0, 'CABA', 'Caba', 1),
(612, '2318', 2305, '', 0, 'LA PAMPA', 'La Pampa', 1),
(613, '2319', 2305, '', 0, 'NEUQUEN', 'Neuquén', 1),
(614, '2320', 2305, '', 0, 'RIO NEGRO', 'Río Negro', 1),
(615, '2321', 2305, '', 0, 'CHUBUT', 'Chubut', 1),
(616, '2322', 2305, '', 0, 'SANTA CRUZ', 'Santa Cruz', 1),
(617, '2323', 2305, '', 0, 'TIERRA DEL FUEGO', 'Tierra del Fuego', 1),
(618, '2324', 2305, '', 0, 'ISLAS MALVINAS', 'Islas Malvinas', 1),
(619, '2325', 2305, '', 0, 'ANTARTIDA', 'Antártida', 1),
(620, 'AC', 5601, 'ACRE', 0, 'AC', 'Acre', 1),
(621, 'AL', 5601, 'ALAGOAS', 0, 'AL', 'Alagoas', 1),
(622, 'AP', 5601, 'AMAPA', 0, 'AP', 'Amapá', 1),
(623, 'AM', 5601, 'AMAZONAS', 0, 'AM', 'Amazonas', 1),
(624, 'BA', 5601, 'BAHIA', 0, 'BA', 'Bahia', 1),
(625, 'CE', 5601, 'CEARA', 0, 'CE', 'Ceará', 1),
(626, 'ES', 5601, 'ESPIRITO SANTO', 0, 'ES', 'Espirito Santo', 1),
(627, 'GO', 5601, 'GOIAS', 0, 'GO', 'Goiás', 1),
(628, 'MA', 5601, 'MARANHAO', 0, 'MA', 'Maranhão', 1),
(629, 'MT', 5601, 'MATO GROSSO', 0, 'MT', 'Mato Grosso', 1),
(630, 'MS', 5601, 'MATO GROSSO DO SUL', 0, 'MS', 'Mato Grosso do Sul', 1),
(631, 'MG', 5601, 'MINAS GERAIS', 0, 'MG', 'Minas Gerais', 1),
(632, 'PA', 5601, 'PARA', 0, 'PA', 'Pará', 1),
(633, 'PB', 5601, 'PARAIBA', 0, 'PB', 'Paraiba', 1),
(634, 'PR', 5601, 'PARANA', 0, 'PR', 'Paraná', 1),
(635, 'PE', 5601, 'PERNAMBUCO', 0, 'PE', 'Pernambuco', 1),
(636, 'PI', 5601, 'PIAUI', 0, 'PI', 'Piauí', 1),
(637, 'RJ', 5601, 'RIO DE JANEIRO', 0, 'RJ', 'Rio de Janeiro', 1),
(638, 'RN', 5601, 'RIO GRANDE DO NORTE', 0, 'RN', 'Rio Grande do Norte', 1),
(639, 'RS', 5601, 'RIO GRANDE DO SUL', 0, 'RS', 'Rio Grande do Sul', 1),
(640, 'RO', 5601, 'RONDONIA', 0, 'RO', 'Rondônia', 1),
(641, 'RR', 5601, 'RORAIMA', 0, 'RR', 'Roraima', 1),
(642, 'SC', 5601, 'SANTA CATARINA', 0, 'SC', 'Santa Catarina', 1),
(643, 'SE', 5601, 'SERGIPE', 0, 'SE', 'Sergipe', 1),
(644, 'SP', 5601, 'SAO PAULO', 0, 'SP', 'Sao Paulo', 1),
(645, 'TO', 5601, 'TOCANTINS', 0, 'TO', 'Tocantins', 1),
(646, 'DF', 5601, 'DISTRITO FEDERAL', 0, 'DF', 'Distrito Federal', 1),
(647, '151', 6715, '', 0, '151', 'Arica', 1),
(648, '152', 6715, '', 0, '152', 'Parinacota', 1),
(649, '011', 6701, '', 0, '011', 'Iquique', 1),
(650, '014', 6701, '', 0, '014', 'Tamarugal', 1),
(651, '021', 6702, '', 0, '021', 'Antofagasa', 1),
(652, '022', 6702, '', 0, '022', 'El Loa', 1),
(653, '023', 6702, '', 0, '023', 'Tocopilla', 1),
(654, '031', 6703, '', 0, '031', 'Copiapó', 1),
(655, '032', 6703, '', 0, '032', 'Chañaral', 1),
(656, '033', 6703, '', 0, '033', 'Huasco', 1),
(657, '041', 6704, '', 0, '041', 'Elqui', 1),
(658, '042', 6704, '', 0, '042', 'Choapa', 1),
(659, '043', 6704, '', 0, '043', 'Limarí', 1),
(660, '051', 6705, '', 0, '051', 'Valparaíso', 1),
(661, '052', 6705, '', 0, '052', 'Isla de Pascua', 1),
(662, '053', 6705, '', 0, '053', 'Los Andes', 1),
(663, '054', 6705, '', 0, '054', 'Petorca', 1),
(664, '055', 6705, '', 0, '055', 'Quillota', 1),
(665, '056', 6705, '', 0, '056', 'San Antonio', 1),
(666, '057', 6705, '', 0, '057', 'San Felipe de Aconcagua', 1),
(667, '058', 6705, '', 0, '058', 'Marga Marga', 1),
(668, '061', 6706, '', 0, '061', 'Cachapoal', 1),
(669, '062', 6706, '', 0, '062', 'Cardenal Caro', 1),
(670, '063', 6706, '', 0, '063', 'Colchagua', 1),
(671, '071', 6707, '', 0, '071', 'Talca', 1),
(672, '072', 6707, '', 0, '072', 'Cauquenes', 1),
(673, '073', 6707, '', 0, '073', 'Curicó', 1),
(674, '074', 6707, '', 0, '074', 'Linares', 1),
(675, '081', 6708, '', 0, '081', 'Concepción', 1),
(676, '082', 6708, '', 0, '082', 'Arauco', 1),
(677, '083', 6708, '', 0, '083', 'Biobío', 1),
(678, '084', 6708, '', 0, '084', 'Ñuble', 1),
(679, '091', 6709, '', 0, '091', 'Cautín', 1),
(680, '092', 6709, '', 0, '092', 'Malleco', 1),
(681, '141', 6714, '', 0, '141', 'Valdivia', 1),
(682, '142', 6714, '', 0, '142', 'Ranco', 1),
(683, '101', 6710, '', 0, '101', 'Llanquihue', 1),
(684, '102', 6710, '', 0, '102', 'Chiloé', 1),
(685, '103', 6710, '', 0, '103', 'Osorno', 1),
(686, '104', 6710, '', 0, '104', 'Palena', 1),
(687, '111', 6711, '', 0, '111', 'Coihaique', 1),
(688, '112', 6711, '', 0, '112', 'Aisén', 1),
(689, '113', 6711, '', 0, '113', 'Capitán Prat', 1),
(690, '114', 6711, '', 0, '114', 'General Carrera', 1),
(691, '121', 6712, '', 0, '121', 'Magallanes', 1),
(692, '122', 6712, '', 0, '122', 'Antártica Chilena', 1),
(693, '123', 6712, '', 0, '123', 'Tierra del Fuego', 1),
(694, '124', 6712, '', 0, '124', 'Última Esperanza', 1),
(695, '131', 6713, '', 0, '131', 'Santiago', 1),
(696, '132', 6713, '', 0, '132', 'Cordillera', 1),
(697, '133', 6713, '', 0, '133', 'Chacabuco', 1),
(698, '134', 6713, '', 0, '134', 'Maipo', 1),
(699, '135', 6713, '', 0, '135', 'Melipilla', 1),
(700, '136', 6713, '', 0, '136', 'Talagante', 1),
(701, 'AN', 11701, NULL, 0, 'AN', 'Andaman & Nicobar', 1),
(702, 'AP', 11701, NULL, 0, 'AP', 'Andhra Pradesh', 1),
(703, 'AR', 11701, NULL, 0, 'AR', 'Arunachal Pradesh', 1),
(704, 'AS', 11701, NULL, 0, 'AS', 'Assam', 1),
(705, 'BR', 11701, NULL, 0, 'BR', 'Bihar', 1),
(706, 'CG', 11701, NULL, 0, 'CG', 'Chattisgarh', 1),
(707, 'CH', 11701, NULL, 0, 'CH', 'Chandigarh', 1),
(708, 'DD', 11701, NULL, 0, 'DD', 'Daman & Diu', 1),
(709, 'DL', 11701, NULL, 0, 'DL', 'Delhi', 1),
(710, 'DN', 11701, NULL, 0, 'DN', 'Dadra and Nagar Haveli', 1),
(711, 'GA', 11701, NULL, 0, 'GA', 'Goa', 1),
(712, 'GJ', 11701, NULL, 0, 'GJ', 'Gujarat', 1),
(713, 'HP', 11701, NULL, 0, 'HP', 'Himachal Pradesh', 1),
(714, 'HR', 11701, NULL, 0, 'HR', 'Haryana', 1),
(715, 'JH', 11701, NULL, 0, 'JH', 'Jharkhand', 1),
(716, 'JK', 11701, NULL, 0, 'JK', 'Jammu & Kashmir', 1),
(717, 'KA', 11701, NULL, 0, 'KA', 'Karnataka', 1),
(718, 'KL', 11701, NULL, 0, 'KL', 'Kerala', 1),
(719, 'LD', 11701, NULL, 0, 'LD', 'Lakshadweep', 1),
(720, 'MH', 11701, NULL, 0, 'MH', 'Maharashtra', 1),
(721, 'ML', 11701, NULL, 0, 'ML', 'Meghalaya', 1),
(722, 'MN', 11701, NULL, 0, 'MN', 'Manipur', 1),
(723, 'MP', 11701, NULL, 0, 'MP', 'Madhya Pradesh', 1),
(724, 'MZ', 11701, NULL, 0, 'MZ', 'Mizoram', 1),
(725, 'NL', 11701, NULL, 0, 'NL', 'Nagaland', 1),
(726, 'OR', 11701, NULL, 0, 'OR', 'Orissa', 1),
(727, 'PB', 11701, NULL, 0, 'PB', 'Punjab', 1),
(728, 'PY', 11701, NULL, 0, 'PY', 'Puducherry', 1),
(729, 'RJ', 11701, NULL, 0, 'RJ', 'Rajasthan', 1),
(730, 'SK', 11701, NULL, 0, 'SK', 'Sikkim', 1),
(731, 'TN', 11701, NULL, 0, 'TN', 'Tamil Nadu', 1),
(732, 'TR', 11701, NULL, 0, 'TR', 'Tripura', 1),
(733, 'UL', 11701, NULL, 0, 'UL', 'Uttarakhand', 1),
(734, 'UP', 11701, NULL, 0, 'UP', 'Uttar Pradesh', 1),
(735, 'WB', 11701, NULL, 0, 'WB', 'West Bengal', 1),
(736, 'DIF', 15401, '', 0, 'DIF', 'Distrito Federal', 1),
(737, 'AGS', 15401, '', 0, 'AGS', 'Aguascalientes', 1),
(738, 'BCN', 15401, '', 0, 'BCN', 'Baja California Norte', 1),
(739, 'BCS', 15401, '', 0, 'BCS', 'Baja California Sur', 1),
(740, 'CAM', 15401, '', 0, 'CAM', 'Campeche', 1),
(741, 'CHP', 15401, '', 0, 'CHP', 'Chiapas', 1),
(742, 'CHI', 15401, '', 0, 'CHI', 'Chihuahua', 1),
(743, 'COA', 15401, '', 0, 'COA', 'Coahuila', 1),
(744, 'COL', 15401, '', 0, 'COL', 'Colima', 1),
(745, 'DUR', 15401, '', 0, 'DUR', 'Durango', 1),
(746, 'GTO', 15401, '', 0, 'GTO', 'Guanajuato', 1),
(747, 'GRO', 15401, '', 0, 'GRO', 'Guerrero', 1),
(748, 'HGO', 15401, '', 0, 'HGO', 'Hidalgo', 1),
(749, 'JAL', 15401, '', 0, 'JAL', 'Jalisco', 1),
(750, 'MEX', 15401, '', 0, 'MEX', 'México', 1),
(751, 'MIC', 15401, '', 0, 'MIC', 'Michoacán de Ocampo', 1),
(752, 'MOR', 15401, '', 0, 'MOR', 'Morelos', 1),
(753, 'NAY', 15401, '', 0, 'NAY', 'Nayarit', 1),
(754, 'NLE', 15401, '', 0, 'NLE', 'Nuevo León', 1),
(755, 'OAX', 15401, '', 0, 'OAX', 'Oaxaca', 1),
(756, 'PUE', 15401, '', 0, 'PUE', 'Puebla', 1),
(757, 'QRO', 15401, '', 0, 'QRO', 'Querétaro', 1),
(758, 'ROO', 15401, '', 0, 'ROO', 'Quintana Roo', 1),
(759, 'SLP', 15401, '', 0, 'SLP', 'San Luis Potosí', 1),
(760, 'SIN', 15401, '', 0, 'SIN', 'Sinaloa', 1),
(761, 'SON', 15401, '', 0, 'SON', 'Sonora', 1),
(762, 'TAB', 15401, '', 0, 'TAB', 'Tabasco', 1),
(763, 'TAM', 15401, '', 0, 'TAM', 'Tamaulipas', 1),
(764, 'TLX', 15401, '', 0, 'TLX', 'Tlaxcala', 1),
(765, 'VER', 15401, '', 0, 'VER', 'Veracruz', 1),
(766, 'YUC', 15401, '', 0, 'YUC', 'Yucatán', 1),
(767, 'ZAC', 15401, '', 0, 'ZAC', 'Zacatecas', 1),
(768, 'ANT', 7001, '', 0, 'ANT', 'Antioquia', 1),
(769, 'BOL', 7001, '', 0, 'BOL', 'Bolívar', 1),
(770, 'BOY', 7001, '', 0, 'BOY', 'Boyacá', 1),
(771, 'CAL', 7001, '', 0, 'CAL', 'Caldas', 1),
(772, 'CAU', 7001, '', 0, 'CAU', 'Cauca', 1),
(773, 'CUN', 7001, '', 0, 'CUN', 'Cundinamarca', 1),
(774, 'HUI', 7001, '', 0, 'HUI', 'Huila', 1),
(775, 'LAG', 7001, '', 0, 'LAG', 'La Guajira', 1),
(776, 'MET', 7001, '', 0, 'MET', 'Meta', 1),
(777, 'NAR', 7001, '', 0, 'NAR', 'Nariño', 1),
(778, 'NDS', 7001, '', 0, 'NDS', 'Norte de Santander', 1),
(779, 'SAN', 7001, '', 0, 'SAN', 'Santander', 1),
(780, 'SUC', 7001, '', 0, 'SUC', 'Sucre', 1),
(781, 'TOL', 7001, '', 0, 'TOL', 'Tolima', 1),
(782, 'VAC', 7001, '', 0, 'VAC', 'Valle del Cauca', 1),
(783, 'RIS', 7001, '', 0, 'RIS', 'Risalda', 1),
(784, 'ATL', 7001, '', 0, 'ATL', 'Atlántico', 1),
(785, 'COR', 7001, '', 0, 'COR', 'Córdoba', 1),
(786, 'SAP', 7001, '', 0, 'SAP', 'San Andrés, Providencia y Santa Catalina', 1),
(787, 'ARA', 7001, '', 0, 'ARA', 'Arauca', 1),
(788, 'CAS', 7001, '', 0, 'CAS', 'Casanare', 1),
(789, 'AMA', 7001, '', 0, 'AMA', 'Amazonas', 1),
(790, 'CAQ', 7001, '', 0, 'CAQ', 'Caquetá', 1),
(791, 'CHO', 7001, '', 0, 'CHO', 'Chocó', 1),
(792, 'GUA', 7001, '', 0, 'GUA', 'Guainía', 1),
(793, 'GUV', 7001, '', 0, 'GUV', 'Guaviare', 1),
(794, 'PUT', 7001, '', 0, 'PUT', 'Putumayo', 1),
(795, 'QUI', 7001, '', 0, 'QUI', 'Quindío', 1),
(796, 'VAU', 7001, '', 0, 'VAU', 'Vaupés', 1),
(797, 'BOG', 7001, '', 0, 'BOG', 'Bogotá', 1),
(798, 'VID', 7001, '', 0, 'VID', 'Vichada', 1),
(799, 'CES', 7001, '', 0, 'CES', 'Cesar', 1),
(800, 'MAG', 7001, '', 0, 'MAG', 'Magdalena', 1),
(801, 'AT', 11401, '', 0, 'AT', 'Atlántida', 1),
(802, 'CH', 11401, '', 0, 'CH', 'Choluteca', 1),
(803, 'CL', 11401, '', 0, 'CL', 'Colón', 1),
(804, 'CM', 11401, '', 0, 'CM', 'Comayagua', 1),
(805, 'CO', 11401, '', 0, 'CO', 'Copán', 1),
(806, 'CR', 11401, '', 0, 'CR', 'Cortés', 1),
(807, 'EP', 11401, '', 0, 'EP', 'El Paraíso', 1),
(808, 'FM', 11401, '', 0, 'FM', 'Francisco Morazán', 1),
(809, 'GD', 11401, '', 0, 'GD', 'Gracias a Dios', 1),
(810, 'IN', 11401, '', 0, 'IN', 'Intibucá', 1),
(811, 'IB', 11401, '', 0, 'IB', 'Islas de la Bahía', 1),
(812, 'LP', 11401, '', 0, 'LP', 'La Paz', 1),
(813, 'LM', 11401, '', 0, 'LM', 'Lempira', 1),
(814, 'OC', 11401, '', 0, 'OC', 'Ocotepeque', 1),
(815, 'OL', 11401, '', 0, 'OL', 'Olancho', 1),
(816, 'SB', 11401, '', 0, 'SB', 'Santa Bárbara', 1),
(817, 'VL', 11401, '', 0, 'VL', 'Valle', 1),
(818, 'YO', 11401, '', 0, 'YO', 'Yoro', 1),
(819, 'DC', 11401, '', 0, 'DC', 'Distrito Central', 1),
(820, 'CC', 4601, 'Oistins', 0, 'CC', 'Christ Church', 1),
(821, 'SA', 4601, 'Greenland', 0, 'SA', 'Saint Andrew', 1),
(822, 'SG', 4601, 'Bulkeley', 0, 'SG', 'Saint George', 1),
(823, 'JA', 4601, 'Holetown', 0, 'JA', 'Saint James', 1),
(824, 'SJ', 4601, 'Four Roads', 0, 'SJ', 'Saint John', 1),
(825, 'SB', 4601, 'Bathsheba', 0, 'SB', 'Saint Joseph', 1),
(826, 'SL', 4601, 'Crab Hill', 0, 'SL', 'Saint Lucy', 1),
(827, 'SM', 4601, 'Bridgetown', 0, 'SM', 'Saint Michael', 1),
(828, 'SP', 4601, 'Speightstown', 0, 'SP', 'Saint Peter', 1),
(829, 'SC', 4601, 'Crane', 0, 'SC', 'Saint Philip', 1),
(830, 'ST', 4601, 'Hillaby', 0, 'ST', 'Saint Thomas', 1),
(831, 'VE-L', 23201, '', 0, 'VE-L', 'Mérida', 1),
(832, 'VE-T', 23201, '', 0, 'VE-T', 'Trujillo', 1),
(833, 'VE-E', 23201, '', 0, 'VE-E', 'Barinas', 1),
(834, 'VE-M', 23202, '', 0, 'VE-M', 'Miranda', 1),
(835, 'VE-W', 23202, '', 0, 'VE-W', 'Vargas', 1),
(836, 'VE-A', 23202, '', 0, 'VE-A', 'Distrito Capital', 1),
(837, 'VE-D', 23203, '', 0, 'VE-D', 'Aragua', 1),
(838, 'VE-G', 23203, '', 0, 'VE-G', 'Carabobo', 1),
(839, 'VE-I', 23204, '', 0, 'VE-I', 'Falcón', 1),
(840, 'VE-K', 23204, '', 0, 'VE-K', 'Lara', 1),
(841, 'VE-U', 23204, '', 0, 'VE-U', 'Yaracuy', 1),
(842, 'VE-F', 23205, '', 0, 'VE-F', 'Bolívar', 1),
(843, 'VE-X', 23205, '', 0, 'VE-X', 'Amazonas', 1),
(844, 'VE-Y', 23205, '', 0, 'VE-Y', 'Delta Amacuro', 1),
(845, 'VE-O', 23206, '', 0, 'VE-O', 'Nueva Esparta', 1),
(846, 'VE-Z', 23206, '', 0, 'VE-Z', 'Dependencias Federales', 1),
(847, 'VE-C', 23207, '', 0, 'VE-C', 'Apure', 1),
(848, 'VE-J', 23207, '', 0, 'VE-J', 'Guárico', 1),
(849, 'VE-H', 23207, '', 0, 'VE-H', 'Cojedes', 1),
(850, 'VE-P', 23207, '', 0, 'VE-P', 'Portuguesa', 1),
(851, 'VE-B', 23208, '', 0, 'VE-B', 'Anzoátegui', 1),
(852, 'VE-N', 23208, '', 0, 'VE-N', 'Monagas', 1),
(853, 'VE-R', 23208, '', 0, 'VE-R', 'Sucre', 1),
(854, 'VE-V', 23209, '', 0, 'VE-V', 'Zulia', 1),
(855, 'VE-S', 23209, '', 0, 'VE-S', 'Táchira', 1),
(856, 'AL01', 1301, '', 0, '', 'Wilaya d''Adrar', 1),
(857, 'AL02', 1301, '', 0, '', 'Wilaya de Chlef', 1),
(858, 'AL03', 1301, '', 0, '', 'Wilaya de Laghouat', 1),
(859, 'AL04', 1301, '', 0, '', 'Wilaya d''Oum El Bouaghi', 1),
(860, 'AL05', 1301, '', 0, '', 'Wilaya de Batna', 1),
(861, 'AL06', 1301, '', 0, '', 'Wilaya de Béjaïa', 1),
(862, 'AL07', 1301, '', 0, '', 'Wilaya de Biskra', 1),
(863, 'AL08', 1301, '', 0, '', 'Wilaya de Béchar', 1),
(864, 'AL09', 1301, '', 0, '', 'Wilaya de Blida', 1),
(865, 'AL11', 1301, '', 0, '', 'Wilaya de Bouira', 1),
(866, 'AL12', 1301, '', 0, '', 'Wilaya de Tamanrasset', 1),
(867, 'AL13', 1301, '', 0, '', 'Wilaya de Tébessa', 1),
(868, 'AL14', 1301, '', 0, '', 'Wilaya de Tlemcen', 1),
(869, 'AL15', 1301, '', 0, '', 'Wilaya de Tiaret', 1),
(870, 'AL16', 1301, '', 0, '', 'Wilaya de Tizi Ouzou', 1),
(871, 'AL17', 1301, '', 0, '', 'Wilaya d''Alger', 1),
(872, 'AL18', 1301, '', 0, '', 'Wilaya de Djelfa', 1),
(873, 'AL19', 1301, '', 0, '', 'Wilaya de Jijel', 1),
(874, 'AL20', 1301, '', 0, '', 'Wilaya de Sétif	', 1),
(875, 'AL21', 1301, '', 0, '', 'Wilaya de Saïda', 1),
(876, 'AL22', 1301, '', 0, '', 'Wilaya de Skikda', 1),
(877, 'AL23', 1301, '', 0, '', 'Wilaya de Sidi Bel Abbès', 1),
(878, 'AL24', 1301, '', 0, '', 'Wilaya d''Annaba', 1),
(879, 'AL25', 1301, '', 0, '', 'Wilaya de Guelma', 1),
(880, 'AL26', 1301, '', 0, '', 'Wilaya de Constantine', 1),
(881, 'AL27', 1301, '', 0, '', 'Wilaya de Médéa', 1),
(882, 'AL28', 1301, '', 0, '', 'Wilaya de Mostaganem', 1),
(883, 'AL29', 1301, '', 0, '', 'Wilaya de M''Sila', 1),
(884, 'AL30', 1301, '', 0, '', 'Wilaya de Mascara', 1),
(885, 'AL31', 1301, '', 0, '', 'Wilaya d''Ouargla', 1),
(886, 'AL32', 1301, '', 0, '', 'Wilaya d''Oran', 1),
(887, 'AL33', 1301, '', 0, '', 'Wilaya d''El Bayadh', 1),
(888, 'AL34', 1301, '', 0, '', 'Wilaya d''Illizi', 1),
(889, 'AL35', 1301, '', 0, '', 'Wilaya de Bordj Bou Arreridj', 1),
(890, 'AL36', 1301, '', 0, '', 'Wilaya de Boumerdès', 1),
(891, 'AL37', 1301, '', 0, '', 'Wilaya d''El Tarf', 1),
(892, 'AL38', 1301, '', 0, '', 'Wilaya de Tindouf', 1),
(893, 'AL39', 1301, '', 0, '', 'Wilaya de Tissemsilt', 1),
(894, 'AL40', 1301, '', 0, '', 'Wilaya d''El Oued', 1),
(895, 'AL41', 1301, '', 0, '', 'Wilaya de Khenchela', 1),
(896, 'AL42', 1301, '', 0, '', 'Wilaya de Souk Ahras', 1),
(897, 'AL43', 1301, '', 0, '', 'Wilaya de Tipaza', 1),
(898, 'AL44', 1301, '', 0, '', 'Wilaya de Mila', 1),
(899, 'AL45', 1301, '', 0, '', 'Wilaya d''Aïn Defla', 1),
(900, 'AL46', 1301, '', 0, '', 'Wilaya de Naâma', 1),
(901, 'AL47', 1301, '', 0, '', 'Wilaya d''Aïn Témouchent', 1),
(902, 'AL48', 1301, '', 0, '', 'Wilaya de Ghardaia', 1),
(903, 'AL49', 1301, '', 0, '', 'Wilaya de Relizane', 1),
(904, 'MA', 1209, '', 0, '', 'Province de Benslimane', 1),
(905, 'MA1', 1209, '', 0, '', 'Province de Berrechid', 1),
(906, 'MA2', 1209, '', 0, '', 'Province de Khouribga', 1),
(907, 'MA3', 1209, '', 0, '', 'Province de Settat', 1),
(908, 'MA4', 1210, '', 0, '', 'Province d''El Jadida', 1),
(909, 'MA5', 1210, '', 0, '', 'Province de Safi', 1),
(910, 'MA6', 1210, '', 0, '', 'Province de Sidi Bennour', 1),
(911, 'MA7', 1210, '', 0, '', 'Province de Youssoufia', 1),
(912, 'MA6B', 1205, '', 0, '', 'Préfecture de Fès', 1),
(913, 'MA7B', 1205, '', 0, '', 'Province de Boulemane', 1),
(914, 'MA8', 1205, '', 0, '', 'Province de Moulay Yacoub', 1),
(915, 'MA9', 1205, '', 0, '', 'Province de Sefrou', 1),
(916, 'MA8A', 1202, '', 0, '', 'Province de Kénitra', 1),
(917, 'MA9A', 1202, '', 0, '', 'Province de Sidi Kacem', 1),
(918, 'MA10', 1202, '', 0, '', 'Province de Sidi Slimane', 1),
(919, 'MA11', 1208, '', 0, '', 'Préfecture de Casablanca', 1),
(920, 'MA12', 1208, '', 0, '', 'Préfecture de Mohammédia', 1),
(921, 'MA13', 1208, '', 0, '', 'Province de Médiouna', 1),
(922, 'MA14', 1208, '', 0, '', 'Province de Nouaceur', 1),
(923, 'MA15', 1214, '', 0, '', 'Province d''Assa-Zag', 1),
(924, 'MA16', 1214, '', 0, '', 'Province d''Es-Semara', 1),
(925, 'MA17A', 1214, '', 0, '', 'Province de Guelmim', 1),
(926, 'MA18', 1214, '', 0, '', 'Province de Tata', 1),
(927, 'MA19', 1214, '', 0, '', 'Province de Tan-Tan', 1),
(928, 'MA15', 1215, '', 0, '', 'Province de Boujdour', 1),
(929, 'MA16', 1215, '', 0, '', 'Province de Lâayoune', 1),
(930, 'MA17', 1215, '', 0, '', 'Province de Tarfaya', 1),
(931, 'MA18', 1211, '', 0, '', 'Préfecture de Marrakech', 1),
(932, 'MA19', 1211, '', 0, '', 'Province d''Al Haouz', 1),
(933, 'MA20', 1211, '', 0, '', 'Province de Chichaoua', 1),
(934, 'MA21', 1211, '', 0, '', 'Province d''El Kelâa des Sraghna', 1),
(935, 'MA22', 1211, '', 0, '', 'Province d''Essaouira', 1),
(936, 'MA23', 1211, '', 0, '', 'Province de Rehamna', 1),
(937, 'MA24', 1206, '', 0, '', 'Préfecture de Meknès', 1),
(938, 'MA25', 1206, '', 0, '', 'Province d’El Hajeb', 1),
(939, 'MA26', 1206, '', 0, '', 'Province d''Errachidia', 1),
(940, 'MA27', 1206, '', 0, '', 'Province d’Ifrane', 1),
(941, 'MA28', 1206, '', 0, '', 'Province de Khénifra', 1),
(942, 'MA29', 1206, '', 0, '', 'Province de Midelt', 1),
(943, 'MA30', 1204, '', 0, '', 'Préfecture d''Oujda-Angad', 1),
(944, 'MA31', 1204, '', 0, '', 'Province de Berkane', 1),
(945, 'MA32', 1204, '', 0, '', 'Province de Driouch', 1),
(946, 'MA33', 1204, '', 0, '', 'Province de Figuig', 1),
(947, 'MA34', 1204, '', 0, '', 'Province de Jerada', 1),
(948, 'MA35', 1204, '', 0, '', 'Province de Nadorgg', 1),
(949, 'MA36', 1204, '', 0, '', 'Province de Taourirt', 1),
(950, 'MA37', 1216, '', 0, '', 'Province d''Aousserd', 1),
(951, 'MA38', 1216, '', 0, '', 'Province d''Oued Ed-Dahab', 1),
(952, 'MA39', 1207, '', 0, '', 'Préfecture de Rabat', 1),
(953, 'MA40', 1207, '', 0, '', 'Préfecture de Skhirat-Témara', 1),
(954, 'MA41', 1207, '', 0, '', 'Préfecture de Salé', 1),
(955, 'MA42', 1207, '', 0, '', 'Province de Khémisset', 1),
(956, 'MA43', 1213, '', 0, '', 'Préfecture d''Agadir Ida-Outanane', 1),
(957, 'MA44', 1213, '', 0, '', 'Préfecture d''Inezgane-Aït Melloul', 1),
(958, 'MA45', 1213, '', 0, '', 'Province de Chtouka-Aït Baha', 1),
(959, 'MA46', 1213, '', 0, '', 'Province d''Ouarzazate', 1),
(960, 'MA47', 1213, '', 0, '', 'Province de Sidi Ifni', 1),
(961, 'MA48', 1213, '', 0, '', 'Province de Taroudant', 1),
(962, 'MA49', 1213, '', 0, '', 'Province de Tinghir', 1),
(963, 'MA50', 1213, '', 0, '', 'Province de Tiznit', 1),
(964, 'MA51', 1213, '', 0, '', 'Province de Zagora', 1),
(965, 'MA52', 1212, '', 0, '', 'Province d''Azilal', 1),
(966, 'MA53', 1212, '', 0, '', 'Province de Beni Mellal', 1),
(967, 'MA54', 1212, '', 0, '', 'Province de Fquih Ben Salah', 1),
(968, 'MA55', 1201, '', 0, '', 'Préfecture de M''diq-Fnideq', 1),
(969, 'MA56', 1201, '', 0, '', 'Préfecture de Tanger-Asilah', 1),
(970, 'MA57', 1201, '', 0, '', 'Province de Chefchaouen', 1),
(971, 'MA58', 1201, '', 0, '', 'Province de Fahs-Anjra', 1),
(972, 'MA59', 1201, '', 0, '', 'Province de Larache', 1),
(973, 'MA60', 1201, '', 0, '', 'Province d''Ouezzane', 1);
INSERT INTO `test_c_departements` (`rowid`, `code_departement`, `fk_region`, `cheflieu`, `tncc`, `ncc`, `nom`, `active`) VALUES
(974, 'MA61', 1201, '', 0, '', 'Province de Tétouan', 1),
(975, 'MA62', 1203, '', 0, '', 'Province de Guercif', 1),
(976, 'MA63', 1203, '', 0, '', 'Province d''Al Hoceïma', 1),
(977, 'MA64', 1203, '', 0, '', 'Province de Taounate', 1),
(978, 'MA65', 1203, '', 0, '', 'Province de Taza', 1),
(979, 'MA6A', 1205, '', 0, '', 'Préfecture de Fès', 1),
(980, 'MA7A', 1205, '', 0, '', 'Province de Boulemane', 1),
(981, 'MA15A', 1214, '', 0, '', 'Province d''Assa-Zag', 1),
(982, 'MA16A', 1214, '', 0, '', 'Province d''Es-Semara', 1),
(983, 'MA18A', 1211, '', 0, '', 'Préfecture de Marrakech', 1),
(984, 'MA19A', 1214, '', 0, '', 'Province de Tan-Tan', 1),
(985, 'MA19B', 1214, '', 0, '', 'Province de Tan-Tan', 1),
(986, 'TN01', 1001, '', 0, '', 'Ariana', 1),
(987, 'TN02', 1001, '', 0, '', 'Béja', 1),
(988, 'TN03', 1001, '', 0, '', 'Ben Arous', 1),
(989, 'TN04', 1001, '', 0, '', 'Bizerte', 1),
(990, 'TN05', 1001, '', 0, '', 'Gabès', 1),
(991, 'TN06', 1001, '', 0, '', 'Gafsa', 1),
(992, 'TN07', 1001, '', 0, '', 'Jendouba', 1),
(993, 'TN08', 1001, '', 0, '', 'Kairouan', 1),
(994, 'TN09', 1001, '', 0, '', 'Kasserine', 1),
(995, 'TN10', 1001, '', 0, '', 'Kébili', 1),
(996, 'TN11', 1001, '', 0, '', 'La Manouba', 1),
(997, 'TN12', 1001, '', 0, '', 'Le Kef', 1),
(998, 'TN13', 1001, '', 0, '', 'Mahdia', 1),
(999, 'TN14', 1001, '', 0, '', 'Médenine', 1),
(1000, 'TN15', 1001, '', 0, '', 'Monastir', 1),
(1001, 'TN16', 1001, '', 0, '', 'Nabeul', 1),
(1002, 'TN17', 1001, '', 0, '', 'Sfax', 1),
(1003, 'TN18', 1001, '', 0, '', 'Sidi Bouzid', 1),
(1004, 'TN19', 1001, '', 0, '', 'Siliana', 1),
(1005, 'TN20', 1001, '', 0, '', 'Sousse', 1),
(1006, 'TN21', 1001, '', 0, '', 'Tataouine', 1),
(1007, 'TN22', 1001, '', 0, '', 'Tozeur', 1),
(1008, 'TN23', 1001, '', 0, '', 'Tunis', 1),
(1009, 'TN24', 1001, '', 0, '', 'Zaghouan', 1);

-- --------------------------------------------------------

--
-- Table structure for table `test_c_ecotaxe`
--

DROP TABLE IF EXISTS `test_c_ecotaxe`;
CREATE TABLE `test_c_ecotaxe` (
  `rowid` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `libelle` varchar(255) DEFAULT NULL,
  `price` double(24,8) DEFAULT NULL,
  `organization` varchar(255) DEFAULT NULL,
  `fk_pays` int(11) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_c_ecotaxe`
--

INSERT INTO `test_c_ecotaxe` (`rowid`, `code`, `libelle`, `price`, `organization`, `fk_pays`, `active`) VALUES
(1, 'ER-A-A', 'Materiels electriques < 0,2kg', 0.01000000, 'ERP', 1, 1),
(2, 'ER-A-B', 'Materiels electriques >= 0,2 kg et < 0,5 kg', 0.03000000, 'ERP', 1, 1),
(3, 'ER-A-C', 'Materiels electriques >= 0,5 kg et < 1 kg', 0.04000000, 'ERP', 1, 1),
(4, 'ER-A-D', 'Materiels electriques >= 1 kg et < 2 kg', 0.13000000, 'ERP', 1, 1),
(5, 'ER-A-E', 'Materiels electriques >= 2 kg et < 4kg', 0.21000000, 'ERP', 1, 1),
(6, 'ER-A-F', 'Materiels electriques >= 4 kg et < 8 kg', 0.42000000, 'ERP', 1, 1),
(7, 'ER-A-G', 'Materiels electriques >= 8 kg et < 15 kg', 0.84000000, 'ERP', 1, 1),
(8, 'ER-A-H', 'Materiels electriques >= 15 kg et < 20 kg', 1.25000000, 'ERP', 1, 1),
(9, 'ER-A-I', 'Materiels electriques >= 20 kg et < 30 kg', 1.88000000, 'ERP', 1, 1),
(10, 'ER-A-J', 'Materiels electriques >= 30 kg', 3.34000000, 'ERP', 1, 1),
(11, 'ER-M-1', 'TV, Moniteurs < 9kg', 0.84000000, 'ERP', 1, 1),
(12, 'ER-M-2', 'TV, Moniteurs >= 9kg et < 15kg', 1.67000000, 'ERP', 1, 1),
(13, 'ER-M-3', 'TV, Moniteurs >= 15kg et < 30kg', 3.34000000, 'ERP', 1, 1),
(14, 'ER-M-4', 'TV, Moniteurs >= 30 kg', 6.69000000, 'ERP', 1, 1),
(15, 'EC-A-A', 'Materiels electriques  0,2 kg max', 0.00840000, 'Ecologic', 1, 1),
(16, 'EC-A-B', 'Materiels electriques 0,21 kg min - 0,50 kg max', 0.02500000, 'Ecologic', 1, 1),
(17, 'EC-A-C', 'Materiels electriques  0,51 kg min - 1 kg max', 0.04000000, 'Ecologic', 1, 1),
(18, 'EC-A-D', 'Materiels electriques  1,01 kg min - 2,5 kg max', 0.13000000, 'Ecologic', 1, 1),
(19, 'EC-A-E', 'Materiels electriques  2,51 kg min - 4 kg max', 0.21000000, 'Ecologic', 1, 1),
(20, 'EC-A-F', 'Materiels electriques 4,01 kg min - 8 kg max', 0.42000000, 'Ecologic', 1, 1),
(21, 'EC-A-G', 'Materiels electriques  8,01 kg min - 12 kg max', 0.63000000, 'Ecologic', 1, 1),
(22, 'EC-A-H', 'Materiels electriques 12,01 kg min - 20 kg max', 1.05000000, 'Ecologic', 1, 1),
(23, 'EC-A-I', 'Materiels electriques  20,01 kg min', 1.88000000, 'Ecologic', 1, 1),
(24, 'EC-M-1', 'TV, Moniteurs 9 kg max', 0.84000000, 'Ecologic', 1, 1),
(25, 'EC-M-2', 'TV, Moniteurs 9,01 kg min - 18 kg max', 1.67000000, 'Ecologic', 1, 1),
(26, 'EC-M-3', 'TV, Moniteurs 18,01 kg min - 36 kg max', 3.34000000, 'Ecologic', 1, 1),
(27, 'EC-M-4', 'TV, Moniteurs 36,01 kg min', 6.69000000, 'Ecologic', 1, 1),
(28, 'ES-M-1', 'TV, Moniteurs <= 20 pouces', 0.84000000, 'Eco-systemes', 1, 1),
(29, 'ES-M-2', 'TV, Moniteurs > 20 pouces et <= 32 pouces', 3.34000000, 'Eco-systemes', 1, 1),
(30, 'ES-M-3', 'TV, Moniteurs > 32 pouces et autres grands ecrans', 6.69000000, 'Eco-systemes', 1, 1),
(31, 'ES-A-A', 'Ordinateur fixe, Audio home systems (HIFI), elements hifi separes', 0.84000000, 'Eco-systemes', 1, 1),
(32, 'ES-A-B', 'Ordinateur portable, CD-RCR, VCR, lecteurs et enregistreurs DVD, instruments de musique et caisses de resonance, haut parleurs...', 0.25000000, 'Eco-systemes', 1, 1),
(33, 'ES-A-C', 'Imprimante, photocopieur, telecopieur', 0.42000000, 'Eco-systemes', 1, 1),
(34, 'ES-A-D', 'Accessoires, clavier, souris, PDA, imprimante photo, appareil photo, gps, telephone, repondeur, telephone sans fil, modem, telecommande, casque, camescope, baladeur mp3, radio portable, radio K7 et CD portable, radio reveil', 0.08400000, 'Eco-systemes', 1, 1),
(35, 'ES-A-E', 'GSM', 0.00840000, 'Eco-systemes', 1, 1),
(36, 'ES-A-F', 'Jouets et equipements de loisirs et de sports < 0,5 kg', 0.04200000, 'Eco-systemes', 1, 1),
(37, 'ES-A-G', 'Jouets et equipements de loisirs et de sports > 0,5 kg', 0.17000000, 'Eco-systemes', 1, 1),
(38, 'ES-A-H', 'Jouets et equipements de loisirs et de sports > 10 kg', 1.25000000, 'Eco-systemes', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `test_c_effectif`
--

DROP TABLE IF EXISTS `test_c_effectif`;
CREATE TABLE `test_c_effectif` (
  `id` int(11) NOT NULL,
  `code` varchar(12) NOT NULL,
  `libelle` varchar(30) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `module` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_c_effectif`
--

INSERT INTO `test_c_effectif` (`id`, `code`, `libelle`, `active`, `module`) VALUES
(0, 'EF0', '-', 1, NULL),
(1, 'EF1-5', '1 - 5', 1, NULL),
(2, 'EF6-10', '6 - 10', 1, NULL),
(3, 'EF11-50', '11 - 50', 1, NULL),
(4, 'EF51-100', '51 - 100', 1, NULL),
(5, 'EF100-500', '100 - 500', 1, NULL),
(6, 'EF500-', '> 500', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `test_c_email_templates`
--

DROP TABLE IF EXISTS `test_c_email_templates`;
CREATE TABLE `test_c_email_templates` (
  `rowid` int(11) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `type_template` varchar(32) DEFAULT NULL,
  `datec` datetime DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `content` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_c_field_list`
--

DROP TABLE IF EXISTS `test_c_field_list`;
CREATE TABLE `test_c_field_list` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `element` varchar(64) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `name` varchar(32) NOT NULL,
  `alias` varchar(32) NOT NULL,
  `title` varchar(32) NOT NULL,
  `align` varchar(6) DEFAULT 'left',
  `sort` tinyint(4) NOT NULL DEFAULT '1',
  `search` tinyint(4) NOT NULL DEFAULT '0',
  `enabled` varchar(255) DEFAULT '1',
  `rang` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_c_forme_juridique`
--

DROP TABLE IF EXISTS `test_c_forme_juridique`;
CREATE TABLE `test_c_forme_juridique` (
  `rowid` int(11) NOT NULL,
  `code` int(11) NOT NULL,
  `fk_pays` int(11) NOT NULL,
  `libelle` varchar(255) DEFAULT NULL,
  `isvatexempted` tinyint(4) NOT NULL DEFAULT '0',
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `module` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_c_forme_juridique`
--

INSERT INTO `test_c_forme_juridique` (`rowid`, `code`, `fk_pays`, `libelle`, `isvatexempted`, `active`, `module`) VALUES
(1, 0, 0, '-', 0, 1, NULL),
(2, 2301, 23, 'Monotributista', 0, 0, NULL),
(3, 2302, 23, 'Sociedad Civil', 0, 0, NULL),
(4, 2303, 23, 'Sociedades Comerciales', 0, 0, NULL),
(5, 2304, 23, 'Sociedades de Hecho', 0, 0, NULL),
(6, 2305, 23, 'Sociedades Irregulares', 0, 0, NULL),
(7, 2306, 23, 'Sociedad Colectiva', 0, 0, NULL),
(8, 2307, 23, 'Sociedad en Comandita Simple', 0, 0, NULL),
(9, 2308, 23, 'Sociedad de Capital e Industria', 0, 0, NULL),
(10, 2309, 23, 'Sociedad Accidental o en participación', 0, 0, NULL),
(11, 2310, 23, 'Sociedad de Responsabilidad Limitada', 0, 0, NULL),
(12, 2311, 23, 'Sociedad Anónima', 0, 0, NULL),
(13, 2312, 23, 'Sociedad Anónima con Participación Estatal Mayoritaria', 0, 0, NULL),
(14, 2313, 23, 'Sociedad en Comandita por Acciones (arts. 315 a 324, LSC)', 0, 0, NULL),
(15, 11, 1, 'Artisan Commerçant (EI)', 0, 0, NULL),
(16, 12, 1, 'Commerçant (EI)', 0, 0, NULL),
(17, 13, 1, 'Artisan (EI)', 0, 0, NULL),
(18, 14, 1, 'Officier public ou ministériel', 0, 0, NULL),
(19, 15, 1, 'Profession libérale (EI)', 0, 0, NULL),
(20, 16, 1, 'Exploitant agricole', 0, 0, NULL),
(21, 17, 1, 'Agent commercial', 0, 0, NULL),
(22, 18, 1, 'Associé Gérant de société', 0, 0, NULL),
(23, 19, 1, 'Personne physique', 0, 0, NULL),
(24, 21, 1, 'Indivision', 0, 0, NULL),
(25, 22, 1, 'Société créée de fait', 0, 0, NULL),
(26, 23, 1, 'Société en participation', 0, 0, NULL),
(27, 27, 1, 'Paroisse hors zone concordataire', 0, 0, NULL),
(28, 29, 1, 'Groupement de droit privé non doté de la personnalité morale', 0, 0, NULL),
(29, 31, 1, 'Personne morale de droit étranger, immatriculée au RCS', 0, 0, NULL),
(30, 32, 1, 'Personne morale de droit étranger, non immatriculée au RCS', 0, 0, NULL),
(31, 35, 1, 'Régime auto-entrepreneur', 0, 0, NULL),
(32, 41, 1, 'Établissement public ou régie à caractère industriel ou commercial', 0, 0, NULL),
(33, 51, 1, 'Société coopérative commerciale particulière', 0, 0, NULL),
(34, 52, 1, 'Société en nom collectif', 0, 0, NULL),
(35, 53, 1, 'Société en commandite', 0, 0, NULL),
(36, 54, 1, 'Société à responsabilité limitée (SARL)', 0, 0, NULL),
(37, 55, 1, 'Société anonyme à conseil d administration', 0, 0, NULL),
(38, 56, 1, 'Société anonyme à directoire', 0, 0, NULL),
(39, 57, 1, 'Société par actions simplifiée (SAS)', 0, 0, NULL),
(40, 58, 1, 'Entreprise Unipersonnelle à Responsabilité Limitée (EURL)', 0, 0, NULL),
(41, 59, 1, 'Société par actions simplifiée unipersonnelle (SASU)', 0, 0, NULL),
(42, 61, 1, 'Caisse d''épargne et de prévoyance', 0, 0, NULL),
(43, 62, 1, 'Groupement d''intérêt économique (GIE)', 0, 0, NULL),
(44, 63, 1, 'Société coopérative agricole', 0, 0, NULL),
(45, 64, 1, 'Société non commerciale d assurances', 0, 0, NULL),
(46, 65, 1, 'Société civile', 0, 0, NULL),
(47, 69, 1, 'Personnes de droit privé inscrites au RCS', 0, 0, NULL),
(48, 71, 1, 'Administration de l état', 0, 0, NULL),
(49, 72, 1, 'Collectivité territoriale', 0, 0, NULL),
(50, 73, 1, 'Établissement public administratif', 0, 0, NULL),
(51, 74, 1, 'Personne morale de droit public administratif', 0, 0, NULL),
(52, 81, 1, 'Organisme gérant régime de protection social à adhésion obligatoire', 0, 0, NULL),
(53, 82, 1, 'Organisme mutualiste', 0, 0, NULL),
(54, 83, 1, 'Comité d entreprise', 0, 0, NULL),
(55, 84, 1, 'Organisme professionnel', 0, 0, NULL),
(56, 85, 1, 'Organisme de retraite à adhésion non obligatoire', 0, 0, NULL),
(57, 91, 1, 'Syndicat de propriétaires', 0, 0, NULL),
(58, 92, 1, 'Association loi 1901 ou assimilé', 0, 0, NULL),
(59, 93, 1, 'Fondation', 0, 0, NULL),
(60, 99, 1, 'Personne morale de droit privé', 0, 0, NULL),
(61, 200, 2, 'Indépendant', 0, 0, NULL),
(62, 201, 2, 'SPRL - Société à responsabilité limitée', 0, 0, NULL),
(63, 202, 2, 'SA   - Société Anonyme', 0, 0, NULL),
(64, 203, 2, 'SCRL - Société coopérative à responsabilité limitée', 0, 0, NULL),
(65, 204, 2, 'ASBL - Association sans but Lucratif', 0, 0, NULL),
(66, 205, 2, 'SCRI - Société coopérative à responsabilité illimitée', 0, 0, NULL),
(67, 206, 2, 'SCS  - Société en commandite simple', 0, 0, NULL),
(68, 207, 2, 'SCA  - Société en commandite par action', 0, 0, NULL),
(69, 208, 2, 'SNC  - Société en nom collectif', 0, 0, NULL),
(70, 209, 2, 'GIE  - Groupement d intérêt économique', 0, 0, NULL),
(71, 210, 2, 'GEIE - Groupement européen d intérêt économique', 0, 0, NULL),
(72, 220, 2, 'Eenmanszaak', 0, 0, NULL),
(73, 221, 2, 'BVBA - Besloten vennootschap met beperkte aansprakelijkheid', 0, 0, NULL),
(74, 222, 2, 'NV   - Naamloze Vennootschap', 0, 0, NULL),
(75, 223, 2, 'CVBA - Coöperatieve vennootschap met beperkte aansprakelijkheid', 0, 0, NULL),
(76, 224, 2, 'VZW  - Vereniging zonder winstoogmerk', 0, 0, NULL),
(77, 225, 2, 'CVOA - Coöperatieve vennootschap met onbeperkte aansprakelijkheid ', 0, 0, NULL),
(78, 226, 2, 'GCV  - Gewone commanditaire vennootschap', 0, 0, NULL),
(79, 227, 2, 'Comm.VA - Commanditaire vennootschap op aandelen', 0, 0, NULL),
(80, 228, 2, 'VOF  - Vennootschap onder firma', 0, 0, NULL),
(81, 229, 2, 'VS0  - Vennootschap met sociaal oogmerk', 0, 0, NULL),
(82, 500, 5, 'GmbH - Gesellschaft mit beschränkter Haftung', 0, 0, NULL),
(83, 501, 5, 'AG - Aktiengesellschaft ', 0, 0, NULL),
(84, 502, 5, 'GmbH&Co. KG - Gesellschaft mit beschränkter Haftung & Compagnie Kommanditgesellschaft', 0, 0, NULL),
(85, 503, 5, 'Gewerbe - Personengesellschaft', 0, 0, NULL),
(86, 504, 5, 'UG - Unternehmergesellschaft -haftungsbeschränkt-', 0, 0, NULL),
(87, 505, 5, 'GbR - Gesellschaft des bürgerlichen Rechts', 0, 0, NULL),
(88, 506, 5, 'KG - Kommanditgesellschaft', 0, 0, NULL),
(89, 507, 5, 'Ltd. - Limited Company', 0, 0, NULL),
(90, 508, 5, 'OHG - Offene Handelsgesellschaft', 0, 0, NULL),
(91, 10201, 102, '??????? ??????????', 0, 0, NULL),
(92, 10202, 102, '????????  ??????????', 0, 0, NULL),
(93, 10203, 102, '????????? ???????? ?.?', 0, 0, NULL),
(94, 10204, 102, '??????????? ???????? ?.?', 0, 0, NULL),
(95, 10205, 102, '???????? ????????????? ??????? ?.?.?', 0, 0, NULL),
(96, 10206, 102, '??????? ???????? ?.?', 0, 0, NULL),
(97, 10207, 102, '??????? ?????????? ???????? ?.?.?', 0, 0, NULL),
(98, 10208, 102, '?????????????', 0, 0, NULL),
(99, 10209, 102, '??????????????', 0, 0, NULL),
(100, 301, 3, 'Società semplice', 0, 0, NULL),
(101, 302, 3, 'Società in nome collettivo s.n.c.', 0, 0, NULL),
(102, 303, 3, 'Società in accomandita semplice s.a.s.', 0, 0, NULL),
(103, 304, 3, 'Società per azioni s.p.a.', 0, 0, NULL),
(104, 305, 3, 'Società a responsabilità limitata s.r.l.', 0, 0, NULL),
(105, 306, 3, 'Società in accomandita per azioni s.a.p.a.', 0, 0, NULL),
(106, 307, 3, 'Società cooperativa a r.l.', 0, 0, NULL),
(107, 308, 3, 'Società consortile', 0, 0, NULL),
(108, 309, 3, 'Società europea', 0, 0, NULL),
(109, 310, 3, 'Società cooperativa europea', 0, 0, NULL),
(110, 311, 3, 'Società unipersonale', 0, 0, NULL),
(111, 312, 3, 'Società di professionisti', 0, 0, NULL),
(112, 313, 3, 'Società di fatto', 0, 0, NULL),
(113, 315, 3, 'Società apparente', 0, 0, NULL),
(114, 316, 3, 'Impresa individuale ', 0, 0, NULL),
(115, 317, 3, 'Impresa coniugale', 0, 0, NULL),
(116, 318, 3, 'Impresa familiare', 0, 0, NULL),
(117, 319, 3, 'Consorzio cooperativo', 0, 0, NULL),
(118, 320, 3, 'Società cooperativa sociale', 0, 0, NULL),
(119, 321, 3, 'Società cooperativa di consumo', 0, 0, NULL),
(120, 322, 3, 'Società cooperativa agricola', 0, 0, NULL),
(121, 323, 3, 'A.T.I. Associazione temporanea di imprese', 0, 0, NULL),
(122, 324, 3, 'R.T.I. Raggruppamento temporaneo di imprese', 0, 0, NULL),
(123, 325, 3, 'Studio associato', 0, 0, NULL),
(124, 600, 6, 'Raison Individuelle', 0, 0, NULL),
(125, 601, 6, 'Société Simple', 0, 0, NULL),
(126, 602, 6, 'Société en nom collectif', 0, 0, NULL),
(127, 603, 6, 'Société en commandite', 0, 0, NULL),
(128, 604, 6, 'Société anonyme (SA)', 0, 0, NULL),
(129, 605, 6, 'Société en commandite par actions', 0, 0, NULL),
(130, 606, 6, 'Société à responsabilité limitée (SARL)', 0, 0, NULL),
(131, 607, 6, 'Société coopérative', 0, 0, NULL),
(132, 608, 6, 'Association', 0, 0, NULL),
(133, 609, 6, 'Fondation', 0, 0, NULL),
(134, 700, 7, 'Sole Trader', 0, 0, NULL),
(135, 701, 7, 'Partnership', 0, 0, NULL),
(136, 702, 7, 'Private Limited Company by shares (LTD)', 0, 0, NULL),
(137, 703, 7, 'Public Limited Company', 0, 0, NULL),
(138, 704, 7, 'Workers Cooperative', 0, 0, NULL),
(139, 705, 7, 'Limited Liability Partnership', 0, 0, NULL),
(140, 706, 7, 'Franchise', 0, 0, NULL),
(141, 1000, 10, 'Société à responsabilité limitée (SARL)', 0, 0, NULL),
(142, 1001, 10, 'Société en Nom Collectif (SNC)', 0, 0, NULL),
(143, 1002, 10, 'Société en Commandite Simple (SCS)', 0, 0, NULL),
(144, 1003, 10, 'société en participation', 0, 0, NULL),
(145, 1004, 10, 'Société Anonyme (SA)', 0, 0, NULL),
(146, 1005, 10, 'Société Unipersonnelle à Responsabilité Limitée (SUARL)', 0, 0, NULL),
(147, 1006, 10, 'Groupement d''intérêt économique (GEI)', 0, 0, NULL),
(148, 1007, 10, 'Groupe de sociétés', 0, 0, NULL),
(149, 1701, 17, 'Eenmanszaak', 0, 0, NULL),
(150, 1702, 17, 'Maatschap', 0, 0, NULL),
(151, 1703, 17, 'Vennootschap onder firma', 0, 0, NULL),
(152, 1704, 17, 'Commanditaire vennootschap', 0, 0, NULL),
(153, 1705, 17, 'Besloten vennootschap (BV)', 0, 0, NULL),
(154, 1706, 17, 'Naamloze Vennootschap (NV)', 0, 0, NULL),
(155, 1707, 17, 'Vereniging', 0, 0, NULL),
(156, 1708, 17, 'Stichting', 0, 0, NULL),
(157, 1709, 17, 'Coöperatie met beperkte aansprakelijkheid (BA)', 0, 0, NULL),
(158, 1710, 17, 'Coöperatie met uitgesloten aansprakelijkheid (UA)', 0, 0, NULL),
(159, 1711, 17, 'Coöperatie met wettelijke aansprakelijkheid (WA)', 0, 0, NULL),
(160, 1712, 17, 'Onderlinge waarborgmaatschappij', 0, 0, NULL),
(161, 401, 4, 'Empresario Individual', 0, 0, NULL),
(162, 402, 4, 'Comunidad de Bienes', 0, 0, NULL),
(163, 403, 4, 'Sociedad Civil', 0, 0, NULL),
(164, 404, 4, 'Sociedad Colectiva', 0, 0, NULL),
(165, 405, 4, 'Sociedad Limitada', 0, 0, NULL),
(166, 406, 4, 'Sociedad Anónima', 0, 0, NULL),
(167, 407, 4, 'Sociedad Comanditaria por Acciones', 0, 0, NULL),
(168, 408, 4, 'Sociedad Comanditaria Simple', 0, 0, NULL),
(169, 409, 4, 'Sociedad Laboral', 0, 0, NULL),
(170, 410, 4, 'Sociedad Cooperativa', 0, 0, NULL),
(171, 411, 4, 'Sociedad de Garantía Recíproca', 0, 0, NULL),
(172, 412, 4, 'Entidad de Capital-Riesgo', 0, 0, NULL),
(173, 413, 4, 'Agrupación de Interés Económico', 0, 0, NULL),
(174, 414, 4, 'Sociedad de Inversión Mobiliaria', 0, 0, NULL),
(175, 415, 4, 'Agrupación sin Ánimo de Lucro', 0, 0, NULL),
(176, 15201, 152, 'Mauritius Private Company Limited By Shares', 0, 0, NULL),
(177, 15202, 152, 'Mauritius Company Limited By Guarantee', 0, 0, NULL),
(178, 15203, 152, 'Mauritius Public Company Limited By Shares', 0, 0, NULL),
(179, 15204, 152, 'Mauritius Foreign Company', 0, 0, NULL),
(180, 15205, 152, 'Mauritius GBC1 (Offshore Company)', 0, 0, NULL),
(181, 15206, 152, 'Mauritius GBC2 (International Company)', 0, 0, NULL),
(182, 15207, 152, 'Mauritius General Partnership', 0, 0, NULL),
(183, 15208, 152, 'Mauritius Limited Partnership', 0, 0, NULL),
(184, 15209, 152, 'Mauritius Sole Proprietorship', 0, 0, NULL),
(185, 15210, 152, 'Mauritius Trusts', 0, 0, NULL),
(186, 15401, 154, 'Sociedad en nombre colectivo', 0, 0, NULL),
(187, 15402, 154, 'Sociedad en comandita simple', 0, 0, NULL),
(188, 15403, 154, 'Sociedad de responsabilidad limitada', 0, 0, NULL),
(189, 15404, 154, 'Sociedad anónima', 0, 0, NULL),
(190, 15405, 154, 'Sociedad en comandita por acciones', 0, 0, NULL),
(191, 15406, 154, 'Sociedad cooperativa', 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `test_c_input_method`
--

DROP TABLE IF EXISTS `test_c_input_method`;
CREATE TABLE `test_c_input_method` (
  `rowid` int(11) NOT NULL,
  `code` varchar(30) DEFAULT NULL,
  `libelle` varchar(60) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `module` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_c_input_method`
--

INSERT INTO `test_c_input_method` (`rowid`, `code`, `libelle`, `active`, `module`) VALUES
(1, 'OrderByMail', 'Courrier', 1, NULL),
(2, 'OrderByFax', 'Fax', 1, NULL),
(3, 'OrderByEMail', 'EMail', 1, NULL),
(4, 'OrderByPhone', 'Téléphone', 1, NULL),
(5, 'OrderByWWW', 'En ligne', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `test_c_input_reason`
--

DROP TABLE IF EXISTS `test_c_input_reason`;
CREATE TABLE `test_c_input_reason` (
  `rowid` int(11) NOT NULL,
  `code` varchar(30) DEFAULT NULL,
  `label` varchar(60) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `module` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_c_input_reason`
--

INSERT INTO `test_c_input_reason` (`rowid`, `code`, `label`, `active`, `module`) VALUES
(1, 'SRC_INTE', 'Web site', 1, NULL),
(2, 'SRC_CAMP_MAIL', 'Mailing campaign', 1, NULL),
(3, 'SRC_CAMP_PHO', 'Phone campaign', 1, NULL),
(4, 'SRC_CAMP_FAX', 'Fax campaign', 1, NULL),
(5, 'SRC_COMM', 'Commercial contact', 1, NULL),
(6, 'SRC_SHOP', 'Shop contact', 0, NULL),
(7, 'SRC_CAMP_EMAIL', 'EMailing campaign', 1, NULL),
(8, 'SRC_WOM', 'Word of mouth', 1, NULL),
(9, 'SRC_PARTNER', 'Partner', 1, NULL),
(10, 'SRC_EMPLOYEE', 'Employee', 1, NULL),
(11, 'SRC_SPONSORING', 'Sponsorship', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `test_c_paiement`
--

DROP TABLE IF EXISTS `test_c_paiement`;
CREATE TABLE `test_c_paiement` (
  `id` int(11) NOT NULL,
  `code` varchar(6) NOT NULL,
  `libelle` varchar(30) DEFAULT NULL,
  `type` smallint(6) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `module` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_c_paiement`
--

INSERT INTO `test_c_paiement` (`id`, `code`, `libelle`, `type`, `active`, `module`) VALUES
(0, '', '-', 3, 1, NULL),
(1, 'TIP', 'TIP', 2, 0, NULL),
(2, 'VIR', 'Virement', 2, 1, NULL),
(3, 'PRE', 'Prélèvement', 2, 1, NULL),
(4, 'LIQ', 'Espèces', 2, 1, NULL),
(6, 'CB', 'Carte Bancaire', 2, 1, NULL),
(7, 'CHQ', 'Chèque', 2, 1, NULL),
(50, 'VAD', 'Paiement en ligne', 2, 0, NULL),
(51, 'TRA', 'Traite', 2, 0, NULL),
(52, 'LCR', 'LCR', 2, 0, NULL),
(53, 'FAC', 'Factor', 2, 0, NULL),
(54, 'PRO', 'Proforma', 2, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `test_c_paper_format`
--

DROP TABLE IF EXISTS `test_c_paper_format`;
CREATE TABLE `test_c_paper_format` (
  `rowid` int(11) NOT NULL,
  `code` varchar(16) NOT NULL,
  `label` varchar(50) NOT NULL,
  `width` float(6,2) DEFAULT '0.00',
  `height` float(6,2) DEFAULT '0.00',
  `unit` varchar(5) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `module` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_c_paper_format`
--

INSERT INTO `test_c_paper_format` (`rowid`, `code`, `label`, `width`, `height`, `unit`, `active`, `module`) VALUES
(1, 'EU4A0', 'Format 4A0', 1682.00, 2378.00, 'mm', 1, NULL),
(2, 'EU2A0', 'Format 2A0', 1189.00, 1682.00, 'mm', 1, NULL),
(3, 'EUA0', 'Format A0', 840.00, 1189.00, 'mm', 1, NULL),
(4, 'EUA1', 'Format A1', 594.00, 840.00, 'mm', 1, NULL),
(5, 'EUA2', 'Format A2', 420.00, 594.00, 'mm', 1, NULL),
(6, 'EUA3', 'Format A3', 297.00, 420.00, 'mm', 1, NULL),
(7, 'EUA4', 'Format A4', 210.00, 297.00, 'mm', 1, NULL),
(8, 'EUA5', 'Format A5', 148.00, 210.00, 'mm', 1, NULL),
(9, 'EUA6', 'Format A6', 105.00, 148.00, 'mm', 1, NULL),
(100, 'USLetter', 'Format Letter (A)', 216.00, 279.00, 'mm', 1, NULL),
(105, 'USLegal', 'Format Legal', 216.00, 356.00, 'mm', 1, NULL),
(110, 'USExecutive', 'Format Executive', 190.00, 254.00, 'mm', 1, NULL),
(115, 'USLedger', 'Format Ledger/Tabloid (B)', 279.00, 432.00, 'mm', 1, NULL),
(200, 'CAP1', 'Format Canadian P1', 560.00, 860.00, 'mm', 1, NULL),
(205, 'CAP2', 'Format Canadian P2', 430.00, 560.00, 'mm', 1, NULL),
(210, 'CAP3', 'Format Canadian P3', 280.00, 430.00, 'mm', 1, NULL),
(215, 'CAP4', 'Format Canadian P4', 215.00, 280.00, 'mm', 1, NULL),
(220, 'CAP5', 'Format Canadian P5', 140.00, 215.00, 'mm', 1, NULL),
(225, 'CAP6', 'Format Canadian P6', 107.00, 140.00, 'mm', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `test_c_payment_term`
--

DROP TABLE IF EXISTS `test_c_payment_term`;
CREATE TABLE `test_c_payment_term` (
  `rowid` int(11) NOT NULL,
  `code` varchar(16) DEFAULT NULL,
  `sortorder` smallint(6) DEFAULT NULL,
  `active` tinyint(4) DEFAULT '1',
  `libelle` varchar(255) DEFAULT NULL,
  `libelle_facture` text,
  `fdm` tinyint(4) DEFAULT NULL,
  `nbjour` smallint(6) DEFAULT NULL,
  `decalage` smallint(6) DEFAULT NULL,
  `module` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_c_payment_term`
--

INSERT INTO `test_c_payment_term` (`rowid`, `code`, `sortorder`, `active`, `libelle`, `libelle_facture`, `fdm`, `nbjour`, `decalage`, `module`) VALUES
(1, 'RECEP', 1, 1, 'A réception de facture', 'Réception de facture', 0, 0, NULL, NULL),
(2, '30D', 2, 1, '30 jours', 'Réglement à 30 jours', 0, 30, NULL, NULL),
(3, '30DENDMONTH', 3, 1, '30 jours fin de mois', 'Réglement à 30 jours fin de mois', 1, 30, NULL, NULL),
(4, '60D', 4, 1, '60 jours', 'Réglement à 60 jours', 0, 60, NULL, NULL),
(5, '60DENDMONTH', 5, 1, '60 jours fin de mois', 'Réglement à 60 jours fin de mois', 1, 60, NULL, NULL),
(6, 'PT_ORDER', 6, 1, 'A réception de commande', 'A réception de commande', 0, 0, NULL, NULL),
(7, 'PT_DELIVERY', 7, 1, 'Livraison', 'Règlement à la livraison', 0, 0, NULL, NULL),
(8, 'PT_5050', 8, 1, '50 et 50', 'Règlement 50% à la commande, 50% à la livraison', 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `test_c_pays`
--

DROP TABLE IF EXISTS `test_c_pays`;
CREATE TABLE `test_c_pays` (
  `rowid` int(11) NOT NULL,
  `code` varchar(2) NOT NULL,
  `code_iso` varchar(3) DEFAULT NULL,
  `libelle` varchar(50) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_c_pays`
--

INSERT INTO `test_c_pays` (`rowid`, `code`, `code_iso`, `libelle`, `active`) VALUES
(0, '', NULL, '-', 1),
(1, 'FR', NULL, 'France', 0),
(2, 'BE', NULL, 'Belgium', 0),
(3, 'IT', NULL, 'Italy', 0),
(4, 'ES', NULL, 'Spain', 0),
(5, 'DE', NULL, 'Germany', 0),
(6, 'CH', NULL, 'Switzerland', 0),
(7, 'GB', NULL, 'United Kingdom', 0),
(8, 'IE', NULL, 'Irland', 0),
(9, 'CN', NULL, 'China', 0),
(10, 'TN', NULL, 'Tunisia', 0),
(11, 'US', NULL, 'United States', 0),
(12, 'MA', NULL, 'Maroc', 0),
(13, 'DZ', NULL, 'Algeria', 0),
(14, 'CA', NULL, 'Canada', 1),
(15, 'TG', NULL, 'Togo', 0),
(16, 'GA', NULL, 'Gabon', 0),
(17, 'NL', NULL, 'Nerderland', 0),
(18, 'HU', NULL, 'Hongrie', 0),
(19, 'RU', NULL, 'Russia', 0),
(20, 'SE', NULL, 'Sweden', 0),
(21, 'CI', NULL, 'Côte d''Ivoire', 0),
(22, 'SN', NULL, 'Senegal', 0),
(23, 'AR', NULL, 'Argentine', 0),
(24, 'CM', NULL, 'Cameroun', 0),
(25, 'PT', NULL, 'Portugal', 0),
(26, 'SA', NULL, 'Saudi Arabia', 0),
(27, 'MC', NULL, 'Monaco', 0),
(28, 'AU', NULL, 'Australia', 0),
(29, 'SG', NULL, 'Singapour', 0),
(30, 'AF', NULL, 'Afghanistan', 0),
(31, 'AX', NULL, 'Iles Aland', 0),
(32, 'AL', NULL, 'Albanie', 0),
(33, 'AS', NULL, 'Samoa américaines', 0),
(34, 'AD', NULL, 'Andorre', 0),
(35, 'AO', NULL, 'Angola', 0),
(36, 'AI', NULL, 'Anguilla', 0),
(37, 'AQ', NULL, 'Antarctique', 0),
(38, 'AG', NULL, 'Antigua-et-Barbuda', 0),
(39, 'AM', NULL, 'Arménie', 0),
(40, 'AW', NULL, 'Aruba', 0),
(41, 'AT', NULL, 'Autriche', 0),
(42, 'AZ', NULL, 'Azerbaïdjan', 0),
(43, 'BS', NULL, 'Bahamas', 0),
(44, 'BH', NULL, 'Bahreïn', 0),
(45, 'BD', NULL, 'Bangladesh', 0),
(46, 'BB', NULL, 'Barbade', 0),
(47, 'BY', NULL, 'Biélorussie', 0),
(48, 'BZ', NULL, 'Belize', 0),
(49, 'BJ', NULL, 'Bénin', 0),
(50, 'BM', NULL, 'Bermudes', 0),
(51, 'BT', NULL, 'Bhoutan', 0),
(52, 'BO', NULL, 'Bolivie', 0),
(53, 'BA', NULL, 'Bosnie-Herzégovine', 0),
(54, 'BW', NULL, 'Botswana', 0),
(55, 'BV', NULL, 'Ile Bouvet', 0),
(56, 'BR', NULL, 'Brazil', 0),
(57, 'IO', NULL, 'Territoire britannique de l''Océan Indien', 0),
(58, 'BN', NULL, 'Brunei', 0),
(59, 'BG', NULL, 'Bulgarie', 0),
(60, 'BF', NULL, 'Burkina Faso', 0),
(61, 'BI', NULL, 'Burundi', 0),
(62, 'KH', NULL, 'Cambodge', 0),
(63, 'CV', NULL, 'Cap-Vert', 0),
(64, 'KY', NULL, 'Iles Cayman', 0),
(65, 'CF', NULL, 'République centrafricaine', 0),
(66, 'TD', NULL, 'Tchad', 0),
(67, 'CL', NULL, 'Chili', 0),
(68, 'CX', NULL, 'Ile Christmas', 0),
(69, 'CC', NULL, 'Iles des Cocos (Keeling)', 0),
(70, 'CO', NULL, 'Colombie', 0),
(71, 'KM', NULL, 'Comores', 0),
(72, 'CG', NULL, 'Congo', 0),
(73, 'CD', NULL, 'République démocratique du Congo', 0),
(74, 'CK', NULL, 'Iles Cook', 0),
(75, 'CR', NULL, 'Costa Rica', 0),
(76, 'HR', NULL, 'Croatie', 0),
(77, 'CU', NULL, 'Cuba', 0),
(78, 'CY', NULL, 'Chypre', 0),
(79, 'CZ', NULL, 'République Tchèque', 0),
(80, 'DK', NULL, 'Danemark', 0),
(81, 'DJ', NULL, 'Djibouti', 0),
(82, 'DM', NULL, 'Dominique', 0),
(83, 'DO', NULL, 'République Dominicaine', 0),
(84, 'EC', NULL, 'Equateur', 0),
(85, 'EG', NULL, 'Egypte', 0),
(86, 'SV', NULL, 'Salvador', 0),
(87, 'GQ', NULL, 'Guinée Equatoriale', 0),
(88, 'ER', NULL, 'Erythrée', 0),
(89, 'EE', NULL, 'Estonia', 0),
(90, 'ET', NULL, 'Ethiopie', 0),
(91, 'FK', NULL, 'Iles Falkland', 0),
(92, 'FO', NULL, 'Iles Féroé', 0),
(93, 'FJ', NULL, 'Iles Fidji', 0),
(94, 'FI', NULL, 'Finlande', 0),
(95, 'GF', NULL, 'Guyane française', 0),
(96, 'PF', NULL, 'Polynésie française', 0),
(97, 'TF', NULL, 'Terres australes françaises', 0),
(98, 'GM', NULL, 'Gambie', 0),
(99, 'GE', NULL, 'Georgia', 0),
(100, 'GH', NULL, 'Ghana', 0),
(101, 'GI', NULL, 'Gibraltar', 0),
(102, 'GR', NULL, 'Greece', 0),
(103, 'GL', NULL, 'Groenland', 0),
(104, 'GD', NULL, 'Grenade', 0),
(106, 'GU', NULL, 'Guam', 0),
(107, 'GT', NULL, 'Guatemala', 0),
(108, 'GN', NULL, 'Guinea', 0),
(109, 'GW', NULL, 'Guinea-Bissao', 0),
(111, 'HT', NULL, 'Haiti', 0),
(112, 'HM', NULL, 'Iles Heard et McDonald', 0),
(113, 'VA', NULL, 'Saint-Siège (Vatican)', 0),
(114, 'HN', NULL, 'Honduras', 0),
(115, 'HK', NULL, 'Hong Kong', 0),
(116, 'IS', NULL, 'Islande', 0),
(117, 'IN', NULL, 'India', 0),
(118, 'ID', NULL, 'Indonésie', 0),
(119, 'IR', NULL, 'Iran', 0),
(120, 'IQ', NULL, 'Iraq', 0),
(121, 'IL', NULL, 'Israel', 0),
(122, 'JM', NULL, 'Jamaïque', 0),
(123, 'JP', NULL, 'Japon', 0),
(124, 'JO', NULL, 'Jordanie', 0),
(125, 'KZ', NULL, 'Kazakhstan', 0),
(126, 'KE', NULL, 'Kenya', 0),
(127, 'KI', NULL, 'Kiribati', 0),
(128, 'KP', NULL, 'North Corea', 0),
(129, 'KR', NULL, 'South Corea', 0),
(130, 'KW', NULL, 'Koweït', 0),
(131, 'KG', NULL, 'Kirghizistan', 0),
(132, 'LA', NULL, 'Laos', 0),
(133, 'LV', NULL, 'Lettonie', 0),
(134, 'LB', NULL, 'Liban', 0),
(135, 'LS', NULL, 'Lesotho', 0),
(136, 'LR', NULL, 'Liberia', 0),
(137, 'LY', NULL, 'Libye', 0),
(138, 'LI', NULL, 'Liechtenstein', 0),
(139, 'LT', NULL, 'Lituanie', 0),
(140, 'LU', NULL, 'Luxembourg', 0),
(141, 'MO', NULL, 'Macao', 0),
(142, 'MK', NULL, 'ex-République yougoslave de Macédoine', 0),
(143, 'MG', NULL, 'Madagascar', 0),
(144, 'MW', NULL, 'Malawi', 0),
(145, 'MY', NULL, 'Malaisie', 0),
(146, 'MV', NULL, 'Maldives', 0),
(147, 'ML', NULL, 'Mali', 0),
(148, 'MT', NULL, 'Malte', 0),
(149, 'MH', NULL, 'Iles Marshall', 0),
(151, 'MR', NULL, 'Mauritanie', 0),
(152, 'MU', NULL, 'Maurice', 0),
(153, 'YT', NULL, 'Mayotte', 0),
(154, 'MX', NULL, 'Mexique', 0),
(155, 'FM', NULL, 'Micronésie', 0),
(156, 'MD', NULL, 'Moldavie', 0),
(157, 'MN', NULL, 'Mongolie', 0),
(158, 'MS', NULL, 'Monserrat', 0),
(159, 'MZ', NULL, 'Mozambique', 0),
(160, 'MM', NULL, 'Birmanie (Myanmar)', 0),
(161, 'NA', NULL, 'Namibie', 0),
(162, 'NR', NULL, 'Nauru', 0),
(163, 'NP', NULL, 'Népal', 0),
(164, 'AN', NULL, 'Antilles néerlandaises', 0),
(165, 'NC', NULL, 'Nouvelle-Calédonie', 0),
(166, 'NZ', NULL, 'Nouvelle-Zélande', 0),
(167, 'NI', NULL, 'Nicaragua', 0),
(168, 'NE', NULL, 'Niger', 0),
(169, 'NG', NULL, 'Nigeria', 0),
(170, 'NU', NULL, 'Nioué', 0),
(171, 'NF', NULL, 'Ile Norfolk', 0),
(172, 'MP', NULL, 'Mariannes du Nord', 0),
(173, 'NO', NULL, 'Norvège', 0),
(174, 'OM', NULL, 'Oman', 0),
(175, 'PK', NULL, 'Pakistan', 0),
(176, 'PW', NULL, 'Palaos', 0),
(177, 'PS', NULL, 'Territoire Palestinien Occupé', 0),
(178, 'PA', NULL, 'Panama', 0),
(179, 'PG', NULL, 'Papouasie-Nouvelle-Guinée', 0),
(180, 'PY', NULL, 'Paraguay', 0),
(181, 'PE', NULL, 'Peru', 0),
(182, 'PH', NULL, 'Philippines', 0),
(183, 'PN', NULL, 'Iles Pitcairn', 0),
(184, 'PL', NULL, 'Pologne', 0),
(185, 'PR', NULL, 'Porto Rico', 0),
(186, 'QA', NULL, 'Qatar', 0),
(188, 'RO', NULL, 'Roumanie', 0),
(189, 'RW', NULL, 'Rwanda', 0),
(190, 'SH', NULL, 'Sainte-Hélène', 0),
(191, 'KN', NULL, 'Saint-Christophe-et-Niévès', 0),
(192, 'LC', NULL, 'Sainte-Lucie', 0),
(193, 'PM', NULL, 'Saint-Pierre-et-Miquelon', 0),
(194, 'VC', NULL, 'Saint-Vincent-et-les-Grenadines', 0),
(195, 'WS', NULL, 'Samoa', 0),
(196, 'SM', NULL, 'Saint-Marin', 0),
(197, 'ST', NULL, 'Sao Tomé-et-Principe', 0),
(198, 'RS', NULL, 'Serbie', 0),
(199, 'SC', NULL, 'Seychelles', 0),
(200, 'SL', NULL, 'Sierra Leone', 0),
(201, 'SK', NULL, 'Slovaquie', 0),
(202, 'SI', NULL, 'Slovénie', 0),
(203, 'SB', NULL, 'Iles Salomon', 0),
(204, 'SO', NULL, 'Somalie', 0),
(205, 'ZA', NULL, 'Afrique du Sud', 0),
(206, 'GS', NULL, 'Iles Géorgie du Sud et Sandwich du Sud', 0),
(207, 'LK', NULL, 'Sri Lanka', 0),
(208, 'SD', NULL, 'Soudan', 0),
(209, 'SR', NULL, 'Suriname', 0),
(210, 'SJ', NULL, 'Iles Svalbard et Jan Mayen', 0),
(211, 'SZ', NULL, 'Swaziland', 0),
(212, 'SY', NULL, 'Syrie', 0),
(213, 'TW', NULL, 'Taïwan', 0),
(214, 'TJ', NULL, 'Tadjikistan', 0),
(215, 'TZ', NULL, 'Tanzanie', 0),
(216, 'TH', NULL, 'Thaïlande', 0),
(217, 'TL', NULL, 'Timor Oriental', 0),
(218, 'TK', NULL, 'Tokélaou', 0),
(219, 'TO', NULL, 'Tonga', 0),
(220, 'TT', NULL, 'Trinité-et-Tobago', 0),
(221, 'TR', NULL, 'Turquie', 0),
(222, 'TM', NULL, 'Turkménistan', 0),
(223, 'TC', NULL, 'Iles Turks-et-Caicos', 0),
(224, 'TV', NULL, 'Tuvalu', 0),
(225, 'UG', NULL, 'Ouganda', 0),
(226, 'UA', NULL, 'Ukraine', 0),
(227, 'AE', NULL, 'Émirats arabes unis', 0),
(228, 'UM', NULL, 'Iles mineures éloignées des États-Unis', 0),
(229, 'UY', NULL, 'Uruguay', 0),
(230, 'UZ', NULL, 'Ouzbékistan', 0),
(231, 'VU', NULL, 'Vanuatu', 0),
(232, 'VE', NULL, 'Vénézuela', 0),
(233, 'VN', NULL, 'Viêt Nam', 0),
(234, 'VG', NULL, 'Iles Vierges britanniques', 0),
(235, 'VI', NULL, 'Iles Vierges américaines', 0),
(236, 'WF', NULL, 'Wallis-et-Futuna', 0),
(237, 'EH', NULL, 'Sahara occidental', 0),
(238, 'YE', NULL, 'Yémen', 0),
(239, 'ZM', NULL, 'Zambie', 0),
(240, 'ZW', NULL, 'Zimbabwe', 0),
(241, 'GG', NULL, 'Guernesey', 0),
(242, 'IM', NULL, 'Ile de Man', 0),
(243, 'JE', NULL, 'Jersey', 0),
(244, 'ME', NULL, 'Monténégro', 0),
(245, 'BL', NULL, 'Saint-Barthélemy', 0),
(246, 'MF', NULL, 'Saint-Martin', 0);

-- --------------------------------------------------------

--
-- Table structure for table `test_c_propalst`
--

DROP TABLE IF EXISTS `test_c_propalst`;
CREATE TABLE `test_c_propalst` (
  `id` smallint(6) NOT NULL,
  `code` varchar(12) NOT NULL,
  `label` varchar(30) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_c_propalst`
--

INSERT INTO `test_c_propalst` (`id`, `code`, `label`, `active`) VALUES
(0, 'PR_DRAFT', 'Brouillon', 1),
(1, 'PR_OPEN', 'Ouverte', 1),
(2, 'PR_SIGNED', 'Signée', 1),
(3, 'PR_NOTSIGNED', 'Non Signée', 1),
(4, 'PR_FAC', 'Facturée', 1);

-- --------------------------------------------------------

--
-- Table structure for table `test_c_prospectlevel`
--

DROP TABLE IF EXISTS `test_c_prospectlevel`;
CREATE TABLE `test_c_prospectlevel` (
  `code` varchar(12) NOT NULL,
  `label` varchar(30) DEFAULT NULL,
  `sortorder` smallint(6) DEFAULT NULL,
  `active` smallint(6) NOT NULL DEFAULT '1',
  `module` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_c_prospectlevel`
--

INSERT INTO `test_c_prospectlevel` (`code`, `label`, `sortorder`, `active`, `module`) VALUES
('PL_HIGH', 'High', 4, 1, NULL),
('PL_LOW', 'Low', 2, 1, NULL),
('PL_MEDIUM', 'Medium', 3, 1, NULL),
('PL_NONE', 'None', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `test_c_regions`
--

DROP TABLE IF EXISTS `test_c_regions`;
CREATE TABLE `test_c_regions` (
  `rowid` int(11) NOT NULL,
  `code_region` int(11) NOT NULL,
  `fk_pays` int(11) NOT NULL,
  `cheflieu` varchar(50) DEFAULT NULL,
  `tncc` int(11) DEFAULT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_c_regions`
--

INSERT INTO `test_c_regions` (`rowid`, `code_region`, `fk_pays`, `cheflieu`, `tncc`, `nom`, `active`) VALUES
(1, 0, 0, '0', 0, '-', 1),
(101, 1, 1, '97105', 3, 'Guadeloupe', 1),
(102, 2, 1, '97209', 3, 'Martinique', 1),
(103, 3, 1, '97302', 3, 'Guyane', 1),
(104, 4, 1, '97411', 3, 'Réunion', 1),
(105, 11, 1, '75056', 1, 'Île-de-France', 1),
(106, 21, 1, '51108', 0, 'Champagne-Ardenne', 1),
(107, 22, 1, '80021', 0, 'Picardie', 1),
(108, 23, 1, '76540', 0, 'Haute-Normandie', 1),
(109, 24, 1, '45234', 2, 'Centre', 1),
(110, 25, 1, '14118', 0, 'Basse-Normandie', 1),
(111, 26, 1, '21231', 0, 'Bourgogne', 1),
(112, 31, 1, '59350', 2, 'Nord-Pas-de-Calais', 1),
(113, 41, 1, '57463', 0, 'Lorraine', 1),
(114, 42, 1, '67482', 1, 'Alsace', 1),
(115, 43, 1, '25056', 0, 'Franche-Comté', 1),
(116, 52, 1, '44109', 4, 'Pays de la Loire', 1),
(117, 53, 1, '35238', 0, 'Bretagne', 1),
(118, 54, 1, '86194', 2, 'Poitou-Charentes', 1),
(119, 72, 1, '33063', 1, 'Aquitaine', 1),
(120, 73, 1, '31555', 0, 'Midi-Pyrénées', 1),
(121, 74, 1, '87085', 2, 'Limousin', 1),
(122, 82, 1, '69123', 2, 'Rhône-Alpes', 1),
(123, 83, 1, '63113', 1, 'Auvergne', 1),
(124, 91, 1, '34172', 2, 'Languedoc-Roussillon', 1),
(125, 93, 1, '13055', 0, 'Provence-Alpes-Côte d''Azur', 1),
(126, 94, 1, '2A004', 0, 'Corse', 1),
(201, 201, 2, '', 1, 'Flandre', 1),
(202, 202, 2, '', 2, 'Wallonie', 1),
(203, 203, 2, '', 3, 'Bruxelles-Capitale', 1),
(301, 301, 3, NULL, 1, 'Abruzzo', 1),
(302, 302, 3, NULL, 1, 'Basilicata', 1),
(303, 303, 3, NULL, 1, 'Calabria', 1),
(304, 304, 3, NULL, 1, 'Campania', 1),
(305, 305, 3, NULL, 1, 'Emilia-Romagna', 1),
(306, 306, 3, NULL, 1, 'Friuli-Venezia Giulia', 1),
(307, 307, 3, NULL, 1, 'Lazio', 1),
(308, 308, 3, NULL, 1, 'Liguria', 1),
(309, 309, 3, NULL, 1, 'Lombardia', 1),
(310, 310, 3, NULL, 1, 'Marche', 1),
(311, 311, 3, NULL, 1, 'Molise', 1),
(312, 312, 3, NULL, 1, 'Piemonte', 1),
(313, 313, 3, NULL, 1, 'Puglia', 1),
(314, 314, 3, NULL, 1, 'Sardegna', 1),
(315, 315, 3, NULL, 1, 'Sicilia', 1),
(316, 316, 3, NULL, 1, 'Toscana', 1),
(317, 317, 3, NULL, 1, 'Trentino-Alto Adige', 1),
(318, 318, 3, NULL, 1, 'Umbria', 1),
(319, 319, 3, NULL, 1, 'Valle d Aosta', 1),
(320, 320, 3, NULL, 1, 'Veneto', 1),
(401, 401, 4, '', 0, 'Andalucia', 1),
(402, 402, 4, '', 0, 'Aragón', 1),
(403, 403, 4, '', 0, 'Castilla y León', 1),
(404, 404, 4, '', 0, 'Castilla la Mancha', 1),
(405, 405, 4, '', 0, 'Canarias', 1),
(406, 406, 4, '', 0, 'Cataluña', 1),
(407, 407, 4, '', 0, 'Comunidad de Ceuta', 1),
(408, 408, 4, '', 0, 'Comunidad Foral de Navarra', 1),
(409, 409, 4, '', 0, 'Comunidad de Melilla', 1),
(410, 410, 4, '', 0, 'Cantabria', 1),
(411, 411, 4, '', 0, 'Comunidad Valenciana', 1),
(412, 412, 4, '', 0, 'Extemadura', 1),
(413, 413, 4, '', 0, 'Galicia', 1),
(414, 414, 4, '', 0, 'Islas Baleares', 1),
(415, 415, 4, '', 0, 'La Rioja', 1),
(416, 416, 4, '', 0, 'Comunidad de Madrid', 1),
(417, 417, 4, '', 0, 'Región de Murcia', 1),
(418, 418, 4, '', 0, 'Principado de Asturias', 1),
(419, 419, 4, '', 0, 'Pais Vasco', 1),
(420, 420, 4, '', 0, 'Otros', 1),
(501, 501, 5, '', 0, 'Deutschland', 1),
(601, 601, 6, '', 1, 'Cantons', 1),
(701, 701, 7, '', 0, 'England', 1),
(702, 702, 7, '', 0, 'Wales', 1),
(703, 703, 7, '', 0, 'Scotland', 1),
(704, 704, 7, '', 0, 'Northern Ireland', 1),
(1001, 1001, 10, '', 0, 'Ariana', 1),
(1002, 1002, 10, '', 0, 'Béja', 1),
(1003, 1003, 10, '', 0, 'Ben Arous', 1),
(1004, 1004, 10, '', 0, 'Bizerte', 1),
(1005, 1005, 10, '', 0, 'Gabès', 1),
(1006, 1006, 10, '', 0, 'Gafsa', 1),
(1007, 1007, 10, '', 0, 'Jendouba', 1),
(1008, 1008, 10, '', 0, 'Kairouan', 1),
(1009, 1009, 10, '', 0, 'Kasserine', 1),
(1010, 1010, 10, '', 0, 'Kébili', 1),
(1011, 1011, 10, '', 0, 'La Manouba', 1),
(1012, 1012, 10, '', 0, 'Le Kef', 1),
(1013, 1013, 10, '', 0, 'Mahdia', 1),
(1014, 1014, 10, '', 0, 'Médenine', 1),
(1015, 1015, 10, '', 0, 'Monastir', 1),
(1016, 1016, 10, '', 0, 'Nabeul', 1),
(1017, 1017, 10, '', 0, 'Sfax', 1),
(1018, 1018, 10, '', 0, 'Sidi Bouzid', 1),
(1019, 1019, 10, '', 0, 'Siliana', 1),
(1020, 1020, 10, '', 0, 'Sousse', 1),
(1021, 1021, 10, '', 0, 'Tataouine', 1),
(1022, 1022, 10, '', 0, 'Tozeur', 1),
(1023, 1023, 10, '', 0, 'Tunis', 1),
(1024, 1024, 10, '', 0, 'Zaghouan', 1),
(1101, 1101, 11, '', 0, 'United-States', 1),
(1201, 1201, 12, '', 0, 'Tanger-Tétouan', 1),
(1202, 1202, 12, '', 0, 'Gharb-Chrarda-Beni Hssen', 1),
(1203, 1203, 12, '', 0, 'Taza-Al Hoceima-Taounate', 1),
(1204, 1204, 12, '', 0, 'L''Oriental', 1),
(1205, 1205, 12, '', 0, 'Fès-Boulemane', 1),
(1206, 1206, 12, '', 0, 'Meknès-Tafialet', 1),
(1207, 1207, 12, '', 0, 'Rabat-Salé-Zemour-Zaër', 1),
(1208, 1208, 12, '', 0, 'Grand Cassablanca', 1),
(1209, 1209, 12, '', 0, 'Chaouia-Ouardigha', 1),
(1210, 1210, 12, '', 0, 'Doukahla-Adba', 1),
(1211, 1211, 12, '', 0, 'Marrakech-Tensift-Al Haouz', 1),
(1212, 1212, 12, '', 0, 'Tadla-Azilal', 1),
(1213, 1213, 12, '', 0, 'Sous-Massa-Drâa', 1),
(1214, 1214, 12, '', 0, 'Guelmim-Es Smara', 1),
(1215, 1215, 12, '', 0, 'Laâyoune-Boujdour-Sakia el Hamra', 1),
(1216, 1216, 12, '', 0, 'Oued Ed-Dahab Lagouira', 1),
(1301, 1301, 13, '', 0, 'Algerie', 1),
(1401, 1401, 14, '', 0, 'Canada', 1),
(1701, 1701, 17, '', 0, 'Provincies van Nederland ', 1),
(2301, 2301, 23, '', 0, 'Norte', 1),
(2302, 2302, 23, '', 0, 'Litoral', 1),
(2303, 2303, 23, '', 0, 'Cuyana', 1),
(2304, 2304, 23, '', 0, 'Central', 1),
(2305, 2305, 23, '', 0, 'Patagonia', 1),
(2801, 2801, 28, '', 0, 'Australia', 1),
(4601, 4601, 46, '', 0, 'Barbados', 1),
(5601, 5601, 56, '', 0, 'Brasil', 1),
(6701, 6701, 67, NULL, NULL, 'Tarapacá', 1),
(6702, 6702, 67, NULL, NULL, 'Antofagasta', 1),
(6703, 6703, 67, NULL, NULL, 'Atacama', 1),
(6704, 6704, 67, NULL, NULL, 'Coquimbo', 1),
(6705, 6705, 67, NULL, NULL, 'Valparaíso', 1),
(6706, 6706, 67, NULL, NULL, 'General Bernardo O Higgins', 1),
(6707, 6707, 67, NULL, NULL, 'Maule', 1),
(6708, 6708, 67, NULL, NULL, 'Biobío', 1),
(6709, 6709, 67, NULL, NULL, 'Raucanía', 1),
(6710, 6710, 67, NULL, NULL, 'Los Lagos', 1),
(6711, 6711, 67, NULL, NULL, 'Aysén General Carlos Ibáñez del Campo', 1),
(6712, 6712, 67, NULL, NULL, 'Magallanes y Antártica Chilena', 1),
(6713, 6713, 67, NULL, NULL, 'Metropolitana de Santiago', 1),
(6714, 6714, 67, NULL, NULL, 'Los Ríos', 1),
(6715, 6715, 67, NULL, NULL, 'Arica y Parinacota', 1),
(7001, 7001, 70, '', 0, 'Colombie', 1),
(8601, 8601, 86, NULL, NULL, 'Central', 1),
(8602, 8602, 86, NULL, NULL, 'Oriental', 1),
(8603, 8603, 86, NULL, NULL, 'Occidental', 1),
(10201, 10201, 102, NULL, NULL, '??????', 1),
(10202, 10202, 102, NULL, NULL, '?????? ??????', 1),
(10203, 10203, 102, NULL, NULL, '???????? ?????????', 1),
(10204, 10204, 102, NULL, NULL, '?????', 1),
(10205, 10205, 102, NULL, NULL, '????????? ????????? ??? ?????', 1),
(10206, 10206, 102, NULL, NULL, '???????', 1),
(10207, 10207, 102, NULL, NULL, '????? ?????', 1),
(10208, 10208, 102, NULL, NULL, '?????? ??????', 1),
(10209, 10209, 102, NULL, NULL, '????????????', 1),
(10210, 10210, 102, NULL, NULL, '????? ??????', 1),
(10211, 10211, 102, NULL, NULL, '?????? ??????', 1),
(10212, 10212, 102, NULL, NULL, '????????', 1),
(10213, 10213, 102, NULL, NULL, '?????? ?????????', 1),
(11401, 11401, 114, '', 0, 'Honduras', 1),
(11701, 11701, 117, '', 0, 'India', 1),
(15201, 15201, 152, '', 0, 'Rivière Noire', 1),
(15202, 15202, 152, '', 0, 'Flacq', 1),
(15203, 15203, 152, '', 0, 'Grand Port', 1),
(15204, 15204, 152, '', 0, 'Moka', 1),
(15205, 15205, 152, '', 0, 'Pamplemousses', 1),
(15206, 15206, 152, '', 0, 'Plaines Wilhems', 1),
(15207, 15207, 152, '', 0, 'Port-Louis', 1),
(15208, 15208, 152, '', 0, 'Rivière du Rempart', 1),
(15209, 15209, 152, '', 0, 'Savanne', 1),
(15210, 15210, 152, '', 0, 'Rodrigues', 1),
(15211, 15211, 152, '', 0, 'Les îles Agaléga', 1),
(15212, 15212, 152, '', 0, 'Les écueils des Cargados Carajos', 1),
(15401, 15401, 154, '', 0, 'Mexique', 1),
(23201, 23201, 232, '', 0, 'Los Andes', 1),
(23202, 23202, 232, '', 0, 'Capital', 1),
(23203, 23203, 232, '', 0, 'Central', 1),
(23204, 23204, 232, '', 0, 'Cento Occidental', 1),
(23205, 23205, 232, '', 0, 'Guayana', 1),
(23206, 23206, 232, '', 0, 'Insular', 1),
(23207, 23207, 232, '', 0, 'Los Llanos', 1),
(23208, 23208, 232, '', 0, 'Nor-Oriental', 1),
(23209, 23209, 232, '', 0, 'Zuliana', 1);

-- --------------------------------------------------------

--
-- Table structure for table `test_c_revenuestamp`
--

DROP TABLE IF EXISTS `test_c_revenuestamp`;
CREATE TABLE `test_c_revenuestamp` (
  `rowid` int(11) NOT NULL,
  `fk_pays` int(11) NOT NULL,
  `taux` double NOT NULL,
  `note` varchar(128) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `accountancy_code_sell` varchar(15) DEFAULT NULL,
  `accountancy_code_buy` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_c_revenuestamp`
--

INSERT INTO `test_c_revenuestamp` (`rowid`, `fk_pays`, `taux`, `note`, `active`, `accountancy_code_sell`, `accountancy_code_buy`) VALUES
(101, 10, 0.4, 'Revenue stamp tunisia', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `test_c_shipment_mode`
--

DROP TABLE IF EXISTS `test_c_shipment_mode`;
CREATE TABLE `test_c_shipment_mode` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `code` varchar(30) NOT NULL,
  `libelle` varchar(50) NOT NULL,
  `description` text,
  `tracking` varchar(255) NOT NULL,
  `active` tinyint(4) DEFAULT '0',
  `module` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_c_shipment_mode`
--

INSERT INTO `test_c_shipment_mode` (`rowid`, `tms`, `code`, `libelle`, `description`, `tracking`, `active`, `module`) VALUES
(1, '2015-12-14 16:33:24', 'CATCH', 'Catch', 'Catch by client', '', 1, NULL),
(2, '2015-12-14 16:33:24', 'TRANS', 'Transporter', 'Generic transporter', '', 1, NULL),
(3, '2015-12-14 16:33:24', 'COLSUI', 'Colissimo Suivi', 'Colissimo Suivi', '', 0, NULL),
(4, '2015-12-14 16:33:24', 'LETTREMAX', 'Lettre Max', 'Courrier Suivi et Lettre Max', '', 0, NULL),
(5, '2015-12-18 15:05:29', 'UPS', 'UPS', 'United Parcel Service', 'http://www.apps.ups.com/etracking/tracking.cgi?InquiryNumber2=&InquiryNumber3=&tracknums_displayed=3&loc=fr_FR&TypeOfInquiryNumber=T&HTMLVersion=4.0&InquiryNumber22=&InquiryNumber32=&track=Track&Suivi.x=64&Suivi.y=7&Suivi=Valider&InquiryNumber1={TRACKID}', 0, NULL),
(6, '2015-12-14 16:33:24', 'KIALA', 'KIALA', 'Relais Kiala', 'http://www.kiala.fr/tnt/delivery/{TRACKID}', 0, NULL),
(7, '2015-12-14 16:33:24', 'GLS', 'GLS', 'General Logistics Systems', 'http://www.gls-group.eu/276-I-PORTAL-WEB/content/GLS/FR01/FR/5004.htm?txtAction=71000&txtRefNo={TRACKID}', 0, NULL),
(8, '2015-12-14 16:33:24', 'CHRONO', 'Chronopost', 'Chronopost', 'http://www.chronopost.fr/expedier/inputLTNumbersNoJahia.do?listeNumeros={TRACKID}', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `test_c_stcomm`
--

DROP TABLE IF EXISTS `test_c_stcomm`;
CREATE TABLE `test_c_stcomm` (
  `id` int(11) NOT NULL,
  `code` varchar(12) NOT NULL,
  `libelle` varchar(30) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_c_stcomm`
--

INSERT INTO `test_c_stcomm` (`id`, `code`, `libelle`, `active`) VALUES
(-1, 'ST_NO', 'Ne pas contacter', 1),
(0, 'ST_NEVER', 'Jamais contacté', 1),
(1, 'ST_TODO', 'A contacter', 1),
(2, 'ST_PEND', 'Contact en cours', 1),
(3, 'ST_DONE', 'Contactée', 1);

-- --------------------------------------------------------

--
-- Table structure for table `test_c_tva`
--

DROP TABLE IF EXISTS `test_c_tva`;
CREATE TABLE `test_c_tva` (
  `rowid` int(11) NOT NULL,
  `fk_pays` int(11) NOT NULL,
  `taux` double NOT NULL,
  `localtax1` double NOT NULL DEFAULT '0',
  `localtax1_type` varchar(10) NOT NULL DEFAULT '0',
  `localtax2` double NOT NULL DEFAULT '0',
  `localtax2_type` varchar(10) NOT NULL DEFAULT '0',
  `recuperableonly` int(11) NOT NULL DEFAULT '0',
  `note` varchar(128) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `accountancy_code_sell` varchar(15) DEFAULT NULL,
  `accountancy_code_buy` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_c_tva`
--

INSERT INTO `test_c_tva` (`rowid`, `fk_pays`, `taux`, `localtax1`, `localtax1_type`, `localtax2`, `localtax2_type`, `recuperableonly`, `note`, `active`, `accountancy_code_sell`, `accountancy_code_buy`) VALUES
(11, 1, 20, 0, '0', 0, '0', 0, 'VAT standard rate (France hors DOM-TOM)', 0, NULL, NULL),
(12, 1, 8.5, 0, '0', 0, '0', 0, 'VAT standard rate (DOM sauf Guyane et Saint-Martin)', 0, NULL, NULL),
(13, 1, 8.5, 0, '0', 0, '0', 1, 'VAT standard rate (DOM sauf Guyane et Saint-Martin), non perçu par le vendeur mais récupérable par acheteur', 0, NULL, NULL),
(14, 1, 5.5, 0, '0', 0, '0', 0, 'VAT reduced rate (France hors DOM-TOM)', 0, NULL, NULL),
(15, 1, 0, 0, '0', 0, '0', 0, 'VAT Rate 0 ou non applicable', 0, NULL, NULL),
(16, 1, 2.1, 0, '0', 0, '0', 0, 'VAT super-reduced rate', 0, NULL, NULL),
(17, 1, 10, 0, '0', 0, '0', 0, 'VAT reduced rate', 0, NULL, NULL),
(21, 2, 21, 0, '0', 0, '0', 0, 'VAT standard rate', 0, NULL, NULL),
(22, 2, 6, 0, '0', 0, '0', 0, 'VAT reduced rate', 0, NULL, NULL),
(23, 2, 0, 0, '0', 0, '0', 0, 'VAT Rate 0 ou non applicable', 0, NULL, NULL),
(24, 2, 12, 0, '0', 0, '0', 0, 'VAT reduced rate', 0, NULL, NULL),
(31, 3, 21, 0, '0', 0, '0', 0, 'VAT standard rate', 0, NULL, NULL),
(32, 3, 10, 0, '0', 0, '0', 0, 'VAT reduced rate', 0, NULL, NULL),
(33, 3, 4, 0, '0', 0, '0', 0, 'VAT super-reduced rate', 0, NULL, NULL),
(34, 3, 0, 0, '0', 0, '0', 0, 'VAT Rate 0', 0, NULL, NULL),
(41, 4, 21, 5.2, '3', -21, '1', 0, 'VAT standard rate', 0, NULL, NULL),
(42, 4, 10, 1.4, '3', -21, '1', 0, 'VAT reduced rate', 0, NULL, NULL),
(43, 4, 4, 0.5, '3', -21, '1', 0, 'VAT super-reduced rate', 0, NULL, NULL),
(44, 4, 0, 0, '3', -21, '1', 0, 'VAT Rate 0', 0, NULL, NULL),
(51, 5, 19, 0, '0', 0, '0', 0, 'allgemeine Ust.', 0, NULL, NULL),
(52, 5, 7, 0, '0', 0, '0', 0, 'ermäßigte USt.', 0, NULL, NULL),
(53, 5, 0, 0, '0', 0, '0', 0, 'keine USt.', 0, NULL, NULL),
(54, 5, 5.5, 0, '0', 0, '0', 0, 'USt. Forst', 0, NULL, NULL),
(55, 5, 10.7, 0, '0', 0, '0', 0, 'USt. Landwirtschaft', 0, NULL, NULL),
(61, 6, 8, 0, '0', 0, '0', 0, 'VAT standard rate', 0, NULL, NULL),
(62, 6, 3.8, 0, '0', 0, '0', 0, 'VAT reduced rate', 0, NULL, NULL),
(63, 6, 2.5, 0, '0', 0, '0', 0, 'VAT super-reduced rate', 0, NULL, NULL),
(64, 6, 0, 0, '0', 0, '0', 0, 'VAT Rate 0', 0, NULL, NULL),
(71, 7, 20, 0, '0', 0, '0', 0, 'VAT standard rate', 0, NULL, NULL),
(72, 7, 17.5, 0, '0', 0, '0', 0, 'VAT standard rate before 2011', 0, NULL, NULL),
(73, 7, 5, 0, '0', 0, '0', 0, 'VAT reduced rate', 0, NULL, NULL),
(74, 7, 0, 0, '0', 0, '0', 0, 'VAT Rate 0', 0, NULL, NULL),
(91, 9, 17, 0, '0', 0, '0', 0, 'VAT standard rate', 0, NULL, NULL),
(92, 9, 13, 0, '0', 0, '0', 0, 'VAT reduced rate 0', 0, NULL, NULL),
(93, 9, 3, 0, '0', 0, '0', 0, 'VAT super reduced rate 0', 0, NULL, NULL),
(94, 9, 0, 0, '0', 0, '0', 0, 'VAT Rate 0', 0, NULL, NULL),
(101, 10, 6, 1, '4', 0, '0', 0, 'VAT 6%', 0, NULL, NULL),
(102, 10, 12, 1, '4', 0, '0', 0, 'VAT 12%', 0, NULL, NULL),
(103, 10, 18, 1, '4', 0, '0', 0, 'VAT 18%', 0, NULL, NULL),
(104, 10, 7.5, 1, '4', 0, '0', 0, 'VAT 6% Majoré à 25% (7.5%)', 0, NULL, NULL),
(105, 10, 15, 1, '4', 0, '0', 0, 'VAT 12% Majoré à 25% (15%)', 0, NULL, NULL),
(106, 10, 22.5, 1, '4', 0, '0', 0, 'VAT 18% Majoré à 25% (22.5%)', 0, NULL, NULL),
(107, 10, 0, 1, '4', 0, '0', 0, 'VAT Rate 0', 0, NULL, NULL),
(111, 11, 0, 0, '0', 0, '0', 0, 'No Sales Tax', 0, NULL, NULL),
(112, 11, 4, 0, '0', 0, '0', 0, 'Sales Tax 4%', 0, NULL, NULL),
(113, 11, 6, 0, '0', 0, '0', 0, 'Sales Tax 6%', 0, NULL, NULL),
(121, 12, 20, 0, '0', 0, '0', 0, 'VAT standard rate', 0, NULL, NULL),
(122, 12, 14, 0, '0', 0, '0', 0, 'VAT reduced rate', 0, NULL, NULL),
(123, 12, 10, 0, '0', 0, '0', 0, 'VAT reduced rate', 0, NULL, NULL),
(124, 12, 7, 0, '0', 0, '0', 0, 'VAT super-reduced rate', 0, NULL, NULL),
(125, 12, 0, 0, '0', 0, '0', 0, 'VAT Rate 0', 0, NULL, NULL),
(141, 14, 7, 0, '0', 0, '0', 0, 'VAT standard rate', 0, NULL, NULL),
(142, 14, 0, 0, '0', 0, '0', 0, 'VAT Rate 0', 0, NULL, NULL),
(143, 14, 5, 9.975, '1', 0, '0', 0, 'TPS and TVQ rate', 1, NULL, NULL),
(171, 17, 19, 0, '0', 0, '0', 0, 'Algemeen BTW tarief', 0, NULL, NULL),
(172, 17, 6, 0, '0', 0, '0', 0, 'Verlaagd BTW tarief', 0, NULL, NULL),
(173, 17, 0, 0, '0', 0, '0', 0, '0 BTW tarief', 0, NULL, NULL),
(174, 17, 21, 0, '0', 0, '0', 0, 'Algemeen BTW tarief (vanaf 1 oktober 2012)', 0, NULL, NULL),
(201, 20, 25, 0, '0', 0, '0', 0, 'VAT standard rate', 0, NULL, NULL),
(202, 20, 12, 0, '0', 0, '0', 0, 'VAT reduced rate', 0, NULL, NULL),
(203, 20, 6, 0, '0', 0, '0', 0, 'VAT super-reduced rate', 0, NULL, NULL),
(204, 20, 0, 0, '0', 0, '0', 0, 'VAT Rate 0', 0, NULL, NULL),
(231, 23, 21, 0, '0', 0, '0', 0, 'IVA standard rate', 0, NULL, NULL),
(232, 23, 10.5, 0, '0', 0, '0', 0, 'IVA reduced rate', 0, NULL, NULL),
(233, 23, 0, 0, '0', 0, '0', 0, 'IVA Rate 0', 0, NULL, NULL),
(241, 24, 19.25, 0, '0', 0, '0', 0, 'VAT standard rate', 0, NULL, NULL),
(242, 24, 0, 0, '0', 0, '0', 0, 'VAT Rate 0', 0, NULL, NULL),
(251, 25, 23, 0, '0', 0, '0', 0, 'VAT standard rate', 0, NULL, NULL),
(252, 25, 13, 0, '0', 0, '0', 0, 'VAT reduced rate', 0, NULL, NULL),
(253, 25, 0, 0, '0', 0, '0', 0, 'VAT Rate 0', 0, NULL, NULL),
(254, 25, 6, 0, '0', 0, '0', 0, 'VAT reduced rate', 0, NULL, NULL),
(261, 26, 0, 0, '0', 0, '0', 0, 'VAT Rate 0', 0, NULL, NULL),
(271, 27, 19.6, 0, '0', 0, '0', 0, 'VAT standard rate (France hors DOM-TOM)', 0, NULL, NULL),
(272, 27, 8.5, 0, '0', 0, '0', 0, 'VAT standard rate (DOM sauf Guyane et Saint-Martin)', 0, NULL, NULL),
(273, 27, 8.5, 0, '0', 0, '0', 1, 'VAT standard rate (DOM sauf Guyane et Saint-Martin), non perçu par le vendeur mais récupérable par acheteur', 0, NULL, NULL),
(274, 27, 5.5, 0, '0', 0, '0', 0, 'VAT reduced rate (France hors DOM-TOM)', 0, NULL, NULL),
(275, 27, 0, 0, '0', 0, '0', 0, 'VAT Rate 0 ou non applicable', 0, NULL, NULL),
(276, 27, 2.1, 0, '0', 0, '0', 0, 'VAT super-reduced rate', 0, NULL, NULL),
(277, 27, 7, 0, '0', 0, '0', 0, 'VAT reduced rate', 0, NULL, NULL),
(281, 28, 10, 0, '0', 0, '0', 0, 'VAT standard rate', 0, NULL, NULL),
(282, 28, 0, 0, '0', 0, '0', 0, 'VAT Rate 0', 0, NULL, NULL),
(411, 41, 20, 0, '0', 0, '0', 0, 'VAT standard rate', 0, NULL, NULL),
(412, 41, 10, 0, '0', 0, '0', 0, 'VAT reduced rate', 0, NULL, NULL),
(413, 41, 0, 0, '0', 0, '0', 0, 'VAT Rate 0', 0, NULL, NULL),
(461, 46, 0, 0, '0', 0, '0', 0, 'No VAT', 0, NULL, NULL),
(462, 46, 15, 0, '0', 0, '0', 0, 'VAT 15%', 0, NULL, NULL),
(463, 46, 7.5, 0, '0', 0, '0', 0, 'VAT 7.5%', 0, NULL, NULL),
(561, 56, 0, 0, '0', 0, '0', 0, 'VAT reduced rate', 0, NULL, NULL),
(591, 59, 20, 0, '0', 0, '0', 0, 'VAT standard rate', 0, NULL, NULL),
(592, 59, 7, 0, '0', 0, '0', 0, 'VAT reduced rate', 0, NULL, NULL),
(593, 59, 0, 0, '0', 0, '0', 0, 'VAT Rate 0', 0, NULL, NULL),
(671, 67, 19, 0, '0', 0, '0', 0, 'VAT standard rate', 0, NULL, NULL),
(672, 67, 0, 0, '0', 0, '0', 0, 'VAT Rate 0', 0, NULL, NULL),
(801, 80, 25, 0, '0', 0, '0', 0, 'VAT standard rate', 0, NULL, NULL),
(802, 80, 0, 0, '0', 0, '0', 0, 'VAT Rate 0', 0, NULL, NULL),
(861, 86, 13, 0, '0', 0, '0', 0, 'IVA 13', 0, NULL, NULL),
(862, 86, 0, 0, '0', 0, '0', 0, 'SIN IVA', 0, NULL, NULL),
(1141, 114, 0, 0, '0', 0, '0', 0, 'No ISV', 0, NULL, NULL),
(1142, 114, 12, 0, '0', 0, '0', 0, 'ISV 12%', 0, NULL, NULL),
(1161, 116, 25.5, 0, '0', 0, '0', 0, 'VAT standard rate', 0, NULL, NULL),
(1162, 116, 7, 0, '0', 0, '0', 0, 'VAT reduced rate', 0, NULL, NULL),
(1163, 116, 0, 0, '0', 0, '0', 0, 'VAT rate 0', 0, NULL, NULL),
(1171, 117, 12.5, 0, '0', 0, '0', 0, 'VAT standard rate', 0, NULL, NULL),
(1172, 117, 4, 0, '0', 0, '0', 0, 'VAT reduced rate', 0, NULL, NULL),
(1173, 117, 1, 0, '0', 0, '0', 0, 'VAT super-reduced rate', 0, NULL, NULL),
(1174, 117, 0, 0, '0', 0, '0', 0, 'VAT Rate 0', 0, NULL, NULL),
(1231, 123, 0, 0, '0', 0, '0', 0, 'VAT Rate 0', 0, NULL, NULL),
(1232, 123, 5, 0, '0', 0, '0', 0, 'VAT Rate 5', 0, NULL, NULL),
(1401, 140, 15, 0, '0', 0, '0', 0, 'VAT standard rate', 0, NULL, NULL),
(1402, 140, 12, 0, '0', 0, '0', 0, 'VAT reduced rate', 0, NULL, NULL),
(1403, 140, 6, 0, '0', 0, '0', 0, 'VAT reduced rate', 0, NULL, NULL),
(1404, 140, 3, 0, '0', 0, '0', 0, 'VAT super-reduced rate', 0, NULL, NULL),
(1405, 140, 0, 0, '0', 0, '0', 0, 'VAT Rate 0', 0, NULL, NULL),
(1511, 151, 0, 0, '0', 0, '0', 0, 'VAT Rate 0', 0, NULL, NULL),
(1512, 151, 14, 0, '0', 0, '0', 0, 'VAT Rate 14', 0, NULL, NULL),
(1521, 152, 0, 0, '0', 0, '0', 0, 'VAT Rate 0', 0, NULL, NULL),
(1522, 152, 15, 0, '0', 0, '0', 0, 'VAT Rate 15', 0, NULL, NULL),
(1541, 154, 0, 0, '0', 0, '0', 0, 'No VAT', 0, NULL, NULL),
(1542, 154, 16, 0, '0', 0, '0', 0, 'VAT 16%', 0, NULL, NULL),
(1543, 154, 10, 0, '0', 0, '0', 0, 'VAT Frontero', 0, NULL, NULL),
(1662, 166, 15, 0, '0', 0, '0', 0, 'VAT standard rate', 0, NULL, NULL),
(1663, 166, 0, 0, '0', 0, '0', 0, 'VAT Rate 0', 0, NULL, NULL),
(1692, 169, 5, 0, '0', 0, '0', 0, 'VAT standard rate', 0, NULL, NULL),
(1693, 169, 0, 0, '0', 0, '0', 0, 'VAT Rate 0', 0, NULL, NULL),
(1731, 173, 25, 0, '0', 0, '0', 0, 'VAT standard rate', 0, NULL, NULL),
(1732, 173, 14, 0, '0', 0, '0', 0, 'VAT reduced rate', 0, NULL, NULL),
(1733, 173, 8, 0, '0', 0, '0', 0, 'VAT reduced rate', 0, NULL, NULL),
(1734, 173, 0, 0, '0', 0, '0', 0, 'VAT Rate 0', 0, NULL, NULL),
(1841, 181, 18, 0, '0', 0, '0', 0, 'VAT standard rate', 0, NULL, NULL),
(1842, 184, 7, 0, '0', 0, '0', 0, 'VAT reduced rate', 0, NULL, NULL),
(1843, 181, 0, 0, '0', 0, '0', 0, 'VAT Rate 0', 0, NULL, NULL),
(1844, 184, 0, 0, '0', 0, '0', 0, 'VAT Rate 0', 0, NULL, NULL),
(1881, 188, 24, 0, '0', 0, '0', 0, 'VAT standard rate', 0, NULL, NULL),
(1882, 188, 9, 0, '0', 0, '0', 0, 'VAT reduced rate', 0, NULL, NULL),
(1883, 188, 0, 0, '0', 0, '0', 0, 'VAT Rate 0', 0, NULL, NULL),
(1884, 188, 5, 0, '0', 0, '0', 0, 'VAT reduced rate', 0, NULL, NULL),
(1931, 193, 0, 0, '0', 0, '0', 0, 'No VAT in SPM', 0, NULL, NULL),
(2011, 201, 19, 0, '0', 0, '0', 0, 'VAT standard rate', 0, NULL, NULL),
(2012, 201, 10, 0, '0', 0, '0', 0, 'VAT reduced rate', 0, NULL, NULL),
(2013, 201, 0, 0, '0', 0, '0', 0, 'VAT Rate 0', 0, NULL, NULL),
(2021, 202, 22, 0, '0', 0, '0', 0, 'VAT standard rate', 0, NULL, NULL),
(2022, 202, 9.5, 0, '0', 0, '0', 0, 'VAT reduced rate', 0, NULL, NULL),
(2023, 202, 0, 0, '0', 0, '0', 0, 'VAT Rate 0', 0, NULL, NULL),
(2051, 205, 0, 0, '0', 0, '0', 0, 'No VAT', 0, NULL, NULL),
(2052, 205, 14, 0, '0', 0, '0', 0, 'VAT 14%', 0, NULL, NULL),
(2261, 226, 20, 0, '0', 0, '0', 0, 'VAT standart rate', 0, NULL, NULL),
(2262, 226, 0, 0, '0', 0, '0', 0, 'VAT Rate 0', 0, NULL, NULL),
(2321, 232, 0, 0, '0', 0, '0', 0, 'No VAT', 0, NULL, NULL),
(2322, 232, 12, 0, '0', 0, '0', 0, 'VAT 12%', 0, NULL, NULL),
(2323, 232, 8, 0, '0', 0, '0', 0, 'VAT 8%', 0, NULL, NULL),
(2461, 246, 0, 0, '0', 0, '0', 0, 'VAT Rate 0', 0, NULL, NULL),
(2462, 102, 23, 0, '0', 0, '0', 0, '????????? ?.?.?.', 0, NULL, NULL),
(2463, 102, 0, 0, '0', 0, '0', 0, '???????? ?.?.?.', 0, NULL, NULL),
(2464, 102, 13, 0, '0', 0, '0', 0, '????????? ?.?.?.', 0, NULL, NULL),
(2465, 102, 6.5, 0, '0', 0, '0', 0, '????????????? ?.?.?.', 0, NULL, NULL),
(2466, 102, 16, 0, '0', 0, '0', 0, '????? ????????? ?.?.?.', 0, NULL, NULL),
(2467, 102, 9, 0, '0', 0, '0', 0, '????? ????????? ?.?.?.', 0, NULL, NULL),
(2468, 102, 5, 0, '0', 0, '0', 0, '????? ????????????? ?.?.?.', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `test_c_typent`
--

DROP TABLE IF EXISTS `test_c_typent`;
CREATE TABLE `test_c_typent` (
  `id` int(11) NOT NULL,
  `code` varchar(12) NOT NULL,
  `libelle` varchar(30) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `module` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_c_typent`
--

INSERT INTO `test_c_typent` (`id`, `code`, `libelle`, `active`, `module`) VALUES
(0, 'TE_UNKNOWN', '-', 1, NULL),
(1, 'TE_STARTUP', 'Start-up', 0, NULL),
(2, 'TE_GROUP', 'Grand groupe', 1, NULL),
(3, 'TE_MEDIUM', 'PME/PMI', 1, NULL),
(4, 'TE_SMALL', 'TPE', 1, NULL),
(5, 'TE_ADMIN', 'Administration', 1, NULL),
(6, 'TE_WHOLE', 'Grossiste', 0, NULL),
(7, 'TE_RETAIL', 'Revendeur', 0, NULL),
(8, 'TE_PRIVATE', 'Particulier', 1, NULL),
(100, 'TE_OTHER', 'Autres', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `test_c_type_contact`
--

DROP TABLE IF EXISTS `test_c_type_contact`;
CREATE TABLE `test_c_type_contact` (
  `rowid` int(11) NOT NULL,
  `element` varchar(30) NOT NULL,
  `source` varchar(8) NOT NULL DEFAULT 'external',
  `code` varchar(32) NOT NULL,
  `libelle` varchar(64) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `module` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_c_type_contact`
--

INSERT INTO `test_c_type_contact` (`rowid`, `element`, `source`, `code`, `libelle`, `active`, `module`) VALUES
(10, 'contrat', 'internal', 'SALESREPSIGN', 'Commercial signataire du contrat', 1, NULL),
(11, 'contrat', 'internal', 'SALESREPFOLL', 'Commercial suivi du contrat', 1, NULL),
(20, 'contrat', 'external', 'BILLING', 'Contact client facturation contrat', 1, NULL),
(21, 'contrat', 'external', 'CUSTOMER', 'Contact client suivi contrat', 1, NULL),
(22, 'contrat', 'external', 'SALESREPSIGN', 'Contact client signataire contrat', 1, NULL),
(31, 'propal', 'internal', 'SALESREPFOLL', 'Commercial à l''origine de la propale', 1, NULL),
(40, 'propal', 'external', 'BILLING', 'Contact client facturation propale', 1, NULL),
(41, 'propal', 'external', 'CUSTOMER', 'Contact client suivi propale', 1, NULL),
(50, 'facture', 'internal', 'SALESREPFOLL', 'Responsable suivi du paiement', 1, NULL),
(60, 'facture', 'external', 'BILLING', 'Contact client facturation', 1, NULL),
(61, 'facture', 'external', 'SHIPPING', 'Contact client livraison', 1, NULL),
(62, 'facture', 'external', 'SERVICE', 'Contact client prestation', 1, NULL),
(70, 'invoice_supplier', 'internal', 'SALESREPFOLL', 'Responsable suivi du paiement', 1, NULL),
(71, 'invoice_supplier', 'external', 'BILLING', 'Contact fournisseur facturation', 1, NULL),
(72, 'invoice_supplier', 'external', 'SHIPPING', 'Contact fournisseur livraison', 1, NULL),
(73, 'invoice_supplier', 'external', 'SERVICE', 'Contact fournisseur prestation', 1, NULL),
(80, 'agenda', 'internal', 'ACTOR', 'Responsable', 1, NULL),
(81, 'agenda', 'internal', 'GUEST', 'Guest', 1, NULL),
(85, 'agenda', 'external', 'ACTOR', 'Responsable', 1, NULL),
(86, 'agenda', 'external', 'GUEST', 'Guest', 1, NULL),
(91, 'commande', 'internal', 'SALESREPFOLL', 'Responsable suivi de la commande', 1, NULL),
(100, 'commande', 'external', 'BILLING', 'Contact client facturation commande', 1, NULL),
(101, 'commande', 'external', 'CUSTOMER', 'Contact client suivi commande', 1, NULL),
(102, 'commande', 'external', 'SHIPPING', 'Contact client livraison commande', 1, NULL),
(120, 'fichinter', 'internal', 'INTERREPFOLL', 'Responsable suivi de l''intervention', 1, NULL),
(121, 'fichinter', 'internal', 'INTERVENING', 'Intervenant', 1, NULL),
(130, 'fichinter', 'external', 'BILLING', 'Contact client facturation intervention', 1, NULL),
(131, 'fichinter', 'external', 'CUSTOMER', 'Contact client suivi de l''intervention', 1, NULL),
(140, 'order_supplier', 'internal', 'SALESREPFOLL', 'Responsable suivi de la commande', 1, NULL),
(141, 'order_supplier', 'internal', 'SHIPPING', 'Responsable réception de la commande', 1, NULL),
(142, 'order_supplier', 'external', 'BILLING', 'Contact fournisseur facturation commande', 1, NULL),
(143, 'order_supplier', 'external', 'CUSTOMER', 'Contact fournisseur suivi commande', 1, NULL),
(145, 'order_supplier', 'external', 'SHIPPING', 'Contact fournisseur livraison commande', 1, NULL),
(160, 'project', 'internal', 'PROJECTLEADER', 'Chef de Projet', 1, NULL),
(161, 'project', 'internal', 'PROJECTCONTRIBUTOR', 'Intervenant', 1, NULL),
(170, 'project', 'external', 'PROJECTLEADER', 'Chef de Projet', 1, NULL),
(171, 'project', 'external', 'PROJECTCONTRIBUTOR', 'Intervenant', 1, NULL),
(180, 'project_task', 'internal', 'TASKEXECUTIVE', 'Responsable', 1, NULL),
(181, 'project_task', 'internal', 'TASKCONTRIBUTOR', 'Intervenant', 1, NULL),
(190, 'project_task', 'external', 'TASKEXECUTIVE', 'Responsable', 1, NULL),
(191, 'project_task', 'external', 'TASKCONTRIBUTOR', 'Intervenant', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `test_c_type_fees`
--

DROP TABLE IF EXISTS `test_c_type_fees`;
CREATE TABLE `test_c_type_fees` (
  `id` int(11) NOT NULL,
  `code` varchar(12) NOT NULL,
  `libelle` varchar(30) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `module` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_c_type_fees`
--

INSERT INTO `test_c_type_fees` (`id`, `code`, `libelle`, `active`, `module`) VALUES
(1, 'TF_OTHER', 'Other', 1, NULL),
(2, 'TF_TRIP', 'Trip', 1, NULL),
(3, 'TF_LUNCH', 'Lunch', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `test_c_type_resource`
--

DROP TABLE IF EXISTS `test_c_type_resource`;
CREATE TABLE `test_c_type_resource` (
  `rowid` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `label` varchar(64) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_c_ziptown`
--

DROP TABLE IF EXISTS `test_c_ziptown`;
CREATE TABLE `test_c_ziptown` (
  `rowid` int(11) NOT NULL,
  `code` varchar(5) DEFAULT NULL,
  `fk_county` int(11) DEFAULT NULL,
  `fk_pays` int(11) NOT NULL DEFAULT '0',
  `zip` varchar(10) NOT NULL,
  `town` varchar(255) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_deplacement`
--

DROP TABLE IF EXISTS `test_deplacement`;
CREATE TABLE `test_deplacement` (
  `rowid` int(11) NOT NULL,
  `ref` varchar(30) DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `datec` datetime NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dated` datetime DEFAULT NULL,
  `fk_user` int(11) NOT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `type` varchar(12) NOT NULL,
  `fk_statut` int(11) NOT NULL DEFAULT '1',
  `km` double DEFAULT NULL,
  `fk_soc` int(11) DEFAULT NULL,
  `fk_projet` int(11) DEFAULT '0',
  `note_private` text,
  `note_public` text,
  `extraparams` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_document_generator`
--

DROP TABLE IF EXISTS `test_document_generator`;
CREATE TABLE `test_document_generator` (
  `rowid` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `classfile` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_document_model`
--

DROP TABLE IF EXISTS `test_document_model`;
CREATE TABLE `test_document_model` (
  `rowid` int(11) NOT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `type` varchar(20) NOT NULL,
  `libelle` varchar(255) DEFAULT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_document_model`
--

INSERT INTO `test_document_model` (`rowid`, `nom`, `entity`, `type`, `libelle`, `description`) VALUES
(1, 'cesgm', 1, 'propal', NULL, NULL),
(2, 'soleil', 1, 'ficheinter', NULL, NULL),
(3, 'rouget', 1, 'shipping', NULL, NULL),
(4, 'typhon', 1, 'delivery', NULL, NULL),
(5, 'einstein', 1, 'order', NULL, NULL),
(7, 'baleine', 1, 'project', NULL, NULL),
(8, 'crabe', 1, 'invoice', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `test_don`
--

DROP TABLE IF EXISTS `test_don`;
CREATE TABLE `test_don` (
  `rowid` int(11) NOT NULL,
  `ref` varchar(30) DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_statut` smallint(6) NOT NULL DEFAULT '0',
  `datec` datetime DEFAULT NULL,
  `datedon` datetime DEFAULT NULL,
  `amount` double DEFAULT '0',
  `fk_paiement` int(11) DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `societe` varchar(50) DEFAULT NULL,
  `address` text,
  `zip` varchar(30) DEFAULT NULL,
  `town` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(24) DEFAULT NULL,
  `phone_mobile` varchar(24) DEFAULT NULL,
  `public` smallint(6) NOT NULL DEFAULT '1',
  `fk_don_projet` int(11) DEFAULT NULL,
  `fk_user_author` int(11) NOT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `note_private` text,
  `note_public` text,
  `model_pdf` varchar(255) DEFAULT NULL,
  `import_key` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_ecm_directories`
--

DROP TABLE IF EXISTS `test_ecm_directories`;
CREATE TABLE `test_ecm_directories` (
  `rowid` int(11) NOT NULL,
  `label` varchar(64) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `fk_parent` int(11) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `cachenbofdoc` int(11) NOT NULL DEFAULT '0',
  `fullpath` varchar(255) DEFAULT NULL,
  `extraparams` varchar(255) DEFAULT NULL,
  `date_c` datetime DEFAULT NULL,
  `date_m` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_user_c` int(11) DEFAULT NULL,
  `fk_user_m` int(11) DEFAULT NULL,
  `acl` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_element_contact`
--

DROP TABLE IF EXISTS `test_element_contact`;
CREATE TABLE `test_element_contact` (
  `rowid` int(11) NOT NULL,
  `datecreate` datetime DEFAULT NULL,
  `statut` smallint(6) DEFAULT '5',
  `element_id` int(11) NOT NULL,
  `fk_c_type_contact` int(11) NOT NULL,
  `fk_socpeople` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_element_contact`
--

INSERT INTO `test_element_contact` (`rowid`, `datecreate`, `statut`, `element_id`, `fk_c_type_contact`, `fk_socpeople`) VALUES
(2, '2015-12-22 06:33:11', 4, 6, 41, 1),
(4, '2015-12-28 21:41:33', 4, 10, 31, 1),
(6, '2016-01-06 20:55:57', 4, 1, 10, 1),
(7, '2016-01-06 20:55:57', 4, 1, 11, 1),
(8, '2016-01-07 16:33:19', 4, 14, 41, 4),
(9, '2016-01-20 18:16:35', 4, 2, 10, 2),
(10, '2016-01-20 18:16:35', 4, 2, 11, 2),
(11, '2016-01-20 18:17:43', 4, 3, 10, 2),
(12, '2016-01-20 18:17:43', 4, 3, 11, 2),
(21, '2016-01-20 19:43:38', 4, 8, 10, 2),
(22, '2016-01-20 19:43:38', 4, 8, 11, 2),
(23, '2016-01-20 19:45:22', 4, 20, 41, 5);

-- --------------------------------------------------------

--
-- Table structure for table `test_element_element`
--

DROP TABLE IF EXISTS `test_element_element`;
CREATE TABLE `test_element_element` (
  `rowid` int(11) NOT NULL,
  `fk_source` int(11) NOT NULL,
  `sourcetype` varchar(32) NOT NULL,
  `fk_target` int(11) NOT NULL,
  `targettype` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_element_element`
--

INSERT INTO `test_element_element` (`rowid`, `fk_source`, `sourcetype`, `fk_target`, `targettype`) VALUES
(4, 19, 'propal', 7, 'contrat'),
(5, 19, 'propal', 8, 'contrat');

-- --------------------------------------------------------

--
-- Table structure for table `test_element_lock`
--

DROP TABLE IF EXISTS `test_element_lock`;
CREATE TABLE `test_element_lock` (
  `rowid` int(11) NOT NULL,
  `fk_element` int(11) NOT NULL,
  `elementtype` varchar(32) NOT NULL,
  `datel` datetime DEFAULT NULL,
  `datem` datetime DEFAULT NULL,
  `sessionid` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_element_resources`
--

DROP TABLE IF EXISTS `test_element_resources`;
CREATE TABLE `test_element_resources` (
  `rowid` int(11) NOT NULL,
  `resource_id` int(11) DEFAULT NULL,
  `resource_type` varchar(64) DEFAULT NULL,
  `element_id` int(11) DEFAULT NULL,
  `element_type` varchar(64) DEFAULT NULL,
  `busy` int(11) DEFAULT NULL,
  `mandatory` int(11) DEFAULT NULL,
  `fk_user_create` int(11) DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_element_tag`
--

DROP TABLE IF EXISTS `test_element_tag`;
CREATE TABLE `test_element_tag` (
  `rowid` int(11) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `lang` varchar(5) NOT NULL,
  `tag` varchar(255) NOT NULL,
  `fk_element` int(11) NOT NULL,
  `element` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_entrepot`
--

DROP TABLE IF EXISTS `test_entrepot`;
CREATE TABLE `test_entrepot` (
  `rowid` int(11) NOT NULL,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `label` varchar(255) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `description` text,
  `lieu` varchar(64) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `town` varchar(50) DEFAULT NULL,
  `fk_departement` int(11) DEFAULT NULL,
  `fk_pays` int(11) DEFAULT '0',
  `statut` tinyint(4) DEFAULT '1',
  `valo_pmp` float(12,4) DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `import_key` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_events`
--

DROP TABLE IF EXISTS `test_events`;
CREATE TABLE `test_events` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(32) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `dateevent` datetime DEFAULT NULL,
  `fk_user` int(11) DEFAULT NULL,
  `description` varchar(250) NOT NULL,
  `ip` varchar(32) NOT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `fk_object` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_event_element`
--

DROP TABLE IF EXISTS `test_event_element`;
CREATE TABLE `test_event_element` (
  `rowid` int(11) NOT NULL,
  `fk_source` int(11) NOT NULL,
  `fk_target` int(11) NOT NULL,
  `targettype` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_expedition`
--

DROP TABLE IF EXISTS `test_expedition`;
CREATE TABLE `test_expedition` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ref` varchar(30) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `fk_soc` int(11) NOT NULL,
  `ref_ext` varchar(30) DEFAULT NULL,
  `ref_int` varchar(30) DEFAULT NULL,
  `ref_customer` varchar(30) DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `date_valid` datetime DEFAULT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `date_expedition` datetime DEFAULT NULL,
  `date_delivery` datetime DEFAULT NULL,
  `fk_address` int(11) DEFAULT NULL,
  `fk_shipping_method` int(11) DEFAULT NULL,
  `tracking_number` varchar(50) DEFAULT NULL,
  `fk_statut` smallint(6) DEFAULT '0',
  `height` float DEFAULT NULL,
  `width` float DEFAULT NULL,
  `size_units` int(11) DEFAULT NULL,
  `size` float DEFAULT NULL,
  `weight_units` int(11) DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `note_private` text,
  `note_public` text,
  `model_pdf` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_expeditiondet`
--

DROP TABLE IF EXISTS `test_expeditiondet`;
CREATE TABLE `test_expeditiondet` (
  `rowid` int(11) NOT NULL,
  `fk_expedition` int(11) NOT NULL,
  `fk_origin_line` int(11) DEFAULT NULL,
  `fk_entrepot` int(11) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `rang` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_expeditiondet_batch`
--

DROP TABLE IF EXISTS `test_expeditiondet_batch`;
CREATE TABLE `test_expeditiondet_batch` (
  `rowid` int(11) NOT NULL,
  `fk_expeditiondet` int(11) NOT NULL,
  `eatby` date DEFAULT NULL,
  `sellby` date DEFAULT NULL,
  `batch` varchar(30) DEFAULT NULL,
  `qty` double NOT NULL DEFAULT '0',
  `fk_origin_stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_export_compta`
--

DROP TABLE IF EXISTS `test_export_compta`;
CREATE TABLE `test_export_compta` (
  `rowid` int(11) NOT NULL,
  `ref` varchar(12) NOT NULL,
  `date_export` datetime NOT NULL,
  `fk_user` int(11) NOT NULL,
  `note` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_export_model`
--

DROP TABLE IF EXISTS `test_export_model`;
CREATE TABLE `test_export_model` (
  `rowid` int(11) NOT NULL,
  `fk_user` int(11) NOT NULL DEFAULT '0',
  `label` varchar(50) NOT NULL,
  `type` varchar(20) NOT NULL,
  `field` text NOT NULL,
  `filter` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_extrafields`
--

DROP TABLE IF EXISTS `test_extrafields`;
CREATE TABLE `test_extrafields` (
  `rowid` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `elementtype` varchar(64) NOT NULL DEFAULT 'member',
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `label` varchar(255) NOT NULL,
  `type` varchar(8) DEFAULT NULL,
  `size` varchar(8) DEFAULT NULL,
  `fieldunique` int(11) DEFAULT '0',
  `fieldrequired` int(11) DEFAULT '0',
  `pos` int(11) DEFAULT '0',
  `param` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_facture`
--

DROP TABLE IF EXISTS `test_facture`;
CREATE TABLE `test_facture` (
  `rowid` int(11) NOT NULL,
  `facnumber` varchar(30) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `ref_ext` varchar(255) DEFAULT NULL,
  `ref_int` varchar(255) DEFAULT NULL,
  `ref_client` varchar(255) DEFAULT NULL,
  `type` smallint(6) NOT NULL DEFAULT '0',
  `increment` varchar(10) DEFAULT NULL,
  `fk_soc` int(11) NOT NULL,
  `datec` datetime DEFAULT NULL,
  `datef` date DEFAULT NULL,
  `date_valid` date DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `paye` smallint(6) NOT NULL DEFAULT '0',
  `amount` double(24,8) NOT NULL DEFAULT '0.00000000',
  `remise_percent` double DEFAULT '0',
  `remise_absolue` double DEFAULT '0',
  `remise` double DEFAULT '0',
  `close_code` varchar(16) DEFAULT NULL,
  `close_note` varchar(128) DEFAULT NULL,
  `tva` double(24,8) DEFAULT '0.00000000',
  `localtax1` double(24,8) DEFAULT '0.00000000',
  `localtax2` double(24,8) DEFAULT '0.00000000',
  `revenuestamp` double(24,8) DEFAULT '0.00000000',
  `total` double(24,8) DEFAULT '0.00000000',
  `total_ttc` double(24,8) DEFAULT '0.00000000',
  `fk_statut` smallint(6) NOT NULL DEFAULT '0',
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `fk_facture_source` int(11) DEFAULT NULL,
  `fk_projet` int(11) DEFAULT NULL,
  `fk_account` int(11) DEFAULT NULL,
  `fk_currency` varchar(3) DEFAULT NULL,
  `fk_cond_reglement` int(11) NOT NULL DEFAULT '1',
  `fk_mode_reglement` int(11) DEFAULT NULL,
  `date_lim_reglement` date DEFAULT NULL,
  `note_private` text,
  `note_public` text,
  `model_pdf` varchar(255) DEFAULT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  `extraparams` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_facturedet`
--

DROP TABLE IF EXISTS `test_facturedet`;
CREATE TABLE `test_facturedet` (
  `rowid` int(11) NOT NULL,
  `fk_facture` int(11) NOT NULL,
  `fk_parent_line` int(11) DEFAULT NULL,
  `fk_product` int(11) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `description` text,
  `tva_tx` double(6,3) DEFAULT NULL,
  `localtax1_tx` double(6,3) DEFAULT '0.000',
  `localtax1_type` varchar(10) DEFAULT NULL,
  `localtax2_tx` double(6,3) DEFAULT '0.000',
  `localtax2_type` varchar(10) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `remise_percent` double DEFAULT '0',
  `remise` double DEFAULT '0',
  `fk_remise_except` int(11) DEFAULT NULL,
  `subprice` double(24,8) DEFAULT NULL,
  `price` double(24,8) DEFAULT NULL,
  `total_ht` double(24,8) DEFAULT NULL,
  `total_tva` double(24,8) DEFAULT NULL,
  `total_localtax1` double(24,8) DEFAULT '0.00000000',
  `total_localtax2` double(24,8) DEFAULT '0.00000000',
  `total_ttc` double(24,8) DEFAULT NULL,
  `product_type` int(11) DEFAULT '0',
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `info_bits` int(11) DEFAULT '0',
  `buy_price_ht` double(24,8) DEFAULT '0.00000000',
  `fk_product_fournisseur_price` int(11) DEFAULT NULL,
  `fk_code_ventilation` int(11) NOT NULL DEFAULT '0',
  `special_code` int(10) UNSIGNED DEFAULT '0',
  `rang` int(11) DEFAULT '0',
  `import_key` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_facturedet_extrafields`
--

DROP TABLE IF EXISTS `test_facturedet_extrafields`;
CREATE TABLE `test_facturedet_extrafields` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_facturedet_rec`
--

DROP TABLE IF EXISTS `test_facturedet_rec`;
CREATE TABLE `test_facturedet_rec` (
  `rowid` int(11) NOT NULL,
  `fk_facture` int(11) NOT NULL,
  `fk_parent_line` int(11) DEFAULT NULL,
  `fk_product` int(11) DEFAULT NULL,
  `product_type` int(11) DEFAULT '0',
  `label` varchar(255) DEFAULT NULL,
  `description` text,
  `tva_tx` double(6,3) DEFAULT '19.600',
  `localtax1_tx` double(6,3) DEFAULT '0.000',
  `localtax1_type` varchar(10) DEFAULT NULL,
  `localtax2_tx` double(6,3) DEFAULT '0.000',
  `localtax2_type` varchar(10) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `remise_percent` double DEFAULT '0',
  `remise` double DEFAULT '0',
  `subprice` double(24,8) DEFAULT NULL,
  `price` double(24,8) DEFAULT NULL,
  `total_ht` double(24,8) DEFAULT NULL,
  `total_tva` double(24,8) DEFAULT NULL,
  `total_localtax1` double(24,8) DEFAULT '0.00000000',
  `total_localtax2` double(24,8) DEFAULT '0.00000000',
  `total_ttc` double(24,8) DEFAULT NULL,
  `info_bits` int(11) DEFAULT '0',
  `special_code` int(10) UNSIGNED DEFAULT '0',
  `rang` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_facture_extrafields`
--

DROP TABLE IF EXISTS `test_facture_extrafields`;
CREATE TABLE `test_facture_extrafields` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_facture_fourn`
--

DROP TABLE IF EXISTS `test_facture_fourn`;
CREATE TABLE `test_facture_fourn` (
  `rowid` int(11) NOT NULL,
  `ref` varchar(30) DEFAULT NULL,
  `ref_supplier` varchar(50) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `ref_ext` varchar(30) DEFAULT NULL,
  `type` smallint(6) NOT NULL DEFAULT '0',
  `fk_soc` int(11) NOT NULL,
  `datec` datetime DEFAULT NULL,
  `datef` date DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `libelle` varchar(255) DEFAULT NULL,
  `paye` smallint(6) NOT NULL DEFAULT '0',
  `amount` double(24,8) NOT NULL DEFAULT '0.00000000',
  `remise` double(24,8) DEFAULT '0.00000000',
  `close_code` varchar(16) DEFAULT NULL,
  `close_note` varchar(128) DEFAULT NULL,
  `tva` double(24,8) DEFAULT '0.00000000',
  `localtax1` double(24,8) DEFAULT '0.00000000',
  `localtax2` double(24,8) DEFAULT '0.00000000',
  `total` double(24,8) DEFAULT '0.00000000',
  `total_ht` double(24,8) DEFAULT '0.00000000',
  `total_tva` double(24,8) DEFAULT '0.00000000',
  `total_ttc` double(24,8) DEFAULT '0.00000000',
  `fk_statut` smallint(6) NOT NULL DEFAULT '0',
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `fk_facture_source` int(11) DEFAULT NULL,
  `fk_projet` int(11) DEFAULT NULL,
  `fk_cond_reglement` int(11) DEFAULT NULL,
  `fk_mode_reglement` int(11) DEFAULT NULL,
  `date_lim_reglement` date DEFAULT NULL,
  `note_private` text,
  `note_public` text,
  `model_pdf` varchar(255) DEFAULT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  `extraparams` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_facture_fourn_det`
--

DROP TABLE IF EXISTS `test_facture_fourn_det`;
CREATE TABLE `test_facture_fourn_det` (
  `rowid` int(11) NOT NULL,
  `fk_facture_fourn` int(11) NOT NULL,
  `fk_product` int(11) DEFAULT NULL,
  `ref` varchar(50) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `description` text,
  `pu_ht` double(24,8) DEFAULT NULL,
  `pu_ttc` double(24,8) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `remise_percent` double DEFAULT '0',
  `tva_tx` double(6,3) DEFAULT NULL,
  `localtax1_tx` double(6,3) DEFAULT '0.000',
  `localtax1_type` varchar(10) DEFAULT NULL,
  `localtax2_tx` double(6,3) DEFAULT '0.000',
  `localtax2_type` varchar(10) DEFAULT NULL,
  `total_ht` double(24,8) DEFAULT NULL,
  `tva` double(24,8) DEFAULT NULL,
  `total_localtax1` double(24,8) DEFAULT '0.00000000',
  `total_localtax2` double(24,8) DEFAULT '0.00000000',
  `total_ttc` double(24,8) DEFAULT NULL,
  `product_type` int(11) DEFAULT '0',
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `info_bits` int(11) DEFAULT '0',
  `fk_code_ventilation` int(11) NOT NULL DEFAULT '0',
  `import_key` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_facture_fourn_extrafields`
--

DROP TABLE IF EXISTS `test_facture_fourn_extrafields`;
CREATE TABLE `test_facture_fourn_extrafields` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_facture_rec`
--

DROP TABLE IF EXISTS `test_facture_rec`;
CREATE TABLE `test_facture_rec` (
  `rowid` int(11) NOT NULL,
  `titre` varchar(50) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `fk_soc` int(11) NOT NULL,
  `datec` datetime DEFAULT NULL,
  `amount` double(24,8) NOT NULL DEFAULT '0.00000000',
  `remise` double DEFAULT '0',
  `remise_percent` double DEFAULT '0',
  `remise_absolue` double DEFAULT '0',
  `tva` double(24,8) DEFAULT '0.00000000',
  `localtax1` double(24,8) DEFAULT '0.00000000',
  `localtax2` double(24,8) DEFAULT '0.00000000',
  `total` double(24,8) DEFAULT '0.00000000',
  `total_ttc` double(24,8) DEFAULT '0.00000000',
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_projet` int(11) DEFAULT NULL,
  `fk_cond_reglement` int(11) DEFAULT '0',
  `fk_mode_reglement` int(11) DEFAULT '0',
  `date_lim_reglement` date DEFAULT NULL,
  `note_private` text,
  `note_public` text,
  `usenewprice` int(11) DEFAULT '0',
  `frequency` int(11) DEFAULT NULL,
  `unit_frequency` varchar(2) DEFAULT 'd',
  `date_when` datetime DEFAULT NULL,
  `date_last_gen` datetime DEFAULT NULL,
  `nb_gen_done` int(11) DEFAULT NULL,
  `nb_gen_max` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_fichinter`
--

DROP TABLE IF EXISTS `test_fichinter`;
CREATE TABLE `test_fichinter` (
  `rowid` int(11) NOT NULL,
  `fk_soc` int(11) NOT NULL,
  `fk_projet` int(11) DEFAULT '0',
  `fk_contrat` int(11) DEFAULT '0',
  `ref` varchar(30) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datec` datetime DEFAULT NULL,
  `date_valid` datetime DEFAULT NULL,
  `datei` date DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `fk_statut` smallint(6) DEFAULT '0',
  `duree` double DEFAULT NULL,
  `description` text,
  `note_private` text,
  `note_public` text,
  `model_pdf` varchar(255) DEFAULT NULL,
  `extraparams` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_fichinterdet`
--

DROP TABLE IF EXISTS `test_fichinterdet`;
CREATE TABLE `test_fichinterdet` (
  `rowid` int(11) NOT NULL,
  `fk_fichinter` int(11) DEFAULT NULL,
  `fk_parent_line` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `description` text,
  `duree` int(11) DEFAULT NULL,
  `rang` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_fichinter_extrafields`
--

DROP TABLE IF EXISTS `test_fichinter_extrafields`;
CREATE TABLE `test_fichinter_extrafields` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_holiday`
--

DROP TABLE IF EXISTS `test_holiday`;
CREATE TABLE `test_holiday` (
  `rowid` int(11) NOT NULL,
  `fk_user` int(11) NOT NULL,
  `fk_user_create` int(11) DEFAULT NULL,
  `date_create` datetime NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_debut` date NOT NULL,
  `date_fin` date NOT NULL,
  `halfday` int(11) DEFAULT '0',
  `statut` int(11) NOT NULL DEFAULT '1',
  `fk_validator` int(11) NOT NULL,
  `date_valid` datetime DEFAULT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `date_refuse` datetime DEFAULT NULL,
  `fk_user_refuse` int(11) DEFAULT NULL,
  `date_cancel` datetime DEFAULT NULL,
  `fk_user_cancel` int(11) DEFAULT NULL,
  `detail_refuse` varchar(250) DEFAULT NULL,
  `note_private` text,
  `note_public` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_holiday_config`
--

DROP TABLE IF EXISTS `test_holiday_config`;
CREATE TABLE `test_holiday_config` (
  `rowid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_holiday_config`
--

INSERT INTO `test_holiday_config` (`rowid`, `name`, `value`) VALUES
(1, 'userGroup', NULL),
(2, 'lastUpdate', NULL),
(3, 'nbUser', NULL),
(4, 'delayForRequest', '31'),
(5, 'AlertValidatorDelay', '0'),
(6, 'AlertValidatorSolde', '0'),
(7, 'nbHolidayDeducted', '1'),
(8, 'nbHolidayEveryMonth', '2.08334');

-- --------------------------------------------------------

--
-- Table structure for table `test_holiday_events`
--

DROP TABLE IF EXISTS `test_holiday_events`;
CREATE TABLE `test_holiday_events` (
  `rowid` int(11) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_holiday_logs`
--

DROP TABLE IF EXISTS `test_holiday_logs`;
CREATE TABLE `test_holiday_logs` (
  `rowid` int(11) NOT NULL,
  `date_action` datetime NOT NULL,
  `fk_user_action` int(11) NOT NULL,
  `fk_user_update` int(11) NOT NULL,
  `type_action` varchar(255) NOT NULL,
  `prev_solde` varchar(255) NOT NULL,
  `new_solde` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_holiday_users`
--

DROP TABLE IF EXISTS `test_holiday_users`;
CREATE TABLE `test_holiday_users` (
  `fk_user` int(11) NOT NULL,
  `nb_holiday` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_import_model`
--

DROP TABLE IF EXISTS `test_import_model`;
CREATE TABLE `test_import_model` (
  `rowid` int(11) NOT NULL,
  `fk_user` int(11) NOT NULL DEFAULT '0',
  `label` varchar(50) NOT NULL,
  `type` varchar(20) NOT NULL,
  `field` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_links`
--

DROP TABLE IF EXISTS `test_links`;
CREATE TABLE `test_links` (
  `rowid` int(11) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `datea` datetime NOT NULL,
  `url` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `objecttype` varchar(255) NOT NULL,
  `objectid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_livraison`
--

DROP TABLE IF EXISTS `test_livraison`;
CREATE TABLE `test_livraison` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ref` varchar(30) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `fk_soc` int(11) NOT NULL,
  `ref_ext` varchar(30) DEFAULT NULL,
  `ref_int` varchar(30) DEFAULT NULL,
  `ref_customer` varchar(30) DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `date_valid` datetime DEFAULT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `date_delivery` date DEFAULT NULL,
  `fk_address` int(11) DEFAULT NULL,
  `fk_statut` smallint(6) DEFAULT '0',
  `total_ht` double(24,8) DEFAULT '0.00000000',
  `note_private` text,
  `note_public` text,
  `model_pdf` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_livraisondet`
--

DROP TABLE IF EXISTS `test_livraisondet`;
CREATE TABLE `test_livraisondet` (
  `rowid` int(11) NOT NULL,
  `fk_livraison` int(11) DEFAULT NULL,
  `fk_origin_line` int(11) DEFAULT NULL,
  `fk_product` int(11) DEFAULT NULL,
  `description` text,
  `qty` double DEFAULT NULL,
  `subprice` double(24,8) DEFAULT '0.00000000',
  `total_ht` double(24,8) DEFAULT '0.00000000',
  `rang` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_localtax`
--

DROP TABLE IF EXISTS `test_localtax`;
CREATE TABLE `test_localtax` (
  `rowid` int(11) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datep` date DEFAULT NULL,
  `datev` date DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `note` text,
  `fk_bank` int(11) DEFAULT NULL,
  `fk_user_creat` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_mailing`
--

DROP TABLE IF EXISTS `test_mailing`;
CREATE TABLE `test_mailing` (
  `rowid` int(11) NOT NULL,
  `statut` smallint(6) DEFAULT '0',
  `titre` varchar(60) DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `sujet` varchar(60) DEFAULT NULL,
  `body` mediumtext,
  `bgcolor` varchar(8) DEFAULT NULL,
  `bgimage` varchar(255) DEFAULT NULL,
  `cible` varchar(60) DEFAULT NULL,
  `nbemail` int(11) DEFAULT NULL,
  `email_from` varchar(160) DEFAULT NULL,
  `email_replyto` varchar(160) DEFAULT NULL,
  `email_errorsto` varchar(160) DEFAULT NULL,
  `tag` varchar(128) DEFAULT NULL,
  `date_creat` datetime DEFAULT NULL,
  `date_valid` datetime DEFAULT NULL,
  `date_appro` datetime DEFAULT NULL,
  `date_envoi` datetime DEFAULT NULL,
  `fk_user_creat` int(11) DEFAULT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `fk_user_appro` int(11) DEFAULT NULL,
  `extraparams` varchar(255) DEFAULT NULL,
  `joined_file1` varchar(255) DEFAULT NULL,
  `joined_file2` varchar(255) DEFAULT NULL,
  `joined_file3` varchar(255) DEFAULT NULL,
  `joined_file4` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_mailing_cibles`
--

DROP TABLE IF EXISTS `test_mailing_cibles`;
CREATE TABLE `test_mailing_cibles` (
  `rowid` int(11) NOT NULL,
  `fk_mailing` int(11) NOT NULL,
  `fk_contact` int(11) NOT NULL,
  `lastname` varchar(160) DEFAULT NULL,
  `firstname` varchar(160) DEFAULT NULL,
  `email` varchar(160) NOT NULL,
  `other` varchar(255) DEFAULT NULL,
  `tag` varchar(128) DEFAULT NULL,
  `statut` smallint(6) NOT NULL DEFAULT '0',
  `source_url` varchar(160) DEFAULT NULL,
  `source_id` int(11) DEFAULT NULL,
  `source_type` varchar(16) DEFAULT NULL,
  `date_envoi` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_menu`
--

DROP TABLE IF EXISTS `test_menu`;
CREATE TABLE `test_menu` (
  `rowid` int(11) NOT NULL,
  `menu_handler` varchar(16) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `module` varchar(64) DEFAULT NULL,
  `type` varchar(4) NOT NULL,
  `mainmenu` varchar(100) NOT NULL,
  `leftmenu` varchar(100) DEFAULT NULL,
  `fk_menu` int(11) NOT NULL,
  `fk_mainmenu` varchar(24) DEFAULT NULL,
  `fk_leftmenu` varchar(24) DEFAULT NULL,
  `position` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `target` varchar(100) DEFAULT NULL,
  `titre` varchar(255) NOT NULL,
  `langs` varchar(100) DEFAULT NULL,
  `level` smallint(6) DEFAULT NULL,
  `perms` varchar(255) DEFAULT NULL,
  `enabled` varchar(255) DEFAULT '1',
  `usertype` int(11) NOT NULL DEFAULT '0',
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_menu`
--

INSERT INTO `test_menu` (`rowid`, `menu_handler`, `entity`, `module`, `type`, `mainmenu`, `leftmenu`, `fk_menu`, `fk_mainmenu`, `fk_leftmenu`, `position`, `url`, `target`, `titre`, `langs`, `level`, `perms`, `enabled`, `usertype`, `tms`) VALUES
(1, 'all', 1, 'agenda', 'top', 'agenda', NULL, 0, NULL, NULL, 100, '/comm/action/index.php', '', 'Agenda', 'agenda', NULL, '$user->rights->agenda->myactions->read', '$conf->agenda->enabled', 2, '2015-12-15 16:45:59'),
(2, 'all', 1, 'agenda', 'left', 'agenda', NULL, 1, NULL, NULL, 100, '/comm/action/index.php?mainmenu=agenda&amp;leftmenu=agenda', '', 'Actions', 'agenda', NULL, '$user->rights->agenda->myactions->read', '$conf->agenda->enabled', 2, '2015-12-15 16:45:59'),
(3, 'all', 1, 'agenda', 'left', 'agenda', NULL, 2, NULL, NULL, 101, '/comm/action/fiche.php?mainmenu=agenda&amp;leftmenu=agenda&amp;action=create', '', 'NewAction', 'commercial', NULL, '($user->rights->agenda->myactions->create||$user->rights->agenda->allactions->create)', '$conf->agenda->enabled', 2, '2015-12-15 16:45:59'),
(4, 'all', 1, 'agenda', 'left', 'agenda', NULL, 2, NULL, NULL, 102, '/comm/action/index.php?mainmenu=agenda&amp;leftmenu=agenda', '', 'Calendar', 'agenda', NULL, '$user->rights->agenda->myactions->read', '$conf->agenda->enabled', 2, '2015-12-15 16:45:59'),
(5, 'all', 1, 'agenda', 'left', 'agenda', NULL, 4, NULL, NULL, 103, '/comm/action/index.php?mainmenu=agenda&amp;leftmenu=agenda&amp;status=todo&amp;filter=mine', '', 'MenuToDoMyActions', 'agenda', NULL, '$user->rights->agenda->myactions->read', '$conf->agenda->enabled', 2, '2015-12-15 16:45:59'),
(6, 'all', 1, 'agenda', 'left', 'agenda', NULL, 4, NULL, NULL, 104, '/comm/action/index.php?mainmenu=agenda&amp;leftmenu=agenda&amp;status=done&amp;filter=mine', '', 'MenuDoneMyActions', 'agenda', NULL, '$user->rights->agenda->myactions->read', '$conf->agenda->enabled', 2, '2015-12-15 16:45:59'),
(7, 'all', 1, 'agenda', 'left', 'agenda', NULL, 4, NULL, NULL, 105, '/comm/action/index.php?mainmenu=agenda&amp;leftmenu=agenda&amp;status=todo', '', 'MenuToDoActions', 'agenda', NULL, '$user->rights->agenda->allactions->read', '$user->rights->agenda->allactions->read', 2, '2015-12-15 16:45:59'),
(8, 'all', 1, 'agenda', 'left', 'agenda', NULL, 4, NULL, NULL, 106, '/comm/action/index.php?mainmenu=agenda&amp;leftmenu=agenda&amp;status=done', '', 'MenuDoneActions', 'agenda', NULL, '$user->rights->agenda->allactions->read', '$user->rights->agenda->allactions->read', 2, '2015-12-15 16:45:59'),
(9, 'all', 1, 'agenda', 'left', 'agenda', NULL, 2, NULL, NULL, 112, '/comm/action/listactions.php?mainmenu=agenda&amp;leftmenu=agenda', '', 'List', 'agenda', NULL, '$user->rights->agenda->myactions->read', '$conf->agenda->enabled', 2, '2015-12-15 16:45:59'),
(10, 'all', 1, 'agenda', 'left', 'agenda', NULL, 9, NULL, NULL, 113, '/comm/action/listactions.php?mainmenu=agenda&amp;leftmenu=agenda&amp;status=todo&amp;filter=mine', '', 'MenuToDoMyActions', 'agenda', NULL, '$user->rights->agenda->myactions->read', '$conf->agenda->enabled', 2, '2015-12-15 16:45:59'),
(11, 'all', 1, 'agenda', 'left', 'agenda', NULL, 9, NULL, NULL, 114, '/comm/action/listactions.php?mainmenu=agenda&amp;leftmenu=agenda&amp;status=done&amp;filter=mine', '', 'MenuDoneMyActions', 'agenda', NULL, '$user->rights->agenda->myactions->read', '$conf->agenda->enabled', 2, '2015-12-15 16:45:59'),
(12, 'all', 1, 'agenda', 'left', 'agenda', NULL, 9, NULL, NULL, 115, '/comm/action/listactions.php?mainmenu=agenda&amp;leftmenu=agenda&amp;status=todo', '', 'MenuToDoActions', 'agenda', NULL, '$user->rights->agenda->allactions->read', '$user->rights->agenda->allactions->read', 2, '2015-12-15 16:45:59'),
(13, 'all', 1, 'agenda', 'left', 'agenda', NULL, 9, NULL, NULL, 116, '/comm/action/listactions.php?mainmenu=agenda&amp;leftmenu=agenda&amp;status=done', '', 'MenuDoneActions', 'agenda', NULL, '$user->rights->agenda->allactions->read', '$user->rights->agenda->allactions->read', 2, '2015-12-15 16:45:59'),
(14, 'all', 1, 'agenda', 'left', 'agenda', NULL, 2, NULL, NULL, 120, '/comm/action/rapport/index.php?mainmenu=agenda&amp;leftmenu=agenda', '', 'Reportings', 'agenda', NULL, '$user->rights->agenda->allactions->read', '$conf->agenda->enabled', 2, '2015-12-15 16:45:59'),
(19, 'all', 1, 'cron', 'left', 'home', NULL, -1, 'home', 'modulesadmintools', 200, '/cron/list.php?status=-1', '', 'CronList', 'cron', NULL, '$user->rights->cron->read', '$leftmenu==''modulesadmintools''', 2, '2016-01-12 20:12:32'),
(110, 'all', 1, 'estimate', 'top', 'estimate', 'estimate', 0, NULL, NULL, 100, '/estimate/index.php?mainmeu=estimate&leftmenu=estimate', '', 'estimate', 'estimate@estimate', NULL, '1', '$conf->estiamte->enabled', 2, '2016-02-08 21:03:35'),
(111, 'all', 1, 'estimate', 'left', 'estimate', 'estimate', -1, 'estimate', NULL, 100, '/estimate/index.php?mainmeu=estimate&leftmenu=estimate', '', 'estimate', 'estimate@estimate', NULL, '1', '$conf->estimate->enabled', 2, '2016-02-08 21:03:35');

-- --------------------------------------------------------

--
-- Table structure for table `test_notify`
--

DROP TABLE IF EXISTS `test_notify`;
CREATE TABLE `test_notify` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `daten` datetime DEFAULT NULL,
  `fk_action` int(11) NOT NULL,
  `fk_contact` int(11) DEFAULT NULL,
  `fk_user` int(11) DEFAULT NULL,
  `objet_type` varchar(24) NOT NULL,
  `objet_id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_notify_def`
--

DROP TABLE IF EXISTS `test_notify_def`;
CREATE TABLE `test_notify_def` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datec` date DEFAULT NULL,
  `fk_action` int(11) NOT NULL,
  `fk_soc` int(11) NOT NULL,
  `fk_contact` int(11) DEFAULT NULL,
  `fk_user` int(11) DEFAULT NULL,
  `type` varchar(16) DEFAULT 'email'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_opensurvey_comments`
--

DROP TABLE IF EXISTS `test_opensurvey_comments`;
CREATE TABLE `test_opensurvey_comments` (
  `id_comment` int(10) UNSIGNED NOT NULL,
  `id_sondage` char(16) NOT NULL,
  `comment` text NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `usercomment` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_opensurvey_sondage`
--

DROP TABLE IF EXISTS `test_opensurvey_sondage`;
CREATE TABLE `test_opensurvey_sondage` (
  `id_sondage` varchar(16) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `commentaires` text,
  `mail_admin` varchar(128) DEFAULT NULL,
  `nom_admin` varchar(64) DEFAULT NULL,
  `fk_user_creat` int(11) NOT NULL,
  `titre` text NOT NULL,
  `date_fin` datetime NOT NULL,
  `format` varchar(2) NOT NULL,
  `mailsonde` tinyint(4) NOT NULL DEFAULT '0',
  `allow_comments` tinyint(4) NOT NULL DEFAULT '1',
  `allow_spy` tinyint(4) NOT NULL DEFAULT '1',
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sujet` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_opensurvey_user_studs`
--

DROP TABLE IF EXISTS `test_opensurvey_user_studs`;
CREATE TABLE `test_opensurvey_user_studs` (
  `id_users` int(11) NOT NULL,
  `nom` varchar(64) NOT NULL,
  `id_sondage` varchar(16) NOT NULL,
  `reponses` varchar(100) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_paiement`
--

DROP TABLE IF EXISTS `test_paiement`;
CREATE TABLE `test_paiement` (
  `rowid` int(11) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datep` datetime DEFAULT NULL,
  `amount` double(24,8) DEFAULT '0.00000000',
  `fk_paiement` int(11) NOT NULL,
  `num_paiement` varchar(50) DEFAULT NULL,
  `note` text,
  `fk_bank` int(11) NOT NULL DEFAULT '0',
  `fk_user_creat` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `statut` smallint(6) NOT NULL DEFAULT '0',
  `fk_export_compta` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_paiementcharge`
--

DROP TABLE IF EXISTS `test_paiementcharge`;
CREATE TABLE `test_paiementcharge` (
  `rowid` int(11) NOT NULL,
  `fk_charge` int(11) DEFAULT NULL,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datep` datetime DEFAULT NULL,
  `amount` double DEFAULT '0',
  `fk_typepaiement` int(11) NOT NULL,
  `num_paiement` varchar(50) DEFAULT NULL,
  `note` text,
  `fk_bank` int(11) NOT NULL,
  `fk_user_creat` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_paiementfourn`
--

DROP TABLE IF EXISTS `test_paiementfourn`;
CREATE TABLE `test_paiementfourn` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datec` datetime DEFAULT NULL,
  `datep` datetime DEFAULT NULL,
  `amount` double DEFAULT '0',
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_paiement` int(11) NOT NULL,
  `num_paiement` varchar(50) DEFAULT NULL,
  `note` text,
  `fk_bank` int(11) NOT NULL,
  `statut` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_paiementfourn_facturefourn`
--

DROP TABLE IF EXISTS `test_paiementfourn_facturefourn`;
CREATE TABLE `test_paiementfourn_facturefourn` (
  `rowid` int(11) NOT NULL,
  `fk_paiementfourn` int(11) DEFAULT NULL,
  `fk_facturefourn` int(11) DEFAULT NULL,
  `amount` double(24,8) DEFAULT '0.00000000'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_paiement_facture`
--

DROP TABLE IF EXISTS `test_paiement_facture`;
CREATE TABLE `test_paiement_facture` (
  `rowid` int(11) NOT NULL,
  `fk_paiement` int(11) DEFAULT NULL,
  `fk_facture` int(11) DEFAULT NULL,
  `amount` double(24,8) DEFAULT '0.00000000'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_payment_salary`
--

DROP TABLE IF EXISTS `test_payment_salary`;
CREATE TABLE `test_payment_salary` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_user` int(11) NOT NULL,
  `datep` date DEFAULT NULL,
  `datev` date DEFAULT NULL,
  `amount` double NOT NULL DEFAULT '0',
  `fk_typepayment` int(11) NOT NULL,
  `num_payment` varchar(50) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `datesp` date DEFAULT NULL,
  `dateep` date DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `note` text,
  `fk_bank` int(11) DEFAULT NULL,
  `fk_user_creat` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_prelevement_bons`
--

DROP TABLE IF EXISTS `test_prelevement_bons`;
CREATE TABLE `test_prelevement_bons` (
  `rowid` int(11) NOT NULL,
  `ref` varchar(12) DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `datec` datetime DEFAULT NULL,
  `amount` double DEFAULT '0',
  `statut` smallint(6) DEFAULT '0',
  `credite` smallint(6) DEFAULT '0',
  `note` text,
  `date_trans` datetime DEFAULT NULL,
  `method_trans` smallint(6) DEFAULT NULL,
  `fk_user_trans` int(11) DEFAULT NULL,
  `date_credit` datetime DEFAULT NULL,
  `fk_user_credit` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_prelevement_facture`
--

DROP TABLE IF EXISTS `test_prelevement_facture`;
CREATE TABLE `test_prelevement_facture` (
  `rowid` int(11) NOT NULL,
  `fk_facture` int(11) NOT NULL,
  `fk_prelevement_lignes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_prelevement_facture_demande`
--

DROP TABLE IF EXISTS `test_prelevement_facture_demande`;
CREATE TABLE `test_prelevement_facture_demande` (
  `rowid` int(11) NOT NULL,
  `fk_facture` int(11) NOT NULL,
  `amount` double NOT NULL,
  `date_demande` datetime NOT NULL,
  `traite` smallint(6) DEFAULT '0',
  `date_traite` datetime DEFAULT NULL,
  `fk_prelevement_bons` int(11) DEFAULT NULL,
  `fk_user_demande` int(11) NOT NULL,
  `code_banque` varchar(7) DEFAULT NULL,
  `code_guichet` varchar(6) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `cle_rib` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_prelevement_lignes`
--

DROP TABLE IF EXISTS `test_prelevement_lignes`;
CREATE TABLE `test_prelevement_lignes` (
  `rowid` int(11) NOT NULL,
  `fk_prelevement_bons` int(11) DEFAULT NULL,
  `fk_soc` int(11) NOT NULL,
  `statut` smallint(6) DEFAULT '0',
  `client_nom` varchar(255) DEFAULT NULL,
  `amount` double DEFAULT '0',
  `code_banque` varchar(7) DEFAULT NULL,
  `code_guichet` varchar(6) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `cle_rib` varchar(5) DEFAULT NULL,
  `note` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_prelevement_rejet`
--

DROP TABLE IF EXISTS `test_prelevement_rejet`;
CREATE TABLE `test_prelevement_rejet` (
  `rowid` int(11) NOT NULL,
  `fk_prelevement_lignes` int(11) DEFAULT NULL,
  `date_rejet` datetime DEFAULT NULL,
  `motif` int(11) DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `fk_user_creation` int(11) DEFAULT NULL,
  `note` text,
  `afacturer` tinyint(4) DEFAULT '0',
  `fk_facture` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_printer_ipp`
--

DROP TABLE IF EXISTS `test_printer_ipp`;
CREATE TABLE `test_printer_ipp` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datec` datetime DEFAULT NULL,
  `printer_name` text NOT NULL,
  `printer_location` text NOT NULL,
  `printer_uri` varchar(255) NOT NULL,
  `copy` int(11) NOT NULL DEFAULT '1',
  `module` varchar(16) NOT NULL,
  `login` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_product`
--

DROP TABLE IF EXISTS `test_product`;
CREATE TABLE `test_product` (
  `rowid` int(11) NOT NULL,
  `ref` varchar(128) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `ref_ext` varchar(128) DEFAULT NULL,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `virtual` tinyint(4) NOT NULL DEFAULT '0',
  `fk_parent` int(11) DEFAULT '0',
  `label` varchar(255) NOT NULL,
  `description` text,
  `note` text,
  `customcode` varchar(32) DEFAULT NULL,
  `fk_country` int(11) DEFAULT NULL,
  `price` double(24,8) DEFAULT '0.00000000',
  `price_ttc` double(24,8) DEFAULT '0.00000000',
  `price_min` double(24,8) DEFAULT '0.00000000',
  `price_min_ttc` double(24,8) DEFAULT '0.00000000',
  `price_base_type` varchar(3) DEFAULT 'HT',
  `tva_tx` double(6,3) DEFAULT NULL,
  `recuperableonly` int(11) NOT NULL DEFAULT '0',
  `localtax1_tx` double(6,3) DEFAULT '0.000',
  `localtax2_tx` double(6,3) DEFAULT '0.000',
  `fk_user_author` int(11) DEFAULT NULL,
  `tosell` tinyint(4) DEFAULT '1',
  `tobuy` tinyint(4) DEFAULT '1',
  `tobatch` tinyint(4) NOT NULL DEFAULT '0',
  `fk_product_type` int(11) DEFAULT '0',
  `duration` varchar(6) DEFAULT NULL,
  `seuil_stock_alerte` int(11) DEFAULT '0',
  `url` varchar(255) DEFAULT NULL,
  `barcode` varchar(255) DEFAULT NULL,
  `fk_barcode_type` int(11) DEFAULT '0',
  `accountancy_code_sell` varchar(15) DEFAULT NULL,
  `accountancy_code_buy` varchar(15) DEFAULT NULL,
  `partnumber` varchar(32) DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `weight_units` tinyint(4) DEFAULT NULL,
  `length` float DEFAULT NULL,
  `length_units` tinyint(4) DEFAULT NULL,
  `surface` float DEFAULT NULL,
  `surface_units` tinyint(4) DEFAULT NULL,
  `volume` float DEFAULT NULL,
  `volume_units` tinyint(4) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `pmp` double(24,8) NOT NULL DEFAULT '0.00000000',
  `canvas` varchar(32) DEFAULT NULL,
  `finished` tinyint(4) DEFAULT NULL,
  `hidden` tinyint(4) DEFAULT '0',
  `import_key` varchar(14) DEFAULT NULL,
  `desiredstock` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_product`
--

INSERT INTO `test_product` (`rowid`, `ref`, `entity`, `ref_ext`, `datec`, `tms`, `virtual`, `fk_parent`, `label`, `description`, `note`, `customcode`, `fk_country`, `price`, `price_ttc`, `price_min`, `price_min_ttc`, `price_base_type`, `tva_tx`, `recuperableonly`, `localtax1_tx`, `localtax2_tx`, `fk_user_author`, `tosell`, `tobuy`, `tobatch`, `fk_product_type`, `duration`, `seuil_stock_alerte`, `url`, `barcode`, `fk_barcode_type`, `accountancy_code_sell`, `accountancy_code_buy`, `partnumber`, `weight`, `weight_units`, `length`, `length_units`, `surface`, `surface_units`, `volume`, `volume_units`, `stock`, `pmp`, `canvas`, `finished`, `hidden`, `import_key`, `desiredstock`) VALUES
(1, 'prod1', 1, NULL, '2016-01-25 20:40:13', '2016-01-25 19:40:13', 0, 0, 'prod1', 'prod1 desc', '', '123codeduane', 14, 23.00000000, 24.15000000, 23.00000000, 24.15000000, 'HT', 5.000, 0, 9.975, 0.000, 2, 1, 1, 0, 0, '', NULL, NULL, NULL, NULL, '', '', NULL, 1, 0, 1, 0, 1, 0, 1, 0, NULL, 0.00000000, '', 1, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `test_product_association`
--

DROP TABLE IF EXISTS `test_product_association`;
CREATE TABLE `test_product_association` (
  `rowid` int(11) NOT NULL,
  `fk_product_pere` int(11) NOT NULL DEFAULT '0',
  `fk_product_fils` int(11) NOT NULL DEFAULT '0',
  `qty` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_product_batch`
--

DROP TABLE IF EXISTS `test_product_batch`;
CREATE TABLE `test_product_batch` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_product_stock` int(11) NOT NULL,
  `eatby` datetime DEFAULT NULL,
  `sellby` datetime DEFAULT NULL,
  `batch` varchar(30) DEFAULT NULL,
  `qty` double NOT NULL DEFAULT '0',
  `import_key` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_product_customer_price`
--

DROP TABLE IF EXISTS `test_product_customer_price`;
CREATE TABLE `test_product_customer_price` (
  `rowid` int(11) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_product` int(11) NOT NULL,
  `fk_soc` int(11) NOT NULL,
  `price` double(24,8) DEFAULT '0.00000000',
  `price_ttc` double(24,8) DEFAULT '0.00000000',
  `price_min` double(24,8) DEFAULT '0.00000000',
  `price_min_ttc` double(24,8) DEFAULT '0.00000000',
  `price_base_type` varchar(3) DEFAULT 'HT',
  `tva_tx` double(6,3) DEFAULT NULL,
  `recuperableonly` int(11) NOT NULL DEFAULT '0',
  `localtax1_tx` double(6,3) DEFAULT '0.000',
  `localtax2_tx` double(6,3) DEFAULT '0.000',
  `fk_user` int(11) DEFAULT NULL,
  `import_key` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_product_customer_price_log`
--

DROP TABLE IF EXISTS `test_product_customer_price_log`;
CREATE TABLE `test_product_customer_price_log` (
  `rowid` int(11) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `datec` datetime DEFAULT NULL,
  `fk_product` int(11) NOT NULL,
  `fk_soc` int(11) NOT NULL,
  `price` double(24,8) DEFAULT '0.00000000',
  `price_ttc` double(24,8) DEFAULT '0.00000000',
  `price_min` double(24,8) DEFAULT '0.00000000',
  `price_min_ttc` double(24,8) DEFAULT '0.00000000',
  `price_base_type` varchar(3) DEFAULT 'HT',
  `tva_tx` double(6,3) DEFAULT NULL,
  `recuperableonly` int(11) NOT NULL DEFAULT '0',
  `localtax1_tx` double(6,3) DEFAULT '0.000',
  `localtax2_tx` double(6,3) DEFAULT '0.000',
  `fk_user` int(11) DEFAULT NULL,
  `import_key` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_product_extrafields`
--

DROP TABLE IF EXISTS `test_product_extrafields`;
CREATE TABLE `test_product_extrafields` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_product_fournisseur_price`
--

DROP TABLE IF EXISTS `test_product_fournisseur_price`;
CREATE TABLE `test_product_fournisseur_price` (
  `rowid` int(11) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_product` int(11) DEFAULT NULL,
  `fk_soc` int(11) DEFAULT NULL,
  `ref_fourn` varchar(30) DEFAULT NULL,
  `fk_availability` int(11) DEFAULT NULL,
  `price` double(24,8) DEFAULT '0.00000000',
  `quantity` double DEFAULT NULL,
  `remise_percent` double NOT NULL DEFAULT '0',
  `remise` double NOT NULL DEFAULT '0',
  `unitprice` double(24,8) DEFAULT '0.00000000',
  `charges` double(24,8) DEFAULT '0.00000000',
  `unitcharges` double(24,8) DEFAULT '0.00000000',
  `tva_tx` double(6,3) NOT NULL,
  `info_bits` int(11) NOT NULL DEFAULT '0',
  `fk_user` int(11) DEFAULT NULL,
  `import_key` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_product_fournisseur_price_log`
--

DROP TABLE IF EXISTS `test_product_fournisseur_price_log`;
CREATE TABLE `test_product_fournisseur_price_log` (
  `rowid` int(11) NOT NULL,
  `datec` datetime DEFAULT NULL,
  `fk_product_fournisseur` int(11) NOT NULL,
  `price` double(24,8) DEFAULT '0.00000000',
  `quantity` double DEFAULT NULL,
  `fk_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_product_lang`
--

DROP TABLE IF EXISTS `test_product_lang`;
CREATE TABLE `test_product_lang` (
  `rowid` int(11) NOT NULL,
  `fk_product` int(11) NOT NULL DEFAULT '0',
  `lang` varchar(5) NOT NULL DEFAULT '0',
  `label` varchar(255) NOT NULL,
  `description` text,
  `note` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_product_lang`
--

INSERT INTO `test_product_lang` (`rowid`, `fk_product`, `lang`, `label`, `description`, `note`) VALUES
(1, 1, 'fr_CA', 'prod1', 'prod1 desc', '');

-- --------------------------------------------------------

--
-- Table structure for table `test_product_price`
--

DROP TABLE IF EXISTS `test_product_price`;
CREATE TABLE `test_product_price` (
  `rowid` int(11) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_product` int(11) NOT NULL,
  `date_price` datetime NOT NULL,
  `price_level` smallint(6) DEFAULT '1',
  `price` double(24,8) DEFAULT NULL,
  `price_ttc` double(24,8) DEFAULT NULL,
  `price_min` double(24,8) DEFAULT NULL,
  `price_min_ttc` double(24,8) DEFAULT NULL,
  `price_base_type` varchar(3) DEFAULT 'HT',
  `tva_tx` double(6,3) NOT NULL,
  `recuperableonly` int(11) NOT NULL DEFAULT '0',
  `localtax1_tx` double(6,3) DEFAULT '0.000',
  `localtax2_tx` double(6,3) DEFAULT '0.000',
  `fk_user_author` int(11) DEFAULT NULL,
  `tosell` tinyint(4) DEFAULT '1',
  `price_by_qty` int(11) NOT NULL DEFAULT '0',
  `import_key` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_product_price`
--

INSERT INTO `test_product_price` (`rowid`, `entity`, `tms`, `fk_product`, `date_price`, `price_level`, `price`, `price_ttc`, `price_min`, `price_min_ttc`, `price_base_type`, `tva_tx`, `recuperableonly`, `localtax1_tx`, `localtax2_tx`, `fk_user_author`, `tosell`, `price_by_qty`, `import_key`) VALUES
(1, 1, '2016-01-25 19:40:13', 1, '2016-01-25 20:40:13', 1, 23.00000000, 24.15000000, 23.00000000, 24.15000000, 'HT', 5.000, 0, 9.975, 0.000, 2, 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `test_product_price_by_qty`
--

DROP TABLE IF EXISTS `test_product_price_by_qty`;
CREATE TABLE `test_product_price_by_qty` (
  `rowid` int(11) NOT NULL,
  `fk_product_price` int(11) NOT NULL,
  `date_price` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `price` double(24,8) DEFAULT '0.00000000',
  `quantity` double DEFAULT NULL,
  `remise_percent` double NOT NULL DEFAULT '0',
  `remise` double NOT NULL DEFAULT '0',
  `unitprice` double(24,8) DEFAULT '0.00000000'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_product_stock`
--

DROP TABLE IF EXISTS `test_product_stock`;
CREATE TABLE `test_product_stock` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_product` int(11) NOT NULL,
  `fk_entrepot` int(11) NOT NULL,
  `reel` double DEFAULT NULL,
  `pmp` double(24,8) NOT NULL DEFAULT '0.00000000',
  `import_key` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_projet`
--

DROP TABLE IF EXISTS `test_projet`;
CREATE TABLE `test_projet` (
  `rowid` int(11) NOT NULL,
  `fk_soc` int(11) DEFAULT NULL,
  `datec` date DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dateo` date DEFAULT NULL,
  `datee` date DEFAULT NULL,
  `ref` varchar(50) DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `title` varchar(255) NOT NULL,
  `description` text,
  `fk_user_creat` int(11) NOT NULL,
  `public` int(11) DEFAULT NULL,
  `fk_statut` smallint(6) NOT NULL DEFAULT '0',
  `note_private` text,
  `note_public` text,
  `model_pdf` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_projet_extrafields`
--

DROP TABLE IF EXISTS `test_projet_extrafields`;
CREATE TABLE `test_projet_extrafields` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_projet_task`
--

DROP TABLE IF EXISTS `test_projet_task`;
CREATE TABLE `test_projet_task` (
  `rowid` int(11) NOT NULL,
  `ref` varchar(50) DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `fk_projet` int(11) NOT NULL,
  `fk_task_parent` int(11) NOT NULL DEFAULT '0',
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dateo` datetime DEFAULT NULL,
  `datee` datetime DEFAULT NULL,
  `datev` datetime DEFAULT NULL,
  `label` varchar(255) NOT NULL,
  `description` text,
  `duration_effective` double NOT NULL DEFAULT '0',
  `planned_workload` double NOT NULL DEFAULT '0',
  `progress` int(11) DEFAULT '0',
  `priority` int(11) DEFAULT '0',
  `fk_user_creat` int(11) DEFAULT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `fk_statut` smallint(6) NOT NULL DEFAULT '0',
  `note_private` text,
  `note_public` text,
  `rang` int(11) DEFAULT '0',
  `model_pdf` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_projet_task_extrafields`
--

DROP TABLE IF EXISTS `test_projet_task_extrafields`;
CREATE TABLE `test_projet_task_extrafields` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_projet_task_time`
--

DROP TABLE IF EXISTS `test_projet_task_time`;
CREATE TABLE `test_projet_task_time` (
  `rowid` int(11) NOT NULL,
  `fk_task` int(11) NOT NULL,
  `task_date` date DEFAULT NULL,
  `task_duration` double DEFAULT NULL,
  `fk_user` int(11) DEFAULT NULL,
  `thm` double(24,8) DEFAULT NULL,
  `note` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_propal`
--

DROP TABLE IF EXISTS `test_propal`;
CREATE TABLE `test_propal` (
  `rowid` int(11) NOT NULL,
  `ref` varchar(30) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `ref_ext` varchar(255) DEFAULT NULL,
  `ref_int` varchar(255) DEFAULT NULL,
  `ref_client` varchar(255) DEFAULT NULL,
  `fk_soc` int(11) DEFAULT NULL,
  `fk_projet` int(11) DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datec` datetime DEFAULT NULL,
  `datep` date DEFAULT NULL,
  `fin_validite` datetime DEFAULT NULL,
  `date_valid` datetime DEFAULT NULL,
  `date_cloture` datetime DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `fk_user_valid` int(11) DEFAULT NULL,
  `fk_user_cloture` int(11) DEFAULT NULL,
  `fk_statut` smallint(6) NOT NULL DEFAULT '0',
  `price` double DEFAULT '0',
  `remise_percent` double DEFAULT '0',
  `remise_absolue` double DEFAULT '0',
  `remise` double DEFAULT '0',
  `total_ht` double(24,8) DEFAULT '0.00000000',
  `tva` double(24,8) DEFAULT '0.00000000',
  `localtax1` double(24,8) DEFAULT '0.00000000',
  `localtax2` double(24,8) DEFAULT '0.00000000',
  `total` double(24,8) DEFAULT '0.00000000',
  `fk_account` int(11) DEFAULT NULL,
  `fk_currency` varchar(3) DEFAULT NULL,
  `fk_cond_reglement` int(11) DEFAULT NULL,
  `fk_mode_reglement` int(11) DEFAULT NULL,
  `note_private` text,
  `note_public` text,
  `model_pdf` varchar(255) DEFAULT NULL,
  `date_livraison` date DEFAULT NULL,
  `fk_availability` int(11) DEFAULT NULL,
  `fk_input_reason` int(11) DEFAULT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  `extraparams` varchar(255) DEFAULT NULL,
  `fk_delivery_address` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_propal`
--

INSERT INTO `test_propal` (`rowid`, `ref`, `entity`, `ref_ext`, `ref_int`, `ref_client`, `fk_soc`, `fk_projet`, `tms`, `datec`, `datep`, `fin_validite`, `date_valid`, `date_cloture`, `fk_user_author`, `fk_user_valid`, `fk_user_cloture`, `fk_statut`, `price`, `remise_percent`, `remise_absolue`, `remise`, `total_ht`, `tva`, `localtax1`, `localtax2`, `total`, `fk_account`, `fk_currency`, `fk_cond_reglement`, `fk_mode_reglement`, `note_private`, `note_public`, `model_pdf`, `date_livraison`, `fk_availability`, `fk_input_reason`, `import_key`, `extraparams`, `fk_delivery_address`) VALUES
(1, '(PROV1)', 1, NULL, NULL, '', 1, NULL, '2015-12-19 02:47:59', '2015-12-19 03:39:41', '2015-12-18', '2016-01-02 12:00:00', NULL, NULL, 1, NULL, NULL, 0, 0, NULL, NULL, 0, 1.00000000, 0.00000000, 0.00000000, 0.00000000, 1.00000000, NULL, NULL, 1, 4, '', '', 'azur', '2015-12-23', 1, 8, NULL, NULL, NULL),
(2, '(PROV2)', 1, NULL, NULL, '', 1, NULL, '2015-12-19 02:48:54', '2015-12-19 03:48:54', '2015-12-19', '2016-01-03 03:48:54', NULL, NULL, 1, NULL, NULL, 0, 0, NULL, NULL, 0, 1.00000000, 0.00000000, 0.00000000, 0.00000000, 1.00000000, NULL, NULL, 1, 4, '', '', 'azur', '2015-12-23', 1, 8, NULL, NULL, NULL),
(3, 'PR1512-0001', 1, NULL, NULL, '', 3, NULL, '2015-12-27 01:14:21', '2015-12-19 04:19:06', '2015-12-18', '2016-01-02 12:00:00', '2015-12-19 04:24:22', '2015-12-19 04:26:28', 2, 2, 2, 2, 0, NULL, NULL, 0, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, NULL, NULL, 1, 0, 'afsmf', '', 'cesgm', NULL, 0, 0, NULL, NULL, NULL),
(6, 'PR1512-0004', 1, NULL, NULL, '', 4, NULL, '2015-12-30 03:34:18', '2015-12-22 06:33:11', '2015-12-22', '2016-01-06 12:00:00', '2015-12-30 04:33:57', '2015-12-30 04:34:18', 1, 1, 1, 2, 0, NULL, NULL, 0, 200.00000000, 10.00000000, 19.95000000, 0.00000000, 229.95000000, NULL, NULL, 1, 3, '', '', 'cesgm', '2015-12-18', 1, 8, NULL, NULL, NULL),
(7, '(PROV7)', 1, NULL, NULL, '', 5, NULL, '2016-01-12 15:54:59', '2015-12-22 20:03:37', '2015-12-22', '2016-01-23 12:00:00', NULL, NULL, 1, NULL, NULL, 0, 0, NULL, NULL, 0, 4343.00000000, 217.15000000, 433.21000000, 0.00000000, 4993.36000000, NULL, NULL, 1, 3, '', '', 'cesgm', '2015-12-25', 2, 8, NULL, NULL, NULL),
(9, 'PR1512-0003', 1, NULL, NULL, '', 7, NULL, '2015-12-28 20:27:37', '2015-12-28 21:21:48', '2015-12-28', '2016-01-12 12:00:00', '2015-12-28 21:22:34', NULL, 1, 1, NULL, 0, 0, NULL, NULL, 0, 7887.00000000, 552.09000000, 0.00000000, 0.00000000, 8439.09000000, NULL, NULL, 1, 0, '', '', 'cesgm', NULL, 0, 0, NULL, NULL, NULL),
(10, '(PROV10)', 1, NULL, NULL, '', 7, NULL, '2015-12-28 21:01:56', '2015-12-28 21:40:06', '2015-12-28', '2016-01-12 21:40:06', NULL, NULL, 1, NULL, NULL, 0, 0, NULL, NULL, 0, 7887.00000000, 552.09000000, 0.00000000, 0.00000000, 8439.09000000, NULL, NULL, 1, 0, '12343 main, montreal, blabla, H1h1h1, 2 ème étage', '', 'cesgm', NULL, 0, 8, NULL, NULL, NULL),
(12, '(PROV12)', 1, NULL, NULL, '', 3, NULL, '2015-12-30 18:33:17', '2015-12-30 19:33:17', '2015-12-31', '2016-12-10 12:00:00', NULL, NULL, 1, NULL, NULL, 0, 0, NULL, NULL, 0, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, NULL, NULL, 1, 0, '', '', 'cesgm', NULL, 0, 0, NULL, NULL, NULL),
(14, '(PROV14)', 1, NULL, NULL, '', 8, NULL, '2016-01-13 18:50:53', '2016-01-07 16:33:19', '2016-01-07', '2016-12-25 12:00:00', NULL, NULL, 2, NULL, NULL, 0, 0, NULL, NULL, 0, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, NULL, NULL, 1, 0, '', '', 'cesgm', '2016-12-29', 0, 8, NULL, NULL, NULL),
(15, '(PROV15)', 1, NULL, NULL, '', 8, NULL, '2016-01-12 19:23:33', '2016-01-12 20:23:33', '2016-01-12', '2016-02-11 12:00:00', NULL, NULL, 2, NULL, NULL, 0, 0, NULL, NULL, 0, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, NULL, NULL, 1, 0, '', '', 'cesgm', NULL, 0, 0, NULL, NULL, NULL),
(16, 'BLABSA1601-000002', 1, NULL, NULL, '', 8, NULL, '2016-01-13 18:18:53', '2016-01-13 19:14:32', '2016-01-13', '2016-02-12 12:00:00', '2016-01-13 19:17:18', NULL, 2, 2, NULL, 1, 0, NULL, NULL, 0, 12845.00000000, 642.25000000, 1281.29000000, 0.00000000, 14768.54000000, NULL, NULL, 1, 0, '', '', 'cesgm', NULL, 0, 0, NULL, NULL, NULL),
(17, '(PROV17)', 1, NULL, NULL, '', 3, NULL, '2016-01-13 18:56:36', '2016-01-13 19:56:36', '2016-01-13', '2016-02-12 12:00:00', NULL, NULL, 2, NULL, NULL, 0, 0, NULL, NULL, 0, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, NULL, NULL, 1, 0, '', '', 'cesgm', NULL, 0, 0, NULL, NULL, NULL),
(18, '(PROV18)', 1, NULL, NULL, '', 9, NULL, '2016-01-29 17:33:28', '2016-01-20 18:27:34', '2016-01-20', '2016-02-19 12:00:00', NULL, NULL, 2, NULL, NULL, 0, 0, NULL, NULL, 0, 23.00000000, 1.15000000, 2.29000000, 0.00000000, 26.44000000, NULL, NULL, 1, 4, '', '', 'cesgm', '2016-01-22', 0, 8, NULL, NULL, NULL),
(19, 'CESGM1602-000001', 1, NULL, NULL, '', 10, NULL, '2016-01-20 18:40:12', '2016-01-20 19:31:41', '2016-02-01', '2016-02-19 12:00:00', '2016-01-20 19:34:50', '2016-01-20 19:40:12', 2, 2, 2, 2, 0, NULL, NULL, 0, 3000.00000000, 150.00000000, 299.25000000, 0.00000000, 3449.25000000, NULL, NULL, 1, 0, '', '', 'cesgm', '2016-02-15', 0, 0, NULL, NULL, NULL),
(20, 'CESGM1601-000002', 1, NULL, NULL, '', 10, NULL, '2016-01-20 18:46:25', '2016-01-20 19:45:22', '2016-01-20', '2016-02-19 12:00:00', '2016-01-20 19:45:55', '2016-01-20 19:46:25', 2, 2, 2, 3, 0, NULL, NULL, 0, 1000.00000000, 50.00000000, 99.75000000, 0.00000000, 1149.75000000, NULL, NULL, 1, 0, 'afs', '', 'cesgm', NULL, 0, 0, NULL, NULL, NULL),
(22, 'CESGM1601-000004', 1, NULL, NULL, '', 11, NULL, '2016-01-22 19:17:23', '2016-01-21 19:22:08', '2016-01-21', '2016-02-20 12:00:00', '2016-01-22 20:06:47', '2016-01-22 20:17:23', 2, 2, 2, 2, 0, NULL, NULL, 0, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, NULL, NULL, 1, 0, '', '', 'cesgm', NULL, 0, 0, NULL, NULL, NULL),
(23, 'CESGM1601-000003', 1, NULL, NULL, '', 12, NULL, '2016-01-22 19:05:37', '2016-01-22 19:56:53', '2016-01-22', '2016-02-21 12:00:00', '2016-01-22 19:57:56', '2016-01-22 20:05:37', 2, 2, 2, 2, 0, NULL, NULL, 0, 2000.00000000, 100.00000000, 199.50000000, 0.00000000, 2299.50000000, NULL, NULL, 1, 0, '', '', 'cesgm', '2016-01-23', 0, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `test_propaldet`
--

DROP TABLE IF EXISTS `test_propaldet`;
CREATE TABLE `test_propaldet` (
  `rowid` int(11) NOT NULL,
  `fk_propal` int(11) NOT NULL,
  `fk_parent_line` int(11) DEFAULT NULL,
  `fk_product` int(11) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `description` text,
  `fk_remise_except` int(11) DEFAULT NULL,
  `tva_tx` double(6,3) DEFAULT '0.000',
  `localtax1_tx` double(6,3) DEFAULT '0.000',
  `localtax1_type` varchar(10) DEFAULT NULL,
  `localtax2_tx` double(6,3) DEFAULT '0.000',
  `localtax2_type` varchar(10) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `remise_percent` double DEFAULT '0',
  `remise` double DEFAULT '0',
  `price` double DEFAULT NULL,
  `subprice` double(24,8) DEFAULT '0.00000000',
  `total_ht` double(24,8) DEFAULT '0.00000000',
  `total_tva` double(24,8) DEFAULT '0.00000000',
  `total_localtax1` double(24,8) DEFAULT '0.00000000',
  `total_localtax2` double(24,8) DEFAULT '0.00000000',
  `total_ttc` double(24,8) DEFAULT '0.00000000',
  `product_type` int(11) DEFAULT '0',
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `info_bits` int(11) DEFAULT '0',
  `buy_price_ht` double(24,8) DEFAULT '0.00000000',
  `fk_product_fournisseur_price` int(11) DEFAULT NULL,
  `special_code` int(11) DEFAULT '0',
  `rang` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_propaldet`
--

INSERT INTO `test_propaldet` (`rowid`, `fk_propal`, `fk_parent_line`, `fk_product`, `label`, `description`, `fk_remise_except`, `tva_tx`, `localtax1_tx`, `localtax1_type`, `localtax2_tx`, `localtax2_type`, `qty`, `remise_percent`, `remise`, `price`, `subprice`, `total_ht`, `total_tva`, `total_localtax1`, `total_localtax2`, `total_ttc`, `product_type`, `date_start`, `date_end`, `info_bits`, `buy_price_ht`, `fk_product_fournisseur_price`, `special_code`, `rang`) VALUES
(1, 1, NULL, NULL, NULL, 'bkbakaba  afn  ejf ejj ', NULL, 0.000, 0.000, '0', 0.000, '0', 1, 0, 0, 0, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 1, '2015-12-19 00:00:00', '2015-12-22 00:00:00', 0, 0.00000000, NULL, 0, 1),
(2, 1, NULL, NULL, NULL, 'fasfnjnafd', NULL, 0.000, 0.000, '0', 0.000, '0', 1, 0, 0, NULL, 1.00000000, 1.00000000, 0.00000000, 0.00000000, 0.00000000, 1.00000000, 1, '2015-12-19 00:00:00', '2015-12-22 00:00:00', 0, 0.00000000, NULL, 0, 2),
(3, 2, NULL, NULL, NULL, 'bkbakaba  afn  ejf ejj ', NULL, 0.000, 0.000, '0', 0.000, '0', 1, 0, 0, NULL, NULL, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 1, '2015-12-19 01:00:00', '2015-12-22 01:00:00', 0, 0.00000000, NULL, 0, 1),
(4, 2, NULL, NULL, NULL, 'fasfnjnafd', NULL, 0.000, 0.000, '0', 0.000, '0', 1, 0, 0, NULL, 1.00000000, 1.00000000, 0.00000000, 0.00000000, 0.00000000, 1.00000000, 1, '2015-12-19 01:00:00', '2015-12-22 01:00:00', 0, 0.00000000, NULL, 0, 2),
(5, 3, NULL, NULL, NULL, 'zxvzvvxz', NULL, 0.000, 0.000, '0', 0.000, '0', 1, 0, 0, NULL, NULL, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 1, NULL, NULL, 0, 0.00000000, NULL, 0, 1),
(6, 6, NULL, NULL, NULL, 'afasfa', NULL, 5.000, 9.975, '1', 0.000, '0', 1, 0, 0, 200, 200.00000000, 200.00000000, 10.00000000, 19.95000000, 0.00000000, 229.95000000, 1, NULL, NULL, 0, 0.00000000, NULL, 0, 1),
(12, 9, NULL, NULL, NULL, 'adsfd', NULL, 7.000, 0.000, '0', 0.000, '0', 1, 0, 0, NULL, 3333.00000000, 3333.00000000, 233.31000000, 0.00000000, 0.00000000, 3566.31000000, 1, NULL, NULL, 0, 0.00000000, NULL, 0, 1),
(13, 9, NULL, NULL, NULL, 'werrw', NULL, 7.000, 0.000, '0', 0.000, '0', 1, 0, 0, NULL, 4554.00000000, 4554.00000000, 318.78000000, 0.00000000, 0.00000000, 4872.78000000, 1, '2015-12-29 00:00:00', '2015-12-30 00:00:00', 0, 0.00000000, NULL, 0, 2),
(14, 10, NULL, NULL, NULL, 'adsfd', NULL, 7.000, 0.000, '0', 0.000, '0', 1, 0, 0, NULL, 3333.00000000, 3333.00000000, 233.31000000, 0.00000000, 0.00000000, 3566.31000000, 1, NULL, NULL, 0, 0.00000000, NULL, 0, 1),
(15, 10, NULL, NULL, NULL, 'werrw', NULL, 7.000, 0.000, '0', 0.000, '0', 1, 0, 0, NULL, 4554.00000000, 4554.00000000, 318.78000000, 0.00000000, 0.00000000, 4872.78000000, 1, '2015-12-29 01:00:00', '2015-12-30 01:00:00', 0, 0.00000000, NULL, 0, 2),
(17, 7, NULL, NULL, NULL, 'dsbamnfbae&#39;lfj ewlkgn&#39;bfl fewgf 32r4rwgfjbk n3r2ewljk 3ergjn 3erfk erfgokj erfgo34er gerkg3 4rgbok23er gbklwertgn', NULL, 5.000, 9.975, '1', 0.000, '0', 1, 0, 0, NULL, 4343.00000000, 4343.00000000, 217.15000000, 433.21000000, 0.00000000, 4993.36000000, 1, NULL, NULL, 0, 0.00000000, NULL, 0, 1),
(41, 16, NULL, NULL, NULL, 'ghafsvghasfjdhjafhdblfkad', NULL, 5.000, 9.975, '1', 0.000, '0', 1, 0, 0, 500, 500.00000000, 500.00000000, 25.00000000, 49.88000000, 0.00000000, 574.88000000, 1, NULL, NULL, 0, 0.00000000, NULL, 0, 1),
(42, 16, NULL, NULL, NULL, 'fasdhjbhjasbfafslknnklasnflkdnklasnglkdnlknfas afdgmbamdnbnm', NULL, 5.000, 9.975, '1', 0.000, '0', 1, 0, 0, 12345, 12345.00000000, 12345.00000000, 617.25000000, 1231.41000000, 0.00000000, 14193.66000000, 1, NULL, NULL, 0, 0.00000000, NULL, 0, 2),
(45, 17, NULL, NULL, NULL, 'efwf', NULL, 5.000, 9.975, '1', 0.000, '0', 1, 0, 0, NULL, NULL, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 1, NULL, NULL, 0, 0.00000000, NULL, 0, 1),
(47, 18, NULL, NULL, NULL, 'oeirhgeq;oihgrqooeirhgeq;oihgrqooeirhgeq;oihgrqooeirhgeq;oihgrqooeirhgeq;oihgrqooeirhgeq;oihgrqooeirhgeq;oihgrqooeirhgeq;oihgrqooeirhgeq;oihgrqooeirhgeq;oihgrqooeirhgeq;oihgrqooeirhgeq;oihgrqooeirhgeq;o\r\nihgrqooeirhgeq;oihgrqooeirhgeq;oihgrqooeirhgeq;oihgrqooeirhgeq;oihgrqoo\r\neirhgeq;oihgrqooeirhgeq;oihgrqooeirhgeq;oihgrqooeirhgeq;oihgrqooeirhgeq;oihgrqooeirhgeq;oihgrqooe\r\nirhgeq;oihgrqooeirhgeq;oihgrqooeirhgeq;oihgrqooeirhgeq;oihgrqooeirhgeq;oihgrqooeirhgeq;oihgrqooeirhg\r\neq;oih\r\ngrqooeirhgeq;oihgrqooeirhgeq;oihgrqooeirhgeq;oihgrqooeirhgeq;oihgrqooeirhgeq;oihgrqooeirhgeq;oih\r\ngrqooeirhgeq;oihgrqooeirhgeq;oihgrqooeirhgeq;oihgrqooeirhgeq;oihgrqooeirhgeq;oihgrqooeirhgeq;oihgrqooeir\r\nhgeq;oihgrqooeirhgeq;oihgrqooeirhgeq;oihgrqooeirhgeq;oihgrqooeirhgeq;oihgrqooeirhgeq;oihgrqooe\r\nirhgeq;oihgrqooeirhgeq;oihgrqooeirhgeq;oihgrqooeirhgeq;oihgrq\r\nooeirhgeq;oihgrqooeirhgeq;oihgrqooeirhgeq;oihgrqooeirhgeq;oihgrqooeirhgeq;o\r\nihgrqooeirhgeq;oihgrqooeirhgeq;oihgrqooeirhgeq;oihgrqooeirhgeq;oihgrqooeirhgeq;oihgrqooeirhgeq;oihg\r\nrqooeirhgeq;oihgrqooeirhgeq;oihgrqooeirhgeq;oihgrqooeirhgeq;oihgrqooeirhgeq;oihgrqooeirhgeq;oih\r\ngrqooeirhgeq;oihgrqooeirhgeq;oihgrqooeirhgeq;oihgrqooeirhgeq;oihgrqooeirhgeq;oihgrqooeirhgeq;oihgrqooe\r\nirhgeq;oihgrqooeirhgeq;oihgrqooeirhgeq;oih\r\ngrqooeirhgeq;oihgrqooeirhgeq;oihgrqooeirhgeq;oihgrqooeirhgeq;oi\r\nhgrqooeirhgeq;oihgrqooeirhgeq;oihgrq\r\nooeirhgeq;oihgrqooeirhgeq;oihgrqooeirhgeq;oihgrqooeirhgeq;oihgrqooeirhgeq;oihgrqooeirhgeq;oihgrqo', NULL, 5.000, 9.975, '1', 0.000, '0', 1, 0, 0, 0, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 1, NULL, NULL, 0, 0.00000000, NULL, 0, 1),
(48, 19, NULL, NULL, NULL, '"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?"', NULL, 5.000, 9.975, '1', 0.000, '0', 1, 0, 0, NULL, 3000.00000000, 3000.00000000, 150.00000000, 299.25000000, 0.00000000, 3449.25000000, 1, NULL, NULL, 0, 0.00000000, NULL, 0, 1),
(49, 20, NULL, NULL, NULL, '"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?"', NULL, 5.000, 9.975, '1', 0.000, '0', 1, 0, 0, NULL, 1000.00000000, 1000.00000000, 50.00000000, 99.75000000, 0.00000000, 1149.75000000, 1, NULL, NULL, 0, 0.00000000, NULL, 0, 1),
(52, 22, NULL, NULL, NULL, 'dafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkmdafsgjdgkjhngnkejthoijqrhjw''nklekldmklemthgkm', NULL, 5.000, 9.975, '1', 0.000, '0', 1, 0, 0, NULL, NULL, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 1, NULL, NULL, 0, 0.00000000, NULL, 0, 1),
(53, 18, NULL, NULL, NULL, 'kk', NULL, 5.000, 9.975, '1', 0.000, '0', 1, 0, 0, NULL, NULL, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 0.00000000, 1, NULL, NULL, 0, 0.00000000, NULL, 0, 2),
(54, 23, NULL, NULL, NULL, 'tr>td>a>imgtr>td>a>imgtr>td>a>imgtr>td>a>imgtr>td>a>imgtr>td>a>img\r\ntr>td>a>imgtr>td>a>imgtr>td>a>imgtr>td>a>img\r\ntr>td>a>imgtr>td>a>imgtr>td>a>imgtr>td>a>imgtr>td>a>imgtr>td>a>img\r\ntr>td>a>imgtr>td>a>imgtr>td>a>img', NULL, 5.000, 9.975, '1', 0.000, '0', 1, 0, 0, NULL, 2000.00000000, 2000.00000000, 100.00000000, 199.50000000, 0.00000000, 2299.50000000, 1, NULL, NULL, 0, 0.00000000, NULL, 0, 1),
(55, 18, NULL, 1, NULL, 'prod1 desc', NULL, 5.000, 9.975, '1', 0.000, '0', 1, 0, 0, NULL, 23.00000000, 23.00000000, 1.15000000, 2.29000000, 0.00000000, 26.44000000, 0, NULL, NULL, 0, 0.00000000, NULL, 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `test_propaldet_extrafields`
--

DROP TABLE IF EXISTS `test_propaldet_extrafields`;
CREATE TABLE `test_propaldet_extrafields` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_propal_extrafields`
--

DROP TABLE IF EXISTS `test_propal_extrafields`;
CREATE TABLE `test_propal_extrafields` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_resource`
--

DROP TABLE IF EXISTS `test_resource`;
CREATE TABLE `test_resource` (
  `rowid` int(11) NOT NULL,
  `entity` int(11) DEFAULT NULL,
  `ref` varchar(255) DEFAULT NULL,
  `description` text,
  `fk_code_type_resource` varchar(32) DEFAULT NULL,
  `note_public` text,
  `note_private` text,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_rights_def`
--

DROP TABLE IF EXISTS `test_rights_def`;
CREATE TABLE `test_rights_def` (
  `id` int(11) NOT NULL,
  `libelle` varchar(255) DEFAULT NULL,
  `module` varchar(64) DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `perms` varchar(50) DEFAULT NULL,
  `subperms` varchar(50) DEFAULT NULL,
  `type` varchar(1) DEFAULT NULL,
  `bydefault` tinyint(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_rights_def`
--

INSERT INTO `test_rights_def` (`id`, `libelle`, `module`, `entity`, `perms`, `subperms`, `type`, `bydefault`) VALUES
(31, 'Lire les produits', 'produit', 1, 'lire', NULL, 'r', 1),
(32, 'Creer/modifier les produits', 'produit', 1, 'creer', NULL, 'w', 0),
(34, 'Supprimer les produits', 'produit', 1, 'supprimer', NULL, 'd', 0),
(38, 'Exporter les produits', 'produit', 1, 'export', NULL, 'r', 0),
(111, 'Lire les comptes bancaires', 'banque', 1, 'lire', NULL, 'r', 1),
(112, 'Creer/modifier montant/supprimer ecriture bancaire', 'banque', 1, 'modifier', NULL, 'w', 0),
(113, 'Configurer les comptes bancaires (creer, gerer categories)', 'banque', 1, 'configurer', NULL, 'a', 0),
(114, 'Rapprocher les ecritures bancaires', 'banque', 1, 'consolidate', NULL, 'w', 0),
(115, 'Exporter transactions et releves', 'banque', 1, 'export', NULL, 'r', 0),
(116, 'Virements entre comptes', 'banque', 1, 'transfer', NULL, 'w', 0),
(117, 'Gerer les envois de cheques', 'banque', 1, 'cheque', NULL, 'w', 0),
(121, 'Lire les societes', 'societe', 1, 'lire', NULL, 'r', 1),
(122, 'Creer modifier les societes', 'societe', 1, 'creer', NULL, 'w', 0),
(125, 'Supprimer les societes', 'societe', 1, 'supprimer', NULL, 'd', 0),
(126, 'Exporter les societes', 'societe', 1, 'export', NULL, 'r', 0),
(221, 'Consulter les mailings', 'mailing', 1, 'lire', NULL, 'r', 1),
(222, 'Creer/modifier les mailings (sujet, destinataires...)', 'mailing', 1, 'creer', NULL, 'w', 0),
(223, 'Valider les mailings (permet leur envoi)', 'mailing', 1, 'valider', NULL, 'w', 0),
(229, 'Supprimer les mailings', 'mailing', 1, 'supprimer', NULL, 'd', 0),
(237, 'View recipients and info', 'mailing', 1, 'mailing_advance', 'recipient', 'r', 0),
(238, 'Manually send mailings', 'mailing', 1, 'mailing_advance', 'send', 'w', 0),
(239, 'Delete mailings after validation and/or sent', 'mailing', 1, 'mailing_advance', 'delete', 'd', 0),
(251, 'Consulter les autres utilisateurs', 'user', 1, 'user', 'lire', 'r', 0),
(252, 'Consulter les permissions des autres utilisateurs', 'user', 1, 'user_advance', 'readperms', 'r', 0),
(253, 'Creer/modifier utilisateurs internes et externes', 'user', 1, 'user', 'creer', 'w', 0),
(254, 'Creer/modifier utilisateurs externes seulement', 'user', 1, 'user_advance', 'write', 'w', 0),
(255, 'Modifier le mot de passe des autres utilisateurs', 'user', 1, 'user', 'password', 'w', 0),
(256, 'Supprimer ou desactiver les autres utilisateurs', 'user', 1, 'user', 'supprimer', 'd', 0),
(262, 'Consulter tous les tiers par utilisateurs internes (sinon uniquement si contact commercial). Non effectif pour utilisateurs externes (tjs limités à eux-meme).', 'societe', 1, 'client', 'voir', 'r', 1),
(281, 'Lire les contacts', 'societe', 1, 'contact', 'lire', 'r', 1),
(282, 'Creer modifier les contacts', 'societe', 1, 'contact', 'creer', 'w', 0),
(283, 'Supprimer les contacts', 'societe', 1, 'contact', 'supprimer', 'd', 0),
(286, 'Exporter les contacts', 'societe', 1, 'contact', 'export', 'd', 0),
(341, 'Consulter ses propres permissions', 'user', 1, 'self_advance', 'readperms', 'r', 1),
(342, 'Creer/modifier ses propres infos utilisateur', 'user', 1, 'self', 'creer', 'w', 0),
(343, 'Modifier son propre mot de passe', 'user', 1, 'self', 'password', 'w', 0),
(344, 'Modifier ses propres permissions', 'user', 1, 'self_advance', 'writeperms', 'w', 1),
(351, 'Consulter les groupes', 'user', 1, 'group_advance', 'read', 'r', 0),
(352, 'Consulter les permissions des groupes', 'user', 1, 'group_advance', 'readperms', 'r', 0),
(353, 'Creer/modifier les groupes et leurs permissions', 'user', 1, 'group_advance', 'write', 'w', 0),
(354, 'Supprimer ou desactiver les groupes', 'user', 1, 'group_advance', 'delete', 'd', 0),
(358, 'Exporter les utilisateurs', 'user', 1, 'user', 'export', 'r', 0),
(510, 'Read salaries', 'salaries', 1, 'read', NULL, 'r', 0),
(512, 'Create/modify salaries', 'salaries', 1, 'write', NULL, 'w', 0),
(514, 'Delete salaries', 'salaries', 1, 'delete', NULL, 'd', 0),
(517, 'Export salaries', 'salaries', 1, 'export', NULL, 'r', 0),
(531, 'Lire les services', 'service', 1, 'lire', NULL, 'r', 0),
(532, 'Creer/modifier les services', 'service', 1, 'creer', NULL, 'w', 0),
(534, 'Supprimer les services', 'service', 1, 'supprimer', NULL, 'd', 0),
(538, 'Exporter les services', 'service', 1, 'export', NULL, 'r', 0),
(1201, 'Lire les exports', 'export', 1, 'lire', NULL, 'r', 1),
(1202, 'Creer/modifier un export', 'export', 1, 'creer', NULL, 'w', 0),
(1251, 'Run mass imports of external data (data load)', 'import', 1, 'run', NULL, 'r', 0),
(2401, 'Read actions/tasks linked to his account', 'agenda', 1, 'myactions', 'read', 'r', 1),
(2402, 'Create/modify actions/tasks linked to his account', 'agenda', 1, 'myactions', 'create', 'w', 0),
(2403, 'Delete actions/tasks linked to his account', 'agenda', 1, 'myactions', 'delete', 'w', 0),
(2411, 'Read actions/tasks of others', 'agenda', 1, 'allactions', 'read', 'r', 0),
(2412, 'Create/modify actions/tasks of others', 'agenda', 1, 'allactions', 'create', 'w', 0),
(2413, 'Delete actions/tasks of others', 'agenda', 1, 'allactions', 'delete', 'w', 0),
(2414, 'Export actions/tasks of others', 'agenda', 1, 'export', NULL, 'w', 0),
(23001, 'Read cron jobs', 'cron', 1, 'read', NULL, 'w', 1),
(23002, 'Create cron Jobs', 'cron', 1, 'create', NULL, 'w', 0),
(23003, 'Delete cron Jobs', 'cron', 1, 'delete', NULL, 'w', 0),
(23004, 'Execute cron Jobs', 'cron', 1, 'execute', NULL, 'w', 0);

-- --------------------------------------------------------

--
-- Table structure for table `test_societe`
--

DROP TABLE IF EXISTS `test_societe`;
CREATE TABLE `test_societe` (
  `rowid` int(11) NOT NULL,
  `nom` varchar(60) DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `ref_ext` varchar(128) DEFAULT NULL,
  `ref_int` varchar(60) DEFAULT NULL,
  `statut` tinyint(4) DEFAULT '0',
  `parent` int(11) DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datec` datetime DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `code_client` varchar(24) DEFAULT NULL,
  `code_fournisseur` varchar(24) DEFAULT NULL,
  `code_compta` varchar(24) DEFAULT NULL,
  `code_compta_fournisseur` varchar(24) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `zip` varchar(25) DEFAULT NULL,
  `town` varchar(50) DEFAULT NULL,
  `fk_departement` int(11) DEFAULT '0',
  `fk_pays` int(11) DEFAULT '0',
  `phone` varchar(20) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `skype` varchar(255) DEFAULT NULL,
  `fk_effectif` int(11) DEFAULT '0',
  `fk_typent` int(11) DEFAULT '0',
  `fk_forme_juridique` int(11) DEFAULT '0',
  `fk_currency` varchar(3) DEFAULT NULL,
  `siren` varchar(128) DEFAULT NULL,
  `siret` varchar(128) DEFAULT NULL,
  `ape` varchar(128) DEFAULT NULL,
  `idprof4` varchar(128) DEFAULT NULL,
  `idprof5` varchar(128) DEFAULT NULL,
  `idprof6` varchar(128) DEFAULT NULL,
  `tva_intra` varchar(20) DEFAULT NULL,
  `capital` double DEFAULT NULL,
  `fk_stcomm` int(11) NOT NULL DEFAULT '0',
  `note_private` text,
  `note_public` text,
  `prefix_comm` varchar(5) DEFAULT NULL,
  `client` tinyint(4) DEFAULT '0',
  `fournisseur` tinyint(4) DEFAULT '0',
  `supplier_account` varchar(32) DEFAULT NULL,
  `fk_prospectlevel` varchar(12) DEFAULT NULL,
  `customer_bad` tinyint(4) DEFAULT '0',
  `customer_rate` double DEFAULT '0',
  `supplier_rate` double DEFAULT '0',
  `fk_user_creat` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL,
  `remise_client` double DEFAULT '0',
  `mode_reglement` tinyint(4) DEFAULT NULL,
  `cond_reglement` tinyint(4) DEFAULT NULL,
  `mode_reglement_supplier` tinyint(4) DEFAULT NULL,
  `cond_reglement_supplier` tinyint(4) DEFAULT NULL,
  `tva_assuj` tinyint(4) DEFAULT '1',
  `localtax1_assuj` tinyint(4) DEFAULT '0',
  `localtax2_assuj` tinyint(4) DEFAULT '0',
  `barcode` varchar(255) DEFAULT NULL,
  `fk_barcode_type` int(11) DEFAULT '0',
  `price_level` int(11) DEFAULT NULL,
  `outstanding_limit` double(24,8) DEFAULT NULL,
  `default_lang` varchar(6) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `canvas` varchar(32) DEFAULT NULL,
  `import_key` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_societe`
--

INSERT INTO `test_societe` (`rowid`, `nom`, `entity`, `ref_ext`, `ref_int`, `statut`, `parent`, `tms`, `datec`, `status`, `code_client`, `code_fournisseur`, `code_compta`, `code_compta_fournisseur`, `address`, `zip`, `town`, `fk_departement`, `fk_pays`, `phone`, `fax`, `url`, `email`, `skype`, `fk_effectif`, `fk_typent`, `fk_forme_juridique`, `fk_currency`, `siren`, `siret`, `ape`, `idprof4`, `idprof5`, `idprof6`, `tva_intra`, `capital`, `fk_stcomm`, `note_private`, `note_public`, `prefix_comm`, `client`, `fournisseur`, `supplier_account`, `fk_prospectlevel`, `customer_bad`, `customer_rate`, `supplier_rate`, `fk_user_creat`, `fk_user_modif`, `remise_client`, `mode_reglement`, `cond_reglement`, `mode_reglement_supplier`, `cond_reglement_supplier`, `tva_assuj`, `localtax1_assuj`, `localtax2_assuj`, `barcode`, `fk_barcode_type`, `price_level`, `outstanding_limit`, `default_lang`, `logo`, `canvas`, `import_key`) VALUES
(1, 'pme_client1', 1, NULL, NULL, 0, NULL, '2015-12-19 02:38:35', '2015-12-19 03:38:35', 1, NULL, NULL, NULL, NULL, '123  aaaaaa', 'h1h1h1', NULL, 233, 14, '124-124-1244', NULL, 'aa.com', 'client1@mail.com', NULL, NULL, 3, NULL, NULL, '', '', '', '', '', '', '', 1, 0, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, 0, 0, 1, 1, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'logo_prunus.jpg', NULL, NULL),
(2, 'john Doe', 1, NULL, NULL, 0, NULL, '2015-12-19 02:55:16', '2015-12-19 03:55:16', 1, NULL, NULL, NULL, NULL, 'sd', 'h1h1h1', NULL, 233, 14, NULL, NULL, NULL, NULL, NULL, 1, 8, NULL, NULL, '', '', '', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, 0, 0, 2, 2, 0, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'comp', 1, NULL, NULL, 0, NULL, '2015-12-19 03:26:28', '2015-12-19 04:01:32', 1, NULL, NULL, NULL, NULL, 'ads', 'sd', NULL, 0, 14, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '', '', '', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, 0, 0, 2, 2, 0, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'inc_test1', 1, NULL, NULL, 0, NULL, '2016-01-12 16:04:49', '2015-12-21 17:27:15', 1, NULL, NULL, NULL, NULL, '1234 Main', 'h1h1h1', 'Montreal', 233, 14, '123-123-1234', NULL, 'test1.com', 'test1@mail.com', NULL, 1, 4, NULL, NULL, '123', '', '', '', '', '', '', 0, 0, NULL, 'jkvsad\r\nasfn\r\nafbfeg\r\n', NULL, 1, 0, NULL, NULL, 0, 0, 0, 2, 2, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'test2', 1, NULL, NULL, 0, NULL, '2015-12-21 18:02:58', '2015-12-21 19:02:58', 1, NULL, NULL, NULL, NULL, '123 affk', 'h1h1h1', 'Montreal', 233, 14, '438-123-1231', NULL, NULL, 'a@b.com', NULL, 1, 0, NULL, NULL, '', '', '', '', '', '', '', 0, 0, NULL, NULL, NULL, 2, 0, NULL, NULL, 0, 0, 0, 2, 2, 0, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'test3 inc', 1, NULL, NULL, 0, NULL, '2016-01-06 19:55:41', '2015-12-22 20:07:22', 1, NULL, NULL, NULL, NULL, '1235 main street', 'h1h1h1', 'Monteal', 233, 14, '124-124-1244', '5149556623', 'test3.com', 'test3@mail.com', NULL, 1, 4, NULL, NULL, '', '', '', '', '', '', '', 1, 0, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, 0, 0, 2, 2, 0, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'baaba', 1, NULL, NULL, 0, NULL, '2015-12-30 03:39:08', '2015-12-28 21:21:35', 1, NULL, NULL, NULL, NULL, 'dfms', 'h1h1h1', NULL, 233, 14, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '', '', '', '', '', '', '', 0, 0, NULL, NULL, NULL, 3, 0, NULL, NULL, 0, 0, 0, 1, 1, 0, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, NULL, NULL, 'fr_CA', NULL, NULL, NULL),
(8, 'testcomplet1', 1, NULL, NULL, 0, NULL, '2016-01-07 15:13:02', '2016-01-07 16:11:08', 1, NULL, NULL, NULL, NULL, '3333 Jarry Est  bureau 23', 'H2H2H2', 'Montreal', 233, 14, '514-123-1234', '514-123-1235', 'www.prunus.ca', 'testcomplet1@mail.com', NULL, NULL, 3, NULL, NULL, '', '', '', '', '', '', '', 0, 0, NULL, NULL, NULL, 3, 0, NULL, NULL, 0, 0, 0, 2, 2, 0, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, NULL, NULL, 'fr_CA', 'logo_prunus.jpg', NULL, NULL),
(9, 'new 20 JAn', 1, NULL, NULL, 0, NULL, '2016-01-21 16:01:35', '2016-01-20 18:24:11', 1, NULL, NULL, NULL, NULL, '123 main', 'h1h1h1', 'Montreal', 233, 14, '514-123-1234', '514-123-1235', 'www.we.com', 'moi@mail.com', NULL, NULL, 8, NULL, NULL, '', '', '', '', '', '', '', 0, 0, NULL, NULL, NULL, 3, 0, NULL, NULL, 0, 0, 0, 2, 2, 0, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, NULL, NULL, NULL, '1453234821_device-camera-capture-photo-outline-stroke.png', NULL, NULL),
(10, 'Ahmed  Bamba', 1, NULL, NULL, 0, NULL, '2016-01-20 18:40:12', '2016-01-20 19:30:15', 1, NULL, NULL, NULL, NULL, '7604 ave. Casgrain', 'H2R 1Y8', 'Montreal', 233, 14, '514-123-1234', NULL, 'www.ahmedbamba.com', 'cosaks_5@hotmail.com', NULL, 1, 8, NULL, NULL, '', '', '', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, 0, 0, 2, 2, 0, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, NULL, NULL, 'fr_CA', NULL, NULL, NULL),
(11, 'Max', 1, NULL, NULL, 0, NULL, '2016-01-22 19:17:23', '2016-01-20 21:43:40', 1, NULL, NULL, NULL, NULL, '231 qrw', 'H4P 2B2', 'Montreal', 233, 14, '514-123-1234', '514-123-1235', 'www.prunus.ca', 'maxim@prunus.ca', NULL, NULL, 3, NULL, NULL, '', '', '', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, 0, NULL, '', 0, 0, 0, 2, 2, 0, NULL, 0, NULL, NULL, 1, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'prospect vers client', 1, NULL, NULL, 0, NULL, '2016-01-22 19:05:37', '2016-01-22 19:56:17', 1, NULL, NULL, NULL, NULL, 'gasf', NULL, NULL, 0, 14, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '', '', '', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, 0, 0, 2, 2, 0, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `test_societe_address`
--

DROP TABLE IF EXISTS `test_societe_address`;
CREATE TABLE `test_societe_address` (
  `rowid` int(11) NOT NULL,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `label` varchar(30) DEFAULT NULL,
  `fk_soc` int(11) DEFAULT '0',
  `name` varchar(60) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `town` varchar(50) DEFAULT NULL,
  `fk_pays` int(11) DEFAULT '0',
  `phone` varchar(20) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `note` text,
  `fk_user_creat` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_societe_commerciaux`
--

DROP TABLE IF EXISTS `test_societe_commerciaux`;
CREATE TABLE `test_societe_commerciaux` (
  `rowid` int(11) NOT NULL,
  `fk_soc` int(11) DEFAULT NULL,
  `fk_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_societe_commerciaux`
--

INSERT INTO `test_societe_commerciaux` (`rowid`, `fk_soc`, `fk_user`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 2),
(4, 4, 2),
(5, 5, 2),
(6, 6, 2),
(7, 7, 1),
(8, 8, 2),
(9, 9, 2),
(10, 10, 2),
(11, 11, 2),
(12, 12, 2);

-- --------------------------------------------------------

--
-- Table structure for table `test_societe_extrafields`
--

DROP TABLE IF EXISTS `test_societe_extrafields`;
CREATE TABLE `test_societe_extrafields` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_societe_log`
--

DROP TABLE IF EXISTS `test_societe_log`;
CREATE TABLE `test_societe_log` (
  `id` int(11) NOT NULL,
  `datel` datetime DEFAULT NULL,
  `fk_soc` int(11) DEFAULT NULL,
  `fk_statut` int(11) DEFAULT NULL,
  `fk_user` int(11) DEFAULT NULL,
  `author` varchar(30) DEFAULT NULL,
  `label` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_societe_prices`
--

DROP TABLE IF EXISTS `test_societe_prices`;
CREATE TABLE `test_societe_prices` (
  `rowid` int(11) NOT NULL,
  `fk_soc` int(11) DEFAULT '0',
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datec` datetime DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `price_level` tinyint(4) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_societe_remise`
--

DROP TABLE IF EXISTS `test_societe_remise`;
CREATE TABLE `test_societe_remise` (
  `rowid` int(11) NOT NULL,
  `fk_soc` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datec` datetime DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `remise_client` double(6,3) NOT NULL DEFAULT '0.000',
  `note` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_societe_remise_except`
--

DROP TABLE IF EXISTS `test_societe_remise_except`;
CREATE TABLE `test_societe_remise_except` (
  `rowid` int(11) NOT NULL,
  `fk_soc` int(11) NOT NULL,
  `datec` datetime DEFAULT NULL,
  `amount_ht` double(24,8) NOT NULL,
  `amount_tva` double(24,8) NOT NULL DEFAULT '0.00000000',
  `amount_ttc` double(24,8) NOT NULL DEFAULT '0.00000000',
  `tva_tx` double(6,3) NOT NULL DEFAULT '0.000',
  `fk_user` int(11) NOT NULL,
  `fk_facture_line` int(11) DEFAULT NULL,
  `fk_facture` int(11) DEFAULT NULL,
  `fk_facture_source` int(11) DEFAULT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_societe_rib`
--

DROP TABLE IF EXISTS `test_societe_rib`;
CREATE TABLE `test_societe_rib` (
  `rowid` int(11) NOT NULL,
  `fk_soc` int(11) NOT NULL,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `label` varchar(30) DEFAULT NULL,
  `bank` varchar(255) DEFAULT NULL,
  `code_banque` varchar(7) DEFAULT NULL,
  `code_guichet` varchar(6) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `cle_rib` varchar(5) DEFAULT NULL,
  `bic` varchar(20) DEFAULT NULL,
  `iban_prefix` varchar(34) DEFAULT NULL,
  `domiciliation` varchar(255) DEFAULT NULL,
  `proprio` varchar(60) DEFAULT NULL,
  `owner_address` varchar(255) DEFAULT NULL,
  `default_rib` smallint(6) NOT NULL DEFAULT '0',
  `import_key` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_socpeople`
--

DROP TABLE IF EXISTS `test_socpeople`;
CREATE TABLE `test_socpeople` (
  `rowid` int(11) NOT NULL,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_soc` int(11) DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `ref_ext` varchar(128) DEFAULT NULL,
  `civilite` varchar(6) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `zip` varchar(25) DEFAULT NULL,
  `town` varchar(255) DEFAULT NULL,
  `fk_departement` int(11) DEFAULT NULL,
  `fk_pays` int(11) DEFAULT '0',
  `birthday` date DEFAULT NULL,
  `poste` varchar(80) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `phone_perso` varchar(30) DEFAULT NULL,
  `phone_mobile` varchar(30) DEFAULT NULL,
  `fax` varchar(30) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `jabberid` varchar(255) DEFAULT NULL,
  `skype` varchar(255) DEFAULT NULL,
  `no_email` smallint(6) NOT NULL DEFAULT '0',
  `priv` smallint(6) NOT NULL DEFAULT '0',
  `fk_user_creat` int(11) DEFAULT '0',
  `fk_user_modif` int(11) DEFAULT NULL,
  `note_private` text,
  `note_public` text,
  `default_lang` varchar(6) DEFAULT NULL,
  `canvas` varchar(32) DEFAULT NULL,
  `import_key` varchar(14) DEFAULT NULL,
  `statut` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_socpeople`
--

INSERT INTO `test_socpeople` (`rowid`, `datec`, `tms`, `fk_soc`, `entity`, `ref_ext`, `civilite`, `lastname`, `firstname`, `address`, `zip`, `town`, `fk_departement`, `fk_pays`, `birthday`, `poste`, `phone`, `phone_perso`, `phone_mobile`, `fax`, `email`, `jabberid`, `skype`, `no_email`, `priv`, `fk_user_creat`, `fk_user_modif`, `note_private`, `note_public`, `default_lang`, `canvas`, `import_key`, `statut`) VALUES
(1, '2015-12-19 03:55:16', '2015-12-21 16:40:08', 4, 1, '', 'MR', 'Doe', 'john', '1234 Main', 'h1h1h1', 'Montreal', 233, 14, NULL, '', '', '', '', '', '', '', '', 0, 0, 2, 2, '', '', NULL, NULL, NULL, 1),
(2, '2015-12-21 17:31:55', '2015-12-21 16:31:55', 4, 1, '', 'MR', 'lastname', 'firstname', '1234 Main', 'h1h1h1', 'Montreal', 233, 14, NULL, 'post/function', '123-1234-124', '', '', '', 'test1@mail.com', '', '', 0, 0, 2, 2, '', '', NULL, NULL, NULL, 1),
(3, '2015-12-22 20:09:16', '2015-12-22 19:09:16', 6, 1, '', 'MME', 'lastname3', 'firstname3', '1235 main street', 'h1h1h1', 'Monteal', 233, 14, '1978-12-06', 'post/function', '123-1234-124', '123-1234-124', '123-1234-124', '514.955.6623', 'test3@mail.com', '', '', 0, 0, 2, 2, '', '', NULL, NULL, NULL, 1),
(4, '2016-01-07 16:30:34', '2016-01-07 15:30:59', 8, 1, '', 'MR', 'Doe (testcomplet 1)', 'John', '', '', '', 233, 14, NULL, 'Directeur', '514-555-5555', '', '514-444-4444', '', 'johndoe@mail.com', '', '', 0, 1, 2, 2, '', '', NULL, NULL, NULL, 1),
(5, '2016-01-20 19:30:15', '2016-01-20 18:30:15', 10, 1, '', 'MR', 'Bamba', 'Ahmed', '7604 ave. Casgrain', 'H2R 1Y8', 'Montreal', 233, 14, NULL, '', '514-123-1234', '', '', '', 'cosaks_5@hotmail.com', '', '', 0, 0, 2, 2, NULL, NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `test_socpeople_extrafields`
--

DROP TABLE IF EXISTS `test_socpeople_extrafields`;
CREATE TABLE `test_socpeople_extrafields` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_stock_mouvement`
--

DROP TABLE IF EXISTS `test_stock_mouvement`;
CREATE TABLE `test_stock_mouvement` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datem` datetime DEFAULT NULL,
  `fk_product` int(11) NOT NULL,
  `fk_entrepot` int(11) NOT NULL,
  `value` double DEFAULT NULL,
  `price` float(13,4) DEFAULT '0.0000',
  `type_mouvement` smallint(6) DEFAULT NULL,
  `fk_user_author` int(11) DEFAULT NULL,
  `label` varchar(128) DEFAULT NULL,
  `fk_origin` int(11) DEFAULT NULL,
  `origintype` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_texts`
--

DROP TABLE IF EXISTS `test_texts`;
CREATE TABLE `test_texts` (
  `rowid` int(11) NOT NULL,
  `module` varchar(32) DEFAULT NULL,
  `typemodele` varchar(32) DEFAULT NULL,
  `sortorder` smallint(6) DEFAULT NULL,
  `private` smallint(6) NOT NULL DEFAULT '0',
  `fk_user` int(11) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `filename` varchar(128) DEFAULT NULL,
  `content` text,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_tva`
--

DROP TABLE IF EXISTS `test_tva`;
CREATE TABLE `test_tva` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datep` date DEFAULT NULL,
  `datev` date DEFAULT NULL,
  `amount` double NOT NULL DEFAULT '0',
  `fk_typepayment` int(11) DEFAULT NULL,
  `num_payment` varchar(50) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `note` text,
  `fk_bank` int(11) DEFAULT NULL,
  `fk_user_creat` int(11) DEFAULT NULL,
  `fk_user_modif` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_user`
--

DROP TABLE IF EXISTS `test_user`;
CREATE TABLE `test_user` (
  `rowid` int(11) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `ref_ext` varchar(50) DEFAULT NULL,
  `ref_int` varchar(50) DEFAULT NULL,
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `login` varchar(24) NOT NULL,
  `pass` varchar(32) DEFAULT NULL,
  `pass_crypted` varchar(128) DEFAULT NULL,
  `pass_temp` varchar(32) DEFAULT NULL,
  `civilite` varchar(6) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `zip` varchar(25) DEFAULT NULL,
  `town` varchar(50) DEFAULT NULL,
  `fk_state` int(11) DEFAULT '0',
  `fk_country` int(11) DEFAULT '0',
  `job` varchar(128) DEFAULT NULL,
  `skype` varchar(255) DEFAULT NULL,
  `office_phone` varchar(20) DEFAULT NULL,
  `office_fax` varchar(20) DEFAULT NULL,
  `user_mobile` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `signature` text,
  `admin` smallint(6) DEFAULT '0',
  `module_comm` smallint(6) DEFAULT '1',
  `module_compta` smallint(6) DEFAULT '1',
  `fk_societe` int(11) DEFAULT NULL,
  `fk_socpeople` int(11) DEFAULT NULL,
  `fk_member` int(11) DEFAULT NULL,
  `fk_user` int(11) DEFAULT NULL,
  `thm` double(24,8) DEFAULT NULL,
  `note` text,
  `datelastlogin` datetime DEFAULT NULL,
  `datepreviouslogin` datetime DEFAULT NULL,
  `egroupware_id` int(11) DEFAULT NULL,
  `ldap_sid` varchar(255) DEFAULT NULL,
  `openid` varchar(255) DEFAULT NULL,
  `statut` tinyint(4) DEFAULT '1',
  `photo` varchar(255) DEFAULT NULL,
  `lang` varchar(6) DEFAULT NULL,
  `color` varchar(6) DEFAULT NULL,
  `barcode` varchar(255) DEFAULT NULL,
  `fk_barcode_type` int(11) DEFAULT '0',
  `accountancy_code` varchar(24) DEFAULT NULL,
  `nb_holiday` int(11) DEFAULT '0',
  `salary` double(24,8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_user`
--

INSERT INTO `test_user` (`rowid`, `entity`, `ref_ext`, `ref_int`, `datec`, `tms`, `login`, `pass`, `pass_crypted`, `pass_temp`, `civilite`, `lastname`, `firstname`, `address`, `zip`, `town`, `fk_state`, `fk_country`, `job`, `skype`, `office_phone`, `office_fax`, `user_mobile`, `email`, `signature`, `admin`, `module_comm`, `module_compta`, `fk_societe`, `fk_socpeople`, `fk_member`, `fk_user`, `thm`, `note`, `datelastlogin`, `datepreviouslogin`, `egroupware_id`, `ldap_sid`, `openid`, `statut`, `photo`, `lang`, `color`, `barcode`, `fk_barcode_type`, `accountancy_code`, `nb_holiday`, `salary`) VALUES
(1, 0, NULL, NULL, '2015-12-14 17:34:19', '2016-01-15 16:28:41', 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', NULL, NULL, 'SuperAdmin', '', '', '', '', NULL, NULL, '', '', '', '', '', 'maxim@prunus.ca', '', 1, 1, 1, NULL, NULL, NULL, NULL, NULL, '', '2016-02-08 22:03:09', '2016-02-08 18:50:57', NULL, '', NULL, 1, NULL, NULL, NULL, NULL, 0, '', 0, NULL),
(2, 0, NULL, NULL, '2015-12-14 17:38:26', '2016-01-22 21:09:24', 'test', 'test', '098f6bcd4621d373cade4e832627b4f6', NULL, NULL, 'test', 'test', '', '', '', NULL, NULL, 'Etrepreneur', '', '514-123-4567', '514-123-4567', '514-123-4567', 'maxim@prunus.ca', 'TEST TEST \r\nT. 514-123-1234\r\n@ maxim@prunus.ca\r\nmoi Inc', 0, 1, 1, NULL, NULL, NULL, NULL, NULL, '', '2016-02-04 15:49:16', '2016-02-01 20:21:23', NULL, '', NULL, 1, 'bg_work.jpg', NULL, NULL, NULL, 0, '', 0, NULL),
(3, 0, NULL, NULL, '2016-01-23 00:53:42', '2016-01-22 23:53:42', 'maximfluieraru@gmail.com', '1', 'c4ca4238a0b923820dcc509a6f75849b', NULL, NULL, 'n', 'n', '', '', '', NULL, NULL, '', '', '', '', '', '', '', 0, 1, 1, NULL, NULL, NULL, NULL, NULL, '', '2016-01-23 00:53:51', NULL, NULL, '', NULL, 1, NULL, NULL, NULL, NULL, 0, '', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `test_usergroup`
--

DROP TABLE IF EXISTS `test_usergroup`;
CREATE TABLE `test_usergroup` (
  `rowid` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `datec` datetime DEFAULT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `note` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_usergroup_rights`
--

DROP TABLE IF EXISTS `test_usergroup_rights`;
CREATE TABLE `test_usergroup_rights` (
  `rowid` int(11) NOT NULL,
  `fk_usergroup` int(11) NOT NULL,
  `fk_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_usergroup_user`
--

DROP TABLE IF EXISTS `test_usergroup_user`;
CREATE TABLE `test_usergroup_user` (
  `rowid` int(11) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `fk_user` int(11) NOT NULL,
  `fk_usergroup` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_user_alert`
--

DROP TABLE IF EXISTS `test_user_alert`;
CREATE TABLE `test_user_alert` (
  `rowid` int(11) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `fk_contact` int(11) DEFAULT NULL,
  `fk_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_user_clicktodial`
--

DROP TABLE IF EXISTS `test_user_clicktodial`;
CREATE TABLE `test_user_clicktodial` (
  `fk_user` int(11) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `login` varchar(32) DEFAULT NULL,
  `pass` varchar(64) DEFAULT NULL,
  `poste` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_user_extrafields`
--

DROP TABLE IF EXISTS `test_user_extrafields`;
CREATE TABLE `test_user_extrafields` (
  `rowid` int(11) NOT NULL,
  `tms` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fk_object` int(11) NOT NULL,
  `import_key` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_user_param`
--

DROP TABLE IF EXISTS `test_user_param`;
CREATE TABLE `test_user_param` (
  `fk_user` int(11) NOT NULL,
  `entity` int(11) NOT NULL DEFAULT '1',
  `param` varchar(64) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_user_param`
--

INSERT INTO `test_user_param` (`fk_user`, `entity`, `param`, `value`) VALUES
(2, 1, 'MAIN_BOXES_0', '1');

-- --------------------------------------------------------

--
-- Table structure for table `test_user_rights`
--

DROP TABLE IF EXISTS `test_user_rights`;
CREATE TABLE `test_user_rights` (
  `rowid` int(11) NOT NULL,
  `fk_user` int(11) NOT NULL,
  `fk_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_user_rights`
--

INSERT INTO `test_user_rights` (`rowid`, `fk_user`, `fk_id`) VALUES
(426, 1, 11),
(419, 1, 12),
(420, 1, 13),
(422, 1, 14),
(423, 1, 15),
(425, 1, 16),
(427, 1, 19),
(30, 1, 21),
(22, 1, 22),
(24, 1, 24),
(25, 1, 25),
(27, 1, 26),
(29, 1, 27),
(31, 1, 28),
(469, 1, 31),
(466, 1, 32),
(468, 1, 34),
(470, 1, 38),
(282, 1, 41),
(279, 1, 42),
(281, 1, 44),
(283, 1, 45),
(111, 1, 61),
(108, 1, 62),
(110, 1, 64),
(112, 1, 67),
(113, 1, 68),
(155, 1, 81),
(147, 1, 82),
(149, 1, 84),
(150, 1, 86),
(152, 1, 87),
(154, 1, 88),
(156, 1, 89),
(264, 1, 91),
(261, 1, 92),
(263, 1, 93),
(265, 1, 94),
(412, 1, 95),
(413, 1, 96),
(415, 1, 97),
(416, 1, 98),
(136, 1, 101),
(131, 1, 102),
(133, 1, 104),
(134, 1, 105),
(135, 1, 106),
(137, 1, 109),
(455, 1, 111),
(446, 1, 112),
(448, 1, 113),
(450, 1, 114),
(452, 1, 115),
(454, 1, 116),
(456, 1, 117),
(517, 1, 121),
(514, 1, 122),
(516, 1, 125),
(518, 1, 126),
(287, 1, 141),
(286, 1, 142),
(288, 1, 144),
(82, 1, 161),
(77, 1, 162),
(79, 1, 163),
(81, 1, 164),
(83, 1, 165),
(294, 1, 221),
(291, 1, 222),
(293, 1, 223),
(295, 1, 229),
(296, 1, 237),
(297, 1, 238),
(298, 1, 239),
(519, 1, 262),
(525, 1, 281),
(522, 1, 282),
(524, 1, 283),
(526, 1, 286),
(1, 1, 341),
(2, 1, 342),
(3, 1, 343),
(4, 1, 344),
(462, 1, 510),
(459, 1, 512),
(461, 1, 514),
(463, 1, 517),
(104, 1, 531),
(101, 1, 532),
(103, 1, 534),
(105, 1, 538),
(143, 1, 1101),
(140, 1, 1102),
(142, 1, 1104),
(144, 1, 1109),
(300, 1, 1201),
(301, 1, 1202),
(302, 1, 1251),
(428, 1, 1321),
(157, 1, 1421),
(269, 1, 2401),
(268, 1, 2402),
(270, 1, 2403),
(274, 1, 2411),
(273, 1, 2412),
(275, 1, 2413),
(276, 1, 2414),
(379, 1, 2501),
(378, 1, 2503),
(380, 1, 2515),
(386, 1, 23001),
(383, 1, 23002),
(385, 1, 23003),
(387, 1, 23004),
(374, 2, 21),
(375, 2, 22),
(373, 2, 24),
(371, 2, 26),
(369, 2, 27),
(367, 2, 28),
(482, 2, 31),
(483, 2, 32),
(484, 2, 34),
(485, 2, 38),
(174, 2, 61),
(175, 2, 81),
(478, 2, 95),
(479, 2, 96),
(480, 2, 97),
(481, 2, 98),
(176, 2, 101),
(471, 2, 111),
(472, 2, 112),
(473, 2, 113),
(474, 2, 114),
(475, 2, 115),
(476, 2, 116),
(477, 2, 117),
(356, 2, 121),
(353, 2, 122),
(357, 2, 125),
(394, 2, 161),
(395, 2, 162),
(393, 2, 163),
(391, 2, 164),
(389, 2, 165),
(495, 2, 251),
(491, 2, 253),
(496, 2, 255),
(494, 2, 256),
(354, 2, 281),
(351, 2, 282),
(355, 2, 283),
(181, 2, 341),
(492, 2, 342),
(184, 2, 344),
(486, 2, 510),
(487, 2, 512),
(488, 2, 514),
(489, 2, 517),
(186, 2, 1101),
(326, 2, 2401),
(325, 2, 2402),
(327, 2, 2403),
(331, 2, 2411),
(330, 2, 2412),
(332, 2, 2413),
(401, 2, 23001),
(398, 2, 23002),
(400, 2, 23003),
(402, 2, 23004),
(403, 3, 21),
(404, 3, 121),
(405, 3, 221),
(406, 3, 281),
(407, 3, 341),
(408, 3, 344),
(409, 3, 1201),
(410, 3, 2401),
(411, 3, 23001);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `test_accountingaccount`
--
ALTER TABLE `test_accountingaccount`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_accountingaccount_fk_pcg_version` (`fk_pcg_version`);

--
-- Indexes for table `test_accountingtransaction`
--
ALTER TABLE `test_accountingtransaction`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `test_accounting_system`
--
ALTER TABLE `test_accounting_system`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_accounting_system_pcg_version` (`pcg_version`);

--
-- Indexes for table `test_actioncomm`
--
ALTER TABLE `test_actioncomm`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_actioncomm_datea` (`datea`),
  ADD KEY `idx_actioncomm_fk_soc` (`fk_soc`),
  ADD KEY `idx_actioncomm_fk_contact` (`fk_contact`),
  ADD KEY `idx_actioncomm_code` (`code`);

--
-- Indexes for table `test_actioncomm_extrafields`
--
ALTER TABLE `test_actioncomm_extrafields`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_actioncomm_extrafields` (`fk_object`);

--
-- Indexes for table `test_actioncomm_resources`
--
ALTER TABLE `test_actioncomm_resources`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `idx_actioncomm_resources_idx1` (`fk_actioncomm`,`element_type`,`fk_element`),
  ADD KEY `idx_actioncomm_resources_fk_element` (`fk_element`);

--
-- Indexes for table `test_adherent`
--
ALTER TABLE `test_adherent`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_adherent_login` (`login`,`entity`),
  ADD UNIQUE KEY `uk_adherent_fk_soc` (`fk_soc`),
  ADD KEY `idx_adherent_fk_adherent_type` (`fk_adherent_type`);

--
-- Indexes for table `test_adherent_extrafields`
--
ALTER TABLE `test_adherent_extrafields`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_adherent_extrafields` (`fk_object`);

--
-- Indexes for table `test_adherent_type`
--
ALTER TABLE `test_adherent_type`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_adherent_type_libelle` (`libelle`,`entity`);

--
-- Indexes for table `test_adherent_type_extrafields`
--
ALTER TABLE `test_adherent_type_extrafields`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_adherent_type_extrafields` (`fk_object`);

--
-- Indexes for table `test_bank`
--
ALTER TABLE `test_bank`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_bank_datev` (`datev`),
  ADD KEY `idx_bank_dateo` (`dateo`),
  ADD KEY `idx_bank_fk_account` (`fk_account`),
  ADD KEY `idx_bank_rappro` (`rappro`);

--
-- Indexes for table `test_bank_account`
--
ALTER TABLE `test_bank_account`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_bank_account_label` (`label`,`entity`);

--
-- Indexes for table `test_bank_categ`
--
ALTER TABLE `test_bank_categ`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `test_bank_class`
--
ALTER TABLE `test_bank_class`
  ADD UNIQUE KEY `uk_bank_class_lineid` (`lineid`,`fk_categ`);

--
-- Indexes for table `test_bank_url`
--
ALTER TABLE `test_bank_url`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_bank_url` (`fk_bank`,`type`);

--
-- Indexes for table `test_bookmark`
--
ALTER TABLE `test_bookmark`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_bookmark_url` (`fk_user`,`url`),
  ADD UNIQUE KEY `uk_bookmark_title` (`fk_user`,`title`);

--
-- Indexes for table `test_bordereau_cheque`
--
ALTER TABLE `test_bordereau_cheque`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_bordereau_cheque` (`number`,`entity`);

--
-- Indexes for table `test_boxes`
--
ALTER TABLE `test_boxes`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_boxes` (`entity`,`box_id`,`position`,`fk_user`),
  ADD KEY `idx_boxes_boxid` (`box_id`),
  ADD KEY `idx_boxes_fk_user` (`fk_user`);

--
-- Indexes for table `test_boxes_def`
--
ALTER TABLE `test_boxes_def`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_boxes_def` (`file`,`entity`,`note`);

--
-- Indexes for table `test_categorie`
--
ALTER TABLE `test_categorie`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_categorie_ref` (`entity`,`fk_parent`,`label`,`type`),
  ADD KEY `idx_categorie_type` (`type`),
  ADD KEY `idx_categorie_label` (`label`);

--
-- Indexes for table `test_categories_extrafields`
--
ALTER TABLE `test_categories_extrafields`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_categories_extrafields` (`fk_object`);

--
-- Indexes for table `test_categorie_contact`
--
ALTER TABLE `test_categorie_contact`
  ADD PRIMARY KEY (`fk_categorie`,`fk_socpeople`),
  ADD KEY `idx_categorie_contact_fk_categorie` (`fk_categorie`),
  ADD KEY `idx_categorie_contact_fk_socpeople` (`fk_socpeople`);

--
-- Indexes for table `test_categorie_fournisseur`
--
ALTER TABLE `test_categorie_fournisseur`
  ADD PRIMARY KEY (`fk_categorie`,`fk_societe`),
  ADD KEY `idx_categorie_fournisseur_fk_categorie` (`fk_categorie`),
  ADD KEY `idx_categorie_fournisseur_fk_societe` (`fk_societe`);

--
-- Indexes for table `test_categorie_lang`
--
ALTER TABLE `test_categorie_lang`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_category_lang` (`fk_category`,`lang`);

--
-- Indexes for table `test_categorie_member`
--
ALTER TABLE `test_categorie_member`
  ADD PRIMARY KEY (`fk_categorie`,`fk_member`),
  ADD KEY `idx_categorie_member_fk_categorie` (`fk_categorie`),
  ADD KEY `idx_categorie_member_fk_member` (`fk_member`);

--
-- Indexes for table `test_categorie_product`
--
ALTER TABLE `test_categorie_product`
  ADD PRIMARY KEY (`fk_categorie`,`fk_product`),
  ADD KEY `idx_categorie_product_fk_categorie` (`fk_categorie`),
  ADD KEY `idx_categorie_product_fk_product` (`fk_product`);

--
-- Indexes for table `test_categorie_societe`
--
ALTER TABLE `test_categorie_societe`
  ADD PRIMARY KEY (`fk_categorie`,`fk_societe`),
  ADD KEY `idx_categorie_societe_fk_categorie` (`fk_categorie`),
  ADD KEY `idx_categorie_societe_fk_societe` (`fk_societe`);

--
-- Indexes for table `test_chargesociales`
--
ALTER TABLE `test_chargesociales`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `test_commande`
--
ALTER TABLE `test_commande`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_commande_ref` (`ref`,`entity`),
  ADD KEY `idx_commande_fk_soc` (`fk_soc`),
  ADD KEY `idx_commande_fk_user_author` (`fk_user_author`),
  ADD KEY `idx_commande_fk_user_valid` (`fk_user_valid`),
  ADD KEY `idx_commande_fk_user_cloture` (`fk_user_cloture`),
  ADD KEY `idx_commande_fk_projet` (`fk_projet`),
  ADD KEY `idx_commande_fk_account` (`fk_account`),
  ADD KEY `idx_commande_fk_currency` (`fk_currency`);

--
-- Indexes for table `test_commandedet`
--
ALTER TABLE `test_commandedet`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_commandedet_fk_commande` (`fk_commande`),
  ADD KEY `idx_commandedet_fk_product` (`fk_product`);

--
-- Indexes for table `test_commandedet_extrafields`
--
ALTER TABLE `test_commandedet_extrafields`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_commandedet_extrafields` (`fk_object`);

--
-- Indexes for table `test_commande_extrafields`
--
ALTER TABLE `test_commande_extrafields`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_commande_extrafields` (`fk_object`);

--
-- Indexes for table `test_commande_fournisseur`
--
ALTER TABLE `test_commande_fournisseur`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_commande_fournisseur_ref` (`ref`,`fk_soc`,`entity`),
  ADD KEY `idx_commande_fournisseur_fk_soc` (`fk_soc`);

--
-- Indexes for table `test_commande_fournisseurdet`
--
ALTER TABLE `test_commande_fournisseurdet`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `test_commande_fournisseur_dispatch`
--
ALTER TABLE `test_commande_fournisseur_dispatch`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_commande_fournisseur_dispatch_fk_commande` (`fk_commande`);

--
-- Indexes for table `test_commande_fournisseur_extrafields`
--
ALTER TABLE `test_commande_fournisseur_extrafields`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_commande_fournisseur_extrafields` (`fk_object`);

--
-- Indexes for table `test_commande_fournisseur_log`
--
ALTER TABLE `test_commande_fournisseur_log`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `test_compta`
--
ALTER TABLE `test_compta`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `test_compta_account`
--
ALTER TABLE `test_compta_account`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `test_compta_compte_generaux`
--
ALTER TABLE `test_compta_compte_generaux`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `numero` (`numero`);

--
-- Indexes for table `test_const`
--
ALTER TABLE `test_const`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_const` (`name`,`entity`);

--
-- Indexes for table `test_contrat`
--
ALTER TABLE `test_contrat`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_contrat_ref` (`ref`,`entity`),
  ADD KEY `idx_contrat_fk_soc` (`fk_soc`),
  ADD KEY `idx_contrat_fk_user_author` (`fk_user_author`);

--
-- Indexes for table `test_contratdet`
--
ALTER TABLE `test_contratdet`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_contratdet_fk_contrat` (`fk_contrat`),
  ADD KEY `idx_contratdet_fk_product` (`fk_product`),
  ADD KEY `idx_contratdet_date_ouverture_prevue` (`date_ouverture_prevue`),
  ADD KEY `idx_contratdet_date_ouverture` (`date_ouverture`),
  ADD KEY `idx_contratdet_date_fin_validite` (`date_fin_validite`);

--
-- Indexes for table `test_contratdet_log`
--
ALTER TABLE `test_contratdet_log`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_contratdet_log_fk_contratdet` (`fk_contratdet`),
  ADD KEY `idx_contratdet_log_date` (`date`);

--
-- Indexes for table `test_contrat_extrafields`
--
ALTER TABLE `test_contrat_extrafields`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_contrat_extrafields` (`fk_object`);

--
-- Indexes for table `test_cotisation`
--
ALTER TABLE `test_cotisation`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_cotisation` (`fk_adherent`,`dateadh`);

--
-- Indexes for table `test_cronjob`
--
ALTER TABLE `test_cronjob`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `test_c_actioncomm`
--
ALTER TABLE `test_c_actioncomm`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uk_c_actioncomm` (`code`);

--
-- Indexes for table `test_c_action_trigger`
--
ALTER TABLE `test_c_action_trigger`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_action_trigger_code` (`code`),
  ADD KEY `idx_action_trigger_rang` (`rang`);

--
-- Indexes for table `test_c_availability`
--
ALTER TABLE `test_c_availability`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_c_availability` (`code`);

--
-- Indexes for table `test_c_barcode_type`
--
ALTER TABLE `test_c_barcode_type`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_c_barcode_type` (`code`,`entity`);

--
-- Indexes for table `test_c_chargesociales`
--
ALTER TABLE `test_c_chargesociales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test_c_civilite`
--
ALTER TABLE `test_c_civilite`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_c_civilite` (`code`);

--
-- Indexes for table `test_c_currencies`
--
ALTER TABLE `test_c_currencies`
  ADD PRIMARY KEY (`code_iso`),
  ADD UNIQUE KEY `uk_c_currencies_code_iso` (`code_iso`);

--
-- Indexes for table `test_c_departements`
--
ALTER TABLE `test_c_departements`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_departements` (`code_departement`,`fk_region`),
  ADD KEY `idx_departements_fk_region` (`fk_region`);

--
-- Indexes for table `test_c_ecotaxe`
--
ALTER TABLE `test_c_ecotaxe`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_c_ecotaxe` (`code`);

--
-- Indexes for table `test_c_effectif`
--
ALTER TABLE `test_c_effectif`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uk_c_effectif` (`code`);

--
-- Indexes for table `test_c_email_templates`
--
ALTER TABLE `test_c_email_templates`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `test_c_field_list`
--
ALTER TABLE `test_c_field_list`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `test_c_forme_juridique`
--
ALTER TABLE `test_c_forme_juridique`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_c_forme_juridique` (`code`);

--
-- Indexes for table `test_c_input_method`
--
ALTER TABLE `test_c_input_method`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_c_input_method` (`code`);

--
-- Indexes for table `test_c_input_reason`
--
ALTER TABLE `test_c_input_reason`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_c_input_reason` (`code`);

--
-- Indexes for table `test_c_paiement`
--
ALTER TABLE `test_c_paiement`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uk_c_paiement` (`code`);

--
-- Indexes for table `test_c_paper_format`
--
ALTER TABLE `test_c_paper_format`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `test_c_payment_term`
--
ALTER TABLE `test_c_payment_term`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `test_c_pays`
--
ALTER TABLE `test_c_pays`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `idx_c_country_code` (`code`),
  ADD UNIQUE KEY `idx_c_pays_libelle` (`libelle`),
  ADD UNIQUE KEY `idx_c_country_code_iso` (`code_iso`);

--
-- Indexes for table `test_c_propalst`
--
ALTER TABLE `test_c_propalst`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uk_c_propalst` (`code`);

--
-- Indexes for table `test_c_prospectlevel`
--
ALTER TABLE `test_c_prospectlevel`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `test_c_regions`
--
ALTER TABLE `test_c_regions`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `code_region` (`code_region`),
  ADD KEY `idx_c_regions_fk_pays` (`fk_pays`);

--
-- Indexes for table `test_c_revenuestamp`
--
ALTER TABLE `test_c_revenuestamp`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `test_c_shipment_mode`
--
ALTER TABLE `test_c_shipment_mode`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `test_c_stcomm`
--
ALTER TABLE `test_c_stcomm`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uk_c_stcomm` (`code`);

--
-- Indexes for table `test_c_tva`
--
ALTER TABLE `test_c_tva`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_c_tva_id` (`fk_pays`,`taux`,`recuperableonly`);

--
-- Indexes for table `test_c_typent`
--
ALTER TABLE `test_c_typent`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uk_c_typent` (`code`);

--
-- Indexes for table `test_c_type_contact`
--
ALTER TABLE `test_c_type_contact`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_c_type_contact_id` (`element`,`source`,`code`);

--
-- Indexes for table `test_c_type_fees`
--
ALTER TABLE `test_c_type_fees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uk_c_type_fees` (`code`);

--
-- Indexes for table `test_c_type_resource`
--
ALTER TABLE `test_c_type_resource`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_c_type_resource_id` (`label`,`code`);

--
-- Indexes for table `test_c_ziptown`
--
ALTER TABLE `test_c_ziptown`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_ziptown_fk_pays` (`zip`,`town`,`fk_pays`),
  ADD KEY `idx_c_ziptown_fk_county` (`fk_county`),
  ADD KEY `idx_c_ziptown_fk_pays` (`fk_pays`),
  ADD KEY `idx_c_ziptown_zip` (`zip`);

--
-- Indexes for table `test_deplacement`
--
ALTER TABLE `test_deplacement`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `test_document_generator`
--
ALTER TABLE `test_document_generator`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `test_document_model`
--
ALTER TABLE `test_document_model`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_document_model` (`nom`,`type`,`entity`);

--
-- Indexes for table `test_don`
--
ALTER TABLE `test_don`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `test_ecm_directories`
--
ALTER TABLE `test_ecm_directories`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `idx_ecm_directories` (`label`,`fk_parent`,`entity`),
  ADD KEY `idx_ecm_directories_fk_user_c` (`fk_user_c`),
  ADD KEY `idx_ecm_directories_fk_user_m` (`fk_user_m`);

--
-- Indexes for table `test_element_contact`
--
ALTER TABLE `test_element_contact`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `idx_element_contact_idx1` (`element_id`,`fk_c_type_contact`,`fk_socpeople`),
  ADD KEY `fk_element_contact_fk_c_type_contact` (`fk_c_type_contact`),
  ADD KEY `idx_element_contact_fk_socpeople` (`fk_socpeople`);

--
-- Indexes for table `test_element_element`
--
ALTER TABLE `test_element_element`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `idx_element_element_idx1` (`fk_source`,`sourcetype`,`fk_target`,`targettype`),
  ADD KEY `idx_element_element_fk_target` (`fk_target`);

--
-- Indexes for table `test_element_lock`
--
ALTER TABLE `test_element_lock`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `test_element_resources`
--
ALTER TABLE `test_element_resources`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `idx_element_resources_idx1` (`resource_id`,`resource_type`,`element_id`,`element_type`),
  ADD KEY `idx_element_element_element_id` (`element_id`);

--
-- Indexes for table `test_element_tag`
--
ALTER TABLE `test_element_tag`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_element_tag` (`entity`,`lang`,`tag`,`fk_element`,`element`);

--
-- Indexes for table `test_entrepot`
--
ALTER TABLE `test_entrepot`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_entrepot_label` (`label`,`entity`);

--
-- Indexes for table `test_events`
--
ALTER TABLE `test_events`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_events_dateevent` (`dateevent`);

--
-- Indexes for table `test_event_element`
--
ALTER TABLE `test_event_element`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `test_expedition`
--
ALTER TABLE `test_expedition`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `idx_expedition_uk_ref` (`ref`,`entity`),
  ADD KEY `idx_expedition_fk_soc` (`fk_soc`),
  ADD KEY `idx_expedition_fk_user_author` (`fk_user_author`),
  ADD KEY `idx_expedition_fk_user_valid` (`fk_user_valid`),
  ADD KEY `idx_expedition_fk_shipping_method` (`fk_shipping_method`);

--
-- Indexes for table `test_expeditiondet`
--
ALTER TABLE `test_expeditiondet`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_expeditiondet_fk_expedition` (`fk_expedition`);

--
-- Indexes for table `test_expeditiondet_batch`
--
ALTER TABLE `test_expeditiondet_batch`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_fk_expeditiondet` (`fk_expeditiondet`);

--
-- Indexes for table `test_export_compta`
--
ALTER TABLE `test_export_compta`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `test_export_model`
--
ALTER TABLE `test_export_model`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_export_model` (`label`,`type`);

--
-- Indexes for table `test_extrafields`
--
ALTER TABLE `test_extrafields`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_extrafields_name` (`name`,`entity`,`elementtype`);

--
-- Indexes for table `test_facture`
--
ALTER TABLE `test_facture`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `idx_facture_uk_facnumber` (`facnumber`,`entity`),
  ADD KEY `idx_facture_fk_soc` (`fk_soc`),
  ADD KEY `idx_facture_fk_user_author` (`fk_user_author`),
  ADD KEY `idx_facture_fk_user_valid` (`fk_user_valid`),
  ADD KEY `idx_facture_fk_facture_source` (`fk_facture_source`),
  ADD KEY `idx_facture_fk_projet` (`fk_projet`),
  ADD KEY `idx_facture_fk_account` (`fk_account`),
  ADD KEY `idx_facture_fk_currency` (`fk_currency`);

--
-- Indexes for table `test_facturedet`
--
ALTER TABLE `test_facturedet`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_fk_remise_except` (`fk_remise_except`,`fk_facture`),
  ADD KEY `idx_facturedet_fk_facture` (`fk_facture`),
  ADD KEY `idx_facturedet_fk_product` (`fk_product`);

--
-- Indexes for table `test_facturedet_extrafields`
--
ALTER TABLE `test_facturedet_extrafields`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_facturedet_extrafields` (`fk_object`);

--
-- Indexes for table `test_facturedet_rec`
--
ALTER TABLE `test_facturedet_rec`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `test_facture_extrafields`
--
ALTER TABLE `test_facture_extrafields`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_facture_extrafields` (`fk_object`);

--
-- Indexes for table `test_facture_fourn`
--
ALTER TABLE `test_facture_fourn`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_facture_fourn_ref_supplier` (`ref_supplier`,`fk_soc`,`entity`),
  ADD UNIQUE KEY `uk_facture_fourn_ref` (`ref`,`entity`),
  ADD KEY `idx_facture_fourn_date_lim_reglement` (`date_lim_reglement`),
  ADD KEY `idx_facture_fourn_fk_soc` (`fk_soc`),
  ADD KEY `idx_facture_fourn_fk_user_author` (`fk_user_author`),
  ADD KEY `idx_facture_fourn_fk_user_valid` (`fk_user_valid`),
  ADD KEY `idx_facture_fourn_fk_projet` (`fk_projet`);

--
-- Indexes for table `test_facture_fourn_det`
--
ALTER TABLE `test_facture_fourn_det`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_facture_fourn_det_fk_facture` (`fk_facture_fourn`);

--
-- Indexes for table `test_facture_fourn_extrafields`
--
ALTER TABLE `test_facture_fourn_extrafields`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_facture_fourn_extrafields` (`fk_object`);

--
-- Indexes for table `test_facture_rec`
--
ALTER TABLE `test_facture_rec`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `idx_facture_rec_uk_titre` (`titre`,`entity`),
  ADD KEY `idx_facture_rec_fk_soc` (`fk_soc`),
  ADD KEY `idx_facture_rec_fk_user_author` (`fk_user_author`),
  ADD KEY `idx_facture_rec_fk_projet` (`fk_projet`);

--
-- Indexes for table `test_fichinter`
--
ALTER TABLE `test_fichinter`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_fichinter_ref` (`ref`,`entity`),
  ADD KEY `idx_fichinter_fk_soc` (`fk_soc`);

--
-- Indexes for table `test_fichinterdet`
--
ALTER TABLE `test_fichinterdet`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_fichinterdet_fk_fichinter` (`fk_fichinter`);

--
-- Indexes for table `test_fichinter_extrafields`
--
ALTER TABLE `test_fichinter_extrafields`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_ficheinter_extrafields` (`fk_object`);

--
-- Indexes for table `test_holiday`
--
ALTER TABLE `test_holiday`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_holiday_fk_user` (`fk_user`),
  ADD KEY `idx_holiday_fk_user_create` (`fk_user_create`),
  ADD KEY `idx_holiday_date_create` (`date_create`),
  ADD KEY `idx_holiday_date_debut` (`date_debut`),
  ADD KEY `idx_holiday_date_fin` (`date_fin`),
  ADD KEY `idx_holiday_fk_validator` (`fk_validator`);

--
-- Indexes for table `test_holiday_config`
--
ALTER TABLE `test_holiday_config`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `test_holiday_events`
--
ALTER TABLE `test_holiday_events`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_holiday_name` (`name`,`entity`);

--
-- Indexes for table `test_holiday_logs`
--
ALTER TABLE `test_holiday_logs`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `test_holiday_users`
--
ALTER TABLE `test_holiday_users`
  ADD PRIMARY KEY (`fk_user`);

--
-- Indexes for table `test_import_model`
--
ALTER TABLE `test_import_model`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_import_model` (`label`,`type`);

--
-- Indexes for table `test_links`
--
ALTER TABLE `test_links`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `test_livraison`
--
ALTER TABLE `test_livraison`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `idx_livraison_uk_ref` (`ref`,`entity`),
  ADD KEY `idx_livraison_fk_soc` (`fk_soc`),
  ADD KEY `idx_livraison_fk_user_author` (`fk_user_author`),
  ADD KEY `idx_livraison_fk_user_valid` (`fk_user_valid`);

--
-- Indexes for table `test_livraisondet`
--
ALTER TABLE `test_livraisondet`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_livraisondet_fk_expedition` (`fk_livraison`);

--
-- Indexes for table `test_localtax`
--
ALTER TABLE `test_localtax`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `test_mailing`
--
ALTER TABLE `test_mailing`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `test_mailing_cibles`
--
ALTER TABLE `test_mailing_cibles`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_mailing_cibles` (`fk_mailing`,`email`),
  ADD KEY `idx_mailing_cibles_email` (`email`);

--
-- Indexes for table `test_menu`
--
ALTER TABLE `test_menu`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `idx_menu_uk_menu` (`menu_handler`,`fk_menu`,`position`,`url`,`entity`),
  ADD KEY `idx_menu_menuhandler_type` (`menu_handler`,`type`);

--
-- Indexes for table `test_notify`
--
ALTER TABLE `test_notify`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `test_notify_def`
--
ALTER TABLE `test_notify_def`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `test_opensurvey_comments`
--
ALTER TABLE `test_opensurvey_comments`
  ADD PRIMARY KEY (`id_comment`),
  ADD KEY `idx_id_comment` (`id_comment`),
  ADD KEY `idx_id_sondage` (`id_sondage`);

--
-- Indexes for table `test_opensurvey_sondage`
--
ALTER TABLE `test_opensurvey_sondage`
  ADD PRIMARY KEY (`id_sondage`),
  ADD KEY `idx_date_fin` (`date_fin`);

--
-- Indexes for table `test_opensurvey_user_studs`
--
ALTER TABLE `test_opensurvey_user_studs`
  ADD PRIMARY KEY (`id_users`),
  ADD KEY `idx_opensurvey_user_studs_id_users` (`id_users`),
  ADD KEY `idx_opensurvey_user_studs_nom` (`nom`),
  ADD KEY `idx_opensurvey_user_studs_id_sondage` (`id_sondage`);

--
-- Indexes for table `test_paiement`
--
ALTER TABLE `test_paiement`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `test_paiementcharge`
--
ALTER TABLE `test_paiementcharge`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `test_paiementfourn`
--
ALTER TABLE `test_paiementfourn`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `test_paiementfourn_facturefourn`
--
ALTER TABLE `test_paiementfourn_facturefourn`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_paiementfourn_facturefourn` (`fk_paiementfourn`,`fk_facturefourn`),
  ADD KEY `idx_paiementfourn_facturefourn_fk_facture` (`fk_facturefourn`),
  ADD KEY `idx_paiementfourn_facturefourn_fk_paiement` (`fk_paiementfourn`);

--
-- Indexes for table `test_paiement_facture`
--
ALTER TABLE `test_paiement_facture`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_paiement_facture` (`fk_paiement`,`fk_facture`),
  ADD KEY `idx_paiement_facture_fk_facture` (`fk_facture`),
  ADD KEY `idx_paiement_facture_fk_paiement` (`fk_paiement`);

--
-- Indexes for table `test_payment_salary`
--
ALTER TABLE `test_payment_salary`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `test_prelevement_bons`
--
ALTER TABLE `test_prelevement_bons`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_prelevement_bons_ref` (`ref`,`entity`);

--
-- Indexes for table `test_prelevement_facture`
--
ALTER TABLE `test_prelevement_facture`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_prelevement_facture_fk_prelevement_lignes` (`fk_prelevement_lignes`);

--
-- Indexes for table `test_prelevement_facture_demande`
--
ALTER TABLE `test_prelevement_facture_demande`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `test_prelevement_lignes`
--
ALTER TABLE `test_prelevement_lignes`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_prelevement_lignes_fk_prelevement_bons` (`fk_prelevement_bons`);

--
-- Indexes for table `test_prelevement_rejet`
--
ALTER TABLE `test_prelevement_rejet`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `test_printer_ipp`
--
ALTER TABLE `test_printer_ipp`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `test_product`
--
ALTER TABLE `test_product`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_product_ref` (`ref`,`entity`),
  ADD UNIQUE KEY `uk_product_barcode` (`barcode`,`fk_barcode_type`,`entity`),
  ADD KEY `idx_product_label` (`label`),
  ADD KEY `idx_product_barcode` (`barcode`),
  ADD KEY `idx_product_import_key` (`import_key`),
  ADD KEY `idx_product_seuil_stock_alerte` (`seuil_stock_alerte`);

--
-- Indexes for table `test_product_association`
--
ALTER TABLE `test_product_association`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_product_association` (`fk_product_pere`,`fk_product_fils`),
  ADD KEY `idx_product_association_fils` (`fk_product_fils`);

--
-- Indexes for table `test_product_batch`
--
ALTER TABLE `test_product_batch`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_fk_product_stock` (`fk_product_stock`);

--
-- Indexes for table `test_product_customer_price`
--
ALTER TABLE `test_product_customer_price`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_customer_price_fk_product_fk_soc` (`fk_product`,`fk_soc`),
  ADD KEY `idx_product_customer_price_fk_user` (`fk_user`),
  ADD KEY `idx_product_customer_price_fk_soc` (`fk_soc`);

--
-- Indexes for table `test_product_customer_price_log`
--
ALTER TABLE `test_product_customer_price_log`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `test_product_extrafields`
--
ALTER TABLE `test_product_extrafields`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_product_extrafields` (`fk_object`);

--
-- Indexes for table `test_product_fournisseur_price`
--
ALTER TABLE `test_product_fournisseur_price`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_product_fournisseur_price_ref` (`ref_fourn`,`fk_soc`,`quantity`,`entity`),
  ADD KEY `idx_product_fournisseur_price_fk_user` (`fk_user`),
  ADD KEY `idx_product_fourn_price_fk_product` (`fk_product`,`entity`),
  ADD KEY `idx_product_fourn_price_fk_soc` (`fk_soc`,`entity`);

--
-- Indexes for table `test_product_fournisseur_price_log`
--
ALTER TABLE `test_product_fournisseur_price_log`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `test_product_lang`
--
ALTER TABLE `test_product_lang`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_product_lang` (`fk_product`,`lang`);

--
-- Indexes for table `test_product_price`
--
ALTER TABLE `test_product_price`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `test_product_price_by_qty`
--
ALTER TABLE `test_product_price_by_qty`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_product_price_by_qty_level` (`fk_product_price`,`quantity`),
  ADD KEY `idx_product_price_by_qty_fk_product_price` (`fk_product_price`);

--
-- Indexes for table `test_product_stock`
--
ALTER TABLE `test_product_stock`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_product_stock` (`fk_product`,`fk_entrepot`),
  ADD KEY `idx_product_stock_fk_product` (`fk_product`),
  ADD KEY `idx_product_stock_fk_entrepot` (`fk_entrepot`);

--
-- Indexes for table `test_projet`
--
ALTER TABLE `test_projet`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_projet_ref` (`ref`,`entity`),
  ADD KEY `idx_projet_fk_soc` (`fk_soc`);

--
-- Indexes for table `test_projet_extrafields`
--
ALTER TABLE `test_projet_extrafields`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_projet_extrafields` (`fk_object`);

--
-- Indexes for table `test_projet_task`
--
ALTER TABLE `test_projet_task`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_projet_task_fk_projet` (`fk_projet`),
  ADD KEY `idx_projet_task_fk_user_creat` (`fk_user_creat`),
  ADD KEY `idx_projet_task_fk_user_valid` (`fk_user_valid`);

--
-- Indexes for table `test_projet_task_extrafields`
--
ALTER TABLE `test_projet_task_extrafields`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_projet_task_extrafields` (`fk_object`);

--
-- Indexes for table `test_projet_task_time`
--
ALTER TABLE `test_projet_task_time`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `test_propal`
--
ALTER TABLE `test_propal`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_propal_ref` (`ref`,`entity`),
  ADD KEY `idx_propal_fk_soc` (`fk_soc`),
  ADD KEY `idx_propal_fk_user_author` (`fk_user_author`),
  ADD KEY `idx_propal_fk_user_valid` (`fk_user_valid`),
  ADD KEY `idx_propal_fk_user_cloture` (`fk_user_cloture`),
  ADD KEY `idx_propal_fk_projet` (`fk_projet`),
  ADD KEY `idx_propal_fk_account` (`fk_account`),
  ADD KEY `idx_propal_fk_currency` (`fk_currency`);

--
-- Indexes for table `test_propaldet`
--
ALTER TABLE `test_propaldet`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_propaldet_fk_propal` (`fk_propal`),
  ADD KEY `idx_propaldet_fk_product` (`fk_product`);

--
-- Indexes for table `test_propaldet_extrafields`
--
ALTER TABLE `test_propaldet_extrafields`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_propaldet_extrafields` (`fk_object`);

--
-- Indexes for table `test_propal_extrafields`
--
ALTER TABLE `test_propal_extrafields`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_propal_extrafields` (`fk_object`);

--
-- Indexes for table `test_resource`
--
ALTER TABLE `test_resource`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `fk_code_type_resource_idx` (`fk_code_type_resource`);

--
-- Indexes for table `test_rights_def`
--
ALTER TABLE `test_rights_def`
  ADD PRIMARY KEY (`id`,`entity`);

--
-- Indexes for table `test_societe`
--
ALTER TABLE `test_societe`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_societe_prefix_comm` (`prefix_comm`,`entity`),
  ADD UNIQUE KEY `uk_societe_code_client` (`code_client`,`entity`),
  ADD UNIQUE KEY `uk_societe_code_fournisseur` (`code_fournisseur`,`entity`),
  ADD UNIQUE KEY `uk_societe_barcode` (`barcode`,`fk_barcode_type`,`entity`),
  ADD KEY `idx_societe_user_creat` (`fk_user_creat`),
  ADD KEY `idx_societe_user_modif` (`fk_user_modif`),
  ADD KEY `idx_societe_barcode` (`barcode`);

--
-- Indexes for table `test_societe_address`
--
ALTER TABLE `test_societe_address`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `test_societe_commerciaux`
--
ALTER TABLE `test_societe_commerciaux`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_societe_commerciaux` (`fk_soc`,`fk_user`);

--
-- Indexes for table `test_societe_extrafields`
--
ALTER TABLE `test_societe_extrafields`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_societe_extrafields` (`fk_object`);

--
-- Indexes for table `test_societe_log`
--
ALTER TABLE `test_societe_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test_societe_prices`
--
ALTER TABLE `test_societe_prices`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `test_societe_remise`
--
ALTER TABLE `test_societe_remise`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `test_societe_remise_except`
--
ALTER TABLE `test_societe_remise_except`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_societe_remise_except_fk_user` (`fk_user`),
  ADD KEY `idx_societe_remise_except_fk_soc` (`fk_soc`),
  ADD KEY `idx_societe_remise_except_fk_facture_line` (`fk_facture_line`),
  ADD KEY `idx_societe_remise_except_fk_facture` (`fk_facture`),
  ADD KEY `idx_societe_remise_except_fk_facture_source` (`fk_facture_source`);

--
-- Indexes for table `test_societe_rib`
--
ALTER TABLE `test_societe_rib`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `test_socpeople`
--
ALTER TABLE `test_socpeople`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_socpeople_fk_soc` (`fk_soc`),
  ADD KEY `idx_socpeople_fk_user_creat` (`fk_user_creat`);

--
-- Indexes for table `test_socpeople_extrafields`
--
ALTER TABLE `test_socpeople_extrafields`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_socpeople_extrafields` (`fk_object`);

--
-- Indexes for table `test_stock_mouvement`
--
ALTER TABLE `test_stock_mouvement`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_stock_mouvement_fk_product` (`fk_product`),
  ADD KEY `idx_stock_mouvement_fk_entrepot` (`fk_entrepot`);

--
-- Indexes for table `test_texts`
--
ALTER TABLE `test_texts`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `test_tva`
--
ALTER TABLE `test_tva`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `test_user`
--
ALTER TABLE `test_user`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_user_login` (`login`,`entity`),
  ADD UNIQUE KEY `uk_user_fk_socpeople` (`fk_socpeople`),
  ADD UNIQUE KEY `uk_user_fk_member` (`fk_member`),
  ADD KEY `uk_user_fk_societe` (`fk_societe`);

--
-- Indexes for table `test_usergroup`
--
ALTER TABLE `test_usergroup`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_usergroup_name` (`nom`,`entity`);

--
-- Indexes for table `test_usergroup_rights`
--
ALTER TABLE `test_usergroup_rights`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `fk_usergroup` (`fk_usergroup`,`fk_id`);

--
-- Indexes for table `test_usergroup_user`
--
ALTER TABLE `test_usergroup_user`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_usergroup_user` (`entity`,`fk_user`,`fk_usergroup`),
  ADD KEY `fk_usergroup_user_fk_user` (`fk_user`),
  ADD KEY `fk_usergroup_user_fk_usergroup` (`fk_usergroup`);

--
-- Indexes for table `test_user_alert`
--
ALTER TABLE `test_user_alert`
  ADD PRIMARY KEY (`rowid`);

--
-- Indexes for table `test_user_clicktodial`
--
ALTER TABLE `test_user_clicktodial`
  ADD PRIMARY KEY (`fk_user`);

--
-- Indexes for table `test_user_extrafields`
--
ALTER TABLE `test_user_extrafields`
  ADD PRIMARY KEY (`rowid`),
  ADD KEY `idx_user_extrafields` (`fk_object`);

--
-- Indexes for table `test_user_param`
--
ALTER TABLE `test_user_param`
  ADD UNIQUE KEY `uk_user_param` (`fk_user`,`param`,`entity`);

--
-- Indexes for table `test_user_rights`
--
ALTER TABLE `test_user_rights`
  ADD PRIMARY KEY (`rowid`),
  ADD UNIQUE KEY `uk_user_rights` (`fk_user`,`fk_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `test_accountingaccount`
--
ALTER TABLE `test_accountingaccount`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1508;
--
-- AUTO_INCREMENT for table `test_accountingtransaction`
--
ALTER TABLE `test_accountingtransaction`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_accounting_system`
--
ALTER TABLE `test_accounting_system`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `test_actioncomm`
--
ALTER TABLE `test_actioncomm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `test_actioncomm_extrafields`
--
ALTER TABLE `test_actioncomm_extrafields`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_actioncomm_resources`
--
ALTER TABLE `test_actioncomm_resources`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_adherent`
--
ALTER TABLE `test_adherent`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_adherent_extrafields`
--
ALTER TABLE `test_adherent_extrafields`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_adherent_type`
--
ALTER TABLE `test_adherent_type`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_adherent_type_extrafields`
--
ALTER TABLE `test_adherent_type_extrafields`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_bank`
--
ALTER TABLE `test_bank`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `test_bank_account`
--
ALTER TABLE `test_bank_account`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `test_bank_categ`
--
ALTER TABLE `test_bank_categ`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_bank_url`
--
ALTER TABLE `test_bank_url`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_bookmark`
--
ALTER TABLE `test_bookmark`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_bordereau_cheque`
--
ALTER TABLE `test_bordereau_cheque`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_boxes`
--
ALTER TABLE `test_boxes`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;
--
-- AUTO_INCREMENT for table `test_boxes_def`
--
ALTER TABLE `test_boxes_def`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `test_categorie`
--
ALTER TABLE `test_categorie`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_categories_extrafields`
--
ALTER TABLE `test_categories_extrafields`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_categorie_lang`
--
ALTER TABLE `test_categorie_lang`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_chargesociales`
--
ALTER TABLE `test_chargesociales`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_commande`
--
ALTER TABLE `test_commande`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_commandedet`
--
ALTER TABLE `test_commandedet`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_commandedet_extrafields`
--
ALTER TABLE `test_commandedet_extrafields`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_commande_extrafields`
--
ALTER TABLE `test_commande_extrafields`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_commande_fournisseur`
--
ALTER TABLE `test_commande_fournisseur`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_commande_fournisseurdet`
--
ALTER TABLE `test_commande_fournisseurdet`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_commande_fournisseur_dispatch`
--
ALTER TABLE `test_commande_fournisseur_dispatch`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_commande_fournisseur_extrafields`
--
ALTER TABLE `test_commande_fournisseur_extrafields`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_commande_fournisseur_log`
--
ALTER TABLE `test_commande_fournisseur_log`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_compta`
--
ALTER TABLE `test_compta`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_compta_account`
--
ALTER TABLE `test_compta_account`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_compta_compte_generaux`
--
ALTER TABLE `test_compta_compte_generaux`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_const`
--
ALTER TABLE `test_const`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1274;
--
-- AUTO_INCREMENT for table `test_contrat`
--
ALTER TABLE `test_contrat`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `test_contratdet`
--
ALTER TABLE `test_contratdet`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `test_contratdet_log`
--
ALTER TABLE `test_contratdet_log`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_contrat_extrafields`
--
ALTER TABLE `test_contrat_extrafields`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_cotisation`
--
ALTER TABLE `test_cotisation`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_cronjob`
--
ALTER TABLE `test_cronjob`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_c_action_trigger`
--
ALTER TABLE `test_c_action_trigger`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `test_c_availability`
--
ALTER TABLE `test_c_availability`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `test_c_barcode_type`
--
ALTER TABLE `test_c_barcode_type`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_c_chargesociales`
--
ALTER TABLE `test_c_chargesociales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;
--
-- AUTO_INCREMENT for table `test_c_departements`
--
ALTER TABLE `test_c_departements`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1010;
--
-- AUTO_INCREMENT for table `test_c_ecotaxe`
--
ALTER TABLE `test_c_ecotaxe`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `test_c_email_templates`
--
ALTER TABLE `test_c_email_templates`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_c_field_list`
--
ALTER TABLE `test_c_field_list`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_c_forme_juridique`
--
ALTER TABLE `test_c_forme_juridique`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;
--
-- AUTO_INCREMENT for table `test_c_input_method`
--
ALTER TABLE `test_c_input_method`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `test_c_input_reason`
--
ALTER TABLE `test_c_input_reason`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `test_c_paper_format`
--
ALTER TABLE `test_c_paper_format`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;
--
-- AUTO_INCREMENT for table `test_c_regions`
--
ALTER TABLE `test_c_regions`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23210;
--
-- AUTO_INCREMENT for table `test_c_revenuestamp`
--
ALTER TABLE `test_c_revenuestamp`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
--
-- AUTO_INCREMENT for table `test_c_shipment_mode`
--
ALTER TABLE `test_c_shipment_mode`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `test_c_tva`
--
ALTER TABLE `test_c_tva`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2469;
--
-- AUTO_INCREMENT for table `test_c_type_fees`
--
ALTER TABLE `test_c_type_fees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `test_c_ziptown`
--
ALTER TABLE `test_c_ziptown`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_deplacement`
--
ALTER TABLE `test_deplacement`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_document_model`
--
ALTER TABLE `test_document_model`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `test_don`
--
ALTER TABLE `test_don`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_ecm_directories`
--
ALTER TABLE `test_ecm_directories`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_element_contact`
--
ALTER TABLE `test_element_contact`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `test_element_element`
--
ALTER TABLE `test_element_element`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `test_element_lock`
--
ALTER TABLE `test_element_lock`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_element_resources`
--
ALTER TABLE `test_element_resources`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_element_tag`
--
ALTER TABLE `test_element_tag`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_entrepot`
--
ALTER TABLE `test_entrepot`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_events`
--
ALTER TABLE `test_events`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_event_element`
--
ALTER TABLE `test_event_element`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_expedition`
--
ALTER TABLE `test_expedition`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_expeditiondet`
--
ALTER TABLE `test_expeditiondet`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_expeditiondet_batch`
--
ALTER TABLE `test_expeditiondet_batch`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_export_compta`
--
ALTER TABLE `test_export_compta`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_export_model`
--
ALTER TABLE `test_export_model`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_extrafields`
--
ALTER TABLE `test_extrafields`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_facture`
--
ALTER TABLE `test_facture`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_facturedet`
--
ALTER TABLE `test_facturedet`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_facturedet_extrafields`
--
ALTER TABLE `test_facturedet_extrafields`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_facturedet_rec`
--
ALTER TABLE `test_facturedet_rec`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_facture_extrafields`
--
ALTER TABLE `test_facture_extrafields`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_facture_fourn`
--
ALTER TABLE `test_facture_fourn`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_facture_fourn_det`
--
ALTER TABLE `test_facture_fourn_det`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_facture_fourn_extrafields`
--
ALTER TABLE `test_facture_fourn_extrafields`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_facture_rec`
--
ALTER TABLE `test_facture_rec`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_fichinter`
--
ALTER TABLE `test_fichinter`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_fichinterdet`
--
ALTER TABLE `test_fichinterdet`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_fichinter_extrafields`
--
ALTER TABLE `test_fichinter_extrafields`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_holiday`
--
ALTER TABLE `test_holiday`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_holiday_config`
--
ALTER TABLE `test_holiday_config`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `test_holiday_events`
--
ALTER TABLE `test_holiday_events`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_holiday_logs`
--
ALTER TABLE `test_holiday_logs`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_import_model`
--
ALTER TABLE `test_import_model`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_links`
--
ALTER TABLE `test_links`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_livraison`
--
ALTER TABLE `test_livraison`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_livraisondet`
--
ALTER TABLE `test_livraisondet`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_localtax`
--
ALTER TABLE `test_localtax`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_mailing`
--
ALTER TABLE `test_mailing`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_mailing_cibles`
--
ALTER TABLE `test_mailing_cibles`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_menu`
--
ALTER TABLE `test_menu`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;
--
-- AUTO_INCREMENT for table `test_notify`
--
ALTER TABLE `test_notify`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_notify_def`
--
ALTER TABLE `test_notify_def`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_opensurvey_comments`
--
ALTER TABLE `test_opensurvey_comments`
  MODIFY `id_comment` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_opensurvey_user_studs`
--
ALTER TABLE `test_opensurvey_user_studs`
  MODIFY `id_users` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_paiement`
--
ALTER TABLE `test_paiement`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_paiementcharge`
--
ALTER TABLE `test_paiementcharge`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_paiementfourn`
--
ALTER TABLE `test_paiementfourn`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_paiementfourn_facturefourn`
--
ALTER TABLE `test_paiementfourn_facturefourn`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_paiement_facture`
--
ALTER TABLE `test_paiement_facture`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_payment_salary`
--
ALTER TABLE `test_payment_salary`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_prelevement_bons`
--
ALTER TABLE `test_prelevement_bons`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_prelevement_facture`
--
ALTER TABLE `test_prelevement_facture`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_prelevement_facture_demande`
--
ALTER TABLE `test_prelevement_facture_demande`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_prelevement_lignes`
--
ALTER TABLE `test_prelevement_lignes`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_prelevement_rejet`
--
ALTER TABLE `test_prelevement_rejet`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_printer_ipp`
--
ALTER TABLE `test_printer_ipp`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_product`
--
ALTER TABLE `test_product`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `test_product_association`
--
ALTER TABLE `test_product_association`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_product_batch`
--
ALTER TABLE `test_product_batch`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_product_customer_price`
--
ALTER TABLE `test_product_customer_price`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_product_customer_price_log`
--
ALTER TABLE `test_product_customer_price_log`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_product_extrafields`
--
ALTER TABLE `test_product_extrafields`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_product_fournisseur_price`
--
ALTER TABLE `test_product_fournisseur_price`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_product_fournisseur_price_log`
--
ALTER TABLE `test_product_fournisseur_price_log`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_product_lang`
--
ALTER TABLE `test_product_lang`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `test_product_price`
--
ALTER TABLE `test_product_price`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `test_product_price_by_qty`
--
ALTER TABLE `test_product_price_by_qty`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_product_stock`
--
ALTER TABLE `test_product_stock`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_projet`
--
ALTER TABLE `test_projet`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_projet_extrafields`
--
ALTER TABLE `test_projet_extrafields`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_projet_task`
--
ALTER TABLE `test_projet_task`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_projet_task_extrafields`
--
ALTER TABLE `test_projet_task_extrafields`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_projet_task_time`
--
ALTER TABLE `test_projet_task_time`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_propal`
--
ALTER TABLE `test_propal`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `test_propaldet`
--
ALTER TABLE `test_propaldet`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `test_propaldet_extrafields`
--
ALTER TABLE `test_propaldet_extrafields`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_propal_extrafields`
--
ALTER TABLE `test_propal_extrafields`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_resource`
--
ALTER TABLE `test_resource`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_societe`
--
ALTER TABLE `test_societe`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `test_societe_address`
--
ALTER TABLE `test_societe_address`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_societe_commerciaux`
--
ALTER TABLE `test_societe_commerciaux`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `test_societe_extrafields`
--
ALTER TABLE `test_societe_extrafields`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_societe_log`
--
ALTER TABLE `test_societe_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_societe_prices`
--
ALTER TABLE `test_societe_prices`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_societe_remise`
--
ALTER TABLE `test_societe_remise`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_societe_remise_except`
--
ALTER TABLE `test_societe_remise_except`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_societe_rib`
--
ALTER TABLE `test_societe_rib`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_socpeople`
--
ALTER TABLE `test_socpeople`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `test_socpeople_extrafields`
--
ALTER TABLE `test_socpeople_extrafields`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_stock_mouvement`
--
ALTER TABLE `test_stock_mouvement`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_texts`
--
ALTER TABLE `test_texts`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_tva`
--
ALTER TABLE `test_tva`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_user`
--
ALTER TABLE `test_user`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `test_usergroup`
--
ALTER TABLE `test_usergroup`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_usergroup_rights`
--
ALTER TABLE `test_usergroup_rights`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_usergroup_user`
--
ALTER TABLE `test_usergroup_user`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_user_alert`
--
ALTER TABLE `test_user_alert`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_user_extrafields`
--
ALTER TABLE `test_user_extrafields`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `test_user_rights`
--
ALTER TABLE `test_user_rights`
  MODIFY `rowid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=527;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `test_accountingaccount`
--
ALTER TABLE `test_accountingaccount`
  ADD CONSTRAINT `fk_accountingaccount_fk_pcg_version` FOREIGN KEY (`fk_pcg_version`) REFERENCES `test_accounting_system` (`pcg_version`);

--
-- Constraints for table `test_adherent`
--
ALTER TABLE `test_adherent`
  ADD CONSTRAINT `adherent_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `test_societe` (`rowid`),
  ADD CONSTRAINT `fk_adherent_adherent_type` FOREIGN KEY (`fk_adherent_type`) REFERENCES `test_adherent_type` (`rowid`);

--
-- Constraints for table `test_boxes`
--
ALTER TABLE `test_boxes`
  ADD CONSTRAINT `fk_boxes_box_id` FOREIGN KEY (`box_id`) REFERENCES `test_boxes_def` (`rowid`);

--
-- Constraints for table `test_categorie_contact`
--
ALTER TABLE `test_categorie_contact`
  ADD CONSTRAINT `fk_categorie_contact_categorie_rowid` FOREIGN KEY (`fk_categorie`) REFERENCES `test_categorie` (`rowid`),
  ADD CONSTRAINT `fk_categorie_contact_fk_socpeople` FOREIGN KEY (`fk_socpeople`) REFERENCES `test_socpeople` (`rowid`);

--
-- Constraints for table `test_categorie_fournisseur`
--
ALTER TABLE `test_categorie_fournisseur`
  ADD CONSTRAINT `fk_categorie_fournisseur_categorie_rowid` FOREIGN KEY (`fk_categorie`) REFERENCES `test_categorie` (`rowid`),
  ADD CONSTRAINT `fk_categorie_fournisseur_fk_soc` FOREIGN KEY (`fk_societe`) REFERENCES `test_societe` (`rowid`);

--
-- Constraints for table `test_categorie_lang`
--
ALTER TABLE `test_categorie_lang`
  ADD CONSTRAINT `fk_category_lang_fk_category` FOREIGN KEY (`fk_category`) REFERENCES `test_categorie` (`rowid`);

--
-- Constraints for table `test_categorie_member`
--
ALTER TABLE `test_categorie_member`
  ADD CONSTRAINT `fk_categorie_member_categorie_rowid` FOREIGN KEY (`fk_categorie`) REFERENCES `test_categorie` (`rowid`),
  ADD CONSTRAINT `fk_categorie_member_member_rowid` FOREIGN KEY (`fk_member`) REFERENCES `test_adherent` (`rowid`);

--
-- Constraints for table `test_categorie_product`
--
ALTER TABLE `test_categorie_product`
  ADD CONSTRAINT `fk_categorie_product_categorie_rowid` FOREIGN KEY (`fk_categorie`) REFERENCES `test_categorie` (`rowid`),
  ADD CONSTRAINT `fk_categorie_product_product_rowid` FOREIGN KEY (`fk_product`) REFERENCES `test_product` (`rowid`);

--
-- Constraints for table `test_categorie_societe`
--
ALTER TABLE `test_categorie_societe`
  ADD CONSTRAINT `fk_categorie_societe_categorie_rowid` FOREIGN KEY (`fk_categorie`) REFERENCES `test_categorie` (`rowid`),
  ADD CONSTRAINT `fk_categorie_societe_fk_soc` FOREIGN KEY (`fk_societe`) REFERENCES `test_societe` (`rowid`);

--
-- Constraints for table `test_commande`
--
ALTER TABLE `test_commande`
  ADD CONSTRAINT `fk_commande_fk_projet` FOREIGN KEY (`fk_projet`) REFERENCES `test_projet` (`rowid`),
  ADD CONSTRAINT `fk_commande_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `test_societe` (`rowid`),
  ADD CONSTRAINT `fk_commande_fk_user_author` FOREIGN KEY (`fk_user_author`) REFERENCES `test_user` (`rowid`),
  ADD CONSTRAINT `fk_commande_fk_user_cloture` FOREIGN KEY (`fk_user_cloture`) REFERENCES `test_user` (`rowid`),
  ADD CONSTRAINT `fk_commande_fk_user_valid` FOREIGN KEY (`fk_user_valid`) REFERENCES `test_user` (`rowid`);

--
-- Constraints for table `test_commandedet`
--
ALTER TABLE `test_commandedet`
  ADD CONSTRAINT `fk_commandedet_fk_commande` FOREIGN KEY (`fk_commande`) REFERENCES `test_commande` (`rowid`);

--
-- Constraints for table `test_commande_fournisseur`
--
ALTER TABLE `test_commande_fournisseur`
  ADD CONSTRAINT `fk_commande_fournisseur_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `test_societe` (`rowid`);

--
-- Constraints for table `test_contrat`
--
ALTER TABLE `test_contrat`
  ADD CONSTRAINT `fk_contrat_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `test_societe` (`rowid`),
  ADD CONSTRAINT `fk_contrat_user_author` FOREIGN KEY (`fk_user_author`) REFERENCES `test_user` (`rowid`);

--
-- Constraints for table `test_contratdet`
--
ALTER TABLE `test_contratdet`
  ADD CONSTRAINT `fk_contratdet_fk_contrat` FOREIGN KEY (`fk_contrat`) REFERENCES `test_contrat` (`rowid`),
  ADD CONSTRAINT `fk_contratdet_fk_product` FOREIGN KEY (`fk_product`) REFERENCES `test_product` (`rowid`);

--
-- Constraints for table `test_contratdet_log`
--
ALTER TABLE `test_contratdet_log`
  ADD CONSTRAINT `fk_contratdet_log_fk_contratdet` FOREIGN KEY (`fk_contratdet`) REFERENCES `test_contratdet` (`rowid`);

--
-- Constraints for table `test_c_regions`
--
ALTER TABLE `test_c_regions`
  ADD CONSTRAINT `fk_c_regions_fk_pays` FOREIGN KEY (`fk_pays`) REFERENCES `test_c_pays` (`rowid`);

--
-- Constraints for table `test_c_ziptown`
--
ALTER TABLE `test_c_ziptown`
  ADD CONSTRAINT `fk_c_ziptown_fk_county` FOREIGN KEY (`fk_county`) REFERENCES `test_c_departements` (`rowid`),
  ADD CONSTRAINT `fk_c_ziptown_fk_pays` FOREIGN KEY (`fk_pays`) REFERENCES `test_c_pays` (`rowid`);

--
-- Constraints for table `test_ecm_directories`
--
ALTER TABLE `test_ecm_directories`
  ADD CONSTRAINT `fk_ecm_directories_fk_user_c` FOREIGN KEY (`fk_user_c`) REFERENCES `test_user` (`rowid`),
  ADD CONSTRAINT `fk_ecm_directories_fk_user_m` FOREIGN KEY (`fk_user_m`) REFERENCES `test_user` (`rowid`);

--
-- Constraints for table `test_element_contact`
--
ALTER TABLE `test_element_contact`
  ADD CONSTRAINT `fk_element_contact_fk_c_type_contact` FOREIGN KEY (`fk_c_type_contact`) REFERENCES `test_c_type_contact` (`rowid`);

--
-- Constraints for table `test_expedition`
--
ALTER TABLE `test_expedition`
  ADD CONSTRAINT `fk_expedition_fk_shipping_method` FOREIGN KEY (`fk_shipping_method`) REFERENCES `test_c_shipment_mode` (`rowid`),
  ADD CONSTRAINT `fk_expedition_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `test_societe` (`rowid`),
  ADD CONSTRAINT `fk_expedition_fk_user_author` FOREIGN KEY (`fk_user_author`) REFERENCES `test_user` (`rowid`),
  ADD CONSTRAINT `fk_expedition_fk_user_valid` FOREIGN KEY (`fk_user_valid`) REFERENCES `test_user` (`rowid`);

--
-- Constraints for table `test_expeditiondet`
--
ALTER TABLE `test_expeditiondet`
  ADD CONSTRAINT `fk_expeditiondet_fk_expedition` FOREIGN KEY (`fk_expedition`) REFERENCES `test_expedition` (`rowid`);

--
-- Constraints for table `test_expeditiondet_batch`
--
ALTER TABLE `test_expeditiondet_batch`
  ADD CONSTRAINT `fk_expeditiondet_batch_fk_expeditiondet` FOREIGN KEY (`fk_expeditiondet`) REFERENCES `test_expeditiondet` (`rowid`);

--
-- Constraints for table `test_facture`
--
ALTER TABLE `test_facture`
  ADD CONSTRAINT `fk_facture_fk_facture_source` FOREIGN KEY (`fk_facture_source`) REFERENCES `test_facture` (`rowid`),
  ADD CONSTRAINT `fk_facture_fk_projet` FOREIGN KEY (`fk_projet`) REFERENCES `test_projet` (`rowid`),
  ADD CONSTRAINT `fk_facture_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `test_societe` (`rowid`),
  ADD CONSTRAINT `fk_facture_fk_user_author` FOREIGN KEY (`fk_user_author`) REFERENCES `test_user` (`rowid`),
  ADD CONSTRAINT `fk_facture_fk_user_valid` FOREIGN KEY (`fk_user_valid`) REFERENCES `test_user` (`rowid`);

--
-- Constraints for table `test_facturedet`
--
ALTER TABLE `test_facturedet`
  ADD CONSTRAINT `fk_facturedet_fk_facture` FOREIGN KEY (`fk_facture`) REFERENCES `test_facture` (`rowid`);

--
-- Constraints for table `test_facture_fourn`
--
ALTER TABLE `test_facture_fourn`
  ADD CONSTRAINT `fk_facture_fourn_fk_projet` FOREIGN KEY (`fk_projet`) REFERENCES `test_projet` (`rowid`),
  ADD CONSTRAINT `fk_facture_fourn_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `test_societe` (`rowid`),
  ADD CONSTRAINT `fk_facture_fourn_fk_user_author` FOREIGN KEY (`fk_user_author`) REFERENCES `test_user` (`rowid`),
  ADD CONSTRAINT `fk_facture_fourn_fk_user_valid` FOREIGN KEY (`fk_user_valid`) REFERENCES `test_user` (`rowid`);

--
-- Constraints for table `test_facture_fourn_det`
--
ALTER TABLE `test_facture_fourn_det`
  ADD CONSTRAINT `fk_facture_fourn_det_fk_facture` FOREIGN KEY (`fk_facture_fourn`) REFERENCES `test_facture_fourn` (`rowid`);

--
-- Constraints for table `test_facture_rec`
--
ALTER TABLE `test_facture_rec`
  ADD CONSTRAINT `fk_facture_rec_fk_projet` FOREIGN KEY (`fk_projet`) REFERENCES `test_projet` (`rowid`),
  ADD CONSTRAINT `fk_facture_rec_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `test_societe` (`rowid`),
  ADD CONSTRAINT `fk_facture_rec_fk_user_author` FOREIGN KEY (`fk_user_author`) REFERENCES `test_user` (`rowid`);

--
-- Constraints for table `test_fichinter`
--
ALTER TABLE `test_fichinter`
  ADD CONSTRAINT `fk_fichinter_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `test_societe` (`rowid`);

--
-- Constraints for table `test_fichinterdet`
--
ALTER TABLE `test_fichinterdet`
  ADD CONSTRAINT `fk_fichinterdet_fk_fichinter` FOREIGN KEY (`fk_fichinter`) REFERENCES `test_fichinter` (`rowid`);

--
-- Constraints for table `test_livraison`
--
ALTER TABLE `test_livraison`
  ADD CONSTRAINT `fk_livraison_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `test_societe` (`rowid`),
  ADD CONSTRAINT `fk_livraison_fk_user_author` FOREIGN KEY (`fk_user_author`) REFERENCES `test_user` (`rowid`),
  ADD CONSTRAINT `fk_livraison_fk_user_valid` FOREIGN KEY (`fk_user_valid`) REFERENCES `test_user` (`rowid`);

--
-- Constraints for table `test_livraisondet`
--
ALTER TABLE `test_livraisondet`
  ADD CONSTRAINT `fk_livraisondet_fk_livraison` FOREIGN KEY (`fk_livraison`) REFERENCES `test_livraison` (`rowid`);

--
-- Constraints for table `test_paiement_facture`
--
ALTER TABLE `test_paiement_facture`
  ADD CONSTRAINT `fk_paiement_facture_fk_facture` FOREIGN KEY (`fk_facture`) REFERENCES `test_facture` (`rowid`),
  ADD CONSTRAINT `fk_paiement_facture_fk_paiement` FOREIGN KEY (`fk_paiement`) REFERENCES `test_paiement` (`rowid`);

--
-- Constraints for table `test_prelevement_facture`
--
ALTER TABLE `test_prelevement_facture`
  ADD CONSTRAINT `fk_prelevement_facture_fk_prelevement_lignes` FOREIGN KEY (`fk_prelevement_lignes`) REFERENCES `test_prelevement_lignes` (`rowid`);

--
-- Constraints for table `test_prelevement_lignes`
--
ALTER TABLE `test_prelevement_lignes`
  ADD CONSTRAINT `fk_prelevement_lignes_fk_prelevement_bons` FOREIGN KEY (`fk_prelevement_bons`) REFERENCES `test_prelevement_bons` (`rowid`);

--
-- Constraints for table `test_product_batch`
--
ALTER TABLE `test_product_batch`
  ADD CONSTRAINT `fk_product_batch_fk_product_stock` FOREIGN KEY (`fk_product_stock`) REFERENCES `test_product_stock` (`rowid`);

--
-- Constraints for table `test_product_customer_price`
--
ALTER TABLE `test_product_customer_price`
  ADD CONSTRAINT `fk_customer_price_fk_product` FOREIGN KEY (`fk_product`) REFERENCES `test_product` (`rowid`),
  ADD CONSTRAINT `fk_customer_price_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `test_societe` (`rowid`),
  ADD CONSTRAINT `fk_product_customer_price_fk_product` FOREIGN KEY (`fk_product`) REFERENCES `test_product` (`rowid`),
  ADD CONSTRAINT `fk_product_customer_price_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `test_societe` (`rowid`),
  ADD CONSTRAINT `fk_product_customer_price_fk_user` FOREIGN KEY (`fk_user`) REFERENCES `test_user` (`rowid`);

--
-- Constraints for table `test_product_fournisseur_price`
--
ALTER TABLE `test_product_fournisseur_price`
  ADD CONSTRAINT `fk_product_fournisseur_price_fk_product` FOREIGN KEY (`fk_product`) REFERENCES `test_product` (`rowid`),
  ADD CONSTRAINT `fk_product_fournisseur_price_fk_user` FOREIGN KEY (`fk_user`) REFERENCES `test_user` (`rowid`);

--
-- Constraints for table `test_product_lang`
--
ALTER TABLE `test_product_lang`
  ADD CONSTRAINT `fk_product_lang_fk_product` FOREIGN KEY (`fk_product`) REFERENCES `test_product` (`rowid`);

--
-- Constraints for table `test_product_price_by_qty`
--
ALTER TABLE `test_product_price_by_qty`
  ADD CONSTRAINT `fk_product_price_by_qty_fk_product_price` FOREIGN KEY (`fk_product_price`) REFERENCES `test_product_price` (`rowid`);

--
-- Constraints for table `test_projet`
--
ALTER TABLE `test_projet`
  ADD CONSTRAINT `fk_projet_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `test_societe` (`rowid`);

--
-- Constraints for table `test_projet_task`
--
ALTER TABLE `test_projet_task`
  ADD CONSTRAINT `fk_projet_task_fk_projet` FOREIGN KEY (`fk_projet`) REFERENCES `test_projet` (`rowid`),
  ADD CONSTRAINT `fk_projet_task_fk_user_creat` FOREIGN KEY (`fk_user_creat`) REFERENCES `test_user` (`rowid`),
  ADD CONSTRAINT `fk_projet_task_fk_user_valid` FOREIGN KEY (`fk_user_valid`) REFERENCES `test_user` (`rowid`);

--
-- Constraints for table `test_propal`
--
ALTER TABLE `test_propal`
  ADD CONSTRAINT `fk_propal_fk_projet` FOREIGN KEY (`fk_projet`) REFERENCES `test_projet` (`rowid`),
  ADD CONSTRAINT `fk_propal_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `test_societe` (`rowid`),
  ADD CONSTRAINT `fk_propal_fk_user_author` FOREIGN KEY (`fk_user_author`) REFERENCES `test_user` (`rowid`),
  ADD CONSTRAINT `fk_propal_fk_user_cloture` FOREIGN KEY (`fk_user_cloture`) REFERENCES `test_user` (`rowid`),
  ADD CONSTRAINT `fk_propal_fk_user_valid` FOREIGN KEY (`fk_user_valid`) REFERENCES `test_user` (`rowid`);

--
-- Constraints for table `test_propaldet`
--
ALTER TABLE `test_propaldet`
  ADD CONSTRAINT `fk_propaldet_fk_propal` FOREIGN KEY (`fk_propal`) REFERENCES `test_propal` (`rowid`);

--
-- Constraints for table `test_societe_remise_except`
--
ALTER TABLE `test_societe_remise_except`
  ADD CONSTRAINT `fk_societe_remise_fk_facture` FOREIGN KEY (`fk_facture`) REFERENCES `test_facture` (`rowid`),
  ADD CONSTRAINT `fk_societe_remise_fk_facture_line` FOREIGN KEY (`fk_facture_line`) REFERENCES `test_facturedet` (`rowid`),
  ADD CONSTRAINT `fk_societe_remise_fk_facture_source` FOREIGN KEY (`fk_facture_source`) REFERENCES `test_facture` (`rowid`),
  ADD CONSTRAINT `fk_societe_remise_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `test_societe` (`rowid`),
  ADD CONSTRAINT `fk_societe_remise_fk_user` FOREIGN KEY (`fk_user`) REFERENCES `test_user` (`rowid`);

--
-- Constraints for table `test_socpeople`
--
ALTER TABLE `test_socpeople`
  ADD CONSTRAINT `fk_socpeople_fk_soc` FOREIGN KEY (`fk_soc`) REFERENCES `test_societe` (`rowid`),
  ADD CONSTRAINT `fk_socpeople_user_creat_user_rowid` FOREIGN KEY (`fk_user_creat`) REFERENCES `test_user` (`rowid`);

--
-- Constraints for table `test_usergroup_rights`
--
ALTER TABLE `test_usergroup_rights`
  ADD CONSTRAINT `fk_usergroup_rights_fk_usergroup` FOREIGN KEY (`fk_usergroup`) REFERENCES `test_usergroup` (`rowid`);

--
-- Constraints for table `test_usergroup_user`
--
ALTER TABLE `test_usergroup_user`
  ADD CONSTRAINT `fk_usergroup_user_fk_user` FOREIGN KEY (`fk_user`) REFERENCES `test_user` (`rowid`),
  ADD CONSTRAINT `fk_usergroup_user_fk_usergroup` FOREIGN KEY (`fk_usergroup`) REFERENCES `test_usergroup` (`rowid`);

--
-- Constraints for table `test_user_rights`
--
ALTER TABLE `test_user_rights`
  ADD CONSTRAINT `fk_user_rights_fk_user_user` FOREIGN KEY (`fk_user`) REFERENCES `test_user` (`rowid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
