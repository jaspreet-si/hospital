-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2023 at 08:22 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbhospital1`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `age` varchar(200) NOT NULL,
  `date` varchar(200) NOT NULL,
  `department` varchar(200) NOT NULL,
  `contactno` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  `gender` varchar(200) NOT NULL,
  `time` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `name`, `age`, `date`, `department`, `contactno`, `description`, `gender`, `time`) VALUES
(1, 'lakhi', '24', '11-03-2020', 'Dermatology', '9466921972', 'hiii', 'female', 'Morning');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add appointment', 7, 'add_appointment'),
(20, 'Can change appointment', 7, 'change_appointment'),
(21, 'Can delete appointment', 7, 'delete_appointment'),
(22, 'Can add contact', 8, 'add_contact'),
(23, 'Can change contact', 8, 'change_contact'),
(24, 'Can delete contact', 8, 'delete_contact'),
(25, 'Can add department', 9, 'add_department'),
(26, 'Can change department', 9, 'change_department'),
(27, 'Can delete department', 9, 'delete_department'),
(28, 'Can add doctors', 10, 'add_doctors'),
(29, 'Can change doctors', 10, 'change_doctors'),
(30, 'Can delete doctors', 10, 'delete_doctors'),
(31, 'Can view log entry', 1, 'view_logentry'),
(32, 'Can view permission', 2, 'view_permission'),
(33, 'Can view group', 3, 'view_group'),
(34, 'Can view user', 4, 'view_user'),
(35, 'Can view content type', 5, 'view_contenttype'),
(36, 'Can view session', 6, 'view_session'),
(37, 'Can view appointment', 7, 'view_appointment'),
(38, 'Can view contact', 8, 'view_contact'),
(39, 'Can view department', 9, 'view_department'),
(40, 'Can view doctors', 10, 'view_doctors');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$100000$WvARp3yaMb58$ZB8eCLLTOzUeVUa14duFpl98C0Czcef2JqNXaVZT93k=', '2020-04-11 06:37:00', 1, 'lakhi', '', '', 'lakhi1994dc@gmail.com', 1, 1, '2020-03-16 05:44:27');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `phone`, `email`, `subject`, `message`) VALUES
(1, 'lakhi', '9466921972', 'lakhi1994dc@gmail.com', 'fee', 'hello'),
(2, 'jagdish', '9466921972', 'lakhi1994dc@gmail.com', 'holiday', 'yes'),
(3, 'mamta', '9466921972', 'muskan@gmail.com', 'fee', 'yes'),
(4, 'mehak', '9466921972', 'mahak@gmail.com', 'fee', 'hello');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `name`, `description`, `photo`) VALUES
(8, 'ANESTHESIA AND CRITICAL CARE', 'We all know that medical procedures and surgery can be stressful and frightening. You have probably got plenty of questions. And we’ve got the experts and the replies to help set your mind at ease.', 'image/aa.jpg'),
(9, 'CARDIOLOGY', 'Rana Hospital’s Cardiovascular department is here to keep you going by providing you with preventive, comprehensive, non-invasive, and intensive cardiac care.', 'image/CARDIOLOGY.jpg'),
(10, 'GYNAECOLOGY', 'First trimester. Initial flutters. Initial feedings. Week by week, kick by kick, and we are constantly by your side, guiding you through pre-conception and prenatal care, encouraging your labor and de', 'image/GYNAECOLOGY.png'),
(11, 'DENTISTRY', 'We offer treatment with Implantology, invisible braces, laser dentistry (painless soft tissue treatment), pediatric dentistry, and a painless root canal to patients. All the major to minor surgeries a', 'image/DENTISTRY.jpg'),
(12, 'DERMATOLOGY', 'At Rana Hospital we have a specialized department for the dermatologist and staff that are specially trained to take care of your skin no matter the age or concern. Doctors at our hospital have years', 'image/DERMATOLOGY.jpg'),
(13, 'PATHOLOGY', 'If you or someone you care about suffers from a disorder that affects the endocrine system, you’ll be glad to know that Healing Hospital has a team of expert endocrinologists who care for adults and c', 'image/PATHOLOGY.jpg'),
(14, 'AYURVEDA', 'Ayurveda: India\'s traditional, natural system of medicine that has been practiced for more than 5,000 years. Ayurveda provides an integrated approach to preventing and treating illness through lifesty', 'image/ayur2.png'),
(15, 'NEPHROLOGY', 'Nephrology also studies systemic conditions that affect the kidneys, such as diabetes and autoimmune disease; and systemic diseases that occur as a result of kidney disease, such as renal osteodystrop', 'image/nep1.jpg'),
(16, 'ONCOLOGY', 'Oncology is a branch of medicine that deals with the prevention, diagnosis, and treatment of cancer. A medical professional who practices oncology is an oncologist. Oncology is the study of cancer. An', 'image/ONCO.JPG'),
(17, 'PLASTIC SURGERY', 'Plastic surgery is a surgical specialty involving the restoration, reconstruction, or alteration of the human body. It can be divided into two main categories: reconstructive surgery and cosmetic surg', 'image/PL1.JPG'),
(18, 'ORTHOPEDICS', 'Orthopedics is a medical specialty that focuses on the diagnosis, correction, prevention, and treatment of patients with skeletal deformities - disorders of the bones, joints, muscles, ligaments, tend', 'image/ORT.JPG'),
(19, 'MEDICINE EXPERT', 'At Leading Medicine Guide, you will find exactly the specialist you are looking for: Which physician is the right expert for your medical condition? In which clinic can you really have confidence?', 'image/MED.JPG');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-03-16 05:59:58', '1', 'ANESTHESIA AND CRITICAL CARE', 1, '[{\"added\": {}}]', 9, 1),
(2, '2020-03-16 06:00:02', '2', 'ANESTHESIA AND CRITICAL CARE', 1, '[{\"added\": {}}]', 9, 1),
(3, '2020-03-16 06:02:00', '3', 'CARDIOLOGY', 1, '[{\"added\": {}}]', 9, 1),
(4, '2020-03-16 06:03:18', '4', 'GYNAECOLOGY', 1, '[{\"added\": {}}]', 9, 1),
(5, '2020-03-16 06:04:44', '5', 'DENTISTRY', 1, '[{\"added\": {}}]', 9, 1),
(6, '2020-03-16 06:06:41', '1', 'ANESTHESIA AND CRITICAL CARE', 3, '', 9, 1),
(7, '2020-03-16 06:07:56', '6', 'DERMATOLOGY', 1, '[{\"added\": {}}]', 9, 1),
(8, '2020-03-16 06:09:20', '7', 'PATHOLOGY', 1, '[{\"added\": {}}]', 9, 1),
(9, '2020-03-16 06:18:20', '7', 'PATHOLOGY', 2, '[]', 9, 1),
(10, '2020-03-16 10:32:48', '8', 'ANESTHESIA AND CRITICAL CARE', 1, '[{\"added\": {}}]', 9, 1),
(11, '2020-03-16 10:33:40', '7', 'PATHOLOGY', 3, '', 9, 1),
(12, '2020-03-16 10:33:40', '6', 'DERMATOLOGY', 3, '', 9, 1),
(13, '2020-03-16 10:33:40', '5', 'DENTISTRY', 3, '', 9, 1),
(14, '2020-03-16 10:33:40', '4', 'GYNAECOLOGY', 3, '', 9, 1),
(15, '2020-03-16 10:33:41', '3', 'CARDIOLOGY', 3, '', 9, 1),
(16, '2020-03-16 10:33:41', '2', 'ANESTHESIA AND CRITICAL CARE', 3, '', 9, 1),
(17, '2020-03-16 10:35:36', '9', 'CARDIOLOGY', 1, '[{\"added\": {}}]', 9, 1),
(18, '2020-03-16 10:36:59', '10', 'GYNAECOLOGY', 1, '[{\"added\": {}}]', 9, 1),
(19, '2020-03-16 10:38:13', '11', 'DENTISTRY', 1, '[{\"added\": {}}]', 9, 1),
(20, '2020-03-16 10:39:42', '12', 'DERMATOLOGY', 1, '[{\"added\": {}}]', 9, 1),
(21, '2020-03-16 10:41:15', '13', 'PATHOLOGY', 1, '[{\"added\": {}}]', 9, 1),
(22, '2020-04-11 08:24:10', '1', 'Dr. K.L. Bansal', 1, '[{\"added\": {}}]', 10, 1),
(23, '2020-04-12 10:16:09', '14', 'AYURVEDA', 1, '[{\"added\": {}}]', 9, 1),
(24, '2020-04-12 10:17:47', '15', 'NEPHROLOGY', 1, '[{\"added\": {}}]', 9, 1),
(25, '2020-04-12 10:19:49', '16', 'ONCOLOGY', 1, '[{\"added\": {}}]', 9, 1),
(26, '2020-04-12 10:21:24', '17', 'PLASTIC SURGERY', 1, '[{\"added\": {}}]', 9, 1),
(27, '2020-04-12 10:22:58', '18', 'ORTHOPEDICS', 1, '[{\"added\": {}}]', 9, 1),
(28, '2020-04-12 10:24:58', '19', 'MEDICINE EXPERT', 1, '[{\"added\": {}}]', 9, 1),
(29, '2020-04-12 10:29:01', '2', 'Dr.Niraj Kumar', 1, '[{\"added\": {}}]', 10, 1),
(30, '2020-04-12 10:33:00', '3', 'Dr.Atul Sharma', 1, '[{\"added\": {}}]', 10, 1),
(31, '2020-04-12 10:35:28', '4', 'Dr.Leena Saju', 1, '[{\"added\": {}}]', 10, 1),
(32, '2020-04-12 10:37:38', '5', 'Dr.Neha Gupta', 1, '[{\"added\": {}}]', 10, 1),
(33, '2020-04-12 10:39:26', '6', 'Dr.Narender Kumar', 1, '[{\"added\": {}}]', 10, 1),
(34, '2020-04-12 10:42:58', '7', 'Dr. K.L. Bansal', 1, '[{\"added\": {}}]', 10, 1),
(35, '2020-04-12 10:44:12', '6', 'Dr.Narender Kumar', 3, '', 10, 1),
(36, '2020-04-12 10:44:12', '5', 'Dr.Neha Gupta', 3, '', 10, 1),
(37, '2020-04-12 10:44:12', '4', 'Dr.Leena Saju', 3, '', 10, 1),
(38, '2020-04-12 10:44:12', '3', 'Dr.Atul Sharma', 3, '', 10, 1),
(39, '2020-04-12 10:44:12', '2', 'Dr.Niraj Kumar', 3, '', 10, 1),
(40, '2020-04-12 10:44:13', '1', 'Dr. K.L. Bansal', 3, '', 10, 1),
(41, '2020-04-12 10:45:43', '8', 'Dr.Niraj Kumar', 1, '[{\"added\": {}}]', 10, 1),
(42, '2020-04-12 10:48:06', '9', 'Dr.Atul Sharma', 1, '[{\"added\": {}}]', 10, 1),
(43, '2020-04-12 10:49:35', '10', 'Dr.Leena Saju', 1, '[{\"added\": {}}]', 10, 1),
(44, '2020-04-12 10:50:56', '11', 'Dr.Neha Gupta', 1, '[{\"added\": {}}]', 10, 1),
(45, '2020-04-12 10:52:20', '12', 'Dr.Narender Kumar', 1, '[{\"added\": {}}]', 10, 1),
(46, '2020-04-12 10:53:57', '13', 'Dr.Nitin Goel', 1, '[{\"added\": {}}]', 10, 1),
(47, '2020-04-12 10:55:22', '14', 'Dr. Parveen Yadav', 1, '[{\"added\": {}}]', 10, 1),
(48, '2020-04-12 10:56:53', '15', 'Dr. Pooja Aggarwal', 1, '[{\"added\": {}}]', 10, 1),
(49, '2020-04-12 10:58:20', '16', 'Dr.Pawan Preet', 1, '[{\"added\": {}}]', 10, 1),
(50, '2020-04-12 10:59:44', '17', 'Dr.Rajat Gupta', 1, '[{\"added\": {}}]', 10, 1),
(51, '2020-04-12 11:05:44', '18', 'Dr.Rajni Sharma', 1, '[{\"added\": {}}]', 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'hospitalapp', 'appointment'),
(8, 'hospitalapp', 'contact'),
(9, 'hospitalapp', 'department'),
(10, 'hospitalapp', 'doctors'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-03-11 08:54:10'),
(2, 'auth', '0001_initial', '2020-03-11 08:54:13'),
(3, 'admin', '0001_initial', '2020-03-11 08:54:13'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-03-11 08:54:13'),
(5, 'contenttypes', '0002_remove_content_type_name', '2020-03-11 08:54:14'),
(6, 'auth', '0002_alter_permission_name_max_length', '2020-03-11 08:54:14'),
(7, 'auth', '0003_alter_user_email_max_length', '2020-03-11 08:54:14'),
(8, 'auth', '0004_alter_user_username_opts', '2020-03-11 08:54:14'),
(9, 'auth', '0005_alter_user_last_login_null', '2020-03-11 08:54:15'),
(10, 'auth', '0006_require_contenttypes_0002', '2020-03-11 08:54:15'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2020-03-11 08:54:15'),
(12, 'auth', '0008_alter_user_username_max_length', '2020-03-11 08:54:16'),
(13, 'auth', '0009_alter_user_last_name_max_length', '2020-03-11 08:54:16'),
(14, 'hospitalapp', '0001_initial', '2020-03-11 08:54:16'),
(15, 'hospitalapp', '0002_auto_20200311_1103', '2020-03-11 08:54:18'),
(16, 'hospitalapp', '0003_contact', '2020-03-11 08:54:18'),
(17, 'sessions', '0001_initial', '2020-03-11 08:54:18'),
(18, 'hospitalapp', '0004_auto_20200311_1559', '2020-03-11 10:30:10'),
(19, 'hospitalapp', '0005_department', '2020-03-16 05:55:03'),
(20, 'hospitalapp', '0006_doctors', '2020-04-11 06:23:08'),
(21, 'hospitalapp', '0007_auto_20200411_1345', '2020-04-11 08:15:58'),
(22, 'hospitalapp', '0008_auto_20200411_1347', '2020-04-11 08:18:19'),
(23, 'admin', '0003_logentry_add_action_flag_choices', '2023-04-11 10:59:31'),
(24, 'auth', '0010_alter_group_name_max_length', '2023-04-11 10:59:31'),
(25, 'auth', '0011_update_proxy_permissions', '2023-04-11 10:59:31'),
(26, 'auth', '0012_alter_user_first_name_max_length', '2023-04-11 10:59:31');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('adxc1i5k24ew974jbzvjgmj4eio6ecko', 'MDhkNDVjMjg0YTllYjQwOTYwM2U5NDZhNzJmOGQzMDcxYmQ0OGE4ZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMjhlM2ViYTI0Y2E1YjVjZWNlZmI0NDgyZTJiNGQ3YTlmNDMyMWU4In0=', '2020-04-25 06:37:00'),
('zizxe7rv5ehbywsl6jjq4774e3rbos11', 'MDhkNDVjMjg0YTllYjQwOTYwM2U5NDZhNzJmOGQzMDcxYmQ0OGE4ZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMjhlM2ViYTI0Y2E1YjVjZWNlZmI0NDgyZTJiNGQ3YTlmNDMyMWU4In0=', '2020-03-30 05:48:16');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `qualification` varchar(200) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL,
  `department_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `name`, `qualification`, `photo`, `description`, `department_id`) VALUES
(7, 'Dr. K.L. Bansal', 'MBBS', 'image/dr1_Mi1RIsP.png', 'Assess Patients’ Conditions', 8),
(8, 'Dr.Niraj Kumar', 'MBBS', 'image/dr2.png', 'Create Treatment Plans', 15),
(9, 'Dr.Atul Sharma', 'MBBS', 'image/dr3.png', 'Perform Routine Physicals', 16),
(10, 'Dr.Leena Saju', 'MBBS', 'image/dr6.png', 'Medical Doctor Duties and Responsibilities', 17),
(11, 'Dr.Neha Gupta', 'MBBS', 'image/dr5.png', 'promoting health education', 9),
(12, 'Dr.Narender Kumar', 'MBBS', 'image/dr4.png', 'performing surgical procedures', 19),
(13, 'Dr.Nitin Goel', 'MBBS', 'image/dr8.png', 'teaching traning doctors', 18),
(14, 'Dr. Parveen Yadav', 'MBBS', 'image/dr7.png', 'leading a medical team', 10),
(15, 'Dr. Pooja Aggarwal', 'MBBS', 'image/dr14.png', 'planning treatment requirements', 13),
(16, 'Dr.Pawan Preet', 'MBBS', 'image/dr10.png', 'monitoring and administering medication', 12),
(17, 'Dr.Rajat Gupta', 'MBBS', 'image/dr9.png', 'Undertaking patient consultations', 11),
(18, 'Dr.Rajni Sharma', 'MBBS', 'image/dr12.png', 'Organising workloads', 19);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hospitalapp_doctors_department_id_3e0e4edf_fk_department_id` (`department_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `doctors`
--
ALTER TABLE `doctors`
  ADD CONSTRAINT `hospitalapp_doctors_department_id_3e0e4edf_fk_department_id` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
