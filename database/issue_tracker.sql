-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 03, 2025 at 02:20 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `issue_tracker`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `issue_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `issue_id`, `user_id`, `body`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 'Nobis sit sunt temporibus sapiente animi qui nobis.', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(2, 2, 0, 'Ut hic quibusdam dicta aperiam dolor sit tenetur quis molestiae et sed nemo mollitia sint voluptate.', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(3, 2, 0, 'Quod itaque quidem ea consequatur ab deleniti enim recusandae quia voluptatem aut vero eos.', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(4, 3, 0, 'Rem reprehenderit impedit nostrum earum velit consectetur eos culpa.', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(5, 3, 0, 'Provident quidem ad eius unde tempora sed iure.', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(6, 3, 0, 'Error corrupti quas minus qui odit veritatis provident.', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(7, 5, 0, 'Accusantium commodi et fugit delectus minus id esse voluptas qui non quae error quis tempora necessitatibus ea.', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(8, 6, 0, 'Consequuntur asperiores autem aliquid nihil nulla fugit eveniet rerum ut esse nulla explicabo pariatur unde facere.', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(9, 7, 0, 'Illum sunt soluta dolorem aperiam non placeat veritatis laborum a non harum qui non.', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(10, 7, 0, 'Dolores autem itaque magnam sed tempore et distinctio ullam dolores quaerat voluptatem occaecati minus suscipit.', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(11, 8, 0, 'Necessitatibus doloremque quibusdam et eligendi nisi voluptatem debitis aliquid.', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(12, 9, 0, 'Suscipit vitae deserunt eveniet beatae accusantium eos autem omnis aperiam omnis sint officiis officia laborum nam.', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(13, 9, 0, 'Odit a ex dicta aut necessitatibus dolor mollitia.', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(14, 10, 0, 'Dolore voluptatem similique eum sint fuga qui illum saepe quis ullam.', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(15, 11, 0, 'Quia in quae quis dignissimos repellat tempora placeat aut perspiciatis.', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(16, 11, 0, 'Voluptatum rerum non minima omnis suscipit alias eum cupiditate expedita.', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(17, 12, 0, 'Natus repellat repellat alias rerum sint quasi autem vel incidunt non magnam ullam quis ab vero repellendus.', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(18, 13, 0, 'Laboriosam dolorem nihil ratione eos reiciendis autem optio deleniti quod facere quod debitis.', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(19, 14, 0, 'Eos nemo hic fugit placeat placeat cupiditate eos dolor aliquid.', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(20, 15, 0, 'Veniam et suscipit velit sapiente ea ut aut quia doloribus sit minus similique enim.', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(21, 15, 0, 'Eum itaque sed sunt beatae voluptates veniam eius debitis facilis et sunt enim ducimus earum quia magnam.', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(22, 15, 0, 'Dolorum beatae repellendus dicta earum asperiores nemo velit vitae quo maiores.', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(23, 16, 0, 'In quo a sunt assumenda dolores saepe commodi eveniet dolores et excepturi debitis.', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(24, 16, 0, 'Repellat dolor blanditiis ex qui omnis sapiente nam optio quasi voluptas quod.', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(25, 16, 0, 'Porro tempora sint magnam earum repudiandae magnam molestiae optio repellendus et velit molestiae.', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(26, 18, 0, 'Voluptas quidem distinctio id quo quas at corporis asperiores sed quasi quae pariatur.', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(27, 18, 0, 'Aliquid eaque consequatur odit nihil et enim repellat sunt consequatur atque voluptas reprehenderit autem modi nihil sit.', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(28, 19, 0, 'Facere cum laborum totam odio molestias maiores perferendis sit.', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(29, 20, 0, 'Eius ipsam vero doloremque inventore sit ut deserunt magnam recusandae.', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(30, 20, 0, 'Exercitationem et architecto voluptas doloribus voluptate laudantium laboriosam asperiores consequatur libero vel illo aliquid dignissimos.', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(31, 21, 0, 'Provident doloremque cum modi ut quia quisquam soluta.', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(32, 21, 0, 'Quasi expedita iure sit autem aut ad amet dolores modi dolores molestias excepturi optio qui est.', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(33, 23, 0, 'Modi reiciendis praesentium eligendi consequatur beatae ducimus quos quisquam itaque.', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(34, 24, 0, 'Non perspiciatis quod eos velit mollitia animi facilis impedit ut aliquam.', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(35, 24, 0, 'Quidem itaque totam quis mollitia ea odio et consequuntur et cum est accusantium.', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(36, 24, 0, 'Occaecati expedita omnis sint ullam ut iste repellat voluptatibus blanditiis similique enim consequatur.', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(37, 25, 0, 'Velit consequuntur cupiditate nam tempora nulla et sit et voluptatem quaerat doloribus quia architecto est aperiam illum.', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(38, 26, 0, 'Tenetur et quaerat dolores recusandae quis consequatur reprehenderit est debitis est facere sed.', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(39, 26, 0, 'Necessitatibus minus quod itaque corporis vel eaque eos voluptatibus repellendus ut voluptas autem id consequatur necessitatibus.', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(40, 26, 0, 'Repellat quo ullam nesciunt officiis ut saepe quos voluptatibus veritatis.', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(41, 27, 0, 'Sed expedita aperiam consectetur doloribus dignissimos adipisci consequuntur dolor nam.', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(42, 27, 0, 'Unde ut sunt fugit corporis nam deleniti amet quia placeat nemo et autem.', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(43, 27, 0, 'Eos dignissimos qui laborum impedit eos dicta quas officiis dolorum mollitia.', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(44, 28, 0, 'Omnis aut et ad sed unde et omnis et et odio quos ea laudantium aspernatur.', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(45, 28, 0, 'Consectetur quia voluptatem explicabo doloremque id facilis nihil esse voluptatem deleniti asperiores fugit voluptates vel.', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(46, 29, 0, 'Possimus aut repudiandae rerum possimus excepturi unde laborum aut assumenda ut impedit perspiciatis numquam.', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(47, 29, 0, 'Sequi minima rerum veniam placeat rerum ratione commodi et vitae ea perferendis non doloremque voluptates dolorum ad.', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(48, 29, 0, 'Consequatur corporis error asperiores saepe corrupti expedita est ipsum dolores.', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(49, 30, 0, 'Dolor magni molestiae dolores qui vel sequi sed maiores ipsa.', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(50, 30, 0, 'Maiores dolor et aut deserunt et sit fuga non perferendis omnis consequuntur quos aliquam nihil est non.', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(51, 31, 0, 'Laborum fugit officiis et quia et nulla deserunt hic dignissimos tempore qui.', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(52, 1, 0, 'Needs to be finished tomorrow!', '2025-08-30 22:55:07', '2025-08-30 22:55:07'),
(53, 35, 0, 'Update as soon as possible', '2025-08-30 23:18:04', '2025-08-30 23:18:04'),
(54, 1, 0, 'hi:/', '2025-08-31 20:36:41', '2025-08-31 20:36:41'),
(55, 1, 0, 'Hello', '2025-09-01 17:56:02', '2025-09-01 17:56:02'),
(56, 1, 0, 'hi', '2025-09-01 22:12:39', '2025-09-01 22:12:39'),
(57, 1, 0, 'hey', '2025-09-01 22:37:34', '2025-09-01 22:37:34'),
(58, 1, 0, 'h', '2025-09-01 22:41:13', '2025-09-01 22:41:13'),
(59, 2, 1, 'hhh', '2025-09-02 17:40:15', '2025-09-02 17:40:15'),
(60, 1, 1, 'hi', '2025-09-02 17:45:52', '2025-09-02 17:45:52'),
(61, 1, 1, 'hello', '2025-09-02 17:56:13', '2025-09-02 17:56:13'),
(62, 1, 1, 'hello', '2025-09-02 18:11:00', '2025-09-02 18:11:00'),
(63, 5, 1, 'hi', '2025-09-02 18:16:28', '2025-09-02 18:16:28'),
(64, 5, 1, 'hi', '2025-09-02 18:16:35', '2025-09-02 18:16:35'),
(65, 36, 1, 'hi', '2025-09-02 18:30:49', '2025-09-02 18:30:49'),
(66, 36, 1, 'hi', '2025-09-02 18:32:25', '2025-09-02 18:32:25'),
(67, 36, 1, 'hi', '2025-09-02 18:32:29', '2025-09-02 18:32:29'),
(68, 36, 1, 'hi', '2025-09-02 18:32:58', '2025-09-02 18:32:58'),
(69, 36, 1, 'hi', '2025-09-02 18:33:12', '2025-09-02 18:33:12'),
(70, 1, 1, 'hello', '2025-09-02 18:45:47', '2025-09-02 18:45:47'),
(71, 1, 1, 'hello', '2025-09-02 20:23:17', '2025-09-02 20:23:17'),
(72, 1, 1, 'hello', '2025-09-02 20:50:21', '2025-09-02 20:50:21'),
(73, 1, 1, 'hello', '2025-09-02 20:57:09', '2025-09-02 20:57:09'),
(74, 6, 1, 'hi', '2025-09-02 20:57:25', '2025-09-02 20:57:25'),
(75, 6, 1, 'hi', '2025-09-02 20:58:38', '2025-09-02 20:58:38'),
(76, 6, 1, 'hi', '2025-09-02 20:58:44', '2025-09-02 20:58:44'),
(77, 6, 1, 'hi', '2025-09-02 21:00:38', '2025-09-02 21:00:38'),
(78, 7, 1, 'hi', '2025-09-02 21:00:55', '2025-09-02 21:00:55'),
(79, 1, 1, 'heyy', '2025-09-02 21:01:52', '2025-09-02 21:01:52'),
(80, 1, 1, 'heyy', '2025-09-02 21:04:53', '2025-09-02 21:04:53'),
(81, 1, 1, 'heyy', '2025-09-02 21:04:57', '2025-09-02 21:04:57'),
(82, 15, 1, 'hi', '2025-09-02 21:05:17', '2025-09-02 21:05:17'),
(83, 1, 1, 'hello', '2025-09-02 21:34:51', '2025-09-02 21:34:51'),
(84, 1, 1, 'hello', '2025-09-02 21:37:27', '2025-09-02 21:37:27'),
(85, 1, 1, 'hi', '2025-09-02 21:38:19', '2025-09-02 21:38:19'),
(86, 34, 1, 'we need to do this', '2025-09-02 21:40:08', '2025-09-02 21:40:08');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `issues`
--

CREATE TABLE `issues` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `status` enum('open','in_progress','closed') NOT NULL DEFAULT 'open',
  `priority` enum('low','medium','high') NOT NULL DEFAULT 'medium',
  `due_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `issues`
--

INSERT INTO `issues` (`id`, `project_id`, `title`, `description`, `status`, `priority`, `due_date`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 1, 'Inventore reiciendis dolore totam eum libero magnam.', 'Ducimus eum sunt molestias debitis quasi quibusdam. Et aperiam deleniti qui nihil ut harum esse ipsa. Maiores quia aut quia consequatur non nihil sunt.', 'closed', 'low', NULL, '2025-08-30 22:03:52', '2025-08-30 22:03:52', NULL),
(2, 1, 'Deleniti molestias quia nostrum eos voluptatem dolorem facere soluta.', 'Beatae molestiae suscipit rerum et nisi aliquid et. Nemo accusamus laborum ut occaecati ipsa dolor. Dolorum quam aut fugit incidunt velit et.', 'closed', 'medium', NULL, '2025-08-30 22:03:52', '2025-08-30 22:03:52', NULL),
(3, 1, 'Aut et quia voluptas ea eum dolorem reiciendis laborum.', 'Ut ducimus consequuntur nulla corporis dolorem. Reprehenderit numquam corrupti ea amet et magni recusandae. Neque enim qui dolore cumque pariatur.', 'in_progress', 'low', '2025-09-21', '2025-08-30 22:03:52', '2025-08-30 22:03:52', NULL),
(4, 1, 'Eos iste excepturi mollitia quam laborum.', 'Neque voluptas est id hic magni. Architecto dolorem dolores quidem nihil voluptas deserunt quia laborum. In id perferendis vel nesciunt nam nesciunt autem voluptate. Nemo maiores recusandae rem id sint dolores.', 'in_progress', 'medium', '2025-09-19', '2025-08-30 22:03:52', '2025-08-30 22:03:52', NULL),
(5, 1, 'Soluta qui neque et perferendis.', 'Quia quia et assumenda velit fugiat molestias. Aperiam eius dolor ut perspiciatis sit deleniti. Magni nobis mollitia placeat ratione.', 'closed', 'high', '2025-09-02', '2025-08-30 22:03:52', '2025-08-30 22:03:52', NULL),
(6, 1, 'Molestias voluptas error sit nihil et culpa ullam.', 'Nihil natus est ipsum dolor quia. Voluptatem minus facere culpa reiciendis placeat magni quo. Velit voluptas et sint excepturi id nostrum illum ducimus.', 'open', 'high', '2025-09-21', '2025-08-30 22:03:52', '2025-08-30 22:03:52', NULL),
(7, 2, 'Velit doloremque molestiae occaecati quia quis sed.', 'Et vel a asperiores rerum aut sed. Corrupti occaecati veritatis omnis eum itaque sed ut. Repellendus nobis maiores est cumque eos. Suscipit consequuntur mollitia culpa quaerat rem nesciunt necessitatibus.', 'in_progress', 'medium', NULL, '2025-08-30 22:03:52', '2025-08-30 22:03:52', NULL),
(8, 2, 'Vel dolores quidem aperiam dolorum eveniet.', 'Alias blanditiis enim reiciendis reprehenderit quia quaerat consequatur. Qui tenetur qui dolores. Modi saepe quia voluptatem molestias omnis inventore. Explicabo quam voluptas natus.', 'closed', 'low', '2025-09-10', '2025-08-30 22:03:52', '2025-08-30 22:03:52', NULL),
(9, 2, 'Soluta quasi dolorum praesentium reiciendis molestiae.', 'Eum repudiandae impedit cum omnis. Quas repellat ad eos neque dolor tempore. Minima dolor et a sit rerum vitae. Error vel quia non quasi natus dolor.', 'closed', 'high', NULL, '2025-08-30 22:03:52', '2025-08-30 22:03:52', NULL),
(10, 2, 'Id magnam illo dolorem ducimus ipsam veniam est.', 'Soluta consequatur molestias est libero dolorem. Expedita sed molestiae distinctio sint. Inventore quo quas odio laboriosam vel. Id iure rem velit voluptatem nobis architecto ipsum.', 'in_progress', 'medium', NULL, '2025-08-30 22:03:52', '2025-08-30 22:03:52', NULL),
(11, 2, 'Labore cumque tempore commodi excepturi consequatur laboriosam impedit.', 'Quia sunt deserunt eos eos neque iure assumenda. Consequuntur qui atque et laboriosam soluta. Fugiat porro quos quaerat sint. Magnam quod non pariatur recusandae.', 'in_progress', 'high', '2025-09-29', '2025-08-30 22:03:52', '2025-08-30 22:03:52', NULL),
(12, 2, 'Et praesentium non sint et repudiandae voluptas itaque.', 'Distinctio nihil nobis ut vero reiciendis non. Mollitia ea non rerum ipsa eos. Possimus voluptatibus aspernatur modi ut eos distinctio. Aut aut accusantium id commodi id. Quia rem est adipisci consequatur.', 'closed', 'low', NULL, '2025-08-30 22:03:52', '2025-08-30 22:03:52', NULL),
(13, 2, 'Et voluptas iusto porro fugiat.', 'Provident porro a deserunt aut officia temporibus. Sequi beatae iusto voluptas rerum. Earum et sit molestiae officiis perferendis architecto.', 'in_progress', 'low', '2025-09-03', '2025-08-30 22:03:52', '2025-08-30 22:03:52', NULL),
(14, 3, 'Qui expedita veniam sit.', 'Esse et magni vero dolorem est nesciunt. Maiores itaque doloribus molestiae aut quia eligendi id sint. Dolores est repellendus nesciunt alias facere aut.', 'in_progress', 'low', '2025-09-11', '2025-08-30 22:03:52', '2025-08-30 22:03:52', NULL),
(15, 3, 'Labore nemo et explicabo dolores qui quod.', 'Rerum laborum quisquam sapiente animi. Neque ducimus reprehenderit dolorem et nihil sunt. Aspernatur minus ullam reiciendis iure et. Exercitationem voluptatum sapiente mollitia accusantium voluptates enim est.', 'in_progress', 'medium', NULL, '2025-08-30 22:03:52', '2025-08-30 22:03:52', NULL),
(16, 3, 'In perferendis enim unde pariatur.', 'Maxime sit aut veniam. Nulla et ea id. Recusandae ea facere quod quaerat.', 'open', 'high', NULL, '2025-08-30 22:03:52', '2025-08-30 22:03:52', NULL),
(17, 3, 'Possimus atque voluptatem consequatur.', 'Nisi magnam atque ratione quis earum. Accusamus dignissimos adipisci illum et aut nesciunt corrupti. Fugiat dolor aut labore. Impedit incidunt commodi ut dolore ratione id.', 'in_progress', 'high', NULL, '2025-08-30 22:03:52', '2025-08-30 22:03:52', NULL),
(18, 3, 'Veritatis tenetur atque harum officiis.', 'Et consequatur facilis officia fuga. Harum quia sunt fugiat vitae quod quae quidem. Sequi necessitatibus quo quos quo rerum porro.', 'open', 'high', '2025-09-29', '2025-08-30 22:03:52', '2025-08-30 22:03:52', NULL),
(19, 3, 'Eos ab doloremque quasi magni recusandae nulla aliquid repellat.', 'Magni consequatur natus ab et enim nihil iusto. Modi odio repellendus id eius doloremque. Aperiam qui aspernatur qui error qui.', 'open', 'low', '2025-09-07', '2025-08-30 22:03:52', '2025-08-30 22:03:52', NULL),
(20, 4, 'Voluptas similique quae rerum facere.', 'Eveniet ut rerum facilis in cupiditate aut. Dolorum et ab quia quo fugiat tempore at voluptates. Quae quo distinctio rerum ea saepe. Adipisci atque facilis voluptatem accusantium eaque placeat eius. Nihil esse non eum ex vel aut.', 'open', 'low', '2025-09-02', '2025-08-30 22:03:52', '2025-08-30 22:03:52', NULL),
(21, 4, 'Praesentium voluptatem rem distinctio velit et eum voluptatum.', 'Sit id omnis dolor vel. Odit et sint et animi sit. Quia nostrum autem veritatis nihil temporibus cum et dolorum. Ad repellendus et non ipsa mollitia.', 'open', 'medium', '2025-09-23', '2025-08-30 22:03:52', '2025-08-30 22:03:52', NULL),
(22, 4, 'Libero laboriosam molestiae ea atque est eligendi.', 'Repellat saepe aliquam corporis occaecati laboriosam nesciunt. Perspiciatis consequatur quia fuga alias repellendus eum ducimus quisquam. Eveniet ipsum doloremque aut aperiam praesentium.', 'in_progress', 'high', '2025-09-16', '2025-08-30 22:03:52', '2025-08-30 22:03:52', NULL),
(23, 4, 'Sint molestiae occaecati aliquid accusantium.', 'Ut non et quibusdam sequi. Quisquam totam earum consequatur pariatur earum est. Voluptas ipsa adipisci repudiandae voluptatum porro.', 'open', 'medium', '2025-09-12', '2025-08-30 22:03:52', '2025-08-30 22:03:52', NULL),
(24, 4, 'Voluptates molestiae laudantium numquam quas omnis consequatur autem.', 'Est beatae optio aperiam aut. Ipsa aliquam qui similique eum corrupti. Cupiditate voluptate possimus laborum est molestias voluptatem. Illum magni reprehenderit et officiis.', 'open', 'high', '2025-09-05', '2025-08-30 22:03:52', '2025-08-30 22:03:52', NULL),
(25, 4, 'Sunt eligendi quasi qui et.', 'Quo cum iste molestiae iure voluptas. Rerum nesciunt provident magni optio nemo. Quia eius ut exercitationem et eos quaerat. Suscipit tenetur voluptas ad sequi asperiores odit ipsum. Quia et autem optio molestiae aspernatur.', 'open', 'high', NULL, '2025-08-30 22:03:52', '2025-08-30 22:03:52', NULL),
(26, 4, 'Est delectus temporibus fugiat est consequatur sed.', 'Ut atque aut alias sint nulla quis vel. Numquam quod sit ab numquam dolores sint. Ad et sed nulla placeat qui. Sed aut officia recusandae harum ad aut placeat.', 'in_progress', 'low', '2025-09-05', '2025-08-30 22:03:52', '2025-08-30 22:03:52', NULL),
(27, 5, 'Quae cupiditate maxime laborum dolores rem quis.', 'Aut excepturi sed rerum voluptatem nulla. Necessitatibus aspernatur corporis omnis in aliquid et quam. Autem repellat id impedit at quod. Harum commodi maxime dolor.', 'closed', 'low', '2025-09-22', '2025-08-30 22:03:52', '2025-08-30 22:03:52', NULL),
(28, 5, 'Veritatis nihil placeat sit qui.', 'Dolorem aliquam ducimus provident velit. Nostrum asperiores consequatur saepe voluptates dolor dolores.', 'closed', 'high', NULL, '2025-08-30 22:03:52', '2025-08-30 22:03:52', NULL),
(29, 5, 'Qui quibusdam pariatur enim explicabo dolorum error dignissimos animi.', 'Voluptatem facere et tempore omnis voluptatem iusto velit. Nostrum sed vitae iste nam nostrum incidunt architecto et. Molestias maxime consequatur asperiores enim.', 'open', 'low', '2025-09-15', '2025-08-30 22:03:52', '2025-08-30 22:03:52', NULL),
(30, 5, 'Et est at nostrum nihil.', 'Facere aut consequatur quaerat et est. Et ut porro a aliquid temporibus nemo. Qui ratione molestiae qui totam accusantium. Quia et pariatur et tenetur.', 'open', 'low', NULL, '2025-08-30 22:03:52', '2025-08-30 22:03:52', NULL),
(31, 5, 'Commodi voluptatem sit quisquam ipsum aut dolore.', 'Et rerum similique omnis. Sapiente veniam dolor omnis cupiditate repellendus perferendis. Voluptate voluptatem autem itaque quidem ipsum.', 'closed', 'low', '2025-09-21', '2025-08-30 22:03:52', '2025-08-30 22:03:52', NULL),
(32, 5, 'Facere odit sunt veritatis blanditiis laboriosam qui delectus ut.', 'Sit cupiditate aut aliquam provident voluptatum soluta quo. Architecto ab ducimus velit est eum consequatur. Debitis asperiores ea ad iusto assumenda. Sit nesciunt perspiciatis odio doloremque molestias magnam dolore.', 'open', 'high', NULL, '2025-08-30 22:03:52', '2025-08-30 22:03:52', NULL),
(33, 5, 'Saepe fugit dolorem impedit qui.', 'Nostrum sapiente aut quia culpa facere. Cupiditate alias veniam velit dolores id deserunt voluptatum. Repudiandae eos nemo commodi eos enim consequuntur et. Voluptate cupiditate velit veniam culpa.', 'open', 'high', NULL, '2025-08-30 22:03:52', '2025-08-30 22:03:52', NULL),
(34, 39, 'How to win', 'Crate a small plan on how to win the game', 'open', 'medium', '2025-08-12', '2025-08-30 22:06:51', '2025-08-30 22:06:51', NULL),
(35, 39, 'Good change', 'Make the big changes for submission', 'open', 'high', '2025-09-01', '2025-08-30 23:17:26', '2025-08-30 23:17:26', NULL),
(36, 1, 'Good change', 'nothing', 'open', 'low', '2025-09-01', '2025-09-02 09:36:47', '2025-09-02 09:36:47', NULL),
(37, 1, 'Disaster Distress Helpline', 'gg', 'open', 'low', '2025-09-20', '2025-09-02 21:38:44', '2025-09-02 21:38:44', 1);

-- --------------------------------------------------------

--
-- Table structure for table `issue_tag`
--

CREATE TABLE `issue_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `issue_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `issue_tag`
--

INSERT INTO `issue_tag` (`id`, `issue_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(2, 2, 1, NULL, NULL),
(3, 2, 3, NULL, NULL),
(4, 2, 5, NULL, NULL),
(5, 3, 3, NULL, NULL),
(6, 3, 6, NULL, NULL),
(7, 4, 1, NULL, NULL),
(8, 4, 3, NULL, NULL),
(9, 5, 1, NULL, NULL),
(10, 5, 6, NULL, NULL),
(11, 6, 1, NULL, NULL),
(12, 6, 4, NULL, NULL),
(13, 7, 1, NULL, NULL),
(14, 7, 5, NULL, NULL),
(15, 8, 1, NULL, NULL),
(16, 8, 4, NULL, NULL),
(17, 9, 2, NULL, NULL),
(18, 9, 3, NULL, NULL),
(19, 9, 4, NULL, NULL),
(20, 10, 3, NULL, NULL),
(21, 11, 2, NULL, NULL),
(22, 11, 4, NULL, NULL),
(23, 12, 2, NULL, NULL),
(24, 12, 3, NULL, NULL),
(25, 13, 6, NULL, NULL),
(26, 14, 5, NULL, NULL),
(27, 15, 2, NULL, NULL),
(28, 15, 4, NULL, NULL),
(29, 16, 4, NULL, NULL),
(30, 17, 4, NULL, NULL),
(31, 18, 3, NULL, NULL),
(32, 19, 1, NULL, NULL),
(33, 19, 2, NULL, NULL),
(34, 19, 6, NULL, NULL),
(35, 20, 2, NULL, NULL),
(36, 20, 4, NULL, NULL),
(37, 20, 5, NULL, NULL),
(38, 21, 3, NULL, NULL),
(39, 21, 5, NULL, NULL),
(40, 22, 2, NULL, NULL),
(41, 23, 2, NULL, NULL),
(42, 24, 5, NULL, NULL),
(43, 25, 4, NULL, NULL),
(44, 26, 1, NULL, NULL),
(45, 26, 5, NULL, NULL),
(46, 27, 6, NULL, NULL),
(47, 28, 3, NULL, NULL),
(48, 29, 3, NULL, NULL),
(49, 29, 5, NULL, NULL),
(50, 30, 1, NULL, NULL),
(51, 30, 3, NULL, NULL),
(52, 31, 1, NULL, NULL),
(53, 31, 4, NULL, NULL),
(54, 32, 3, NULL, NULL),
(55, 32, 6, NULL, NULL),
(56, 33, 6, NULL, NULL),
(58, 35, 4, NULL, NULL),
(61, 1, 2, NULL, NULL),
(62, 1, 4, NULL, NULL),
(63, 1, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_08_30_181700_create_projects_table', 1),
(5, '2025_08_30_181701_create_issues_table', 1),
(6, '2025_08_30_181702_create_tags_table', 1),
(7, '2025_08_30_181703_create_comments_table', 1),
(8, '2025_08_30_181704_create_issue_tag_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `deadline` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `description`, `start_date`, `deadline`, `created_at`, `updated_at`) VALUES
(1, 'maxime quidem maiores', 'Corporis facere harum et odio labore omnis. Delectus harum itaque doloribus non sint. Quia esse voluptatibus quaerat eos est aut.', '2025-07-30', '2025-08-28', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(2, 'quibusdam eligendi iusto', 'Molestiae commodi est ad molestiae voluptatem sint dolor aut. Fugit alias voluptatum id. Saepe sit quo suscipit quia omnis.', '2025-07-15', '2025-07-22', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(3, 'labore totam illum', 'Beatae odio dolor nihil ut veritatis. Possimus dolore rerum officia qui. Velit amet labore et et.', '2025-08-10', '2025-09-05', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(4, 'voluptatum esse cupiditate', 'Ea eaque error assumenda quas. Et in tenetur laudantium eveniet error cum.', '2025-08-01', '2025-08-23', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(5, 'quia impedit rem', 'Enim omnis tempore autem voluptas rem. Error deleniti eius hic enim ea. Ut animi aliquid dicta aspernatur nisi.', '2025-08-28', '2025-09-20', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(6, 'assumenda facilis omnis', 'Rerum aperiam architecto enim et eos est. Officia qui amet ut vel eos iusto ut. Totam ipsa facilis necessitatibus. Officiis pariatur deleniti exercitationem rerum id.', '2025-08-09', '2025-09-01', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(7, 'pariatur temporibus aspernatur', 'Odit itaque odit ut non eligendi. Necessitatibus facere incidunt voluptatum commodi similique aut. Qui consequatur praesentium dolores et esse inventore voluptatem. Voluptatum facere illum non.', '2025-08-23', '2025-09-16', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(8, 'ut est voluptatem', 'Ratione ea et dolores vero assumenda. Aut fugit reiciendis quae ut fugiat dignissimos. Accusamus rem qui modi.', '2025-07-10', '2025-08-03', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(9, 'deleniti consequuntur atque', 'Autem unde necessitatibus dicta nihil aut doloribus sed. Dicta iusto rerum asperiores quisquam delectus. Quia quod totam ipsam itaque ad quia. Deserunt sunt quo labore libero.', '2025-07-06', '2025-07-27', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(10, 'quo veritatis officiis', 'Fuga unde voluptatibus provident ad dolores hic porro. Sunt commodi molestiae sit atque. Ut omnis eos enim deserunt sint odio.', '2025-08-28', '2025-09-19', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(11, 'nihil sequi repudiandae', 'Odit maiores qui saepe voluptas cupiditate. Quidem quisquam est sed voluptates repellendus veritatis quo. Nostrum vero ab quod sunt. Autem in numquam incidunt ut quasi. Fugit asperiores aperiam laudantium dolor incidunt.', '2025-07-26', '2025-08-10', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(12, 'libero dignissimos maxime', 'Doloribus excepturi dolore doloribus veniam ut et. Fugit animi deserunt sed voluptatem.', '2025-07-30', '2025-08-15', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(13, 'cumque cum doloremque', 'Ea non quam ipsam. Iure fugiat perspiciatis dignissimos iure non magnam. Reprehenderit eos libero odio.', '2025-07-18', '2025-08-07', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(14, 'accusantium occaecati ducimus', 'Est corrupti saepe ea maxime repellendus et debitis. Beatae sit quas ad qui. Vero ipsum est rerum molestias vitae consequatur quo accusamus.', '2025-08-17', '2025-09-04', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(15, 'ut quidem quam', 'Error qui asperiores sed vel provident aperiam. Nesciunt quisquam libero nihil inventore quas odio saepe.', '2025-08-16', '2025-09-06', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(16, 'autem et perferendis', 'Enim modi occaecati quibusdam id dolorem veritatis laborum. Est et aut inventore ut. Cum nisi aut omnis. Repellat quia et rem non quas.', '2025-07-21', '2025-08-11', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(17, 'iste consequatur maxime', 'Earum quod id et. Laudantium id aut odit ut. Expedita quae totam ea dolor.', '2025-08-05', '2025-08-30', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(18, 'debitis nulla beatae', 'Tempora dolores cumque sit maxime laudantium cum debitis. Accusamus qui qui facere nihil sapiente possimus. Voluptas tempora nobis maiores similique ipsum.', '2025-08-26', '2025-09-10', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(19, 'ad quis voluptatem', 'Unde voluptates cum libero qui. Sed perspiciatis unde quos necessitatibus. Aut quis recusandae reprehenderit ducimus. Omnis occaecati laboriosam et iste voluptate. Omnis quasi ea et eligendi amet.', '2025-08-04', '2025-08-17', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(20, 'error non reiciendis', 'Rerum hic aliquid sed modi deleniti eligendi. Iure quod ipsum mollitia sequi consectetur voluptates.', '2025-07-23', '2025-08-14', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(21, 'est qui architecto', 'Animi fugit sint dolorum vero sit quisquam hic repellat. Error quia voluptas recusandae modi quo aut.', '2025-08-16', '2025-09-03', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(22, 'quaerat iste occaecati', 'Laborum voluptatibus aliquam rerum officia est. Qui aut dolore doloribus sunt deserunt at sunt. Qui numquam quia voluptatem odio sed.', '2025-07-12', '2025-07-24', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(23, 'deleniti saepe dolorum', 'Reiciendis earum tenetur sapiente voluptates veniam deleniti culpa. Est dolorem illum ut aliquam voluptatibus at voluptas.', '2025-08-30', '2025-09-15', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(24, 'perspiciatis sed laboriosam', 'Omnis beatae tenetur consequuntur et beatae eum culpa. Fugit vitae sapiente reprehenderit libero dignissimos. Animi omnis excepturi itaque est. Et repudiandae et quasi possimus illum rerum.', '2025-07-28', '2025-08-05', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(25, 'autem molestiae consequatur', 'Sequi mollitia sunt voluptate odio optio porro commodi. Fugit maiores recusandae est ab incidunt aut et. Aspernatur non vitae dolor perferendis aperiam quia corrupti. Voluptas delectus earum est tempora exercitationem provident ab sit.', '2025-08-07', '2025-09-02', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(26, 'perspiciatis exercitationem molestias', 'Necessitatibus expedita quam vel laborum. Et ea amet unde quia saepe fugiat molestiae. Asperiores est nemo aut. Expedita voluptatem autem omnis nihil quasi id.', '2025-08-15', '2025-09-13', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(27, 'qui saepe voluptates', 'Quibusdam enim error qui rerum corrupti. Saepe dolorem aut consequatur ipsum nulla sit. Eligendi ipsum et dolorem aut.', '2025-07-20', '2025-08-14', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(28, 'recusandae quia sint', 'Fugit aut assumenda veritatis. Est qui repellat ratione quo dolore fugit quia. Voluptatibus quia dolore vel at veritatis minus aut. Doloribus tenetur voluptatibus voluptatibus perferendis.', '2025-08-25', '2025-09-18', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(29, 'inventore ratione optio', 'Laborum enim sint omnis dolores. Incidunt ullam est reiciendis repellendus laboriosam perferendis consequatur. Tempore dolore quia amet cum quia dolorem in.', '2025-08-25', '2025-09-10', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(30, 'molestias molestiae asperiores', 'Libero quae velit et praesentium tempora sit velit. Dolores perferendis laboriosam blanditiis aspernatur. Rerum deserunt ipsam voluptates nesciunt. Cupiditate iste quia aliquam vel recusandae et excepturi et.', '2025-08-15', '2025-09-02', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(31, 'nihil dolorem nemo', 'Vel voluptatum eveniet excepturi corporis numquam veritatis vero dolorem. Vel excepturi vero quos enim sint nesciunt sit sint. Vel voluptatem alias veritatis deserunt.', '2025-08-04', '2025-08-28', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(32, 'suscipit nihil sit', 'Praesentium suscipit facere itaque veniam mollitia quis placeat. Doloremque minus dignissimos blanditiis sunt veritatis architecto. Non recusandae aut autem similique perspiciatis minus. Impedit quidem rerum libero.', '2025-07-09', '2025-07-16', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(33, 'et beatae itaque', 'Nisi mollitia tenetur amet quam consequatur optio. Nostrum magnam deserunt numquam et et accusantium accusantium consequatur. Officiis debitis eos id aut suscipit est ullam.', '2025-07-13', '2025-07-31', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(34, 'maiores sunt vitae', 'Consectetur error dolores sint minima eum aut. Fugiat quia autem at sequi. Consequatur enim eum consectetur quia et.', '2025-08-06', '2025-08-18', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(35, 'voluptatem fuga est', 'Ipsum asperiores officia culpa ea. Sunt perspiciatis et veniam itaque. Voluptates dolor sed blanditiis eligendi molestiae. Aut sit iusto illum impedit amet.', '2025-07-10', '2025-08-08', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(36, 'ipsam esse dolorem', 'Repellat dicta sunt a dolor voluptatem odio. Dolorum rerum architecto dicta quia. Eos consequatur eaque rem asperiores aut eum hic.', '2025-08-14', '2025-09-13', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(37, 'iure esse harum', 'Voluptas et nisi autem numquam vel est dicta vel. Quis est iste vitae recusandae itaque incidunt. Pariatur consequuntur quisquam dignissimos. Ut recusandae cum mollitia laudantium. Porro occaecati nostrum qui animi et enim vitae ullam.', '2025-07-28', '2025-08-04', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(39, 'GamePlan', 'Creating a fast game plan', '2025-08-06', '2025-08-31', '2025-08-30 22:05:39', '2025-08-30 22:05:39'),
(40, 'Test Project', NULL, NULL, NULL, '2025-09-02 09:29:03', '2025-09-02 09:29:03'),
(41, 'Hello', 'Say hello', '2025-09-03', '2025-09-18', '2025-09-02 18:45:16', '2025-09-02 18:45:16');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('34s67eLHnaiBq4SYqaYXgHr3qQ2dexOSgrN3YO2q', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36 Edg/139.0.0.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoidzl1NkJ0TUYweXU2M0Rra2RzcHNRSnhoWUc0U25tME45U1kxQXFuTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9pc3N1ZXMvMzQvY29tbWVudHMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjM6InVybCI7YTowOnt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1756856521);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `color` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `color`, `created_at`, `updated_at`) VALUES
(1, 'Non', '#10073e', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(2, 'Soluta', '#30f246', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(3, 'Eum', '#3044cd', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(4, 'Aut', '#ebda57', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(5, 'Eaque', '#43f5bc', '2025-08-30 22:03:52', '2025-08-30 22:03:52'),
(6, 'Deserunt', '#e76301', '2025-08-30 22:03:52', '2025-08-30 22:03:52');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Elma Ejupi', 'elmaejupi1000@gmail.com', NULL, '$2y$12$xQ0gQhwNwch4eEtYFNiJNea7Iil5H5CsEW8PdbqgCBmY5i/y0nhLC', NULL, '2025-09-01 23:09:27', '2025-09-01 23:09:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_issue_id_foreign` (`issue_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `issues`
--
ALTER TABLE `issues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `issues_project_id_foreign` (`project_id`),
  ADD KEY `issues_user_id_foreign` (`user_id`);

--
-- Indexes for table `issue_tag`
--
ALTER TABLE `issue_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `issue_tag_issue_id_foreign` (`issue_id`),
  ADD KEY `issue_tag_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_name_unique` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `issues`
--
ALTER TABLE `issues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `issue_tag`
--
ALTER TABLE `issue_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_issue_id_foreign` FOREIGN KEY (`issue_id`) REFERENCES `issues` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `issues`
--
ALTER TABLE `issues`
  ADD CONSTRAINT `issues_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `issues_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `issue_tag`
--
ALTER TABLE `issue_tag`
  ADD CONSTRAINT `issue_tag_issue_id_foreign` FOREIGN KEY (`issue_id`) REFERENCES `issues` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `issue_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
