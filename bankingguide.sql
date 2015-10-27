-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 27, 2015 at 06:19 AM
-- Server version: 5.5.24-log
-- PHP Version: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bankingguide`
--

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE IF NOT EXISTS `ads` (
  `AdId` int(11) NOT NULL,
  `AdURL` varchar(45) DEFAULT NULL,
  `AdName` varchar(45) DEFAULT NULL,
  `AdCoName` varchar(45) DEFAULT NULL,
  `AdPic` varchar(45) DEFAULT NULL,
  `AdPanelId` varchar(45) DEFAULT NULL COMMENT 'the panel on which the Ad is to display',
  `Ad_UserId` int(11) DEFAULT NULL COMMENT 'System User that added the Ad',
  `Ads_Time` datetime DEFAULT NULL COMMENT 'Time Stamp',
  PRIMARY KEY (`AdId`),
  KEY `SystemUserId_idx` (`Ad_UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `ArticleId` int(11) NOT NULL,
  `ArticleDate` datetime DEFAULT NULL,
  `ArticleCategory` varchar(45) DEFAULT NULL,
  `ArticlePic` varchar(45) DEFAULT NULL COMMENT 'Article Picture',
  `ArticleTitle` varchar(45) DEFAULT NULL,
  `ArticleContent` varchar(1000) DEFAULT NULL,
  `ArticlePoster` int(11) DEFAULT NULL,
  `ArticleApproved` int(11) DEFAULT NULL COMMENT 'Time Stamp',
  PRIMARY KEY (`ArticleId`),
  KEY `ArticleOwner` (`ArticlePoster`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`ArticleId`, `ArticleDate`, `ArticleCategory`, `ArticlePic`, `ArticleTitle`, `ArticleContent`, `ArticlePoster`, `ArticleApproved`) VALUES
(1, '2015-08-01 02:14:47', 'Banking', 'stanbic', 'Opening Accounts', 'Here are some basic tips to guide when opening up bank accounts', 1, 0),
(2, '2015-08-01 02:20:36', 'Insurance', 'SWICO', 'Best Insurance Covers', 'Did you know about the best insurance covers for yourself, You should visit our website and find out all the covers we have for all types of people. I just wrote this to test if i can be able to truncate the amount of content i have on an article. Please tell me it works. I have just added this content for that specific purpose.', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `bankacctsinfo`
--

CREATE TABLE IF NOT EXISTS `bankacctsinfo` (
  `BankAcctsInfoId` int(11) NOT NULL,
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
  KEY `BankAccount_Bank_idx` (`BankAcctsInfo_BankId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bankatminfo`
--

CREATE TABLE IF NOT EXISTS `bankatminfo` (
  `BankATMInfoid` int(11) NOT NULL,
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
  KEY `ATMinformation_Bank_idx` (`BankATMInfo_BankId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bankforeignexinfo`
--

CREATE TABLE IF NOT EXISTS `bankforeignexinfo` (
  `BankFnExInfoId` int(11) NOT NULL,
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
  KEY `banks foreign exchange_idx` (`BankFnExInfo_BankId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bankloaninfo`
--

CREATE TABLE IF NOT EXISTS `bankloaninfo` (
  `BankLoanInfoId` int(11) NOT NULL,
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
  KEY `BankLoans_BankId_idx` (`BankLoanInfo_BankId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bankmortinfo`
--

CREATE TABLE IF NOT EXISTS `bankmortinfo` (
  `BankMortInfoId` int(11) NOT NULL,
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
  KEY `BankMortages_Bank_idx` (`BankMortInfo_BankId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE IF NOT EXISTS `banks` (
  `BankId` int(11) NOT NULL,
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
  KEY `BankUserId_idx` (`BankUser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bankusers`
--

CREATE TABLE IF NOT EXISTS `bankusers` (
  `BankUserId` int(11) NOT NULL COMMENT 'Id to reference the banks user',
  `BankUserName` varchar(45) DEFAULT NULL COMMENT 'User Name for logging into the banks account',
  `BankUserPassword` varchar(45) DEFAULT NULL COMMENT 'Bank login password',
  `BankUserEmail` varchar(45) DEFAULT NULL COMMENT 'Email Id of the bank user',
  `BankUsersDate` datetime DEFAULT NULL COMMENT 'Timestamp when user was created',
  `BankUserBankId` int(11) DEFAULT NULL COMMENT 'Id of the bank the user is attached to',
  PRIMARY KEY (`BankUserId`),
  KEY `BankUser_BankId_idx` (`BankUserBankId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `editors`
--

CREATE TABLE IF NOT EXISTS `editors` (
  `EditorId` int(11) NOT NULL,
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

-- --------------------------------------------------------

--
-- Table structure for table `forexbureaus`
--

CREATE TABLE IF NOT EXISTS `forexbureaus` (
  `FxBureauId` int(11) NOT NULL,
  `FxBureauName` varchar(45) DEFAULT NULL,
  `FxBureauLogo` varchar(100) DEFAULT NULL,
  `FxBureaulogan` varchar(45) DEFAULT NULL,
  `FxBureauTel` varchar(45) DEFAULT NULL,
  `FxBureauPhysicalAddress` varchar(45) DEFAULT NULL,
  `FxBureauPostalAddress` varchar(45) DEFAULT NULL,
  `FxBureauSupportTel` varchar(45) DEFAULT NULL COMMENT 'Time Stamp',
  `FxBureauSupportEmail` varchar(45) DEFAULT NULL,
  `FxBureauTime` datetime DEFAULT NULL,
  `FxBureauUserId` int(11) DEFAULT NULL,
  PRIMARY KEY (`FxBureauId`),
  KEY `FxBureauUser_idx` (`FxBureauUserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `forexinfo`
--

CREATE TABLE IF NOT EXISTS `forexinfo` (
  `ForexInfoId` int(11) NOT NULL,
  `ForexInfo_Currency` varchar(45) DEFAULT NULL,
  `ForexInfo_BuyingPr` varchar(45) DEFAULT NULL,
  `ForexInfo_SellingPr` varchar(45) DEFAULT NULL,
  `ForexInfo_FxBureauId` int(11) DEFAULT NULL,
  `ForexInfo_Time` datetime DEFAULT NULL COMMENT 'Time Stamp',
  PRIMARY KEY (`ForexInfoId`),
  KEY `ForexInfo_BureauId_idx` (`ForexInfo_FxBureauId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `forexusers`
--

CREATE TABLE IF NOT EXISTS `forexusers` (
  `FxUserId` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id to reference the banks user',
  `FxUserName` varchar(45) DEFAULT NULL COMMENT 'User Name for logging into the bank''s account',
  `FxUserPassword` varchar(45) DEFAULT NULL COMMENT 'Bank login password',
  `FxUserEmail` varchar(45) DEFAULT NULL COMMENT 'Email Id of the bank user',
  `active` int(1) DEFAULT NULL,
  `harsh` varchar(50) DEFAULT NULL,
  `FxUser_Time` datetime DEFAULT NULL COMMENT 'Time Stamp',
  PRIMARY KEY (`FxUserId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='table for forex users' AUTO_INCREMENT=4 ;

--
-- Dumping data for table `forexusers`
--

INSERT INTO `forexusers` (`FxUserId`, `FxUserName`, `FxUserPassword`, `FxUserEmail`, `active`, `harsh`, `FxUser_Time`) VALUES
(1, NULL, 'x%8ikFA', NULL, NULL, NULL, NULL),
(2, NULL, '^x%8ikFA', NULL, NULL, NULL, NULL),
(3, 'stanhope', 'XHAP+?m-', 'info@stanhope.com', NULL, NULL, '2015-10-27 06:01:23');

-- --------------------------------------------------------

--
-- Table structure for table `institutionprofile`
--

CREATE TABLE IF NOT EXISTS `institutionprofile` (
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
  KEY `Institution_User_idx` (`Inst_UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `insurancecos`
--

CREATE TABLE IF NOT EXISTS `insurancecos` (
  `InsCoId` int(11) NOT NULL,
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
  KEY `InsCoUser_idx` (`InsCoUserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `insuranceinfo`
--

CREATE TABLE IF NOT EXISTS `insuranceinfo` (
  `InsInfoId` int(11) NOT NULL,
  `InsInfo_InsType` varchar(45) DEFAULT NULL COMMENT 'Type of Insurance',
  `InsInfo_AppProc` varchar(500) DEFAULT NULL COMMENT 'Application procedure for the type of insurance',
  `InsInfo_OnlineLink` varchar(45) DEFAULT NULL,
  `InsInfo_Req` varchar(500) DEFAULT NULL COMMENT 'Requirements',
  `InsInfo_Eligibility` varchar(45) DEFAULT NULL,
  `InsInfo_InsCov` varchar(500) DEFAULT NULL COMMENT 'Insurance Cover',
  `InsInfo_InsCoId` int(11) DEFAULT NULL,
  `InsInfo_Time` datetime DEFAULT NULL COMMENT 'Time Stamp',
  PRIMARY KEY (`InsInfoId`),
  KEY `InsuranceInfo_CompanyId_idx` (`InsInfo_InsCoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `microfinacctsinfo`
--

CREATE TABLE IF NOT EXISTS `microfinacctsinfo` (
  `MFAcctsInfoId` int(11) NOT NULL,
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
  KEY `MicroFinanceAccts_MicroFinId_idx` (`MFAcctsInfo_MicroFinId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `microfinances`
--

CREATE TABLE IF NOT EXISTS `microfinances` (
  `MicroFinId` int(11) NOT NULL,
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
  KEY `MicroFinUser_idx` (`MicroFinUserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `microfinatminfo`
--

CREATE TABLE IF NOT EXISTS `microfinatminfo` (
  `MFATMInfoid` int(11) NOT NULL,
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
  KEY `ATMinformation_MicroFinances_idx` (`MFATMInfo_MicroFinId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `microfinforeignexinfo`
--

CREATE TABLE IF NOT EXISTS `microfinforeignexinfo` (
  `MFFnExInfoId` int(11) NOT NULL,
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
  KEY `ForeignExchange_MicroFinID_idx` (`MFFnExInfo_MicroFinId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `microfinloaninfo`
--

CREATE TABLE IF NOT EXISTS `microfinloaninfo` (
  `MFLoanInfoId` int(11) NOT NULL,
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
  KEY `LoanInformation_MicroFin_idx` (`MFLoanInfo_MicroFinId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `microfinmortinfo`
--

CREATE TABLE IF NOT EXISTS `microfinmortinfo` (
  `MFMortInfoId` int(11) NOT NULL,
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
  KEY `Mortages_MicroFinanceId_idx` (`MFMortInfo_MicroFinId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `microfinusers`
--

CREATE TABLE IF NOT EXISTS `microfinusers` (
  `MicroFinUserId` int(11) NOT NULL COMMENT 'Id to reference the banks user',
  `MicroFinUserName` varchar(45) DEFAULT NULL COMMENT 'User Name for logging into the bank''s account',
  `MicroFinUserPassword` varchar(45) DEFAULT NULL COMMENT 'Bank login password',
  `MicroFinUserEmail` varchar(45) DEFAULT NULL COMMENT 'Email Id of the bank user',
  `MicroFinUser_MicroFinId` int(11) DEFAULT NULL COMMENT 'Id of the bank the user is attached to',
  PRIMARY KEY (`MicroFinUserId`),
  KEY `BankUser_BankId0_idx` (`MicroFinUser_MicroFinId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mmtransinfo`
--

CREATE TABLE IF NOT EXISTS `mmtransinfo` (
  `MMTransInfoId` int(11) NOT NULL,
  `MMTransInfocol_TransType` varchar(45) DEFAULT NULL COMMENT 'Transaction type',
  `MMTransInfo_AmntRange` varchar(45) DEFAULT NULL COMMENT 'Amount for transaction',
  `MMTransInfo_TransCost` varchar(45) DEFAULT NULL COMMENT 'Cost of transaction',
  `MMTransInfo_MMAgentId` int(11) DEFAULT NULL,
  `MMTransInfo_UserId` int(11) DEFAULT NULL COMMENT 'System user that updated the record',
  `MMTransInfo_Time` datetime DEFAULT NULL COMMENT 'Time Stamp',
  PRIMARY KEY (`MMTransInfoId`),
  KEY `MMAgentID_idx` (`MMTransInfo_MMAgentId`),
  KEY `MMTransUserID_idx` (`MMTransInfo_UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mobilemoneyagents`
--

CREATE TABLE IF NOT EXISTS `mobilemoneyagents` (
  `MobMonAgentId` int(11) NOT NULL,
  `MobMonAgent_AgntName` varchar(45) DEFAULT NULL,
  `MobMonAgent_AgntLogo` varchar(45) DEFAULT NULL,
  `MobMonAgent_Time` datetime DEFAULT NULL COMMENT 'Time Stamp',
  PRIMARY KEY (`MobMonAgentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `moneytansferagents`
--

CREATE TABLE IF NOT EXISTS `moneytansferagents` (
  `MonTrnsAgId` int(11) NOT NULL,
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
  KEY `MonTransUser_idx` (`MonTrnsUserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `moneytransinfo`
--

CREATE TABLE IF NOT EXISTS `moneytransinfo` (
  `MonTransInfoId` int(11) NOT NULL,
  `MonTransInfo_Dest` varchar(45) DEFAULT NULL COMMENT 'Destination',
  `MonTransInfo_TransType` binary(2) DEFAULT NULL COMMENT 'whether receiving or sending',
  `MonTransInfo_Req` varchar(100) DEFAULT NULL COMMENT 'Requirements needed from customer',
  `MonTransInfo_TransCharge` varchar(45) DEFAULT NULL,
  `MonTransInfocol_AgentId` int(11) DEFAULT NULL,
  `MonTransInfo_Time` datetime DEFAULT NULL COMMENT 'Time Stamp',
  PRIMARY KEY (`MonTransInfoId`),
  KEY `TransInfo_AgentId_idx` (`MonTransInfocol_AgentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `moneytranspointsofsale`
--

CREATE TABLE IF NOT EXISTS `moneytranspointsofsale` (
  `MonTrnsPOSId` int(11) NOT NULL,
  `MonTrnsPOS_Name` varchar(45) DEFAULT NULL,
  `MonTrnsPOS_PhysAdd` varchar(45) DEFAULT NULL COMMENT 'Physical Address',
  `MonTrnsPOS_InstId` int(11) DEFAULT NULL COMMENT 'Financial institution Id the point of sale belongs to',
  `MonTrnsPOS_AgId` int(11) DEFAULT NULL COMMENT 'the money transfer agent the point of sale belongs to',
  PRIMARY KEY (`MonTrnsPOSId`),
  KEY `Agent_idx` (`MonTrnsPOS_AgId`),
  KEY `Bank_MoneyTransferAgent_idx` (`MonTrnsPOS_InstId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `saccoloaninfo`
--

CREATE TABLE IF NOT EXISTS `saccoloaninfo` (
  `SACCOLoanInfoId` int(11) NOT NULL,
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
  KEY `SACCOLoans_SACCOId_idx` (`SACCOLoanInfo_SACCOId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `saccos`
--

CREATE TABLE IF NOT EXISTS `saccos` (
  `SACCOId` int(11) NOT NULL,
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
  KEY `SACCOUser_idx` (`SACCOUserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `saccousers`
--

CREATE TABLE IF NOT EXISTS `saccousers` (
  `SACCOUserId` int(11) NOT NULL COMMENT 'Id to reference the banks user',
  `SACCOUserName` varchar(45) DEFAULT NULL COMMENT 'User Name for logging into the bank''s account',
  `SACCOUserPassword` varchar(45) DEFAULT NULL COMMENT 'Bank login password',
  `SACCOUserEmail` varchar(45) DEFAULT NULL COMMENT 'Email Id of the bank user',
  `SACCOUser_SACCOId` int(11) DEFAULT NULL COMMENT 'Id of the bank the user is attached to',
  `SACCOUser_Time` datetime DEFAULT NULL COMMENT 'Time Stamp',
  PRIMARY KEY (`SACCOUserId`),
  KEY `SACCOUsers_SACCOID_idx` (`SACCOUser_SACCOId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `securitiesinfo`
--

CREATE TABLE IF NOT EXISTS `securitiesinfo` (
  `SecuritiesInfoId` int(11) NOT NULL,
  `SecInfo_CompName` varchar(45) DEFAULT NULL COMMENT 'CompanyName',
  `SecInfo_SharePx` varchar(45) DEFAULT NULL COMMENT 'Share Price',
  `SecInfo_Date` date DEFAULT NULL,
  `SecInfo_UserId` int(11) DEFAULT NULL COMMENT 'The system user that updated the information',
  PRIMARY KEY (`SecuritiesInfoId`),
  KEY `User_Updated_idx` (`SecInfo_UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `systemusers`
--

CREATE TABLE IF NOT EXISTS `systemusers` (
  `UserId` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id to reference the banks user',
  `UserName` varchar(45) DEFAULT NULL COMMENT 'User Name for logging into the banks account',
  `UserPassword` varchar(45) DEFAULT NULL COMMENT 'Bank login password',
  `UserEmail` varchar(45) DEFAULT NULL COMMENT 'Email Id of the bank user',
  `UserType` varchar(45) DEFAULT NULL COMMENT 'Id of the bank the user is attached to',
  `SystemUsersTime` datetime DEFAULT NULL COMMENT 'Time of creating the user',
  PRIMARY KEY (`UserId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `systemusers`
--

INSERT INTO `systemusers` (`UserId`, `UserName`, `UserPassword`, `UserEmail`, `UserType`, `SystemUsersTime`) VALUES
(1, 'stanbic', 'r@efzmQvwt2i', 'emupuya@gmail.com', 'bank', '2015-07-11 09:22:59'),
(3, 'barclays', 'ry2bkl-dQw', 'support@barclays.com', 'bank', '2015-07-11 09:41:38'),
(4, 'ghghg', 'ra6#Kgumzf', 'dj@yh.com', 'fjjf', '2015-10-24 16:12:43'),
(5, 'ttyeyeye', '6rijm%ziAf', 'dhfhf@ghh.com', 'dhshs', '2015-10-24 16:13:53'),
(6, 'ttyeyeye', '4Xbujjfph=c', 'dhfhf@ghh.com', 'dhshs', '2015-10-24 16:16:47');

-- --------------------------------------------------------

--
-- Table structure for table `useraccessrights`
--

CREATE TABLE IF NOT EXISTS `useraccessrights` (
  `UserAccessRightsId` int(11) NOT NULL AUTO_INCREMENT,
  `UsrAcsRtsUserType` varchar(45) DEFAULT NULL,
  `UsrAcsRtsFunction` varchar(45) DEFAULT NULL,
  `UsrAcsRtsStatus` tinyint(1) DEFAULT NULL,
  `UsrAcsRtsTime` datetime DEFAULT NULL COMMENT 'Time Stamp',
  PRIMARY KEY (`UserAccessRightsId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `useraccessrights`
--

INSERT INTO `useraccessrights` (`UserAccessRightsId`, `UsrAcsRtsUserType`, `UsrAcsRtsFunction`, `UsrAcsRtsStatus`, `UsrAcsRtsTime`) VALUES
(1, 'editor', 'Ads Management', 1, '2015-05-07 02:34:50'),
(3, 'microfinance', 'Loan Management', 0, '2015-05-07 04:40:59'),
(4, 'bank', 'Loan Management', 0, '2015-05-07 04:41:48'),
(5, 'bank', 'Loan Management', 0, '2015-05-07 04:52:50'),
(6, 'sacco', 'Loan Management', 0, '2015-05-07 04:53:07'),
(7, 'bank', 'Articles Management', 0, '2015-05-07 04:53:43'),
(8, 'manager', 'Mobile Money Info Management', 0, '2015-05-07 04:54:22'),
(10, 'editor', 'Ads Management', 1, '2015-05-07 05:05:25'),
(11, 'microfinance', 'Loan Management', 1, '2015-05-07 05:21:07'),
(12, 'editor', 'Ads Management', 0, '2015-05-07 05:21:46'),
(13, 'bank', 'Articles Management', 1, '2015-07-11 09:48:06'),
(14, 'editor', 'Article Management', 1, '2015-07-15 18:56:10'),
(15, 'bank', 'Articles Management', 1, '2015-07-15 18:59:39'),
(16, 'sacco', 'Loans Management', 1, '2015-07-15 19:11:48'),
(17, 'sacco', 'Loans Management', 0, '2015-07-15 19:11:54'),
(18, 'bank', 'Articles Management', 1, '2015-07-15 19:12:05'),
(19, 'bank', 'Articles Management', 1, '2015-07-15 19:12:09'),
(20, 'bank', 'Articles Management', 0, '2015-07-15 20:50:54'),
(21, 'bank', 'Loan Management', 1, '2015-07-15 20:51:41'),
(22, 'bank', 'Articles Management', 1, '2015-07-15 20:52:25');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ads`
--
ALTER TABLE `ads`
  ADD CONSTRAINT `SystemUserId` FOREIGN KEY (`Ad_UserId`) REFERENCES `systemusers` (`UserId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `ArticleOwner` FOREIGN KEY (`ArticlePoster`) REFERENCES `systemusers` (`UserId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `bankacctsinfo`
--
ALTER TABLE `bankacctsinfo`
  ADD CONSTRAINT `BankAccount_Bank` FOREIGN KEY (`BankAcctsInfo_BankId`) REFERENCES `banks` (`BankId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `bankatminfo`
--
ALTER TABLE `bankatminfo`
  ADD CONSTRAINT `ATMinformation_Bank` FOREIGN KEY (`BankATMInfo_BankId`) REFERENCES `banks` (`BankId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `bankforeignexinfo`
--
ALTER TABLE `bankforeignexinfo`
  ADD CONSTRAINT `banks foreign exchange` FOREIGN KEY (`BankFnExInfo_BankId`) REFERENCES `banks` (`BankId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `bankloaninfo`
--
ALTER TABLE `bankloaninfo`
  ADD CONSTRAINT `BankLoans_BankId` FOREIGN KEY (`BankLoanInfo_BankId`) REFERENCES `banks` (`BankId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `bankmortinfo`
--
ALTER TABLE `bankmortinfo`
  ADD CONSTRAINT `BankMortages_Bank` FOREIGN KEY (`BankMortInfo_BankId`) REFERENCES `banks` (`BankId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `banks`
--
ALTER TABLE `banks`
  ADD CONSTRAINT `BankUserId` FOREIGN KEY (`BankUser`) REFERENCES `systemusers` (`UserId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `bankusers`
--
ALTER TABLE `bankusers`
  ADD CONSTRAINT `BankUser_BankId` FOREIGN KEY (`BankUserBankId`) REFERENCES `banks` (`BankId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `forexbureaus`
--
ALTER TABLE `forexbureaus`
  ADD CONSTRAINT `FxBureauUser` FOREIGN KEY (`FxBureauUserId`) REFERENCES `systemusers` (`UserId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `forexinfo`
--
ALTER TABLE `forexinfo`
  ADD CONSTRAINT `ForexInfo_BureauId` FOREIGN KEY (`ForexInfo_FxBureauId`) REFERENCES `forexbureaus` (`FxBureauId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `institutionprofile`
--
ALTER TABLE `institutionprofile`
  ADD CONSTRAINT `Institution_User` FOREIGN KEY (`Inst_UserId`) REFERENCES `systemusers` (`UserId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `insurancecos`
--
ALTER TABLE `insurancecos`
  ADD CONSTRAINT `InsCoUser` FOREIGN KEY (`InsCoUserId`) REFERENCES `systemusers` (`UserId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `insuranceinfo`
--
ALTER TABLE `insuranceinfo`
  ADD CONSTRAINT `InsuranceInfo_CompanyId` FOREIGN KEY (`InsInfo_InsCoId`) REFERENCES `insurancecos` (`InsCoId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `microfinacctsinfo`
--
ALTER TABLE `microfinacctsinfo`
  ADD CONSTRAINT `MicroFinanceAccts_MicroFinId` FOREIGN KEY (`MFAcctsInfo_MicroFinId`) REFERENCES `microfinances` (`MicroFinId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `microfinances`
--
ALTER TABLE `microfinances`
  ADD CONSTRAINT `MicroFinUser` FOREIGN KEY (`MicroFinUserId`) REFERENCES `systemusers` (`UserId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `microfinatminfo`
--
ALTER TABLE `microfinatminfo`
  ADD CONSTRAINT `ATMinformation_MicroFinances` FOREIGN KEY (`MFATMInfo_MicroFinId`) REFERENCES `microfinances` (`MicroFinId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `microfinforeignexinfo`
--
ALTER TABLE `microfinforeignexinfo`
  ADD CONSTRAINT `ForeignExchange_MicroFinID` FOREIGN KEY (`MFFnExInfo_MicroFinId`) REFERENCES `microfinances` (`MicroFinId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `microfinloaninfo`
--
ALTER TABLE `microfinloaninfo`
  ADD CONSTRAINT `LoanInformation_MicroFin` FOREIGN KEY (`MFLoanInfo_MicroFinId`) REFERENCES `microfinances` (`MicroFinId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `microfinmortinfo`
--
ALTER TABLE `microfinmortinfo`
  ADD CONSTRAINT `Mortages_MicroFinanceId` FOREIGN KEY (`MFMortInfo_MicroFinId`) REFERENCES `microfinances` (`MicroFinId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `mmtransinfo`
--
ALTER TABLE `mmtransinfo`
  ADD CONSTRAINT `MMAgentID` FOREIGN KEY (`MMTransInfo_MMAgentId`) REFERENCES `mobilemoneyagents` (`MobMonAgentId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `MMTransUserID` FOREIGN KEY (`MMTransInfo_UserId`) REFERENCES `systemusers` (`UserId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `moneytansferagents`
--
ALTER TABLE `moneytansferagents`
  ADD CONSTRAINT `MonTransUser` FOREIGN KEY (`MonTrnsUserId`) REFERENCES `systemusers` (`UserId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `moneytransinfo`
--
ALTER TABLE `moneytransinfo`
  ADD CONSTRAINT `TransInfo_AgentId` FOREIGN KEY (`MonTransInfocol_AgentId`) REFERENCES `moneytansferagents` (`MonTrnsAgId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `moneytranspointsofsale`
--
ALTER TABLE `moneytranspointsofsale`
  ADD CONSTRAINT `Agent` FOREIGN KEY (`MonTrnsPOS_AgId`) REFERENCES `moneytansferagents` (`MonTrnsAgId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `Bank_MoneyTransferAgent` FOREIGN KEY (`MonTrnsPOS_InstId`) REFERENCES `banks` (`BankId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FxBureau_MoneyTransferAgent` FOREIGN KEY (`MonTrnsPOS_InstId`) REFERENCES `forexbureaus` (`FxBureauId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `MicroFin_MoneyTransferAgent` FOREIGN KEY (`MonTrnsPOS_InstId`) REFERENCES `microfinances` (`MicroFinId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `saccoloaninfo`
--
ALTER TABLE `saccoloaninfo`
  ADD CONSTRAINT `SACCOLoans_SACCOId` FOREIGN KEY (`SACCOLoanInfo_SACCOId`) REFERENCES `saccos` (`SACCOId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `saccos`
--
ALTER TABLE `saccos`
  ADD CONSTRAINT `SACCOUser` FOREIGN KEY (`SACCOUserId`) REFERENCES `systemusers` (`UserId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `securitiesinfo`
--
ALTER TABLE `securitiesinfo`
  ADD CONSTRAINT `User_Updated` FOREIGN KEY (`SecInfo_UserId`) REFERENCES `systemusers` (`UserId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
