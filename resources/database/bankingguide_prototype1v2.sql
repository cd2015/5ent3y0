-- MySQL dump 10.13  Distrib 5.6.17, for Win64 (x86_64)
--
-- Host: localhost    Database: bankingguide
-- ------------------------------------------------------
-- Server version	5.6.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ads` (
  `AdId` int(11) NOT NULL AUTO_INCREMENT,
  `AdURL` varchar(45) DEFAULT NULL,
  `AdName` varchar(45) DEFAULT NULL,
  `AdCoName` varchar(45) DEFAULT NULL,
  `AdPic` varchar(45) DEFAULT NULL,
  `AdPanelId` varchar(45) DEFAULT NULL COMMENT 'the panel on which the Ad is to display',
  `Ad_UserId` int(11) DEFAULT NULL COMMENT 'System User that added the Ad',
  `Ads_Time` datetime DEFAULT NULL COMMENT 'Time Stamp',
  PRIMARY KEY (`AdId`),
  KEY `SystemUserId` (`Ad_UserId`),
  CONSTRAINT `SystemUserId` FOREIGN KEY (`Ad_UserId`) REFERENCES `systemusers` (`UserId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articles` (
  `ArticleId` int(11) NOT NULL AUTO_INCREMENT,
  `ArticleDate` datetime DEFAULT NULL,
  `ArticleCategory` varchar(45) DEFAULT NULL,
  `ArticlePic` varchar(45) DEFAULT NULL COMMENT 'Article Picture',
  `ArticleTitle` varchar(45) DEFAULT NULL,
  `ArticleContent` varchar(1000) DEFAULT NULL,
  `ArticlePoster` int(11) DEFAULT NULL,
  `ArticleApproved` int(11) DEFAULT NULL COMMENT 'Time Stamp',
  PRIMARY KEY (`ArticleId`),
  KEY `ArticleOwner` (`ArticlePoster`),
  CONSTRAINT `ArticleOwner` FOREIGN KEY (`ArticlePoster`) REFERENCES `systemusers` (`UserId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` VALUES (1,'2015-08-01 02:14:47','Banking','stanbic','Opening Accounts','Here are some basic tips to guide when opening up bank accounts',1,0),(2,'2015-08-01 02:20:36','Insurance','SWICO','Best Insurance Covers','Did you know about the best insurance covers for yourself, You should visit our website and find out all the covers we have for all types of people. I just wrote this to test if i can be able to truncate the amount of content i have on an article. Please tell me it works. I have just added this content for that specific purpose.',1,0);
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bankacctsinfo`
--

DROP TABLE IF EXISTS `bankacctsinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bankacctsinfo` (
  `BankAcctsInfoId` int(11) NOT NULL AUTO_INCREMENT,
  `BankAcctsInfo_AcctType` varchar(100) DEFAULT NULL,
  `BankAcctsInfo_AppProc` varchar(500) DEFAULT NULL COMMENT 'Application procedure',
  `BankAcctsInfo_OnlineLink` varchar(45) DEFAULT NULL,
  `BankAcctsInfo_Eligibility` varchar(45) DEFAULT NULL,
  `BankAcctsInfo_OvrDrwnPenRate` varchar(45) DEFAULT NULL COMMENT 'Over Drawn Penalty Rate',
  `BankAcctsInfo_MinCurrAcctRate` varchar(45) DEFAULT NULL COMMENT 'Minimum Rate (Current Accounts)',
  `BankAcctsInfo_MaxCurrAcctRate` varchar(45) DEFAULT NULL COMMENT 'Maximum Rate (Current Accounts)',
  `BankAcctsInfo_MinSavAcctRate` varchar(45) DEFAULT NULL COMMENT 'Minimum Rate (Savings Accounts)',
  `BankAcctsInfo_MaxSavAcctRate` varchar(45) DEFAULT NULL COMMENT 'Maximum Rate (Savings Accounts)',
  `BankAcctsInfo_MinFixDepRate` varchar(45) DEFAULT NULL COMMENT 'Minimum Rate (Fixed Deposit Accounts)',
  `BankAcctsInfo_MaxFixDepRate` varchar(45) DEFAULT NULL COMMENT 'Maximum Rate (Fixed Deposit Accounts)',
  `BankAcctsInfo_MinBalCurAccts` varchar(45) DEFAULT NULL COMMENT 'Minimum Balance Current Accounts',
  `BankAcctsInfo_MinBalSavAccts` varchar(45) DEFAULT NULL COMMENT 'Minimum Balance Savings Accounts',
  `BankAcctsInfo_MinBalFixAccts` varchar(45) DEFAULT NULL COMMENT 'Minimum Balance Fixed Accounts',
  `BankAcctsInfo_PenBelMinCurrAccts` varchar(45) DEFAULT NULL COMMENT 'Penalty Below Minimum Current Accounts',
  `BankAcctsInfo_PenBelMinSavAccts` varchar(45) DEFAULT NULL COMMENT 'Penalty Below Minimum Savings Accounts',
  `BankAcctsInfo_PenBelMinFixAccts` varchar(45) DEFAULT NULL COMMENT 'Penalty Below Minimum Fixed Accounts',
  `BankAcctsInfo_LedgerFee` varchar(45) DEFAULT NULL COMMENT 'Ledger Fee Per Entry',
  `BankAcctsInfo_MinLedgFeePerMon` varchar(45) DEFAULT NULL COMMENT 'Minimum Ledger Fee Per Month',
  `BankAcctsInfo_InterimStatmnt` varchar(45) DEFAULT NULL COMMENT 'Charges on Interim Statements',
  `BankAcctsInfo_DupStatmnt` varchar(45) DEFAULT NULL COMMENT 'Charge on Duplicate Statements',
  `BankAcctsInfo_ClosingAcct` varchar(45) DEFAULT NULL COMMENT 'Charge on closing account',
  `BankAcctsInfo_DormAcctReactiv` varchar(45) DEFAULT NULL COMMENT 'Dormant Account Reactivation',
  `BankAcctsInfo_SavCardPassBk` varchar(45) DEFAULT NULL COMMENT 'Savings Card/ PassBook',
  `BankAcctsInfo_EFT` varchar(45) DEFAULT NULL,
  `BankAcctsInfo_TT` varchar(45) DEFAULT NULL COMMENT 'Standing Orders within Banks',
  `BankAcctsInfo_RTGS` varchar(45) DEFAULT NULL,
  `BankAcctsInfo_StandOrdinBank` varchar(45) DEFAULT NULL,
  `BankAcctsInfo_StandOrdoutBank` varchar(45) DEFAULT NULL COMMENT 'Standing Orders to other Banks',
  `BankAcctsInfo_StandOrdUnpaid` varchar(45) DEFAULT NULL COMMENT 'Standing Orders Unpaid',
  `BankAcctsInfo_CertOfBal` varchar(45) DEFAULT NULL COMMENT 'Certificate of Balance',
  `BankAcctsInfo_AudConfirm` varchar(45) DEFAULT NULL COMMENT 'Audit Confirmation',
  `BankAcctsInfo_LetOfIntro` varchar(45) DEFAULT NULL COMMENT 'Letter of Introduction',
  `BankAcctsInfo_Salary` varchar(45) DEFAULT NULL,
  `BankAcctsInfo_SchFees` varchar(45) DEFAULT NULL COMMENT 'School Fees charges',
  `BankAcctsInfo_URAColl` varchar(45) DEFAULT NULL COMMENT 'URA Collection',
  `BankAcctsInfo_UtilColl` varchar(45) DEFAULT NULL COMMENT 'Utility Collection',
  `BankAcctsInfo_SafeCust` varchar(45) DEFAULT NULL COMMENT 'Safe Custody',
  `BankAcctsInfo_SafeCustAccess` varchar(45) DEFAULT NULL COMMENT 'Safe Custody Access',
  `BankAcctsInfo_CheqBkPerLf` varchar(45) DEFAULT NULL COMMENT 'Charges on Cheque Book per leaf',
  `BankAcctsInfo_CntCheqLf` varchar(45) DEFAULT NULL COMMENT 'Counter Cheque Leaf',
  `BankAcctsInfo_RetCheqInsfFnds` varchar(45) DEFAULT NULL COMMENT 'Returned Cheque Insufficient Funds',
  `BankAcctsInfo_RetCheqEffNtClrd` varchar(45) DEFAULT NULL COMMENT 'Returned Cheque Effects Not Cleared',
  `BankAcctsInfo_RetCheqTech` varchar(45) DEFAULT NULL COMMENT 'Returned Cheque Technical',
  `BankAcctsInfo_RetCheqOthrBank` varchar(45) DEFAULT NULL COMMENT 'Returned Cheque Other Banks',
  `BankAcctsInfo_StopPayOrdl` varchar(45) DEFAULT NULL COMMENT 'Stop Payment Orders',
  `BankAcctsInfo_PostDateCheq` varchar(45) DEFAULT NULL COMMENT 'Posted Dated Cheque',
  `BankAcctsInfo_CheqColl` varchar(45) DEFAULT NULL COMMENT 'Cheques Collection',
  `BankAcctsInfo_DraftCus` varchar(45) DEFAULT NULL COMMENT 'Drafts Customer',
  `BankAcctsInfo_DraftCancel` varchar(45) DEFAULT NULL COMMENT 'Drafts Cancellation',
  `BankAcctsInfo_CashWith` varchar(45) DEFAULT NULL COMMENT 'Cash Withdrawal',
  `BankAcctsInfo_CashDep` varchar(45) DEFAULT NULL COMMENT 'Cash Deposit',
  `BankAcctsInfo_CoinDep` varchar(45) DEFAULT NULL COMMENT 'Coin Deposit',
  `BankAcctsInfo_BulkCashWith` varchar(45) DEFAULT NULL COMMENT 'Bulk Cash Deposit',
  `BankAcctsInfo_BulkCashDep` varchar(45) DEFAULT NULL COMMENT 'Bulk Cash Withdrawal',
  `BankAcctsInfoTime` datetime DEFAULT NULL COMMENT 'Time Stamp',
  `BankAcctsInfo_BankId` int(11) DEFAULT NULL COMMENT 'Ref bank',
  PRIMARY KEY (`BankAcctsInfoId`),
  KEY `BankAccount_Bank` (`BankAcctsInfo_BankId`),
  CONSTRAINT `BankAccount_Bank` FOREIGN KEY (`BankAcctsInfo_BankId`) REFERENCES `banks` (`BankId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bankacctsinfo`
--

LOCK TABLES `bankacctsinfo` WRITE;
/*!40000 ALTER TABLE `bankacctsinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `bankacctsinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bankatminfo`
--

DROP TABLE IF EXISTS `bankatminfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bankatminfo` (
  `BankATMInfoid` int(11) NOT NULL AUTO_INCREMENT,
  `BankATMInfo_ATMAppProc` varchar(500) DEFAULT NULL COMMENT 'procedure for applying for the ATM',
  `BankATMInfo_OnlineLink` varchar(45) DEFAULT NULL COMMENT 'Link for applying online',
  `BankATMInfo_ATMReplacProc` varchar(500) DEFAULT NULL COMMENT 'ATM Replacement procedure',
  `BankATMInfo_Offers` varchar(100) DEFAULT NULL COMMENT 'Extra offers that come along with acquiring the ATM',
  `BankATMInfo_Restrict` varchar(100) DEFAULT NULL COMMENT 'restrictions on ATM',
  `BankATMInfo_IssCharge` int(11) DEFAULT NULL COMMENT 'ATM Issuing charge',
  `BankATMInfo_WithCharge` int(11) DEFAULT NULL COMMENT 'ATM withdraw charge',
  `BankATMInfo_DepoCharge` int(11) DEFAULT NULL COMMENT 'ATM Deposit Charge',
  `BankATMInfo_VISAsupp` binary(2) DEFAULT NULL COMMENT 'whether the ATM supports VISA',
  `BankATMInfo_AddServ` varchar(100) DEFAULT NULL COMMENT 'Additional services offered with the ATM',
  `BankATMInfo_Img` varchar(45) DEFAULT NULL COMMENT 'Snap shot of the ATM card',
  `BankATMInfo_ExpePrd` varchar(45) DEFAULT NULL COMMENT 'The expiration period of the ATM',
  `BankATMInfo_AppDur` varchar(45) DEFAULT NULL COMMENT 'Duration it takes to apply for the ATM',
  `BankATMInfo_Lctns` varchar(45) DEFAULT NULL COMMENT 'ATM location centres',
  `BankATMInfo_UncollectDest` varchar(45) DEFAULT NULL COMMENT 'Uncollected card destroyed',
  `BankATMInfoTime` datetime DEFAULT NULL COMMENT 'Time stamp of recording the data',
  `BankATMInfo_BankId` int(11) DEFAULT NULL COMMENT 'bank id for which the atm information is',
  PRIMARY KEY (`BankATMInfoid`),
  KEY `ATMinformation_Bank` (`BankATMInfo_BankId`),
  CONSTRAINT `ATMinformation_Bank` FOREIGN KEY (`BankATMInfo_BankId`) REFERENCES `banks` (`BankId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bankatminfo`
--

LOCK TABLES `bankatminfo` WRITE;
/*!40000 ALTER TABLE `bankatminfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `bankatminfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bankforeignexinfo`
--

DROP TABLE IF EXISTS `bankforeignexinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bankforeignexinfo` (
  `BankFnExInfoId` int(11) NOT NULL AUTO_INCREMENT,
  `BankFnExInfo_CurrTypes` varchar(100) DEFAULT NULL COMMENT 'Currency Types supported',
  `BankFnExInfo_AppProc` varchar(500) DEFAULT NULL COMMENT 'Application procedure',
  `BankFnExInfo_OnlineLink` varchar(45) DEFAULT NULL,
  `BankFnExInfo_Eligibility` varchar(45) DEFAULT NULL,
  `BankFnExInfo_MinBal` varchar(45) DEFAULT NULL COMMENT 'Minimum Balance on account',
  `BankFnExInfo_PenBelMin` varchar(45) DEFAULT NULL COMMENT 'Penalty Below Minmum',
  `BankFnExInfo_LedFeePerEnt` varchar(45) DEFAULT NULL COMMENT 'Ledger Fee Per Entry',
  `BankFnExchInfo_MinLedFeePerMon` varchar(45) DEFAULT NULL COMMENT 'Minimum Ledger Fee Per Month',
  `BankFnExInfo_AcctMgtServFee` varchar(45) DEFAULT NULL COMMENT 'Account Management Service Fee',
  `BankFnExInfo_CashDep` varchar(45) DEFAULT NULL COMMENT 'Cash Deposit',
  `BankFnExInfo_Withdraw` varchar(45) DEFAULT NULL,
  `BankFnExInfo_Stat` varchar(45) DEFAULT NULL COMMENT 'Statement charges',
  `BankFnExInfo_AddStat` varchar(45) DEFAULT NULL COMMENT 'Addtional Statement Charges',
  `BankFnExInfo_OutFnTxCus` varchar(45) DEFAULT NULL COMMENT 'Out Foreign Transfer Customers',
  `BankFnExInfo_OutFnTxNCus` varchar(45) DEFAULT NULL COMMENT 'Out Foreign transfer non customers',
  `BankFnExInfo_InFnTxCus` varchar(45) DEFAULT NULL COMMENT 'In foreign transfer customers',
  `BankFnExInfo_InFnTxNCus` varchar(45) DEFAULT NULL COMMENT 'In foreign transfer non customers',
  `BankFnExInfo_SaleTrvCheq` varchar(45) DEFAULT NULL COMMENT 'Sale of travellers cheque',
  `BankFnExInfo_LCOACCC` varchar(45) DEFAULT NULL COMMENT 'Lc Opening Admission Commission Cash covered',
  `BankFnExInfo_LCOACNCC` varchar(45) DEFAULT NULL COMMENT 'LC Opening Admission Commision No Cash Covered',
  `BankFnExInfo_LCArrgmtFee` varchar(45) DEFAULT NULL COMMENT 'LC Arrangement Fees',
  `BankFnExInfo_LCPaySetCom` varchar(45) DEFAULT NULL COMMENT 'Lc Payment Settlement commission',
  `BankFnExInfo_LCAmmndts` varchar(45) DEFAULT NULL COMMENT 'Lc ammendments',
  `BankFnExInfo_FnDrafts` varchar(45) DEFAULT NULL COMMENT 'Foreign Drafts',
  `BankFnExInfo_LetOfGrantArrngtFee` varchar(45) DEFAULT NULL COMMENT 'Letter of guarantee arrangement fees',
  `BankFnExInfo_LGSOTC` varchar(45) DEFAULT NULL COMMENT 'LG Secured Other Than Cash',
  `BankFnExInfo_LGCWCM` varchar(45) DEFAULT NULL COMMENT 'LG Covered with cash margin',
  `BankFnExInfo_LGUnSec` varchar(45) DEFAULT NULL COMMENT 'LG Unsecured',
  `BankFnExInfo_BankId` int(11) DEFAULT NULL,
  `BankFnExInfo_Time` datetime DEFAULT NULL COMMENT 'Time Stamp',
  PRIMARY KEY (`BankFnExInfoId`),
  KEY `banks foreign exchange` (`BankFnExInfo_BankId`),
  CONSTRAINT `banks foreign exchange` FOREIGN KEY (`BankFnExInfo_BankId`) REFERENCES `banks` (`BankId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bankforeignexinfo`
--

LOCK TABLES `bankforeignexinfo` WRITE;
/*!40000 ALTER TABLE `bankforeignexinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `bankforeignexinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bankloaninfo`
--

DROP TABLE IF EXISTS `bankloaninfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bankloaninfo` (
  `BankLoanInfoId` int(11) NOT NULL AUTO_INCREMENT,
  `BankLoanInfo_LoanTypes` varchar(60) DEFAULT NULL COMMENT 'Available loan types',
  `BankLoanInfo_LoanAppProc` varchar(500) DEFAULT NULL,
  `BankLoanInfo_OnlineLink` varchar(45) DEFAULT NULL,
  `BankLoanInfo_LoanEligibility` varchar(100) DEFAULT NULL,
  `BankLoanInfo_LoanOffers` varchar(100) DEFAULT NULL,
  `BankLoanInfo_PrimeLendRate` varchar(45) DEFAULT NULL COMMENT 'Prime Lending Rate',
  `BankLoanInfo_MaxLendRate` varchar(45) DEFAULT NULL COMMENT 'Maximum Lending Rate',
  `BankLoanInfo_MinLendRate` varchar(45) DEFAULT NULL COMMENT 'Minimum Lending Rate',
  `BankLoanInfo_LoanAdvAppFee` varchar(45) DEFAULT NULL COMMENT 'Loan Advance Application Fee',
  `BankLoanInfo_LoanAdvComitFee` varchar(45) DEFAULT NULL COMMENT 'Loan Advance Commitment Fee',
  `BankLoanInfo_LoanAdvArrgmtFee` varchar(45) DEFAULT NULL COMMENT 'Loan Advance arrangement fee',
  `BankLoanInfo_LoanAdvProcesFee` varchar(45) DEFAULT NULL COMMENT 'Loan advance Processing Fee',
  `BankLoanInfo_LoanAdvMonFee` varchar(45) DEFAULT NULL COMMENT 'Loan Advance Monitoring fee',
  `BankLoanInfo_InsuranceFee` varchar(45) DEFAULT NULL,
  `BankLoanInfo_LegalFee` varchar(45) DEFAULT NULL,
  `BankLoanInfo_LoanAdvFacRenw` varchar(45) DEFAULT NULL COMMENT 'Loan Advance Facility Renewal',
  `BankLoanInfo_LoanAdvFacRest` varchar(45) DEFAULT NULL COMMENT 'Loan Advance Facility Restructuring',
  `BankLoanInfo_DisSecDos` varchar(45) DEFAULT NULL COMMENT 'Discharge Security Documents',
  `BankLoanInfo_BankId` int(11) DEFAULT NULL,
  `BankLoanInfoTime` datetime DEFAULT NULL COMMENT 'Timestamp for the record',
  PRIMARY KEY (`BankLoanInfoId`),
  KEY `BankLoans_BankId` (`BankLoanInfo_BankId`),
  CONSTRAINT `BankLoans_BankId` FOREIGN KEY (`BankLoanInfo_BankId`) REFERENCES `banks` (`BankId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bankloaninfo`
--

LOCK TABLES `bankloaninfo` WRITE;
/*!40000 ALTER TABLE `bankloaninfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `bankloaninfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bankmortinfo`
--

DROP TABLE IF EXISTS `bankmortinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bankmortinfo` (
  `BankMortInfoId` int(11) NOT NULL AUTO_INCREMENT,
  `BankMortInfo_MortTypes` varchar(100) DEFAULT NULL COMMENT 'Mortgage Types',
  `BankMortInfo_AppProc` varchar(500) DEFAULT NULL COMMENT 'application procedure',
  `BankMortInfo_OnlineLink` varchar(45) DEFAULT NULL,
  `BankMortInfo_IntRate` varchar(45) DEFAULT NULL COMMENT 'Interest Rate',
  `BankMortInfo_LVP` varchar(45) DEFAULT NULL COMMENT 'Loan to Value Percentage',
  `BankMortInfo_RepayFee` varchar(45) DEFAULT NULL COMMENT 'Repayment Fee',
  `BankMortInfo_MortFeat` varchar(100) DEFAULT NULL COMMENT 'Mortgage Features',
  `BankMortInfo_MaxLoan` varchar(45) DEFAULT NULL COMMENT 'Maximum loan',
  `BankMortInfo_MinLoan` varchar(45) DEFAULT NULL COMMENT 'Minimum Loan',
  `BankMortInfo_OtherPay` varchar(100) DEFAULT NULL COMMENT 'Other Payments',
  `BankMortInfo_BankId` int(11) DEFAULT NULL,
  `BankMortInfo_Time` datetime DEFAULT NULL COMMENT 'update time',
  PRIMARY KEY (`BankMortInfoId`),
  KEY `BankMortages_Bank` (`BankMortInfo_BankId`),
  CONSTRAINT `BankMortages_Bank` FOREIGN KEY (`BankMortInfo_BankId`) REFERENCES `banks` (`BankId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bankmortinfo`
--

LOCK TABLES `bankmortinfo` WRITE;
/*!40000 ALTER TABLE `bankmortinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `bankmortinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banks`
--

DROP TABLE IF EXISTS `banks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banks` (
  `BankId` int(11) NOT NULL AUTO_INCREMENT,
  `BankName` varchar(45) DEFAULT NULL,
  `BankLogo` varchar(100) DEFAULT NULL,
  `BanksSlogan` varchar(45) DEFAULT NULL,
  `BankTel` varchar(45) DEFAULT NULL,
  `BankPhysicalAddress` varchar(45) DEFAULT NULL,
  `BanksPostalAddress` varchar(45) DEFAULT NULL,
  `BanksSupportTel` varchar(45) DEFAULT NULL,
  `BanksSupportEmail` varchar(45) DEFAULT NULL,
  `BanksTime` datetime DEFAULT NULL COMMENT 'Time stamp',
  `BankUser` int(11) DEFAULT NULL,
  PRIMARY KEY (`BankId`),
  KEY `BankUserId` (`BankUser`),
  CONSTRAINT `BankUserId` FOREIGN KEY (`BankUser`) REFERENCES `systemusers` (`UserId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banks`
--

LOCK TABLES `banks` WRITE;
/*!40000 ALTER TABLE `banks` DISABLE KEYS */;
/*!40000 ALTER TABLE `banks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bankusers`
--

DROP TABLE IF EXISTS `bankusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bankusers` (
  `BankUserId` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id to reference the banks user',
  `BankUserName` varchar(45) DEFAULT NULL COMMENT 'User Name for logging into the banks account',
  `BankUserPassword` varchar(45) DEFAULT NULL COMMENT 'Bank login password',
  `BankUserEmail` varchar(45) DEFAULT NULL COMMENT 'Email Id of the bank user',
  `BankUsersDate` datetime DEFAULT NULL COMMENT 'Timestamp when user was created',
  `BankUserBankId` int(11) DEFAULT NULL COMMENT 'Id of the bank the user is attached to',
  PRIMARY KEY (`BankUserId`),
  KEY `BankUser_BankId` (`BankUserBankId`),
  CONSTRAINT `BankUser_BankId` FOREIGN KEY (`BankUserBankId`) REFERENCES `banks` (`BankId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bankusers`
--

LOCK TABLES `bankusers` WRITE;
/*!40000 ALTER TABLE `bankusers` DISABLE KEYS */;
INSERT INTO `bankusers` VALUES (1,'CentinaryBankAdmin','33@$kjsdf34','sowed@centinarybank.com',NULL,NULL),(2,'Barclays','dkh@197hd','admin@barclays.com',NULL,NULL);
/*!40000 ALTER TABLE `bankusers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `editors`
--

DROP TABLE IF EXISTS `editors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `editors` (
  `EditorId` int(11) NOT NULL AUTO_INCREMENT,
  `EditorName` varchar(45) DEFAULT NULL,
  `EditorProfPic` varchar(100) DEFAULT NULL COMMENT 'Editor Profile Picture',
  `EditorSlogan` varchar(45) DEFAULT NULL,
  `EditorTel` varchar(45) DEFAULT NULL,
  `EditorPhysicalAddress` varchar(45) DEFAULT NULL,
  `EditorPostalAddress` varchar(45) DEFAULT NULL,
  `EditorEmail` varchar(45) DEFAULT NULL,
  `EditorUserName` varchar(45) DEFAULT NULL,
  `EditorPassword` varchar(45) DEFAULT NULL,
  `EditorTime` datetime DEFAULT NULL COMMENT 'Time Stamp',
  PRIMARY KEY (`EditorId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `editors`
--

LOCK TABLES `editors` WRITE;
/*!40000 ALTER TABLE `editors` DISABLE KEYS */;
/*!40000 ALTER TABLE `editors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forexbureaus`
--

DROP TABLE IF EXISTS `forexbureaus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forexbureaus` (
  `FxBureauId` int(11) NOT NULL AUTO_INCREMENT,
  `FxCode` varchar(100) NOT NULL,
  `FxBureauName` varchar(45) DEFAULT NULL,
  `FxBureauLogo` varchar(100) DEFAULT NULL,
  `FxBureauSlogan` varchar(100) DEFAULT NULL,
  `FxBureauTel` varchar(45) DEFAULT NULL,
  `FxBureauPhysicalAddress` varchar(45) DEFAULT NULL,
  `FxBureauPostalAddress` varchar(45) DEFAULT NULL,
  `FxBureauSupportTel` varchar(45) DEFAULT NULL,
  `FxBureauSupportEmail` varchar(45) DEFAULT NULL,
  `OpeningTime` time DEFAULT NULL,
  `ClosingTime` time DEFAULT NULL,
  `FxBureauTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `FxBureauUserCode` varchar(50) NOT NULL,
  PRIMARY KEY (`FxBureauId`),
  KEY `FxBureauUser` (`FxBureauUserCode`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forexbureaus`
--

LOCK TABLES `forexbureaus` WRITE;
/*!40000 ALTER TABLE `forexbureaus` DISABLE KEYS */;
INSERT INTO `forexbureaus` VALUES (1,'FXB747','etertert','10830-dune.jpg','uiuiiuiu','898898998','kjdfdfkjd','990','8990090','jdkfkdjfd','00:00:00','00:00:00',NULL,''),(2,'FXB1085','etertert','14343-dune.jpg','uiuiiuiu','898898998','kjdfdfkjd','990','8990090','jdkfkdjfd','00:00:00','00:00:00',NULL,''),(3,'FXB1022','uiadasda','69664-2971839-p-multiview.jpg','uuiuiuiui','384934389','uiuiiuiuui','9009','89980-89','jhjjkkllklk','08:00:00','08:00:00',NULL,''),(4,'FXB1552','Metropolitan Forex Bureau','36245-281e807800000578-0-image-a-2_1430291385127.jpg','We forex kings','89398389','King Fahad','8998','8767767','metrofx@gmail.com','08:00:00','18:00:00',NULL,''),(5,'FXB749','jksdfsdfjks','69352-2971839-p-multiview.jpg','uihuuifd','89348934938','hdfhjdfdfdfhj','873434','834784343','hjhjdfdjfhddfd','08:00:00','09:00:00',NULL,''),(6,'FXB1211','Derrick','55429-1472055_915856881804272_6775432734469081597_n.jpg','We forex','89984733','Salama','23','345378687','hjhjghyyu@gmail.com','08:00:00','10:00:00',NULL,''),(7,'FXB1722','Sowed','35040-glo-2.jpg','Derrick wambwaa maani!','0787623601','Salama','P.O BOX 23 ','08999','d@gmail.com','09:00:00','09:15:00','2015-11-10 12:38:27',''),(8,'FXB1782','EXcaliber','15181-chess-avatar.jpg','west west ','323430928409','Kirinya','256','1241241','1251251','00:00:00','00:00:00','2015-11-27 14:21:51',''),(9,'FXB800','Castor Forex','68881-piece.png','west west ','323430928409','Kirinya','2335','9832758907895','smujjuzi@gmail.com','00:00:00','00:00:00','2015-11-27 14:23:53','');
/*!40000 ALTER TABLE `forexbureaus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forexinfo`
--

DROP TABLE IF EXISTS `forexinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forexinfo` (
  `ForexInfoId` int(11) NOT NULL AUTO_INCREMENT,
  `ForexInfo_Currency` varchar(45) DEFAULT NULL,
  `ForexInfo_BuyingPr` varchar(45) DEFAULT NULL,
  `ForexInfo_SellingPr` varchar(45) DEFAULT NULL,
  `ForexInfo_FxBureauId` int(11) DEFAULT NULL,
  `ForexInfo_Time` datetime DEFAULT NULL COMMENT 'Time Stamp',
  PRIMARY KEY (`ForexInfoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forexinfo`
--

LOCK TABLES `forexinfo` WRITE;
/*!40000 ALTER TABLE `forexinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `forexinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forexusers`
--

DROP TABLE IF EXISTS `forexusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forexusers` (
  `FxUserId` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id to reference the banks user',
  `FxUserCode` varchar(50) NOT NULL,
  `FxUserName` varchar(45) NOT NULL COMMENT 'User Name for logging into the bank''s account',
  `FxUserPassword` varchar(45) NOT NULL COMMENT 'Bank login password',
  `FxUserEmail` varchar(45) NOT NULL COMMENT 'Email Id of the bank user',
  `active` int(1) NOT NULL DEFAULT '0' COMMENT '0 - Inactive 1-Active',
  `hash` varchar(50) NOT NULL,
  `FxUser_Time` datetime DEFAULT NULL COMMENT 'Time Stamp',
  PRIMARY KEY (`FxUserId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='table for forex users';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forexusers`
--

LOCK TABLES `forexusers` WRITE;
/*!40000 ALTER TABLE `forexusers` DISABLE KEYS */;
INSERT INTO `forexusers` VALUES (2,'FXU96632','Mupuya Forex','emmaForex','forex@mupuya.com',1,'58238e9ae2dd305d79c2ebc8c1883422','2015-12-15 10:32:53'),(3,'FXU54309','sowed forex','plONeJh=','sowed@ff.cpm',0,'4558dbb6f6f8bb2e16d03b85bde76e2c','2015-12-15 10:36:13');
/*!40000 ALTER TABLE `forexusers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `institutionprofile`
--

DROP TABLE IF EXISTS `institutionprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `institutionprofile` (
  `InstId` int(11) NOT NULL AUTO_INCREMENT,
  `InstName` varchar(45) DEFAULT NULL,
  `InstLogo` varchar(100) DEFAULT NULL,
  `InstSlogan` varchar(45) DEFAULT NULL,
  `InstTel` varchar(45) DEFAULT NULL,
  `InstPhysicalAddress` varchar(45) DEFAULT NULL,
  `InstPostalAddress` varchar(45) DEFAULT NULL,
  `InstSupportTel` varchar(45) DEFAULT NULL,
  `InstSupportEmail` varchar(45) DEFAULT NULL,
  `Inst_UserId` int(11) DEFAULT NULL,
  `InstTime` datetime DEFAULT NULL COMMENT 'Time stamp',
  PRIMARY KEY (`InstId`),
  KEY `Institution_User` (`Inst_UserId`),
  CONSTRAINT `Institution_User` FOREIGN KEY (`Inst_UserId`) REFERENCES `systemusers` (`UserId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `institutionprofile`
--

LOCK TABLES `institutionprofile` WRITE;
/*!40000 ALTER TABLE `institutionprofile` DISABLE KEYS */;
/*!40000 ALTER TABLE `institutionprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insurancecos`
--

DROP TABLE IF EXISTS `insurancecos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `insurancecos` (
  `InsCoId` int(11) NOT NULL AUTO_INCREMENT,
  `InsCoName` varchar(45) DEFAULT NULL,
  `InsCoLogo` varchar(100) DEFAULT NULL,
  `InsCoslogan` varchar(45) DEFAULT NULL,
  `InsCoTel` varchar(45) DEFAULT NULL,
  `InsCoPhysicalAddress` varchar(45) DEFAULT NULL,
  `InsCoPostalAddress` varchar(45) DEFAULT NULL,
  `InsCoSupportTel` varchar(45) DEFAULT NULL,
  `InsCoSupportEmail` varchar(45) DEFAULT NULL,
  `InsCoTime` datetime DEFAULT NULL COMMENT 'Time Stamp',
  `InsCoUserId` int(11) DEFAULT NULL,
  PRIMARY KEY (`InsCoId`),
  KEY `InsCoUser` (`InsCoUserId`),
  CONSTRAINT `InsCoUser` FOREIGN KEY (`InsCoUserId`) REFERENCES `systemusers` (`UserId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insurancecos`
--

LOCK TABLES `insurancecos` WRITE;
/*!40000 ALTER TABLE `insurancecos` DISABLE KEYS */;
/*!40000 ALTER TABLE `insurancecos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insuranceinfo`
--

DROP TABLE IF EXISTS `insuranceinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `insuranceinfo` (
  `InsInfoId` int(11) NOT NULL AUTO_INCREMENT,
  `InsInfo_InsType` varchar(45) DEFAULT NULL COMMENT 'Type of Insurance',
  `InsInfo_AppProc` varchar(500) DEFAULT NULL COMMENT 'Application procedure for the type of insurance',
  `InsInfo_OnlineLink` varchar(45) DEFAULT NULL,
  `InsInfo_Req` varchar(500) DEFAULT NULL COMMENT 'Requirements',
  `InsInfo_Eligibility` varchar(45) DEFAULT NULL,
  `InsInfo_InsCov` varchar(500) DEFAULT NULL COMMENT 'Insurance Cover',
  `InsInfo_InsCoId` int(11) DEFAULT NULL,
  `InsInfo_Time` datetime DEFAULT NULL COMMENT 'Time Stamp',
  PRIMARY KEY (`InsInfoId`),
  KEY `InsuranceInfo_CompanyId` (`InsInfo_InsCoId`),
  CONSTRAINT `InsuranceInfo_CompanyId` FOREIGN KEY (`InsInfo_InsCoId`) REFERENCES `insurancecos` (`InsCoId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insuranceinfo`
--

LOCK TABLES `insuranceinfo` WRITE;
/*!40000 ALTER TABLE `insuranceinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `insuranceinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `microfinacctsinfo`
--

DROP TABLE IF EXISTS `microfinacctsinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `microfinacctsinfo` (
  `MFAcctsInfoId` int(11) NOT NULL AUTO_INCREMENT,
  `MFAcctsInfo_AcctType` varchar(100) DEFAULT NULL,
  `MFAcctsInfo_AppProc` varchar(500) DEFAULT NULL COMMENT 'Application procedure',
  `MFAcctsInfo_OnlineLink` varchar(45) DEFAULT NULL,
  `MFAcctsInfo_Eligibility` varchar(45) DEFAULT NULL,
  `MFAcctsInfo_OvrDrwnPenRate` varchar(45) DEFAULT NULL COMMENT 'Over Drawn Penalty Rate',
  `MFAcctsInfo_MinCurrAcctRate` varchar(45) DEFAULT NULL COMMENT 'Minimum Rate (Current Accounts)',
  `MFAcctsInfo_MaxCurrAcctRate` varchar(45) DEFAULT NULL COMMENT 'Maximum Rate (Current Accounts)',
  `MFAcctsInfo_MinSavAcctRate` varchar(45) DEFAULT NULL COMMENT 'Minimum Rate (Savings Accounts)',
  `MFAcctsInfo_MaxSavAcctRate` varchar(45) DEFAULT NULL COMMENT 'Maximum Rate (Savings Accounts)',
  `MFAcctsInfo_MinFixDepRate` varchar(45) DEFAULT NULL COMMENT 'Minimum Rate (Fixed Deposit Accounts)',
  `MFAcctsInfo_MaxFixDepRate` varchar(45) DEFAULT NULL COMMENT 'Maximum Rate (Fixed Deposit Accounts)',
  `MFAcctsInfo_MinBalCurAccts` varchar(45) DEFAULT NULL COMMENT 'Minimum Balance Current Accounts',
  `MFAcctsInfo_MinBalSavAccts` varchar(45) DEFAULT NULL COMMENT 'Minimum Balance Savings Accounts',
  `MFAcctsInfo_MinBalFixAccts` varchar(45) DEFAULT NULL COMMENT 'Minimum Balance Fixed Accounts',
  `MFAcctsInfo_PenBelMinCurrAccts` varchar(45) DEFAULT NULL COMMENT 'Penalty Below Minimum Current Accounts',
  `MFAcctsInfo_PenBelMinSavAccts` varchar(45) DEFAULT NULL COMMENT 'Penalty Below Minimum Savings Accounts',
  `MFAcctsInfo_PenBelMinFixAccts` varchar(45) DEFAULT NULL COMMENT 'Penalty Below Minimum Fixed Accounts',
  `MFAcctsInfo_LedgerFee` varchar(45) DEFAULT NULL COMMENT 'Ledger Fee Per Entry',
  `MFAcctsInfo_MinLedgFeePerMon` varchar(45) DEFAULT NULL COMMENT 'Minimum Ledger Fee Per Month',
  `MFAcctsInfo_InterimStatmnt` varchar(45) DEFAULT NULL COMMENT 'Charges on Interim Statements',
  `MFAcctsInfo_DupStatmnt` varchar(45) DEFAULT NULL COMMENT 'Charge on Duplicate Statements',
  `MFAcctsInfo_ClosingAcct` varchar(45) DEFAULT NULL COMMENT 'Charge on closing account',
  `MFAcctsInfo_DormAcctReactiv` varchar(45) DEFAULT NULL COMMENT 'Dormant Account Reactivation',
  `MFAcctsInfo_SavCardPassBk` varchar(45) DEFAULT NULL COMMENT 'Savings Card/ PassBook',
  `MFAcctsInfo_EFT` varchar(45) DEFAULT NULL,
  `MFAcctsInfo_TT` varchar(45) DEFAULT NULL COMMENT 'Standing Orders within Banks',
  `MFAcctsInfo_RTGS` varchar(45) DEFAULT NULL,
  `MFAcctsInfo_StandOrdinBank` varchar(45) DEFAULT NULL,
  `MFAcctsInfo_StandOrdoutBank` varchar(45) DEFAULT NULL COMMENT 'Standing Orders to other Banks',
  `MFAcctsInfo_StandOrdUnpaid` varchar(45) DEFAULT NULL COMMENT 'Standing Orders Unpaid',
  `MFAcctsInfo_CertOfBal` varchar(45) DEFAULT NULL COMMENT 'Certificate of Balance',
  `MFAcctsInfo_AudConfirm` varchar(45) DEFAULT NULL COMMENT 'Audit Confirmation',
  `MFAcctsInfo_LetOfIntro` varchar(45) DEFAULT NULL COMMENT 'Letter of Introduction',
  `MFAcctsInfo_Salary` varchar(45) DEFAULT NULL,
  `MFAcctsInfo_SchFees` varchar(45) DEFAULT NULL COMMENT 'School Fees charges',
  `MFAcctsInfo_URAColl` varchar(45) DEFAULT NULL COMMENT 'URA Collection',
  `MFAcctsInfo_UtilColl` varchar(45) DEFAULT NULL COMMENT 'Utility Collection',
  `MFAcctsInfo_SafeCust` varchar(45) DEFAULT NULL COMMENT 'Safe Custody',
  `MFAcctsInfo_SafeCustAccess` varchar(45) DEFAULT NULL COMMENT 'Safe Custody Access',
  `MFAcctsInfo_CheqBkPerLf` varchar(45) DEFAULT NULL COMMENT 'Charges on Cheque Book per leaf',
  `MFAcctsInfo_CntCheqLf` varchar(45) DEFAULT NULL COMMENT 'Counter Cheque Leaf',
  `MFAcctsInfo_RetCheqInsfFnds` varchar(45) DEFAULT NULL COMMENT 'Returned Cheque Insufficient Funds',
  `MFAcctsInfo_RetCheqEffNtClrd` varchar(45) DEFAULT NULL COMMENT 'Returned Cheque Effects Not Cleared',
  `MFAcctsInfo_RetCheqTech` varchar(45) DEFAULT NULL COMMENT 'Returned Cheque Technical',
  `MFAcctsInfo_RetCheqOthrBank` varchar(45) DEFAULT NULL COMMENT 'Returned Cheque Other Banks',
  `MFAcctsInfo_StopPayOrdl` varchar(45) DEFAULT NULL COMMENT 'Stop Payment Orders',
  `MFAcctsInfo_PostDateCheq` varchar(45) DEFAULT NULL COMMENT 'Posted Dated Cheque',
  `MFAcctsInfo_CheqColl` varchar(45) DEFAULT NULL COMMENT 'Cheques Collection',
  `MFAcctsInfo_DraftCus` varchar(45) DEFAULT NULL COMMENT 'Drafts Customer',
  `MFAcctsInfo_DraftCancel` varchar(45) DEFAULT NULL COMMENT 'Drafts Cancellation',
  `MFAcctsInfo_CashWith` varchar(45) DEFAULT NULL COMMENT 'Cash Withdrawal',
  `MFAcctsInfo_CashDep` varchar(45) DEFAULT NULL COMMENT 'Cash Deposit',
  `MFAcctsInfo_CoinDep` varchar(45) DEFAULT NULL COMMENT 'Coin Deposit',
  `MFAcctsInfo_BulkCashWith` varchar(45) DEFAULT NULL COMMENT 'Bulk Cash Deposit',
  `MFAcctsInfo_BulkCashDep` varchar(45) DEFAULT NULL COMMENT 'Bulk Cash Withdrawal',
  `MFAcctsInfo_MicroFinId` int(11) DEFAULT NULL COMMENT 'Ref bank',
  `MicroFinAcctsInfo_Time` datetime DEFAULT NULL COMMENT 'Time Stamo',
  PRIMARY KEY (`MFAcctsInfoId`),
  KEY `MicroFinanceAccts_MicroFinId` (`MFAcctsInfo_MicroFinId`),
  CONSTRAINT `MicroFinanceAccts_MicroFinId` FOREIGN KEY (`MFAcctsInfo_MicroFinId`) REFERENCES `microfinances` (`MicroFinId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `microfinacctsinfo`
--

LOCK TABLES `microfinacctsinfo` WRITE;
/*!40000 ALTER TABLE `microfinacctsinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `microfinacctsinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `microfinances`
--

DROP TABLE IF EXISTS `microfinances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `microfinances` (
  `MicroFinId` int(11) NOT NULL AUTO_INCREMENT,
  `MicroFinName` varchar(45) DEFAULT NULL,
  `MicroFinLogo` varchar(100) DEFAULT NULL,
  `MicroFinSlogan` varchar(45) DEFAULT NULL,
  `MicroFinTel` varchar(45) DEFAULT NULL,
  `MicroFinPhysicalAddress` varchar(45) DEFAULT NULL,
  `MicroFinPostalAddress` varchar(45) DEFAULT NULL,
  `MicroFinSupportTel` varchar(45) DEFAULT NULL,
  `MicroFinSupportEmail` varchar(45) DEFAULT NULL,
  `MicroFinancesTime` datetime DEFAULT NULL COMMENT 'Time Stamp',
  `MicroFinUserId` int(11) DEFAULT NULL,
  PRIMARY KEY (`MicroFinId`),
  KEY `MicroFinUser` (`MicroFinUserId`),
  CONSTRAINT `MicroFinUser` FOREIGN KEY (`MicroFinUserId`) REFERENCES `systemusers` (`UserId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `microfinances`
--

LOCK TABLES `microfinances` WRITE;
/*!40000 ALTER TABLE `microfinances` DISABLE KEYS */;
/*!40000 ALTER TABLE `microfinances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `microfinatminfo`
--

DROP TABLE IF EXISTS `microfinatminfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `microfinatminfo` (
  `MFATMInfoid` int(11) NOT NULL AUTO_INCREMENT,
  `MFATMInfo_ATMAppProc` varchar(500) DEFAULT NULL COMMENT 'procedure for applying for the ATM',
  `MFATMInfo_OnlineLink` varchar(45) DEFAULT NULL COMMENT 'Link for applying online',
  `MFATMInfo_ATMReplacProc` varchar(500) DEFAULT NULL COMMENT 'ATM Replacement procedure',
  `MFATMInfo_Offers` varchar(100) DEFAULT NULL COMMENT 'Extra offers that come along with acquiring the ATM',
  `MFATMInfo_Restrict` varchar(100) DEFAULT NULL COMMENT 'restrictions on ATM',
  `MFATMInfo_IssCharge` int(11) DEFAULT NULL COMMENT 'ATM Issuing charge',
  `MFATMInfo_WithCharge` int(11) DEFAULT NULL COMMENT 'ATM withdraw charge',
  `MFATMInfo_DepoCharge` int(11) DEFAULT NULL COMMENT 'ATM Deposit Charge',
  `MFATMInfo_VISAsupp` binary(2) DEFAULT NULL COMMENT 'whether the ATM supports VISA',
  `MFATMInfo_AddServ` varchar(100) DEFAULT NULL COMMENT 'Additional services offered with the ATM',
  `MFATMInfo_Img` varchar(45) DEFAULT NULL COMMENT 'Snap shot of the ATM card',
  `MFATMInfo_ExpePrd` varchar(45) DEFAULT NULL COMMENT 'The expiration period of the ATM',
  `MFATMInfo_AppDur` varchar(45) DEFAULT NULL COMMENT 'Duration it takes to apply for the ATM',
  `MFATMInfo_Lctns` varchar(45) DEFAULT NULL COMMENT 'ATM location centres',
  `MFATMInfo_MicroFinId` int(11) DEFAULT NULL COMMENT 'bank id for which the atm information is',
  `MicroFinATMInfoTime` datetime DEFAULT NULL COMMENT 'Time Stamp',
  `MicroFinInfo_UncollectDest` varchar(45) DEFAULT NULL COMMENT 'Uncollected card destroyed',
  PRIMARY KEY (`MFATMInfoid`),
  KEY `ATMinformation_MicroFinances` (`MFATMInfo_MicroFinId`),
  CONSTRAINT `ATMinformation_MicroFinances` FOREIGN KEY (`MFATMInfo_MicroFinId`) REFERENCES `microfinances` (`MicroFinId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `microfinatminfo`
--

LOCK TABLES `microfinatminfo` WRITE;
/*!40000 ALTER TABLE `microfinatminfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `microfinatminfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `microfinforeignexinfo`
--

DROP TABLE IF EXISTS `microfinforeignexinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `microfinforeignexinfo` (
  `MFFnExInfoId` int(11) NOT NULL AUTO_INCREMENT,
  `MFFnExInfo_CurrTypes` varchar(100) DEFAULT NULL COMMENT 'Currency Types supported',
  `MFFnExInfo_AppProc` varchar(500) DEFAULT NULL COMMENT 'Application procedure',
  `MFFnExInfo_OnlineLink` varchar(45) DEFAULT NULL,
  `MFFnExInfo_Eligibility` varchar(45) DEFAULT NULL,
  `MFFnExInfo_MinBal` varchar(45) DEFAULT NULL COMMENT 'Minimum Balance on account',
  `MFFnExInfo_PenBelMin` varchar(45) DEFAULT NULL COMMENT 'Penalty Below Minmum',
  `MFFnExInfo_LedFeePerEnt` varchar(45) DEFAULT NULL COMMENT 'Ledger Fee Per Entry',
  `MFFnExchInfo_MinLedFeePerMon` varchar(45) DEFAULT NULL COMMENT 'Minimum Ledger Fee Per Month',
  `MFFnExInfo_AcctMgtServFee` varchar(45) DEFAULT NULL COMMENT 'Account Management Service Fee',
  `MFFnExInfo_CashDep` varchar(45) DEFAULT NULL COMMENT 'Cash Deposit',
  `MFFnExInfo_Withdraw` varchar(45) DEFAULT NULL,
  `MFFnExInfo_Stat` varchar(45) DEFAULT NULL COMMENT 'Statement charges',
  `MFFnExInfo_AddStat` varchar(45) DEFAULT NULL COMMENT 'Addtional Statement Charges',
  `MFFnExInfo_OutFnTxCus` varchar(45) DEFAULT NULL COMMENT 'Out Foreign Transfer Customers',
  `MFFnExInfo_OutFnTxNCus` varchar(45) DEFAULT NULL COMMENT 'Out Foreign transfer non customers',
  `MFFnExInfo_InFnTxCus` varchar(45) DEFAULT NULL COMMENT 'In foreign transfer customers',
  `MFFnExInfo_InFnTxNCus` varchar(45) DEFAULT NULL COMMENT 'In foreign transfer non customers',
  `MFFnExInfo_SaleTrvCheq` varchar(45) DEFAULT NULL COMMENT 'Sale of travellers cheque',
  `MFFnExInfo_LCOACCC` varchar(45) DEFAULT NULL COMMENT 'Lc Opening Admission Commission Cash covered',
  `MFFnExInfo_LCOACNCC` varchar(45) DEFAULT NULL COMMENT 'LC Opening Admission Commision No Cash Covered',
  `MfFnExInfo_LCArrgmtFee` varchar(45) DEFAULT NULL COMMENT 'LC Arrangement Fees',
  `MFFnExInfo_LCPaySetCom` varchar(45) DEFAULT NULL COMMENT 'Lc Payment Settlement commission',
  `MFFnExInfo_LCAmmndts` varchar(45) DEFAULT NULL COMMENT 'Lc ammendments',
  `MFFnExInfo_FnDrafts` varchar(45) DEFAULT NULL COMMENT 'Foreign Drafts',
  `MFFnExInfo_LetOfGrantArrngtFee` varchar(45) DEFAULT NULL COMMENT 'Letter of guarantee arrangement fees',
  `MFFnExInfo_LGSOTC` varchar(45) DEFAULT NULL COMMENT 'LG Secured Other Than Cash',
  `MFFnExInfo_LGCWCM` varchar(45) DEFAULT NULL COMMENT 'LG Covered with cash margin',
  `MFFnExInfo_LGUnSec` varchar(45) DEFAULT NULL COMMENT 'LG Unsecured',
  `MFFnExInfo_MicroFinId` int(11) DEFAULT NULL,
  `MFFnExInfo_Time` datetime DEFAULT NULL COMMENT 'Time Stamp',
  PRIMARY KEY (`MFFnExInfoId`),
  KEY `ForeignExchange_MicroFinID` (`MFFnExInfo_MicroFinId`),
  CONSTRAINT `ForeignExchange_MicroFinID` FOREIGN KEY (`MFFnExInfo_MicroFinId`) REFERENCES `microfinances` (`MicroFinId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `microfinforeignexinfo`
--

LOCK TABLES `microfinforeignexinfo` WRITE;
/*!40000 ALTER TABLE `microfinforeignexinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `microfinforeignexinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `microfinloaninfo`
--

DROP TABLE IF EXISTS `microfinloaninfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `microfinloaninfo` (
  `MFLoanInfoId` int(11) NOT NULL AUTO_INCREMENT,
  `MFLoanInfo_LoanTypes` varchar(60) DEFAULT NULL COMMENT 'Available loan types',
  `MFLoanInfo_LoanAppProc` varchar(500) DEFAULT NULL,
  `MFLoanInfo_OnlineLink` varchar(45) DEFAULT NULL,
  `MFLoanInfo_LoanEligibility` varchar(100) DEFAULT NULL,
  `MFLoanInfo_LoanOffers` varchar(100) DEFAULT NULL,
  `MFLoanInfo_PrimeLendRate` varchar(45) DEFAULT NULL COMMENT 'Prime Lending Rate',
  `MFLoanInfo_MaxLendRate` varchar(45) DEFAULT NULL COMMENT 'Maximum Lending Rate',
  `MFLoanInfo_MinLendRate` varchar(45) DEFAULT NULL COMMENT 'Minimum Lending Rate',
  `MFLoanInfo_LoanAdvAppFee` varchar(45) DEFAULT NULL COMMENT 'Loan Advance Application Fee',
  `MFLoanInfo_LoanAdvComitFee` varchar(45) DEFAULT NULL COMMENT 'Loan Advance Commitment Fee',
  `MFLoanInfo_LoanAdvArrgmtFee` varchar(45) DEFAULT NULL COMMENT 'Loan Advance arrangement fee',
  `MFLoanInfo_LoanAdvProcesFee` varchar(45) DEFAULT NULL COMMENT 'Loan advance Processing Fee',
  `MFLoanInfo_LoanAdvMonFee` varchar(45) DEFAULT NULL COMMENT 'Loan Advance Monitoring fee',
  `MFLoanInfo_InsuranceFee` varchar(45) DEFAULT NULL,
  `MFLoanInfo_LegalFee` varchar(45) DEFAULT NULL,
  `MFLoanInfo_LoanAdvFacRenw` varchar(45) DEFAULT NULL COMMENT 'Loan Advance Facility Renewal',
  `MFLoanInfo_LoanAdvFacRest` varchar(45) DEFAULT NULL COMMENT 'Loan Advance Facility Restructuring',
  `MFLoanInfo_DisSecDos` varchar(45) DEFAULT NULL COMMENT 'Discharge Security Documents',
  `MFLoanInfo_MicroFinId` int(11) DEFAULT NULL,
  `MicroFinLoanInfo_Time` datetime DEFAULT NULL COMMENT 'Time Stamp',
  PRIMARY KEY (`MFLoanInfoId`),
  KEY `LoanInformation_MicroFin` (`MFLoanInfo_MicroFinId`),
  CONSTRAINT `LoanInformation_MicroFin` FOREIGN KEY (`MFLoanInfo_MicroFinId`) REFERENCES `microfinances` (`MicroFinId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `microfinloaninfo`
--

LOCK TABLES `microfinloaninfo` WRITE;
/*!40000 ALTER TABLE `microfinloaninfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `microfinloaninfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `microfinmortinfo`
--

DROP TABLE IF EXISTS `microfinmortinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `microfinmortinfo` (
  `MFMortInfoId` int(11) NOT NULL AUTO_INCREMENT,
  `MFMortInfo_MortTypes` varchar(100) DEFAULT NULL COMMENT 'Mortgage Types',
  `MFMortInfo_AppProc` varchar(500) DEFAULT NULL COMMENT 'application procedure',
  `MFMortInfo_OnlineLink` varchar(45) DEFAULT NULL,
  `MFMortInfo_IntRate` varchar(45) DEFAULT NULL COMMENT 'Interest Rate',
  `MFMortInfo_LVP` varchar(45) DEFAULT NULL COMMENT 'Loan to Value Percentage',
  `MFMortInfo_RepayFee` varchar(45) DEFAULT NULL COMMENT 'Repayment Fee',
  `MFMortInfo_MortFeat` varchar(100) DEFAULT NULL COMMENT 'Mortgage Features',
  `MFMortInfo_MaxLoan` varchar(45) DEFAULT NULL COMMENT 'Maximum loan',
  `MFMortInfo_MinLoan` varchar(45) DEFAULT NULL COMMENT 'Minimum Loan',
  `MFMortInfo_OtherPay` varchar(100) DEFAULT NULL COMMENT 'Other Payments',
  `MFMortInfo_MicroFinId` int(11) DEFAULT NULL,
  `MFMortInfo_Time` datetime DEFAULT NULL COMMENT 'Time Stamp',
  PRIMARY KEY (`MFMortInfoId`),
  KEY `Mortages_MicroFinanceId` (`MFMortInfo_MicroFinId`),
  CONSTRAINT `Mortages_MicroFinanceId` FOREIGN KEY (`MFMortInfo_MicroFinId`) REFERENCES `microfinances` (`MicroFinId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `microfinmortinfo`
--

LOCK TABLES `microfinmortinfo` WRITE;
/*!40000 ALTER TABLE `microfinmortinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `microfinmortinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `microfinusers`
--

DROP TABLE IF EXISTS `microfinusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `microfinusers` (
  `MicroFinUserId` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id to reference the banks user',
  `MicroFinUserName` varchar(45) DEFAULT NULL COMMENT 'User Name for logging into the bank''s account',
  `MicroFinUserPassword` varchar(45) DEFAULT NULL COMMENT 'Bank login password',
  `MicroFinUserEmail` varchar(45) DEFAULT NULL COMMENT 'Email Id of the bank user',
  `MicroFinUser_MicroFinId` int(11) DEFAULT NULL COMMENT 'Id of the bank the user is attached to',
  PRIMARY KEY (`MicroFinUserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `microfinusers`
--

LOCK TABLES `microfinusers` WRITE;
/*!40000 ALTER TABLE `microfinusers` DISABLE KEYS */;
/*!40000 ALTER TABLE `microfinusers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mmtransinfo`
--

DROP TABLE IF EXISTS `mmtransinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mmtransinfo` (
  `MMTransInfoId` int(11) NOT NULL AUTO_INCREMENT,
  `MMTransInfocol_TransType` varchar(45) DEFAULT NULL COMMENT 'Transaction type',
  `MMTransInfo_AmntRange` varchar(45) DEFAULT NULL COMMENT 'Amount for transaction',
  `MMTransInfo_TransCost` varchar(45) DEFAULT NULL COMMENT 'Cost of transaction',
  `MMTransInfo_MMAgentId` int(11) DEFAULT NULL,
  `MMTransInfo_UserId` int(11) DEFAULT NULL COMMENT 'System user that updated the record',
  `MMTransInfo_Time` datetime DEFAULT NULL COMMENT 'Time Stamp',
  PRIMARY KEY (`MMTransInfoId`),
  KEY `MMAgentID` (`MMTransInfo_MMAgentId`),
  KEY `MMTransUserID` (`MMTransInfo_UserId`),
  CONSTRAINT `MMAgentID` FOREIGN KEY (`MMTransInfo_MMAgentId`) REFERENCES `mobilemoneyagents` (`MobMonAgentId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `MMTransUserID` FOREIGN KEY (`MMTransInfo_UserId`) REFERENCES `systemusers` (`UserId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mmtransinfo`
--

LOCK TABLES `mmtransinfo` WRITE;
/*!40000 ALTER TABLE `mmtransinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `mmtransinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mobilemoneyagents`
--

DROP TABLE IF EXISTS `mobilemoneyagents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mobilemoneyagents` (
  `MobMonAgentId` int(11) NOT NULL AUTO_INCREMENT,
  `MobMonAgent_AgntName` varchar(45) DEFAULT NULL,
  `MobMonAgent_AgntLogo` varchar(45) DEFAULT NULL,
  `MobMonAgent_Time` datetime DEFAULT NULL COMMENT 'Time Stamp',
  PRIMARY KEY (`MobMonAgentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mobilemoneyagents`
--

LOCK TABLES `mobilemoneyagents` WRITE;
/*!40000 ALTER TABLE `mobilemoneyagents` DISABLE KEYS */;
/*!40000 ALTER TABLE `mobilemoneyagents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `moneytansferagents`
--

DROP TABLE IF EXISTS `moneytansferagents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `moneytansferagents` (
  `MonTrnsAgId` int(11) NOT NULL AUTO_INCREMENT,
  `MonTrnsName` varchar(45) DEFAULT NULL,
  `MonTrnsLogo` varchar(100) DEFAULT NULL,
  `MonTrnsslogan` varchar(45) DEFAULT NULL,
  `MonTrnsTel` varchar(45) DEFAULT NULL,
  `MonTrnsPhysicalAddress` varchar(45) DEFAULT NULL,
  `MonTrnsPostalAddress` varchar(45) DEFAULT NULL,
  `MonTrnsSupportTel` varchar(45) DEFAULT NULL,
  `MonTrnsSupportEmail` varchar(45) DEFAULT NULL,
  `MonTrnsTime` datetime DEFAULT NULL COMMENT 'Time Stamp',
  `MonTrnsUserId` int(11) DEFAULT NULL,
  PRIMARY KEY (`MonTrnsAgId`),
  KEY `MonTransUser` (`MonTrnsUserId`),
  CONSTRAINT `MonTransUser` FOREIGN KEY (`MonTrnsUserId`) REFERENCES `systemusers` (`UserId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moneytansferagents`
--

LOCK TABLES `moneytansferagents` WRITE;
/*!40000 ALTER TABLE `moneytansferagents` DISABLE KEYS */;
/*!40000 ALTER TABLE `moneytansferagents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `moneytransinfo`
--

DROP TABLE IF EXISTS `moneytransinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `moneytransinfo` (
  `MonTransInfoId` int(11) NOT NULL AUTO_INCREMENT,
  `MonTransInfo_Dest` varchar(45) DEFAULT NULL COMMENT 'Destination',
  `MonTransInfo_TransType` binary(2) DEFAULT NULL COMMENT 'whether receiving or sending',
  `MonTransInfo_Req` varchar(100) DEFAULT NULL COMMENT 'Requirements needed from customer',
  `MonTransInfo_TransCharge` varchar(45) DEFAULT NULL,
  `MonTransInfocol_AgentId` int(11) DEFAULT NULL,
  `MonTransInfo_Time` datetime DEFAULT NULL COMMENT 'Time Stamp',
  PRIMARY KEY (`MonTransInfoId`),
  KEY `TransInfo_AgentId` (`MonTransInfocol_AgentId`),
  CONSTRAINT `TransInfo_AgentId` FOREIGN KEY (`MonTransInfocol_AgentId`) REFERENCES `moneytansferagents` (`MonTrnsAgId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moneytransinfo`
--

LOCK TABLES `moneytransinfo` WRITE;
/*!40000 ALTER TABLE `moneytransinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `moneytransinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `moneytranspointsofsale`
--

DROP TABLE IF EXISTS `moneytranspointsofsale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `moneytranspointsofsale` (
  `MonTrnsPOSId` int(11) NOT NULL AUTO_INCREMENT,
  `MonTrnsPOS_Name` varchar(45) DEFAULT NULL,
  `MonTrnsPOS_PhysAdd` varchar(45) DEFAULT NULL COMMENT 'Physical Address',
  `MonTrnsPOS_InstId` int(11) DEFAULT NULL COMMENT 'Financial institution Id the point of sale belongs to',
  `MonTrnsPOS_AgId` int(11) DEFAULT NULL COMMENT 'the money transfer agent the point of sale belongs to',
  PRIMARY KEY (`MonTrnsPOSId`),
  KEY `Agent` (`MonTrnsPOS_AgId`),
  KEY `MicroFin_MoneyTransferAgent` (`MonTrnsPOS_InstId`),
  CONSTRAINT `Agent` FOREIGN KEY (`MonTrnsPOS_AgId`) REFERENCES `moneytansferagents` (`MonTrnsAgId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Bank_MoneyTransferAgent` FOREIGN KEY (`MonTrnsPOS_InstId`) REFERENCES `banks` (`BankId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FxBureau_MoneyTransferAgent` FOREIGN KEY (`MonTrnsPOS_InstId`) REFERENCES `forexbureaus` (`FxBureauId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `MicroFin_MoneyTransferAgent` FOREIGN KEY (`MonTrnsPOS_InstId`) REFERENCES `microfinances` (`MicroFinId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moneytranspointsofsale`
--

LOCK TABLES `moneytranspointsofsale` WRITE;
/*!40000 ALTER TABLE `moneytranspointsofsale` DISABLE KEYS */;
/*!40000 ALTER TABLE `moneytranspointsofsale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saccoloaninfo`
--

DROP TABLE IF EXISTS `saccoloaninfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `saccoloaninfo` (
  `SACCOLoanInfoId` int(11) NOT NULL AUTO_INCREMENT,
  `SACCOLoanInfo_LoanTypes` varchar(60) DEFAULT NULL COMMENT 'Available loan types',
  `SACCOLoanInfo_LoanAppProc` varchar(500) DEFAULT NULL,
  `SACCOLoanInfo_OnlineLink` varchar(45) DEFAULT NULL,
  `SACCOLoanInfo_LoanEligibility` varchar(100) DEFAULT NULL,
  `SACCOLoanInfo_LoanOffers` varchar(100) DEFAULT NULL,
  `SACCOLoanInfo_PrimeLendRate` varchar(45) DEFAULT NULL COMMENT 'Prime Lending Rate',
  `SACCOLoanInfo_MaxLendRate` varchar(45) DEFAULT NULL COMMENT 'Maximum Lending Rate',
  `SACCOLoanInfo_MinLendRate` varchar(45) DEFAULT NULL COMMENT 'Minimum Lending Rate',
  `SACCOLoanInfo_LoanAdvAppFee` varchar(45) DEFAULT NULL COMMENT 'Loan Advance Application Fee',
  `SACCOLoanInfo_LoanAdvComitFee` varchar(45) DEFAULT NULL COMMENT 'Loan Advance Commitment Fee',
  `SACCOLoanInfo_LoanAdvArrgmtFee` varchar(45) DEFAULT NULL COMMENT 'Loan Advance arrangement fee',
  `SACCOLoanInfo_LoanAdvProcesFee` varchar(45) DEFAULT NULL COMMENT 'Loan advance Processing Fee',
  `SACCOLoanInfo_LoanAdvMonFee` varchar(45) DEFAULT NULL COMMENT 'Loan Advance Monitoring fee',
  `SACCOLoanInfo_InsuranceFee` varchar(45) DEFAULT NULL,
  `SACCOLoanInfo_LegalFee` varchar(45) DEFAULT NULL,
  `SACCOLoanInfo_LoanAdvFacRenw` varchar(45) DEFAULT NULL COMMENT 'Loan Advance Facility Renewal',
  `SACCOLoanInfo_LoanAdvFacRest` varchar(45) DEFAULT NULL COMMENT 'Loan Advance Facility Restructuring',
  `SACCOLoanInfo_DisSecDos` varchar(45) DEFAULT NULL COMMENT 'Discharge Security Documents',
  `SACCOLoanInfo_SACCOId` int(11) DEFAULT NULL,
  `SACCOLoanInfo_Time` datetime DEFAULT NULL COMMENT 'Time Stamp',
  PRIMARY KEY (`SACCOLoanInfoId`),
  KEY `SACCOLoans_SACCOId` (`SACCOLoanInfo_SACCOId`),
  CONSTRAINT `SACCOLoans_SACCOId` FOREIGN KEY (`SACCOLoanInfo_SACCOId`) REFERENCES `saccos` (`SACCOId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saccoloaninfo`
--

LOCK TABLES `saccoloaninfo` WRITE;
/*!40000 ALTER TABLE `saccoloaninfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `saccoloaninfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saccos`
--

DROP TABLE IF EXISTS `saccos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `saccos` (
  `SACCOId` int(11) NOT NULL AUTO_INCREMENT,
  `SACCOName` varchar(45) DEFAULT NULL,
  `SACCOLogo` varchar(100) DEFAULT NULL,
  `SACCOSlogan` varchar(45) DEFAULT NULL,
  `SACCOTel` varchar(45) DEFAULT NULL,
  `SACCOPhysicalAddress` varchar(45) DEFAULT NULL,
  `SACCOPostalAddress` varchar(45) DEFAULT NULL,
  `SACCOSupportTel` varchar(45) DEFAULT NULL,
  `SACCOSupportEmail` varchar(45) DEFAULT NULL,
  `SACCOTime` datetime DEFAULT NULL COMMENT 'Time Stamp',
  `SACCOUserId` int(11) DEFAULT NULL,
  PRIMARY KEY (`SACCOId`),
  KEY `SACCOUser` (`SACCOUserId`),
  CONSTRAINT `SACCOUser` FOREIGN KEY (`SACCOUserId`) REFERENCES `systemusers` (`UserId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saccos`
--

LOCK TABLES `saccos` WRITE;
/*!40000 ALTER TABLE `saccos` DISABLE KEYS */;
/*!40000 ALTER TABLE `saccos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saccousers`
--

DROP TABLE IF EXISTS `saccousers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `saccousers` (
  `SACCOUserId` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id to reference the banks user',
  `SACCOUserName` varchar(45) DEFAULT NULL COMMENT 'User Name for logging into the bank''s account',
  `SACCOUserPassword` varchar(45) DEFAULT NULL COMMENT 'Bank login password',
  `SACCOUserEmail` varchar(45) DEFAULT NULL COMMENT 'Email Id of the bank user',
  `SACCOUser_SACCOId` int(11) DEFAULT NULL COMMENT 'Id of the bank the user is attached to',
  `SACCOUser_Time` datetime DEFAULT NULL COMMENT 'Time Stamp',
  PRIMARY KEY (`SACCOUserId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saccousers`
--

LOCK TABLES `saccousers` WRITE;
/*!40000 ALTER TABLE `saccousers` DISABLE KEYS */;
INSERT INTO `saccousers` VALUES (1,'LukayaSacco','asdfs@!as','sacco@lukaya.com',2,NULL);
/*!40000 ALTER TABLE `saccousers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securitiesinfo`
--

DROP TABLE IF EXISTS `securitiesinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `securitiesinfo` (
  `SecuritiesInfoId` int(11) NOT NULL AUTO_INCREMENT,
  `SecInfo_CompName` varchar(45) DEFAULT NULL COMMENT 'CompanyName',
  `SecInfo_SharePx` varchar(45) DEFAULT NULL COMMENT 'Share Price',
  `SecInfo_Date` date DEFAULT NULL,
  `SecInfo_UserId` int(11) DEFAULT NULL COMMENT 'The system user that updated the information',
  PRIMARY KEY (`SecuritiesInfoId`),
  KEY `User_Updated` (`SecInfo_UserId`),
  CONSTRAINT `User_Updated` FOREIGN KEY (`SecInfo_UserId`) REFERENCES `systemusers` (`UserId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitiesinfo`
--

LOCK TABLES `securitiesinfo` WRITE;
/*!40000 ALTER TABLE `securitiesinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `securitiesinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `senteyousers`
--

DROP TABLE IF EXISTS `senteyousers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `senteyousers` (
  `StUserId` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary key ID generated by the db automatically',
  `StUserCode` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT 'Extra Security details for Sessions tracking',
  `StUserName` varchar(45) CHARACTER SET utf8 NOT NULL COMMENT 'User''s Name, that apperats on the dashboard',
  `StUserPassword` varchar(45) CHARACTER SET utf8 NOT NULL COMMENT 'User''s Password',
  `StUserEmail` varchar(45) CHARACTER SET utf8 NOT NULL COMMENT 'The admin''s email address as of the senteyo domain!',
  `active` int(1) NOT NULL DEFAULT '0' COMMENT 'Status weather account has been verified via email',
  `hash` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT 'Used for email verification',
  `StUserTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Time User Last Logged in.',
  `StUserType` varchar(15) CHARACTER SET utf8 NOT NULL DEFAULT 'Manager' COMMENT 'Type of User to use the system',
  PRIMARY KEY (`StUserId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COMMENT='Table to hold the credentials of Senteyo''s users, admins and managers';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `senteyousers`
--

LOCK TABLES `senteyousers` WRITE;
/*!40000 ALTER TABLE `senteyousers` DISABLE KEYS */;
INSERT INTO `senteyousers` VALUES (1,'','Castelli','moralfibre','smujjuzi@senteyo.com',1,'c67e103b0761e60683e83c559be18d40','2015-11-27 09:35:10','Admin'),(2,'','Emma','excaliber','emupuya@senteyo.com',0,'123e103b0761e60683e83c559be18d40','2015-11-27 09:39:29','Admin');
/*!40000 ALTER TABLE `senteyousers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `systemusers`
--

DROP TABLE IF EXISTS `systemusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `systemusers` (
  `UserId` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id to reference the banks user',
  `UserName` varchar(45) DEFAULT NULL COMMENT 'User Name for logging into the banks account',
  `UserPassword` varchar(45) DEFAULT NULL COMMENT 'Bank login password',
  `UserEmail` varchar(45) DEFAULT NULL COMMENT 'Email Id of the bank user',
  `UserType` varchar(45) DEFAULT NULL COMMENT 'Id of the bank the user is attached to',
  `SystemUsersTime` datetime DEFAULT NULL COMMENT 'Time of creating the user',
  PRIMARY KEY (`UserId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `systemusers`
--

LOCK TABLES `systemusers` WRITE;
/*!40000 ALTER TABLE `systemusers` DISABLE KEYS */;
INSERT INTO `systemusers` VALUES (1,'stanbic','r@efzmQvwt2i','emupuya@gmail.com','bank','2015-07-11 09:22:59'),(3,'barclays','ry2bkl-dQw','support@barclays.com','bank','2015-07-11 09:41:38'),(4,'ghghg','ra6#Kgumzf','dj@yh.com','fjjf','2015-10-24 16:12:43'),(5,'ttyeyeye','6rijm%ziAf','dhfhf@ghh.com','dhshs','2015-10-24 16:13:53'),(6,'ttyeyeye','4Xbujjfph=c','dhfhf@ghh.com','dhshs','2015-10-24 16:16:47');
/*!40000 ALTER TABLE `systemusers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `useraccessrights`
--

DROP TABLE IF EXISTS `useraccessrights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `useraccessrights` (
  `UserAccessRightsId` int(11) NOT NULL AUTO_INCREMENT,
  `UsrAcsRtsUserType` varchar(45) DEFAULT NULL,
  `UsrAcsRtsFunction` varchar(45) DEFAULT NULL,
  `UsrAcsRtsStatus` tinyint(1) DEFAULT NULL,
  `UsrAcsRtsTime` datetime DEFAULT NULL COMMENT 'Time Stamp',
  PRIMARY KEY (`UserAccessRightsId`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `useraccessrights`
--

LOCK TABLES `useraccessrights` WRITE;
/*!40000 ALTER TABLE `useraccessrights` DISABLE KEYS */;
INSERT INTO `useraccessrights` VALUES (1,'editor','Ads Management',1,'2015-05-07 02:34:50'),(3,'microfinance','Loan Management',0,'2015-05-07 04:40:59'),(4,'bank','Loan Management',0,'2015-05-07 04:41:48'),(5,'bank','Loan Management',0,'2015-05-07 04:52:50'),(6,'sacco','Loan Management',0,'2015-05-07 04:53:07'),(7,'bank','Articles Management',0,'2015-05-07 04:53:43'),(8,'manager','Mobile Money Info Management',0,'2015-05-07 04:54:22'),(10,'editor','Ads Management',1,'2015-05-07 05:05:25'),(11,'microfinance','Loan Management',1,'2015-05-07 05:21:07'),(12,'editor','Ads Management',0,'2015-05-07 05:21:46'),(13,'bank','Articles Management',1,'2015-07-11 09:48:06'),(14,'editor','Article Management',1,'2015-07-15 18:56:10'),(15,'bank','Articles Management',1,'2015-07-15 18:59:39'),(16,'sacco','Loans Management',1,'2015-07-15 19:11:48'),(17,'sacco','Loans Management',0,'2015-07-15 19:11:54'),(18,'bank','Articles Management',1,'2015-07-15 19:12:05'),(19,'bank','Articles Management',1,'2015-07-15 19:12:09'),(20,'bank','Articles Management',0,'2015-07-15 20:50:54'),(21,'bank','Loan Management',1,'2015-07-15 20:51:41'),(22,'bank','Articles Management',1,'2015-07-15 20:52:25');
/*!40000 ALTER TABLE `useraccessrights` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-12-16 13:22:54
