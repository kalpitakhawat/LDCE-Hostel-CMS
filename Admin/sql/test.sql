-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 09, 2017 at 08:17 PM
-- Server version: 10.1.22-MariaDB
-- PHP Version: 7.0.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Id` int(11) NOT NULL,
  `enroll_no` varchar(13) DEFAULT NULL,
  `block_no` varchar(10) DEFAULT NULL,
  `room_no` varchar(5) DEFAULT NULL,
  `name` varchar(85) DEFAULT NULL,
  `category` varchar(20) DEFAULT NULL,
  `addmission_type` varchar(25) DEFAULT NULL,
  `course` varchar(20) DEFAULT NULL,
  `branch` varchar(25) DEFAULT NULL,
  `sem` int(8) DEFAULT NULL,
  `stud_mob` varchar(55) DEFAULT NULL,
  `hos_fee_receipt_no` varchar(55) DEFAULT NULL,
  `trans_date` varchar(55) DEFAULT NULL,
  `remarks` varchar(150) DEFAULT NULL,
  `parent_mob` varchar(55) DEFAULT NULL,
  `addmission_year` varchar(15) DEFAULT NULL,
  `last_hostel_fee_receipt` varchar(55) DEFAULT NULL,
  `college_fee_receipt` varchar(55) DEFAULT NULL,
  `stud_mail` varchar(55) DEFAULT NULL,
  `stud_address` text,
  `district` varchar(55) DEFAULT NULL,
  `state` varchar(25) DEFAULT NULL,
  `adhar_no` varchar(30) DEFAULT NULL,
  `govt` varchar(10) DEFAULT NULL,
  `non_govt` varchar(10) DEFAULT NULL,
  `photo` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Id`, `enroll_no`, `block_no`, `room_no`, `name`, `category`, `addmission_type`, `course`, `branch`, `sem`, `stud_mob`, `hos_fee_receipt_no`, `trans_date`, `remarks`, `parent_mob`, `addmission_year`, `last_hostel_fee_receipt`, `college_fee_receipt`, `stud_mail`, `stud_address`, `district`, `state`, `adhar_no`, `govt`, `non_govt`, `photo`) VALUES
(1, '140280105061', 'H', '101', 'VASAVA HARDIK DARASIGBHAI', 'ST', 'Regular', 'UG', 'Chemical', 5, '9974760638', 'DU53810768', '08/09/16', '', '9909823597', '2014', 'DU31048013', 'DU52719335', 'hardyvasava1305@gmail.com', '117 CHINMAY ROW HOUSE PARVATGAM', 'SURAT', 'GUJARAT', '', '170', '1030', ''),
(3, '140280105005', 'H', '101', 'CHAUDHARI SNEHAL DHARMENDRA', 'ST', 'N plus 1', 'UG', 'Chemical', 5, '9909671131', 'DU53808924', '08/09/16', '', '9879382717', '2014', 'DU31144522', 'DU52283591', 'snehal3278@gmail.com', 'B 3108 KRIBHCO TOWNSHIP', 'SURAT', 'GUJARAT', '', '170', '1030', ''),
(4, '140280105029', 'H', '102', 'NAKUM GHANSHYAM NATHABHAI', 'SEBC', 'Regular', 'UG', 'Chemical', 5, '9099376721', 'DU53651928', '04/09/16', '', '9825477489', '2014', 'DU31104904', 'DU52251446', 'nakumjanak.nj@gmail.com', 'To-kadiyali 365560 ', 'Amreli ', 'Gujarat', '', '170', '1030', ''),
(5, '140280105030', 'H', '102', 'Nakum janak lakhabhai', 'SEBC', 'Regular', 'UG', 'Chemical', 5, '9638414157', 'DU53652502', '04/09/16', '', '9586620049', '2014', 'DU31107773', 'DU52253468', 'urvishmnakum@gmail.com', 'D 301 MANIBHADRA CAMPUS GODADRA', 'SURAT', 'GUJARAT', '', '170', '1030', ''),
(6, '150280106044', 'H', '102', 'Jinjala Rakesh Shamjibhai ', 'SEBC', 'N plus 1', 'UG', 'Civil', 3, '7048549619', '291370', '12/09/16', '', '', '', '', '', 'deeploves2rock@gmail.com', 'milan sangha bordowalli agartala tripura', 'West Tripura', 'Tripura', '', '170', '1030', ''),
(7, '', 'H', '103', 'Gupta Saourav Sanjaykumar', 'G.O.I', 'Regular', 'UG', 'Computer', 1, '9622112463', '291602', '28/07/17', 'J&K Temp Room', '9018195128', '', '', '', '', '', '', '', '', '', '', ''),
(8, '', 'H', '103', 'Malhotra Rohit Tarsem', 'G.O.I', 'Regular', 'UG', 'Mechanical', 1, '9797065449', '291600', '28/07/16', 'J&K Temp Room', '9419650642', '', '', '', '', '', '', '', '', '', '', ''),
(9, '140280111087', 'H', '104', 'RAJDEEP KUMAR', 'SEBC', 'Regular', 'UG', 'EC', 5, '9978020419', 'DU54179590', '19/09/16', '', '9737368442', '2015', '284897', 'DU52802565', 'jaychaudhary24916@gmail.com', 'A34 Radhakrishna tship highway road mehsana', 'Mehsana', 'Gujarat', '', '170', '1030', ''),
(10, '140280111104', 'H', '104', 'SONAL RAJ', 'OPEN', 'Regular', 'UG', 'EC', 5, '7359270495', 'DU54179748', '19/09/16', '', '9426953627', '2014', 'DU31326693', 'DU52631779', 'yasmodi2@gmail.com', 'new kalikaparu near unava desh', 'mahesana', 'GUJARAT', '', '170', '1030', ''),
(11, '140280113006', 'H', '105', 'CHAUDHARY JAYKUMAR BABUBHAI', 'SEBC', 'Regular', 'UG', 'Environmental', 5, '9714930749', 'DU54188208', '20/09/16', '', '9428752851', '2014', '276829', 'DU27272500', 'hadiyadharmesh1996@gmail.com', '108 a dadmea area bhadroad 364295', 'Bhavnagar', 'Gujarat', '', '170', '1030', ''),
(12, '140280113011', 'H', '105', 'CHAVDA ABHIJIT INDRAJIT', 'SC', 'Regular', 'UG', 'Environmental', 3, '9137921701', '291554', '09/02/17', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(13, '160280109038', 'H', '105', 'Sodha Jay Mahendrabhai', 'SEBC', 'N plus 1', 'UG', 'Electrical', 1, '9974136418', '291553', '09/02/17', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(14, '140280116054', 'H', '106', 'MODI YASH VIJAYKUMAR', 'SEBC', 'Regular', 'UG', 'IT', 5, '9104368140', 'DU54161392', '19/09/16', '', '7383654967', '2014', 'DU31217532', 'DU52836679', 'jayendramarvi3@gmail.com', 'B/H OLD VIJAYA BANK COMPUND', 'GIR-SOMNATH', 'GUJARAT', '', '170', '1030', ''),
(15, '160280107035', 'H', '106', 'Katariya Nilesh Nagjibhai', 'SEBC', 'Regular', 'UG', 'Computer', 1, '7575839303', '291248', '04/08/16', '', '', '', '', '', 'abhijitpanchmatiya@gmail.com', 'rameshwarnagar jamnagar', 'Gujarat', 'Gujarat', '', '170', '1030', ''),
(16, '140280113012', 'H', '107', 'CHORWADI BHAVESH DHANJIBHAI', 'SEBC', 'Regular', 'UG', 'Environmental', 5, '8154848491', 'DU54205240', '20/09/16', '', '8154848491', '2014', 'DU31786669', 'DU52591004', 'hatwar.mrunalbb@gmail.com', '59 gopinath row house adajan surat', 'Surat', 'Gujarat', '', '170', '1030', ''),
(17, '140280113026', 'H', '107', 'MARVI JAYENDRA KANJI', 'SEBC', 'Regular', 'UG', 'Environmental', 5, '9714589906', 'DU53954035', '13/09/16', '', '9558915205', '2014', 'DU30933440', 'DU51799933', 'tadviishuram5293@gmail.com', 'MADHYAMVARG SOCIETY BAGASARA', 'AMRELI', 'GUJRAT', '', '170', '1030', ''),
(18, '160280113014', 'H', '108', 'Gandhi Dhruv Maheshbhai', 'OPEN', 'Regular', 'UG', 'Environmental', 1, '9512245948', '291223', '03/08/16', '', '', '', '', '', 'sayeedhabibhaqbeen@yahoo.com', 'badakhshan', 'kishem', 'Afghanistan', '', '170', '1030', ''),
(19, '160280109113', 'H', '108', 'Thakor Ajay Anarji', 'OPEN (SEBC)', 'Regular', 'UG', 'Electrical', 1, '8469430629', '291226', '03/08/16', 'From D427 By Rector Sir Dt. 28/12/16', '', '', '', '', '', '', '', '', '', '', '', ''),
(20, '140280113058', 'H', '109', 'TADVI ISHURAM RAMESHBHAI', 'ST', 'Regular', 'UG', 'Environmental', 3, '9712889254', 'DU54162666', '19/09/16', '', '8401684241', '2014', 'DU31961683', 'DU52700501', 'kalpesha0@gmail.com', 'paradva seri jamnavad', 'dhoraji', 'gujarat', '', '170', '1030', ''),
(22, '160283109011', 'H', '109', 'Kodiyatar Dasa Samatbhai', 'ST', 'N plus 1', 'UG', 'Electrical', 4, '7575834004', '291565', '06/03/17', '', '9723133502', '', '', '', '', '', '', '', '', '', '', ''),
(23, '', 'H', '110', 'Rajveer Yousuf Bhat', 'J&K', '', '', 'Electrical', 3, '7006543599', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(24, '', 'H', '110', 'Nitin Singh', 'J&K', '', '', 'Civil', 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(27, '160280113020', 'H', '111', 'Kuchadiya Mayur Samantbhai ', 'SEBC', 'N plus 1', 'UG', 'Environmental', 1, '7874547393', '291373', '12/09/16', '', '', '', '', '', 'hiteshjinjala01@gmail.com', 'F2 first floor opp. Archna school puna gam road ', 'Surat', 'Rajkot', '', '170', '1030', ''),
(28, '140280126023', 'H', '112', 'THUMMAR HARDIK BABUBHAI', 'OPEN', 'Regular', 'UG', 'Rubber', 5, '9737702058', 'DU54140589', '19/09/16', '', '9974834412', '2014-15', 'DU31885734', 'DU52759138', 'ramdivyesh2014@gmail.com', 'Kodinar', 'Girsomnath', 'Gujarat', '', '170', '1030', ''),
(30, '140280126026', 'H', '112', 'VAGHAMSHI KALPESH ARVINDBHAI', 'SEBC', 'N plus 1', 'UG', 'Rubber', 5, '7359407697', 'DU54139507', '19/09/16', '', '7359407697', '2014-2015', 'DU31886460', 'DU52764031', 'MERMAHADEV@GMAIL.COM', 'TO-HADALABHAL TA-DHANDHUKA DIST-AHMEDABAD', 'AHMEDABAD', 'GUJARAT', '', '170', '1030', ''),
(33, '140280123002', 'H', '114', 'Atara Vishalbhai kamleshbhai', 'ST', 'Regular', 'UG', 'Plastic', 5, '9978570266', 'DU53660715', '04/09/16', '', '9978570266', '2014', 'DU30941213', 'DU52676811', 'chigs7896@gmail.com', '148 swaminarayan nagar society', 'Surat', 'Gujarat', '', '170', '1030', ''),
(34, '', 'H', '114', 'Satapara Nishant Jayantibhai', 'OPEN', 'Regular', 'UG', 'IT', 1, '9979270520', '291298', '06/08/16', '', '', '', '', '', 'rjsambad123@gmail.com', 'At hampur', 'SURENDRANAGAR', 'GUJRAT', '', '170', '1030', ''),
(35, '140280103021', 'H', '114', 'JETHAVA JIGNESH BHARATBHAI', 'SEBC', 'Regular', 'UG', 'BioMedicacal', 5, '7621999121', 'DU54198610', '20/09/16', ' From D423 by Rector sir', '7621999121', '2014', 'DU31459075', 'DU52357176', 'SBI BANK ROAD GAYTRI KRUPA NAVAGADH JETPUR', 'RAJKOT', 'GUJARAT', '1.40E+11', '', '1030', '', ''),
(36, '160280718015', 'H', '115', 'Raiyani Jignesh Jaysukhbhai', 'OPEN', 'Regular', 'PG', 'Environmental', 1, '9898092979', '291427', '22/09/16', '', '', '', '', '', 'Zinzalapravin6969@gmail.com', 'velavadar talaja', 'Bhavnagar', 'Gujrat', '', '170', '1030', ''),
(37, '160280718008', 'H', '115', 'Maheta jay Jitendrabhai', '', 'Regular', 'PG', 'Environmental', 1, '', '291426', '22/09/16', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(38, '', 'H', '115', 'Kalsariya Paresh Samatbhai', 'SEBC', 'N plus 1', 'PG', 'Environmental', 1, '9558210123', '291504', '17/10/16', '', '', '', '', '', 'rkbaldaniya555@gmail.com', '124/H block in ld college hostel ', 'Bhavnagar', 'Gujrat', '', '170', '1030', ''),
(39, '140280116090', 'H', '116', 'RATHOD VISHAL KISHORKUMAR', 'SEBC', 'Regular', 'UG', 'IT', 5, '7383969315', 'DU53883464', '11/09/16', '', '8238624212', '2014', 'DU31071671', 'DU52281629', 'rrhadiya123@gmail.com', '124/H block in ld college hostel ', 'Ahmedabad', 'Gujrat', '', '170', '1030', ''),
(40, '140280102003', 'H', '116', 'ANJARIYA RACHIT BANKIMBHAI', 'OPEN', 'Regular', 'UG', 'Automobil', 5, '9428506064', 'DU53884311', '11/09/16', '', '9726559209', '2014', 'DU31061257', 'DU52259158', 'RACHITAM 153-157 B MARUTI PLOTS', 'KUTCH', 'GUJARAT', '1.40E+11', '', '', '', ''),
(41, '140280126018', 'H', '117', 'PRAJAPATI RAVI SHANTILAL', 'SEBC', 'Regular', 'UG', 'Rubber', 5, '9979647946', 'DU54085381', '16/09/16', '', '9586124892', '2014', 'DU31834954', 'DU52716555', 'chaudharivivek476@gmail.com', 'AT SALAIYA TA MANDVI', 'SURAT', 'GUJARAT', '', '170', '1030', ''),
(42, '140280126031', 'H', '117', 'ZINZALA HITESH MADHABHAI', 'SEBC', 'Regular', 'UG', 'Rubber', 5, '8866343312', 'DU54108211', '17/09/16', '', '9879787197', '2014', '276874', 'DU52681377', 'zalarajesh712@gmail.com', 'veraval', 'gir-somnath', 'gujrat', '', '170', '1030', ''),
(43, '', 'H', '118', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(44, '', 'H', '118', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(45, '140280109102', 'H', '119', 'Rathod Mahesh Manubhai', 'SEBC', 'Regular', 'UG', 'Electrical', 5, '7046195655', '291180', '04/07/16', '', '', '', '', '', 'soni.swarup96@gmail.com', 'PANCHOLI FALIYA KAWANT', 'VADODARA', 'GUJARAT', '', '170', '1030', ''),
(46, '140280126008', 'H', '119', 'Ladumor Harshadkumar Babubhai', 'SEBC', 'Regular', 'UG', 'Rubber', 5, '9737625691', '291181', '05/07/16', '', '', '', '', '', 'ajayramani95@gmail.com', 'B204 Siddhi Vinayak Apt. Nr Ramji Mandir surat', 'Savar Kundla', 'GUJARAT', '', '170', '1030', ''),
(47, '140280126012', 'H', '119', 'Nakum Chirag Babubhai', 'SEBC', 'N plus 1', 'UG', 'Rubber', 3, '9687023355', '291374', '12/09/16', '', '', '', '', '', 'nikunj254mendapara@gmail.com', 'H/129 LD engineering boys hostel', 'Ahmedabad', 'Gujarat', '', '170', '1030', ''),
(48, '160280707007', 'H', '120', 'Chauhan Dushyantsinh Dilipkumar', 'SEBC', 'Regular', 'PG', 'ELECTRICAL (APS)', 1, '9558897756', '291492', '03/10/16', 'From H327', '', '', '', '', '', '', '', '', '', '', '', ''),
(49, '160280117043', 'H', '120', 'Pipaliya Dhaval Javerbhai', 'OPEN', 'Regular', 'UG', 'IC', 1, '7046428693', '291294', '06/08/16', 'From H202', '', '', '', '', '', '', '', '', '', '', '', ''),
(50, '150280117038', 'H', '120', 'Prajapati Gauravkumar Umeshbhai', 'SEBC', 'N plus 1', 'UG', 'IC', 3, '7567620930', 'DU53737216', '06/09/16', '', '9409083709', '2016', '291153', 'DU52441111', 'er.mayurmali@gmail.com', 'SAMAVAS MALIVAS RAPAR', 'RAPAR', 'GUJARAT', '', '170', '1030', ''),
(51, '140280129051', 'H', '121', 'SAMBAD RAVJIBHAI JIVANBHAI', 'SEBC', 'Regular', 'UG', 'Textile', 5, '7046315674', 'DU54199557', '20/09/16', '', '7046325674', '2014', '30993989', '52819908', 'Kalpeshvariya55@gmail.com', 'At Khari ta sihor', 'Bhavnagar', 'Gujarat', '', '170', '1030', 'Good boy'),
(52, '140280126016', 'H', '121', 'PATEL RAVIRAJ JITENDRAKUMAR', 'OPEN', 'Regular', 'UG', 'Rubber', 5, '7359594239', 'DU54139081', '19/09/16', 'From H113', '9879767340', '2014-2015', 'DU31835577', 'DU52715637', 'jos.parth@gmail.com', 'a 2 natraj complex ', 'junagadh', 'gujarat', '', '170', '1030', ''),
(53, '140280117045', 'H', '122', 'RAHUL RAVI VK', 'OPEN', 'Regular', 'UG', 'IC', 5, '9033476087', 'DU53766670', '07/09/16', '', '9879358464', '2014', '330676', 'DU31441990', 'Arvinddabhi142@gmail.com', 'At dakana ta talaja', 'Bhavanagar', 'Gujarat', '', '170', '1030', 'Good boy '),
(54, '140280129037', 'H', '122', 'NAMBIAR MEGHAL MADHAVAN', 'OPEN', 'Regular', 'UG', 'Textile', 5, '9904701737', 'DU53867278', '10/09/16', '', '9924245452', '2014-15', '291078', 'DU45026811', 'deeppanchal1809@gmail.com', 'near sun shain school chotila ', 'surendrnagar', 'Gujarat', '', '170', '1030', ''),
(55, '150280106109', 'H', '122', 'Shingod Bharatbhai Bachubhai', 'SEBC', 'N plus 1', 'UG', 'Civil', 3, '9925872144', '291187', '15/07/16', '', '', '', '', '', 'chorwadi62@gmail.com', 'Veraval', 'Gir somnath', 'Gujrat', '', '170', '1030', ''),
(56, '140280129063', 'H', '123', 'Zinzala pravin gobarbhai', 'SEBC', 'Regular', 'UG', 'Textile', 5, '8980139589', 'DU53981673', '14/09/16', '', '8469286976', '2014', 'DU31136708', 'DU51851468', 'pareshhadiya97@gmail.com', 'At -mota khutavada. Ta-mahuva ', 'Bhavnagar', 'Gujarat', '', '170', '1030', ''),
(57, '160280116015', 'H', '123', 'Bhut Deep Gopalbhai', 'OPEN', 'Regular', 'UG', 'IT', 1, '9979053814', '291252', '04/08/16', '', '', '', '', '', 'dprao92@gmail.com', 'A7 SATYAM SOC NR KASAK OPP ANGAN APP', 'BHARUCH', 'GUJARAT', '', '170', '1030', ''),
(58, '140280129003', 'H', '124', 'BALDANIYA RUPESHBHAI MANUBHAI', 'SEBC', 'Regular', 'UG', 'Textile', 5, '9586888640', 'DU54151642', '19/09/16', '', '9586888640', '2014', 'DU30994647', 'DU52790090', 'patelharsh3005@gmail.com', 'patel fadi tintoi', 'arvalli', 'gujarat', '', '170', '1030', '-'),
(59, '140280129024', 'H', '124', 'HADIYA RAM RANCHHODBHAI', 'SEBC', 'Regular', 'UG', 'Textile', 5, '7600646325', 'DU54188753', '20/09/16', '', '7600646325', '2014', 'DU30995367', 'DU52791244', 'bmmehul17@gmail.com', 'AB37RADHASWAMISOCIETY', 'SURAT', 'GUJARAT', '', '170', '1030', ''),
(60, '150280116066', 'H', '125', 'PATEL ALAPKUMAR BIPINBHAI', 'OPEN', 'Regular', 'UG', 'IT', 3, '9601779176', 'DU53729804', '06/09/16', 'From D405', '9925649782', '2016', '291100', 'DU52074170', 'AT PO KHADIYA VISTAR KAHODA', 'MEHSANA', 'GUJARAT', '1.50E+11', '', '1030', '', ''),
(61, '160280116062', 'H', '125', 'Patel Het Devendrabhai', 'OPEN (EWS)', 'Regular', 'UG', 'IT', 1, '9586765667', '291275', '05/08/16', '', '', '', '', '', '291mitpatel11@gmail.com', '7255 Vehridas Faliya Vanta Street Umreth-388220', 'ANAND', 'GUJARAT', '', '170', '1030', 'Renewal Hostel Fee2016-17'),
(62, '150280111007', 'H', '125', 'Patel Bhavesh Dineshbhai', 'ST', 'N plus 1', 'UG', 'EC', 3, '8980736970', '291509', '21/10/16', '', '', '', '', '', 'sagar.ddu@gmail.com', 'Dolatpara Junagadh 362037', 'Junagadh', 'Gujarat', '', '170', '1030', ''),
(63, '140280103021', 'H', '126', 'zala rajesh jagmalbhai', 'SEBC', 'Regular', 'UG', 'BioMedicacal', 5, '8347830182', 'DU53643522', '03/09/16', '', '7698583063', '2014', 'DU30943737', 'DU52557937', 'dipakparmar99044@gmail.com', 'mahavir nagar 61/A jamnagar', 'jamnagar', 'gujarat', '', '170', '1030', ''),
(64, '160280116040', 'H', '126', 'Makwana Kaushik Bharatbhai', 'SC', 'Regular', 'UG', 'IT', 1, '9714063252', '291317', '08/08/16', '', '', '', '', '', 'jadavharesh181297@gmail.com', 'TO KALMAD TA MULI DIST SURENDRANAGAR', 'SURENDRANAGAR', 'GUJARAT', '', '170', '1030', ''),
(65, '140280106016', 'H', '126', 'Chaudhary Narottam Kanjibhai', 'SEBC', 'N plus 1', 'UG', 'Civil', 5, '9909232223', '291188', '18/07/16', '', '', '', '', '', 'er.rameshselana@gmail.com', 'Plot no 6A Pandya society', 'Bhavnagar', 'Gujarat', '', '170', '1030', ''),
(68, '160280116107', 'H', '127', 'Umrniya Chirag Dilipbhai', 'SEBC', 'N plus 1', 'UG', 'IT', 1, '9426643565', '291488', '03/10/16', '', '', '', '', '', 'rathod3334@gmail.com', '34/2 satyam nagar near arun society dalmil road surendranagar', 'surendranagar', 'gujarat', '', '170', '1030', ''),
(69, '160280116104', 'H', '128', 'Timbal Mayank Prakashbhai', 'SEBC', 'Regular', 'UG', 'IT', 1, '9924038319', '291254', '04/08/16', '', '', '', '', '', 'chiragpandav1997@gmail.com', 'KATARGAM SURAT', 'SURAT', 'GUJRAT', '', '170', '1030', ''),
(70, '160280113005', 'H', '128', 'Bhadka Yogesh Mohanbhai', 'SEBC', 'Regular', 'UG', 'Environmental', 1, '8487048154', '291520', '22/11/16', '', '', '', '', '', 'solankinitish2442@gmail.com', 'AT-ARNEJ  TA-KODINAR', 'GIR SOMNATH', 'GUJARAT', '', '170', '1030', ''),
(71, '140280105056', 'H', '129', 'SONI SWARUP JAGDISHBHAI', 'OPEN', 'Regular', 'UG', 'Chemical', 5, '8980392350', 'DU53717486', '06/09/16', '', '8980392352', '2014-15', 'DU31584522', 'DU52123450', 'sonagrapravin1478@gmail.com', 'NEAR HANUMANTEMPLE KHARIVADI HALVAD', 'MORBI', 'GUJARAT', '', '170', '1030', ''),
(72, '140280105040', 'H', '129', 'RAMANI AJAY MUKESHBHAI', 'OPEN', 'Regular', 'UG', 'Chemical', 5, '8460856465', 'DU53728078', '06/09/16', '', '9974781036', '2014-15', 'DU31497817', 'DU52227799', 'bnnakum@gmail.com', '114 HARIDHAM SOC.', 'SURAT', 'GUJARAT', '', '170', '1030', ''),
(73, '140280105026', 'H', '129', 'Mendapara Nikunj Prafulbhai', 'OPEN', 'Regular', 'UG', 'Chemical', 5, '9712377515', 'DU53943121', '13/09/16', '', '9925421297', '2014', 'DU31516041', 'DU52661719', 'ankushpandita999@gmail.com', 'BLOCK B J4 ROOM NO. 209 CHANNI HIMMAT', 'JAMMU', 'J&K', '', '170', '1030', ''),
(74, '140280109063', 'H', '130', 'PARGI MAYURKUMAR BHEMABHAI', 'ST', 'Regular', 'UG', 'Electrical', 5, '9913631271', 'DU53791544', '08/09/16', '', '9712327127', '2014', 'DU13093885', 'DU52725139', 'ashvin.ld.32@gmail.com', 'A-111 sitaram soc. P- 1 punagam road surat', 'Surat', 'Gujarat ', '', '170', '1030', ''),
(75, '140280106050', 'H', '130', 'MALI MAYUR KANJIBHAI', 'SEBC', 'Regular', 'UG', 'Civil', 5, '9586099039', 'DU53812287', '08/09/16', '', '9624722320', '2014', 'DU31051949', 'DU52572530', 'mehulchavda2010@gmail.com', 'KRUSHNANAGAR TO HALVAD TA HALAVAD', 'MORBI', 'GUJARAT', '', '170', '1030', ''),
(76, '140280113024', 'H1', '130', 'Mali Jayesh Kanjibahi', 'SEBC', 'N plus 1', 'UG', 'Environmental', 3, '7818909771', '291375', '12/09/16', '', '', '', '', '', 'baladaniyasharad98@gmail.com', 'C/5  LAXMI NAGAR SOC.', 'SURAT', 'GUJARAT', '', '170', '1030', ''),
(77, '140280113033', 'H', '131', 'JOSHI PARTH SHAILESHBHAI', 'OPEN', 'Regular', 'UG', 'Environmental', 5, '8460619722', 'DU54006797', '14/09/16', '', '7778051639', '2014', 'DU31933000', 'DU51858770', 'ahirmayur733@gmail.com', 'H/226  l.d. collage of hostel', 'Surat', 'Gujrat', '', '170', '1030', ''),
(78, '', 'H', '131', 'RAVAL BHARGAV U', 'SEBC', 'Regular', 'UG', 'Environmental', 3, '9033285887', '291555', '09/02/17', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(79, '160280109102', 'H', '131', 'Senta Vishal Himmatbhai', 'SEBC', 'N plus 1', 'UG', 'Electrical', 1, '8140929342', '291552', '09/02/17', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(80, '150280117021', 'H', '201', 'KALSARIYA SURESH PRAVINBHAI', 'SEBC', 'Regular', 'UG', 'IC', 5, '7778919939', 'DU54176066', '19/09/16', '', '9909608871', '2014', 'DU31459165', 'DU52798537', 'sonagrabhavesh@gmail.com', 'KRUSHNANAGRA MORBIDARWAJABAHAR HALVAD', 'MORBI', 'GUJARAT', '', '170', '1030', ''),
(81, '140280106031', 'H', '201', 'HADIYA DHARMESH ANANDBHAI', 'SEBC', 'Regular', 'UG', 'Civil', 5, '8264830779', 'DU53817922', '09/09/16', '', '8264622558', '2014', 'DU31147152', 'DU51859446', 'vidjakaushik@gmail.com', '47 AMBIKANAGAR SOCIETY KADI', 'MEHSANA', 'GUJARAT ', '', '170', '1030', ''),
(82, '140280117059', 'H', '202', 'VASAVA RUTVIK ASHWINBHAI ', 'ST', 'Regular', 'UG', 'IC', 5, '9724506097', 'DU54144910', '19/09/16', '', '9426724449', '2014', '360675', 'DU52516628', 'honestppp@gmail.com', 'At post kachigam baripada', 'Valsad', 'Gujarat', '', '170', '1030', ''),
(83, '160280116102', 'H', '202', 'Tandel Karmishth Ganeshbhai', 'SEBC', 'Regular', 'UG', 'IT', 1, '8153875772', '291221', '03/08/16', '', '', '', '', '', 'devsolanki00@gmail.com', 'ZANPA STREET WANKANER', 'MORBI', 'GUJARAT', '', '170', '1030', ''),
(84, '140280117028', 'H', '202', 'Mishra Nishant Rajiv', 'OPEN', 'N plus 1', 'UG', 'IC', 6, '9727219257', '291536', '27/01/17', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(85, '140280126028', 'H', '203', 'VARIYA KALPESHBHAI GANPATBHAI', 'SEBC', 'Regular', 'UG', 'Rubber', 5, '9016256225', 'DU54178893', '19/09/16', '', '9574774976', '2014', 'DU31824224', 'DU52797349', 'cvijay969@gmail.com', 'TO VASTADI TA WADHAVAN DIST SURENDRANAGAR', 'SURENDRANAGAR', 'GUJARAT', '', '170', '1030', ''),
(86, '140280126002', 'H', '203', 'DABHI ARVINDBHAI DANABHAI ', 'SEBC', 'Regular', 'UG', 'Rubber', 5, '9726060634', 'DU54180222', '19/09/16', '', '9726060634', '2014', 'DU31822327', 'DU52795666', 'sinojianisarg@gmail.com', '102 ANAND APP.KALAWAD ROAD', 'RAJKOT', 'GUJARAT', '', '170', '1030', ''),
(87, '', 'H', '204', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(88, '', 'H', '204', '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(89, '', 'H2', '204', 'Makwana Jaimeen Chimanbhai', 'SEBC', 'N plus 1', 'UG', 'Chemical', 1, '9737114083', '291376', '12/09/16', '', '', '', '', '', 'bmeet261997@gmail.com', 'B 18kashidham society Gorwa ', 'Vadodara', 'Gujarat', '', '170', '1030', ''),
(92, '140280123010', 'H', '206', 'HADIYA PARESHBAI JAYSHUKHBHAI', 'SEBC', 'Regular', 'UG', 'Plastic', 5, '9586190309', 'DU53707835', '06/09/16', 'From H205', '9537630735', '2014', 'DU31060429', 'DU52408826', 'nishantahir18@gmail.com', '3/BCHITRAKUT SOCIETY', 'ANJAR KUTCH', 'GUJRAT', '', '170', '1030', ''),
(93, '140280126011', 'H', '206', 'MER MAHADEV RAJUBHAI', 'SEBC', 'Regular', 'UG', 'Rubber', 5, '9726064611', 'DU54161620', '19/09/16', '', '9974756431', '2014', 'DU31110224', 'DU52796589', 'bholayogeshldce@gmail.com', 'TO LODHAVA TA SUTRAPADA ', 'DIST GIR SOMNATH', 'GUJARAT', '', '170', '1030', ''),
(94, '160280103004', 'H', '206', 'Baldaniya Vipul Bhupatbhai', 'SEBC', 'N plus 1', 'UG', 'BioMedicacal', 1, '9925721330', '291412', '21/09/16', '', '', '', '', '', 'yekihosumi1@gmail.com', 'L  D C E BOYS HOSTEL', 'ZUNHEBOTO', 'NAGALAND', '', '170', '1030', ''),
(97, '160283119030', 'H', '208', 'Solanki Karmvirsinh Mansungji', 'OPEN', 'Regular', 'UG', 'Mechanical', 3, '9712117066', '291521', '22/11/16', 'From H311', '', '', '', '', '', '', '', '', '', '', '', ''),
(99, '160280119042', 'H', '208', 'Vadher Karan Pramodbhai', 'SEBC', 'N plus 1', 'UG', 'Mechanical', 2, '9099095285', '291584', '30/03/17', 'From H311', '9824256860', '', '', '', '', '', '', '', '', '', '', ''),
(102, '140280129039', 'H', '210', 'PARMAR DIPAK KISHORBHAI', 'SC', 'Regular', 'UG', 'Textile', 5, '7405271189', 'DU53709457', '06/09/16', '', '9824837130', '2014', 'DU30937524', 'DU52637780', 'viral.kapadiya1@gmail.com', 'bh. ramnath temle  jetpur 360370', 'rajkot', 'gujarat', '', '170', '1030', ''),
(103, '140280123017', 'H', '210', 'PANCHAL DIP RAMESHBHAI', 'SEBC', 'Regular', 'UG', 'Plastic', 5, '9723956410', 'DU53783140', '08/09/16', '', '9723956410', '2014', 'DU31796207', 'DU52513713', 'arjunvasava1983@gmail.com', 'AT-UMARDA TA-SAGBARA DIST-NARMADA', 'NARMADA', 'GUJARAT', '', '170', '1030', ''),
(104, '140280109099', 'H', '211', 'JADAV HARESHBHAI RAMESHBHAI', 'SEBC', 'Regular', 'UG', 'Electrical', 3, '9974385538', 'DU53960303', '13/09/16', '', '9586191518', '2016', '291173', 'DU52683090', 'ldceravikamaliya@gmail.com', '01 kamaliya street kalmodar', 'Bhavnagar', 'Gujarat', '', '170', '1030', ''),
(105, '160280117035', 'H', '211', 'Patel Bhavin Maganbhai', 'ST', 'Regular', 'UG', 'IC', 1, '7046330027', '291265', '05/08/16', '', '', '', '', '', 'cagohel1@gmail.com', 'b 12 vasundhra residency', 'vavdi', 'gujarat', '', '170', '1030', ''),
(106, '140280116026', 'H', '212', 'HADIYAL PARESH GANGARAMBHAI', 'SEBC', 'Regular', 'UG', 'IT', 5, '7048314014', 'DU53769017', '07/09/16', '', '9727985466', '2014', '360938', 'DU52634376', 'udaypatel03@gmail.com', 'Bilpudi Sadak Faliya Ta Dharampur Dist Valsad Pin Code 396050', 'Valsad', 'Gujarat', '', '170', '1030', ''),
(107, '140280116112', 'H', '212', 'SOLANKI DEV MUKESHBHAI', 'SEBC', 'Regular', 'UG', 'IT', 5, '8905299915', 'DU53850433', '10/09/16', '', '9913605786', '2014', 'DU31251797', 'DU52750441', 'mehul.jadav@gmail.com', 'opposite mahakali temple', 'junagadh', 'GUJARAT', '', '170', '1030', ''),
(108, '160280119063', 'H', '213', 'Patel Bhargav Vishnubhai', 'OPEN', 'Regular', 'UG', 'Mechanical', 1, '7574032092', '291266', '05/08/16', '', '', '', '', '', 'utkarsh0793@gmail.com', 'b 33 punjan raw hose bardolisurat 394601', 'SURAT', 'GUJARAT', '', '170', '1030', ''),
(109, '', 'H', '213', 'Chudasma Himanshu Hiteshbhai', 'OPEN', 'Regular', 'UG', 'Mechanical', 1, '8140203956', '291286', '05/08/16', '', '', '', '', '', 'bhanderimehul42@yahoo.com', 'c 3 paradise park near satyam colony air force road 2 ', 'jamnagar', 'gujarat', '', '170', '1030', ''),
(110, '160280119036', 'H', '213', 'Jalondhara Prakash Sondabhai', 'SEBC', 'N plus 1', 'UG', 'Mechanical', 1, '8469103804', '291466', '26/09/16', '', '', '', '', '', 'mayur150694@gmail.com', 'VIDYADHAM SOCIETY SAHKAR NAGAR GARABADA ROAD DAHOD 389151', 'DAHOD', 'GUJARAT', '', '170', '1030', 'HOSTEL FEES'),
(111, '160280117033', 'H', '214', 'Parmar Vishal Ramnikbhai', 'SEBC', 'Regular', 'UG', 'IC', 1, '7574012038', '291217', '03/08/16', 'from H207', '', '', '', '', 'saagardaxini65@gmail.com', '4 MAHALAXMI SOCIETY MALPUR ROAD MODASA', 'ARAVALLI', 'GUJARAT', '', '170', '1030', 'NA'),
(112, '160280119096', 'H', '214', 'Raval Janmejay Janakbhai', 'OPEN', 'Regular', 'UG', 'Mechanical', 1, '9925081227', '291304', '06/08/16', '', '', '', '', '', 'jaimeshc@gmail.com', 'A/34 Pushpadhan Bunglows Link Road', 'BHARUCH', 'GUJARAT', '', '170', '1030', 'Renewal Hostel Fee2016-17'),
(113, '160280119089', 'H', '215', 'Rathod Rahul Rashikbhai', 'SC', 'Regular', 'UG', 'Mechanical', 1, '8238099103', '291219', '03/08/16', '', '', '', '', '', 'sagarvagadiyamech64@gmail.com', 'navagam near gondal', 'rajkot', 'gujarat', '', '170', '1030', ''),
(114, '160280119114', 'H', '215', 'Umrniya Yash Navinchandra', 'SEBC', 'Regular', 'UG', 'Mechanical', 1, '9924203741', '291306', '06/08/16', '', '', '', '', '', 'dpdurgeshparmar@gmail.com', 'SONI BAZAR DARBARGADH CHOWK NR SHYAMKUNVARBAI WADI & HAVELI RAJKOT', 'RAJKOT', 'GUJARAT', '', '170', '1030', 'HOSTEL RENEWAL FEE'),
(117, '160280119014', 'H', '217', 'Chaudhari Mayank Jashwantbhai', 'ST', 'Regular', 'UG', 'Mechanical', 1, '9687876394', '291293', '06/08/16', '', '', '', '', '', 'rhitesh98@yahoo.com', '50 samarpan Soci near chowksi wadi Adajan Surat', 'Surat', 'Guajrat', '', '170', '1030', ''),
(118, '160280119030', 'H', '217', 'Gamit Tejas Ukajibhai', 'ST', 'Regular', 'UG', 'Mechanical', 1, '7434060624', '291441', '23/09/16', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(119, '160280123011', 'H', '218', 'Kapadiya Sanjay Govindbhai', 'OPEN', 'Regular', 'UG', 'Plastic', 1, '9979263733', '291222', '03/08/16', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(120, '160280123001', 'H', '218', 'Baldaniya Akash Bharatbhai', 'SEBC', 'Regular', 'UG', 'Plastic', 1, '9904190914', '291257', '04/08/16', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(121, '160280117016', 'H', '218', 'Jinjala Sanjay Dulabhai', 'SEBC', 'N plus 1', 'UG', 'IC', 1, '8140678549', '291510', '21/10/16', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(122, '140280107057', 'H', '219', 'PANDAV CHIRAG A', 'SEBC', 'Regular', 'UG', 'Computer', 5, '9904431013', 'DU53710934', '06/09/16', '', '9375777488', '2014', 'DU31854628', 'DU52452698', '', '', '', '', '', '', '', ''),
(123, '140280107023', 'H', '219', 'GADHAVI MAHENDRA', 'SEBC', 'Regular', 'UG', 'Computer', 5, '7874433141', 'DU54028820', '15/09/16', 'From A109 by Rector Sir', '9925199018', '2014', 'DU27243004', 'DU52451190', 'kathada vadi vistar  mandvi', 'kutch', 'gujarat', '1.40E+11', '', '', '', ''),
(124, '160280109004', 'H', '219', 'Balsara Jay Shaileshbhai', 'SEBC', 'N plus 1', 'UG', 'Electrical', 1, '9714241398', '291547', '09/02/17', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(125, '150280129004', 'H', '220', 'BALDANIYA SHARADKUMAR HIMATBHAI', 'SEBC', 'Regular', 'UG', 'Textile', 3, '8460722934', 'DU53923866', '12/09/16', 'from H225', '9909882154', '2015', '291166', 'DU52729527', '', '', '', '', '', '', '', ''),
(126, '150280123032', 'H', '220', 'Vala ashvin manubhai', 'SEBC', 'Regular', 'UG', 'Plastic', 3, '8469368796', 'DU54051966', '15/09/16', 'from H224', '8469368796', '2015', '291165', 'DU52688290', '', '', '', '', '', '', '', ''),
(127, '160280126012', 'H', '221', 'Jan Prince Mansukhbhai', 'OPEN', 'Regular', 'UG', 'Rubber', 1, '7874526224', '291214', '03/08/16', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(128, '160280126011', 'H', '221', 'Hadiya Umesh Najabhai ', 'SEBC', 'Regular', 'UG', 'Rubber', 1, '8238991012', '291284', '05/08/16', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(129, '160280129021', 'H', '221', 'Nakum Janak Nagjibhai', 'SEBC', 'N plus 1', 'UG', 'Textile', 1, '7878106777', '291385', '15/09/16', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(130, '160280129015', 'H', '222', 'Kidecha Yogesh Shaileshbhai', 'SEBC', 'Regular', 'UG', 'Textile', 1, '9904971673', '291253', '04/08/16', 'From H223', '', '', '', '', '', '', '', '', '', '', '', ''),
(132, '160280103003', 'H', '222', 'Baldaniya Sanjay Bhurabhai', 'SEBC', 'N plus 1', 'UG', 'BioMedicacal', 1, '9687969615', '291481', '28/09/16', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(135, '140280106127', 'H', '224', 'ANKUSH PANDITA', 'OPEN', 'Regular', 'UG', 'Civil', 5, '9104964263', 'DU54041685', '15/09/16', '', '7405557643', '2014', 'DU31803644', 'DU52837745', '', '', '', '', '', '', '', ''),
(137, '160280123016', 'H', '224', 'NAKUM HIREN P', 'OPEN', 'N plus 1', 'UG', 'Plastic', 1, '9586408830', '291409', '21/09/16', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(138, '150280129011', 'H', '225', 'CHAVDA MEHUL KANTILAL', 'SEBC', 'Regular', 'UG', 'Textile', 3, '7778836326', 'DU53841038', '09/09/16', '', '9974261286', '2016', '291174', 'DU52623089', '', '', '', '', '', '', '', ''),
(139, '140280129058', 'H', '225', 'SONAGRA PRAVINKUMAR BALDEVBHAI', 'SEBC', 'Regular', 'UG', 'Textile', 5, '7698230572', 'DU53752691', '07/09/16', 'From H220', '9638245789', '2016', '291170', 'DU52114181', '', '', '', '', '', '', '', ''),
(140, '140280126030', 'H', '225', 'Zamakiya Chetan Bharatbhai', 'SEBC', 'N plus 1', 'UG', 'Rubber', 5, '7698088460', '291368', '12/09/16', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(141, '140280129002', 'H', '226', 'BALDANIYA MAYUR KALUBHAI', 'SEBC', 'Regular', 'UG', 'Textile', 5, '9909340047', 'DU54174724', '19/09/16', '', '9909340047', '2014', '360561', '52789993', '', '', '', '', '', '', '', ''),
(142, '130280105059', 'H', '226', 'Vala Pradip Jatabhai', 'SEBC', 'Regular', 'UG', 'Chemical', 5, '8530978085', '291591', '27/06/17', '', '9723258521', '', '', '', '', '', '', '', '', '', '', ''),
(146, '160280129003', 'H', '228', 'Patel Anupam Rajnath', 'OPEN', 'Regular', 'UG', 'Textile', 1, '9723567753', '291410', '21/09/16', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(147, '160280113028', 'H', '228', 'Pandya Tushar Atulbhai', 'OPEN ', 'Regular', 'UG', 'Environmental', 1, '9409648027', '291305', '06/08/16', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(148, '140280129055', 'H', '229', 'SONAGRA BHAVESHBHAI DEVSHIBHAI', 'SEBC', 'Regular', 'UG', 'Textile', 5, '7600322437', 'DU53753437', '07/09/16', '', '7698230572', '2016', '291172', 'DU52654995', '', '', '', '', '', '', '', ''),
(149, '150280113062', 'H', '229', 'ZAMAKIYA VIJAYKUMAR BHARATBHAI', 'SEBC', 'Regular', 'UG', 'Environmental', 3, '8238211050', 'DU53960800', '13/09/16', '', '7698088460', '2016', '291171', 'DU52761181', '', '', '', '', '', '', '', ''),
(150, '140280129015', 'H', '229', 'Dabhi Hitesh Dayabhai', 'SEBC', 'N plus 1', 'UG', 'Textile', 5, '8347077306', '291369', '12/09/16', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(155, '', 'H', '301', 'ZIAUDDIN EC 7th sem', 'ICCR', 'Regular', 'UG', 'E.C.', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(157, '140280117030', 'H', '302', 'HATWAR MRUNAL TENIRAM', 'OPEN', 'Regular', 'UG', 'IC', 5, '7600165933', 'DU53776476', '08/09/16', '', '9998210933', '2014', 'DU31925688', 'DU52516338', '', '', '', '', '', '', '', ''),
(158, '140280117005', 'H', '302', 'BHAVSAR MEET DINESHKUMAR', 'OPEN', 'Regular', 'UG', 'IC', 5, '9974655739', 'DU54124076', '18/09/16', '', '9327571156', '2014', '360673', 'DU52426631', '', '', '', '', '', '', '', ''),
(159, '140280116096', 'H', '303', 'SAPARIA HARDIK RAJESHBHAI', 'SEBC', 'Regular', 'UG', 'IT', 5, '7048282231', 'DU54129371', '18/09/16', '', '9016582231', '2014-15', 'DU31442262', 'DU52713788', '', '', '', '', '', '', '', ''),
(160, '140280102060', 'H', '303', 'VORA VICKY NATUBHAI', 'SEBC', 'Regular', 'UG', 'Automobil', 5, '7405060508', 'DU54132284', '18/09/16', '', '8000124158', '2014', 'DU31075233', 'DU52731145', '', '', '', '', '', '', '', ''),
(161, '140280102021', 'H', '303', 'GUPTA SHIVAMkUMAR HARISHCHANDRA', 'OPEN', 'Regular', 'UG', 'Automobil', 5, '7046768026', 'DU54167899', '19/09/16', '', '9824126934', '2014', 'DU31073941', 'DU52730641', '', '', '', '', '', '', '', ''),
(164, '160280106086', 'H', '305', 'Patel Zeel Shaileshkumar', 'OPEN (EWS)', 'Regular', 'UG', 'Civil', 1, '9879163905', '291297', '06/08/16', 'From D405 By Rector Sir', '', '', '', '', '', '', '', '', '', '', '', ''),
(165, '150280106110', 'H', '305', 'Shubhashis Kumar Jena', 'OPEN', 'Regular', 'UG', 'Civil', 4, '7621890244', '291562', '28/02/17', '', '9408912452', '', '', '', '', '', '', '', '', '', '', ''),
(166, '150280102039', 'H', '305', 'Patel Kishan Rameshbhai', 'OPEN', 'N plus 1', 'UG', 'Automobil', 3, '9687710625', '291505', '17/10/16', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(169, '', 'H', '307', 'ALI BEN ALI 5th autp', 'ICCR', 'Regular', 'UG', 'AUTOMOBILE', 4, '9558551453', '', '', 'From H301 By Rector Sir', '', '', '', '', '', '', '', '', '', '', '', ''),
(170, '', 'H', '307', 'PHILIPHOS AYANSA', 'ICCR', 'Regular', 'UG', 'MECHANICAL', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(171, '', 'H', '308', 'AZMAL RAFIK', 'ICCR', 'Regular', 'UG', 'COMPUTER', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(172, '', 'H', '308', 'ELTON CHIAU', 'ICCR', 'Regular', 'UG', 'COMPUTER', 5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(173, '', 'H', '309', 'ALVIN MAVANGA', 'ICCR', 'Regular', 'UG', 'CHEMICAL', 7, '9638993036', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(174, '', 'H', '309', 'MUHAMMAD SIBINDY', 'ICCR', 'Regular', 'UG', 'ELECTRICAL', 7, '9638992631', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(175, '140280106137', 'H', '310', 'YEKIHO SUMI', 'OTHER', 'Regular', 'UG', 'Civil', 5, '8732008536', 'DU54194539', '20/09/16', '', '8732008537', '2014', 'DU31041350', 'DU52685617', '', '', '', '', '', '', '', ''),
(179, '160280740002', 'H', '312', 'Paritosh Kumar Sharma', 'OPEN (ESM)', 'Regular', 'PG', 'Chemical (Rubber)', 1, '7878292036', '291459', '26/09/16', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(180, '160283123001', 'H', '312', 'Prajapati Ajay Jayrambhai', 'OPEN (D2D)', 'Regular', 'UG', 'Plastic', 3, '8866744086', '291475', '27/09/16', 'From A129 (Room Sealed case)', '', '', '', '', '', '', '', '', '', '', '', ''),
(181, '150283123001', 'H', '312', 'Kumar Ashish Pramodkumar', 'OPEN', 'N plus 1', 'UG', 'Plastic', 5, '8000830237', '291543', '27/01/17', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(182, '160280711016', 'H', '313', 'Shah Anil Prakashchandra', 'OPEN', 'Regular', 'PG', 'Mech - Cryo', 1, '8460057093', '291496', '06/10/16', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(183, '160280707018', 'H', '313', 'Patel Mitesh Gulabbhai', 'ST', 'Regular', 'PG', 'Electricalq', 1, '9925822022', '291528', '13/12/16', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(184, '160280708001', 'H', '313', 'Aman Kumar Prasad', 'OPEN', 'N plus 1', 'PG', 'MECHANICAL (CAD-CAM)', 2, '8963853558', '291558', '17/04/17', '', '8107172050', '', '', '', '', '', '', '', '', '', '', ''),
(185, '', 'H', '314', 'Jaru Dharmendra Devayati', 'SEBC', 'Regular', 'PG', 'Mech - Cryo', 1, '7600162632', '291462', '26/09/16', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(186, '160280710003', 'H', '314', 'Boda Nimesh Ratilal', 'OPEN', 'Regular', 'PG', 'Mech - Cryo', 1, '9898560305', '291480', '28/09/16', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(187, '160280708013', 'H', '314', 'Shah Akshay Prabodhbhai', 'OPEN', 'N plus 1', 'PG', 'Mech - Cryo', 2, '9408166032', '291561', '28/02/17', '', '9327325511', '', '', '', '', '', '', '', '', '', '', ''),
(188, '160280116016', 'H', '315', 'Brambhatt Vishal Vipulbhai', 'SEBC', 'Regular', 'UG', 'IT', 1, '9408503781', '291242', '04/08/16', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(189, '160280102028', 'H', '315', 'Oza Jaynesh Nileshkumar', 'SEBC', 'Regular', 'UG', 'Automobile', 1, '9227565501', '291331', '09/08/16', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(190, '160280708002', 'H', '316', 'Chudhari Savan Shaileshbhai', 'ST', 'Regular', 'PG', 'MECHANICAL (CAD-CAM)', 1, '7405162993', '291425', '22/09/16', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(191, '160280708015', 'H', '316', 'Siddhpura Milian Nayanbhai', 'SEBC', 'Regular', 'PG', 'MECHANICAL (CAD-CAM)', 1, '9913841810', '291498', '06/10/16', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(192, '160280708003', 'H', '316', 'Gadhiya Sandip Kunvarjibhai', 'OPEN', 'N plus 1', 'PG', 'MECHANICAL (CAD-CAM)', 1, '9726359205', '291537', '27/01/17', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(193, '160280113025', 'H', '317', 'Odedra Karan Dudabhai', 'SEBC', 'Regular', 'UG', 'Environmental', 1, '9825222168', '291240', '04/08/16', 'From H111', '', '', '', '', 'prajapatiravi847@gmail.com', '5/493 RAMDEV NAGAR STATION ROAD HALOL', 'PANCHMAHAL', 'GUJARAT', '', '170', '1030', ''),
(194, '160280113042', 'H', '317', 'Patel Vaibhav Ambelal', 'ST', 'Regular', 'UG', 'Environmental', 1, '9726080579', '291231', '04/08/16', 'From H111', '', '', '', '', 'rathodvishal41@gmail.com', 'NR.NEW LEUAA PATEL SAMAAJ', 'SHAHID ARJUN ROAD JIRAPA PLOAT', 'GUJARAT', '', '170', '1030', ''),
(195, '', 'H', '317', 'Chaudhri Akash Panchabhai', 'SEBC', 'Regular', 'UG', 'Environmental', 1, '7096895456', '291522', '22/11/16', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(198, '', 'H', '319', 'Patel Sunny Yashwantkumar', 'OPEN', 'Regular', 'PG', 'MECHANICAL (CAD-CAM)', 1, '9408490447', '291451', '23/09/16', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(199, '160280710007', 'H', '319', 'Jainish Chetan Jadav', 'SC', 'Regular', 'PG', 'Mech - Cryo', 1, '9427398831', '291499', '06/10/16', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(202, '', 'H', '321', 'Bharai Nilesh Dineshkumar', 'ST', 'Regular', 'PG', 'ELECTRICAL (APS)', 1, '8866712577', '291423', '22/09/16', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(203, '', 'H', '321', 'Leuva Sagar Dhanjibhai', 'SC', 'Regular', 'PG', 'ELECTRICAL (APS)', 1, '8511505954', '291468', '26/09/16', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(204, '160280723002', 'H', '322', 'Fataniya Bhavin Harishbhai', 'SEBC', 'Regular', 'PG', 'IT', 1, '9913371169', '291430', '22/09/16', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(205, '160280723005', 'H', '322', 'Khata Vijay Punjabhai', 'ST', 'Regular', 'PG', 'IT', 1, '8460377431', '291431', '22/09/16', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(206, '', 'H', '323', 'Sonigra Sagar Shaileshbhai', 'SEBC', 'Regular', 'PG', 'ELECTRICAL (APS)', 1, '9723334563', '291420', '22/09/16', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(207, '', 'H', '323', 'Sonagra Prakash Valjibhai', 'SEBC', 'Regular', 'PG', 'ELECTRICAL (APS)', 1, '9737736674', '291432', '22/09/16', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(208, '160280707024', 'H', '323', 'Rathod Viral Bipinchandra', 'SEBC', 'N plus 1', 'PG', 'ELECTRICAL (APS)', 2, '9409363070', '291559', '28/02/17', '', '99741125298', '', '', '', '', '', '', '', '', '', '', ''),
(209, '160280102023', 'H', '324', 'Makvana Shyam Ashokbhai ', 'SEBC ', 'Regular', 'UG', 'Automobile', 1, '9033492522', '291464', '26/09/16', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(210, '160280117027', 'H', '324', 'Dhokai Nihar Harishkumar', 'OPEN', 'Regular', 'UG', 'IC', 1, '7201963852', '291258', '05/08/16', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(219, '160280109075', 'H', '329', 'Patel MohammedJuned FakirMahammed ', 'SEBC', 'Regular', 'UG', 'ELECTRICAL', 1, '9978568855', '291276', '05/08/16', 'Ph. Temp Room', '', '', '', '', '', '', '', '', '', '', '', ''),
(221, '140280109046', 'H', '330', 'KARAMATA RAJU RANABHAI', 'ST', 'Regular', 'UG', 'Electrical', 5, '7359338578', 'DU53648106', '03/09/16', 'From D427 By Rector Sir Dt. 18/03/17', '9662134621', '2014', 'DU31012506', 'DU52275149', 'At Dhelana Ta Mangarol', 'Junagadh', 'Gujarat', '1.40E+11', '', '1030', '', ''),
(225, '160280109007', 'H', '401', 'Barad Ravi Kanabhai', 'SEBC', 'Regular', 'UG', 'ELECTRICAL', 1, '9429995101', '291263', '05/08/16', '(Leg)Ph. ', '', '', '', '', '', '', '', '', '', '', '', ''),
(226, '160280106041', 'H', '401', 'Jotva Jignesh Rajabhai', 'SEBC', 'Regular', 'UG', 'Civil ', 1, '9687460151', '291264', '05/08/16', '(Leg)Ph.', '', '', '', '', '', '', '', '', '', '', '', ''),
(227, '160280116055', 'H', '401', 'PARMAR TEJAS BHANUBHAI', 'SEBC', 'N plus 1', 'UG', 'IT', 1, '7817943630', '291403', '21/09/16', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(228, '', 'H', '402', 'Jadeja Hardiksinh Himmatsinh', 'OPEN', 'Regular', 'PG', 'CIVIL-TRANSPORT', 1, '9904677800', '291487', '30/09/16', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(229, '160280733010', 'H', '402', 'Lila Sukhdev Batukbhai ', 'SEBC', 'Regular', 'PG', 'Civil (WRM)', 1, '7567243373', '291453', '23/09/16', 'From H416 by Rector Sir', '', '', '', '', '', '', '', '', '', '', '', ''),
(230, '', 'H', '402', 'Patel Sunil Kanjibhai', 'OPEN', 'N plus 1', 'PG', 'Civil (WRM)', 3, '7284916175', '291592', '27/06/17', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(231, '', 'H', '403', 'Parmar Manoj Balubhai', 'SEBC', 'Regular', 'PG', 'IC (AI)', 1, '9624178515', '291445', '23/09/16', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(232, '160280703002', 'H', '403', 'Derasari Harshit Jitendrabhai', 'OPEN', 'Regular', 'PG', 'IC (AI)', 1, '7405265278', '291460', '26/09/16', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(233, '160280707035', 'H', '404', 'Ardeshana Kashyap Dinesh', 'OPEN', 'Regular', 'PG', 'ELECTRICAL (APS)', 1, '8460398280', '291449', '23/09/16', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(235, '160280117047', 'H', '404', 'Rathod Sagar Hasmukhbhai', 'ST', 'N plus 1', 'UG', 'IC', 2, '7874311415', '291570', '06/03/17', '', '9909493251', '', '', '', '', '', '', '', '', '', '', ''),
(238, '160280743010', 'H', '406', 'Soni Mohit Brijmohan', 'OPEN', 'Regular', 'PG', 'Civil (Geotech)', 1, '9887331439', '291446', '23/09/16', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(240, '160280743008', 'H', '406', 'Masani Ashish Kanjibhai', 'SEBC', 'N plus 1', 'PG', 'Civil (Geotech)', 1, '9033424705', '291515', '25/10/16', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(241, '160280702017', 'H', '407', 'Vasava Ankit Maheshbhai', 'ST', 'Regular', 'PG', 'Computer (SE)', 1, '9558537403', '291421', '22/09/16', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(242, '', 'H', '407', 'Ravat Chirag Dashrathbhai', 'ST', 'Regular', 'PG', 'IT', 1, '9033400749', '291429', '22/09/16', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(243, '160280103067', 'H', '408', 'Das Subhajit  Vishvajit', 'SC', 'Regular', 'UG', 'BioMedicacal', 1, '9862649210', '291277', '05/08/16', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(244, '140280116045', 'H', '408', 'LADVA HARSHADKUMAR JAGDISHBHAI', 'SEBC', 'Regular', 'UG', 'IT', 5, '7283828098', 'DU53832874', '09/09/16', 'From H115', '9913786271', '2014', 'DU30996226', 'DU52699149', 'rahulravi1296@gmail.com', '2 88 shreejitenament', 'baroda', 'gujarat', '', '170', '1030', ''),
(245, '', 'H', '409', 'Panchal Vishal Babulal', 'SEBC', 'Regular', 'PG', 'Computer (SE)', 1, '9904986788', '291419', '22/09/16', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(246, '160280702004', 'H', '409', 'Jesani Pratik Prakashbhai', 'OPEN', 'Regular', 'PG', 'Computer (SE)', 1, '8238507187', '291428', '22/09/16', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(247, '', 'H', '409', 'Purohit Rahul Kishorbhai', 'OPEN', 'N plus 1', 'PG', 'Computer (SE)', 2, '8347032391', '291582', '30/03/17', '', '9374273690', '', '', '', '', '', '', '', '', '', '', ''),
(248, '160280733002', 'H', '410', 'Chaudhri Twinkal Manubhai', 'ST', 'Regular', 'PG', 'Civil (WRM)', 1, '9879783816', '291455', '23/09/16', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(249, '16028073308', 'H', '410', 'Kathrotiya Chirag Kishorbhai', 'OPEN', 'Regular', 'PG', 'Civil (WRM)', 1, '8758646987', '291457', '23/09/16', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(252, '', 'H', '412', 'Patel Akshay JagdiShbhai', 'ST', 'Regular', 'PG', 'Civil (Structural)', 1, '9723075143', '291484', '28/09/16', 'Admission Cancle By Mail', '', '', '', '', '', '', '', '', '', '', '', ''),
(253, '160280720001', 'H', '412', 'Abhishekkumar Singh', 'OPEN', 'Regular', 'PG', 'Civil (Structural)', 1, '9016732758', '291497', '06/10/16', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(254, '160280720020', 'H', '412', 'Shah Harsh Yogeshbhai', 'OPEN', 'N plus 1', 'PG', 'Civil (Structural)', 1, '9409279943', '291512', '21/10/16', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(255, '160280713016', 'H', '413', 'Rabari Alkesh Amrutbhai', 'SEBC', 'Regular', 'PG', 'Civil (Transportation)', 1, '9909713403', '291463', '26/09/16', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(256, '', 'H', '413', 'Patel Kishan Amrutlal', 'OPEN', 'Regular', 'PG', 'Civil (Transportation)', 1, '9913389488', '291476', '27/09/16', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(259, '160280713011', 'H', '415', 'Singh Durgesh Rakeshkumar', 'OPEN', 'Regular', 'PG', 'CIVIL-TRANSPORT', 1, '9410089802', '291489', '03/10/16', 'From H311 By Rector', '', '', '', '', '', '', '', '', '', '', '', ''),
(261, '160280713008', 'H', '415', 'Makwana Rasik Vinubhai', 'SEBC', 'N plus 1', 'PG', 'CIVIL-TRANSPORT', 1, '9427748410', '291534', '26/12/16', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(262, '160280733020', 'H', '416', 'Sagathiya Ravi Balubhai', 'SC', 'Regular', 'PG', 'Civil (WRM)', 1, '9824787083', '291452', '23/09/16', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(264, '160280720004', 'H', '417', 'Dangodra Devang Govindbhai', 'SEBC', 'Regular', 'PG', 'Civil (Structural)', 1, '9624501239', '291494', '03/10/16', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(265, '160280720019', 'H', '417', 'Rajai Jayesh Rameshkumar', 'OPEN', 'Regular', 'PG', 'Civil (Structural)', 1, '9429426450', '291495', '06/10/16', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(266, '160280720016', 'H', '417', 'Patel Darshan Jagdishbhai', 'OPEN', 'N plus 1', 'PG', 'Civil (Structural)', 1, '8460446616', '291526', '13/12/16', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(267, '', 'H', '418', 'Chaudhari Viral Bhavsingbhai', 'ST', 'Regular', 'PG', 'Environmental', 1, '9586211243', '291418', '22/09/16', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(268, '', 'H', '418', 'Kalathiya Diyaj Himmatbhai', 'OPEN', 'Regular', 'PG', 'Textile', 1, '9099291918', '291477', '27/09/16', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(269, '160280720023', 'H', '418', 'Tailor Vipul Naginbhai', 'SEBC', 'N plus 1', 'PG', 'Civil (Structural)', 1, '9033253237', '291514', '24/10/16', 'From A129', '', '', '', '', '', '', '', '', '', '', '', ''),
(272, '160280705009', 'H', '420', 'Kanzariya Vipul Prenjibhai', 'SEBC', 'Regular', 'PG', 'EC (CSE)', 1, '9601850102', '291437', '23/09/16', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(273, '160280705022', 'H', '420', 'Senjaliya Chirag Mansukhbhai', 'OPEN', 'Regular', 'PG', 'EC (CSE)', 1, '9909589758', '291438', '23/09/16', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(274, '150280109111', 'H', '420', 'Gohil Vishal Vallabhbhai', 'SEBC', 'N plus 1', 'PG', 'Electrical', 1, '8140225378', '291535', '26/12/16', 'From H430', '', '', '', '', '', '', '', '', '', '', '', ''),
(277, '160280705016', 'H', '422', 'Parmar Mit Rameshchandra', 'SC', 'Regular', 'PG', 'EC (CSE)', 1, '9426246901', '291436', '23/09/16', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(278, '160280705019', 'H', '422', 'Rathva Rajubhai Ramsingbhai', 'ST', 'Regular', 'PG', 'EC (CSE)', 1, '9687575548', '291442', '23/09/16', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(283, '', 'H', '425', 'Chaudhari Trushar Rasikbhai', 'ST', 'Regular', 'PG', 'IC (AUTO)', 1, '9099636775', '291471', '27/09/16', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(284, '', 'H', '425', 'Sangani Vijay Jadubhai', 'SEBC', 'Regular', 'PG', 'IC (AUTO)', 1, '9537693690', '291491', '03/10/16', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(285, '', 'H', '425', 'Sapariya Ramesh Kantibhai', 'SEBC', 'N plus 1', 'PG', 'IC (AUTO)', 1, '9913780516', '291533', '26/12/16', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(286, '160280716008', 'H', '426', 'Matang Milind Ramjibhai', 'SC', 'Regular', 'PG', 'Chemical (CAPD)', 1, '9558638543', '291439', '23/09/16', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(287, '160280716011', 'H', '426', 'Patel Divyesh Bhikabhai', 'OPEN', 'Regular', 'PG', 'Chemical (CAPD)', 1, '9601159911', '291502', '06/10/16', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(288, '160280716017', 'H', '426', 'Thakor Snehal Kamleshsinh', 'OPEN', 'N plus 1', 'PG', 'Chemical (CAPD)', 1, '9714871739', '291508', '17/10/16', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(291, '', 'H', '428', 'Padsala Amit Dhanjibhai', 'Open', 'Regular', 'PG', 'Chemical (CAPD)', 1, '9537268543', '291440', '23/09/16', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `student` (`Id`, `enroll_no`, `block_no`, `room_no`, `name`, `category`, `addmission_type`, `course`, `branch`, `sem`, `stud_mob`, `hos_fee_receipt_no`, `trans_date`, `remarks`, `parent_mob`, `addmission_year`, `last_hostel_fee_receipt`, `college_fee_receipt`, `stud_mail`, `stud_address`, `district`, `state`, `adhar_no`, `govt`, `non_govt`, `photo`) VALUES
(292, '160280716005', 'H', '428', 'Kevat Svapnil Hiralal', 'SEBC', 'Regular', 'PG', 'Chemical (CAPD)', 1, '9537635740', '291456', '23/09/16', '', '', '', '', '', '', '', '', '', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=299;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
