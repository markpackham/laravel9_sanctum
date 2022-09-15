-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 15, 2022 at 03:42 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel9_sanctum`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_09_14_104823_create_tasks_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'Api Token of Billy', 'd6e3a94150cbd6aee53c5a390cded81f5e7f511e82aee2448e5df00e2d12a6cb', '[\"*\"]', NULL, NULL, '2022-09-14 11:18:29', '2022-09-14 11:18:29'),
(2, 'App\\Models\\User', 1, 'Api Token of Billy', 'af122c2d70e16a3f589d41a2963ed0e5bfa2ce72fc706c1a62efd7c3306ce949', '[\"*\"]', NULL, NULL, '2022-09-14 13:02:23', '2022-09-14 13:02:23'),
(3, 'App\\Models\\User', 1, 'Api Token of Billy', 'fc12a9fcc7c4040cf12a01e982f4486a728d54a00f799b04e8391e5b2c5fac6b', '[\"*\"]', '2022-09-15 11:34:02', NULL, '2022-09-15 11:33:27', '2022-09-15 11:34:02');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'low',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `user_id`, `name`, `description`, `priority`, `created_at`, `updated_at`) VALUES
(1, 14, 'Quae libero amet molestiae perferendis.', 'Officiis eos facilis ut minima est. Quam a ut ipsa tempora sunt. Assumenda nihil nemo corrupti deleniti rem. Deserunt esse perferendis possimus sed.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(2, 1, 'Possimus sit voluptatem quae at impedit.', 'Porro doloribus nihil omnis sint illo. Necessitatibus suscipit nobis qui omnis a qui. Beatae laborum rerum praesentium repellat. Deleniti qui nisi aliquid dolor.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(3, 4, 'Doloremque exercitationem facere sequi non.', 'Qui quasi nisi sed quod facilis. Numquam ut ullam voluptas veniam velit harum labore. Repellendus quia qui labore asperiores voluptas accusamus nostrum doloremque. Rerum mollitia qui velit id.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(4, 18, 'Rerum expedita a laborum aliquid fuga deleniti.', 'Earum consectetur consectetur voluptatem fugiat neque magnam. Dolorem delectus culpa eaque rem similique nihil. Aut blanditiis in distinctio quia.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(5, 17, 'Facilis minima ea qui perferendis aut vel.', 'Sit magni mollitia deserunt repudiandae rerum saepe. Atque vero nihil enim illo ratione. Ratione sit at explicabo maxime. Fugit ipsa sapiente autem sed praesentium.', 'medium', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(6, 6, 'Et labore vero asperiores fuga.', 'Placeat omnis qui ea. Tempora consequatur neque sit at nemo. A id labore maiores eos. Facere tempora omnis id ut sunt deserunt.', 'medium', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(7, 19, 'Sapiente rerum esse molestiae sed.', 'Natus delectus corrupti doloribus dolore. Id itaque et facilis dicta cum. Molestias illum repellat consectetur libero natus et. Omnis inventore quae dolorum aut.', 'medium', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(8, 2, 'Doloremque rerum modi non.', 'Quasi aut atque id aut accusantium voluptatibus. Aut consequatur sint illo deserunt. Sed sed quod molestiae delectus eius est.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(9, 9, 'Omnis quis non officiis.', 'Unde tempora quae ipsum at. Eos facilis amet doloribus sunt ducimus deserunt itaque sapiente. Sunt consequatur ut odit. Enim veniam dolor ut laboriosam. Impedit aut itaque necessitatibus iste.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(10, 22, 'Nulla amet deserunt explicabo est at et qui.', 'Quas dignissimos dolor sint deleniti. Et labore quaerat ullam consequatur repellat et. Nisi ex est quaerat numquam rerum quibusdam voluptas ea. Quia asperiores excepturi et nisi.', 'medium', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(11, 2, 'Adipisci debitis laboriosam non consequatur consequatur quae.', 'Cum quas ea assumenda consectetur distinctio autem commodi vitae. Maiores quia voluptatem enim voluptas illum odit exercitationem voluptas. Error vero commodi dignissimos laboriosam.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(12, 23, 'Accusantium quia ut consectetur placeat nulla nam sed.', 'Hic ratione rerum dolores totam quia qui. Fuga voluptate quo dicta officiis repellat eum autem. A voluptatem corporis doloribus vero quasi. Eius et ullam excepturi quos dolor optio magnam.', 'medium', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(13, 17, 'Autem distinctio eligendi nostrum dolorem placeat beatae placeat sit.', 'Reprehenderit doloremque quasi qui qui. Vitae est nisi natus. Itaque repellat eos consequatur dolorum. Excepturi itaque reiciendis numquam mollitia hic delectus.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(14, 19, 'Odio nostrum laudantium sint consequatur fugit maxime nisi.', 'Eum expedita non ipsam sint voluptatem numquam reiciendis. Nulla velit labore blanditiis ex rerum dolor. Voluptatem quaerat id sit accusamus ex mollitia.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(15, 16, 'Sapiente labore aperiam quasi unde aut voluptas illum.', 'Qui et nihil neque modi. Omnis optio perspiciatis maxime quo perferendis dolorem. Officiis cupiditate ea dolorem omnis fugiat officia. Inventore aspernatur iste quo in quos.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(16, 15, 'Minus error fuga voluptatibus enim atque dolorem enim nostrum.', 'Ipsum eum itaque ullam dolores. Rem aut amet quia. Animi impedit necessitatibus quia aut. Quia qui et debitis ut vel recusandae.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(17, 4, 'Reiciendis illo et officia maxime ab harum ea et.', 'Quam accusamus id natus tempore autem fugiat assumenda. Et aliquid aut rerum eligendi. Velit ipsum voluptas cumque. Vitae beatae et exercitationem ipsa.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(18, 12, 'Blanditiis ex adipisci ut doloribus.', 'Voluptate ipsa et excepturi et. Qui delectus laborum in quia tenetur. Eos asperiores quia sint magni. Vel consequatur tempore quo quo. Aliquid et molestiae tempore nulla exercitationem eum.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(19, 13, 'Officiis quos voluptatum amet itaque minus.', 'Eum illum quia in ipsum quod. Officiis eveniet quia esse nemo inventore. Ipsum nam eos quasi ut neque sed. Pariatur deserunt quidem perspiciatis veritatis atque.', 'medium', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(20, 10, 'Qui corrupti maxime id magnam commodi voluptates.', 'Perspiciatis incidunt et nobis et. Quae omnis eveniet neque id iusto beatae cupiditate. Dolor magni quibusdam aut aut.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(21, 5, 'Quo veritatis soluta iusto et fuga iusto.', 'Sit eligendi temporibus voluptate est qui laudantium voluptas. Commodi et veniam quis sint iure aperiam mollitia. Dolorem ipsum qui ut.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(22, 16, 'Quisquam consequatur reiciendis cumque quisquam ut.', 'Odio eaque ad possimus sequi. Maxime modi perspiciatis impedit maxime ad adipisci. Magni laboriosam voluptatibus deleniti rerum totam velit. Nam earum debitis voluptas quisquam harum voluptas.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(23, 3, 'Similique rerum eum alias sequi provident.', 'Aut quia libero rem fugiat ipsam suscipit deserunt. Dolore aut ab consequuntur sit consequuntur. Voluptatum nostrum ratione ullam cum.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(24, 16, 'Consequatur repudiandae laudantium recusandae odio debitis.', 'Perferendis voluptatem ipsam quas officia nam et esse. Ex molestiae ad qui at aut temporibus. Sint rerum corrupti at facere expedita ratione in amet.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(25, 3, 'Expedita ipsum ex quis ut distinctio laborum laboriosam id.', 'Laudantium doloribus ea reiciendis ducimus excepturi sunt praesentium. Voluptas et vel ex quae dolorem error iusto. Error dolorum ut voluptatem.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(26, 1, 'Voluptates ut aut voluptas sed quam.', 'Sunt soluta eius vel debitis consectetur veritatis. Sint recusandae adipisci cumque reprehenderit autem est. Ad a et ipsam est officiis consequatur sit.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(27, 16, 'Commodi officiis minus ea eveniet.', 'Porro iure qui velit necessitatibus earum sit at officia. Ex modi qui eligendi sint facilis. Enim nam ad dolores et maxime nulla ducimus harum.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(28, 23, 'Sint dignissimos in rerum.', 'Sunt suscipit ab est voluptatem. Delectus necessitatibus quia quo. Minus molestiae blanditiis quia consequatur et laborum.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(29, 25, 'Commodi tempora beatae corrupti eius.', 'Et tempora et doloremque enim reiciendis aperiam voluptatem. Quos voluptates possimus et fugiat autem.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(30, 25, 'Ea ratione quisquam voluptas ipsa repudiandae.', 'Minus omnis sit itaque repellendus. A officiis perferendis recusandae sapiente ducimus alias aut. Dolores cupiditate unde quod. Non numquam assumenda molestiae facilis quo ex omnis.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(31, 24, 'Praesentium natus officia quis dignissimos labore perspiciatis.', 'Cum cumque doloribus sunt culpa ab mollitia dolore. Ut in cum autem illum voluptates magnam incidunt. Eos natus illum dolorem ut nesciunt quo.', 'medium', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(32, 17, 'Assumenda deserunt culpa tempore omnis voluptatibus.', 'Qui laudantium labore culpa accusamus. Molestiae odio perferendis porro id doloremque. Nobis officiis mollitia voluptate porro possimus libero sunt.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(33, 14, 'Sint possimus magni omnis.', 'Nihil et eius culpa quaerat. Vero autem porro et aperiam nemo est. Officia voluptates rerum dolorem praesentium aut ut.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(34, 14, 'Exercitationem perspiciatis odio est qui.', 'Occaecati omnis doloremque pariatur. Aut impedit omnis odit rerum eos. Et error officia aut nisi optio.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(35, 25, 'Quasi enim provident sit consequatur magnam sed dolor.', 'Consequatur impedit aliquid velit expedita laboriosam blanditiis. Vitae soluta voluptate blanditiis qui velit unde. Iusto autem quia possimus quo.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(36, 14, 'Voluptatum et itaque fuga quis fugit.', 'Consequatur optio aut at facilis consequatur non eveniet. Nulla sint sapiente consequatur optio. Ut architecto aperiam eveniet illo omnis sit id ut. Ut et ut laboriosam dolorem eum iusto laborum.', 'medium', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(37, 17, 'Eos rerum perferendis sit beatae.', 'Et architecto ad doloribus quibusdam itaque. Labore qui est est at. Sint odio impedit optio consequuntur. Reprehenderit sed dolor quos ipsam est vel.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(38, 22, 'Maiores alias velit quam commodi.', 'Explicabo dolorem atque amet illum consequatur debitis. Numquam est nihil sunt quisquam. Rerum quo aut placeat placeat.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(39, 1, 'Aut expedita magnam quo excepturi id.', 'Voluptatem architecto possimus quasi dicta fuga. Aliquam blanditiis similique velit omnis et. Explicabo velit error dolor corporis saepe. Illum qui ab soluta quos.', 'medium', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(40, 6, 'Iste cum aut ut voluptas ut aut natus quos.', 'Rerum saepe occaecati ipsam facilis dolores et deserunt. Ad eum iure iure. Quaerat tenetur corporis porro vel et aut id.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(41, 7, 'Beatae fugit est nesciunt repudiandae.', 'Sit modi qui nemo voluptatem quaerat cumque earum. Sunt soluta aut facere eaque quia facere ut. Ut et quas saepe.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(42, 4, 'Iure asperiores nesciunt facilis et qui aut culpa.', 'Voluptatum eum ut dicta ipsum. Fuga repudiandae repellat ut facere eos laborum. Qui eum quae eveniet quae illum ut.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(43, 16, 'Quia et quod velit et accusamus voluptatum.', 'Quia est ipsum labore iste. Est aperiam qui recusandae inventore sit quia nulla. Rerum sunt et rem sit aut qui illum excepturi. Accusantium eaque earum eum aut veniam id voluptate.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(44, 11, 'Iure et odio molestiae amet.', 'Nesciunt officiis ipsa doloribus velit. Sint non eligendi laudantium nam velit qui.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(45, 22, 'Ducimus natus animi aut doloribus.', 'Laboriosam odio aut sed in et. Hic eligendi officiis voluptatem deserunt. Reiciendis sint rem deserunt dolores voluptatem impedit.', 'medium', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(46, 18, 'Quia sunt sunt reiciendis consequatur mollitia.', 'Quia omnis quod nisi non deserunt. Quo neque sequi dolores sed ipsa repellat at est. Quia non officia eaque eaque.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(47, 13, 'Delectus quia eligendi possimus eligendi voluptatibus similique perspiciatis.', 'Non architecto veniam eum praesentium maxime. Quia voluptates molestiae nulla odit. Occaecati quasi dolor non. Blanditiis et eum neque rerum consequatur.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(48, 15, 'Eum soluta blanditiis unde voluptate.', 'Debitis dolores at exercitationem dolor magnam. Quisquam amet molestiae consequatur omnis vel. Quisquam et veniam fugiat beatae neque.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(49, 25, 'Vel reprehenderit dolorum ea iusto.', 'Vel occaecati dolor quasi animi. Occaecati velit et ipsa ut repellat sunt dignissimos.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(50, 20, 'Et nobis et sapiente unde eos.', 'Inventore fuga excepturi suscipit dolore architecto. Nostrum nulla minima blanditiis voluptatum. Modi officia est repellendus. Nisi laborum dolores sit id aut provident.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(51, 15, 'Sunt ipsa est in fuga dolorem.', 'Pariatur voluptatem non quis minima accusantium. In porro reiciendis aut quae saepe minima quo quos. Inventore ea aut ex reprehenderit fugiat repellat minima. Dolor ut aperiam nulla non.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(52, 26, 'Saepe perspiciatis aut fuga quidem odio repellendus accusamus consequatur.', 'Aut aut qui est eos impedit. Quia est vitae sapiente repellendus porro quasi delectus. Alias enim asperiores quia sapiente. Tempore ut vel ut velit.', 'medium', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(53, 4, 'Aperiam sed ducimus saepe provident reiciendis voluptatem aut aspernatur.', 'Sit nobis alias pariatur dolorem quisquam. Cum repellat impedit et nam. Omnis asperiores id voluptates enim et quia. Neque eos voluptatem minus aut.', 'medium', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(54, 11, 'Ullam est fuga odio sint consectetur nulla eos.', 'Voluptatibus voluptatem quia aut a eos autem ab. Odit sed nihil et expedita. Similique accusantium autem ipsum. Nihil qui rerum quis et.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(55, 25, 'Ullam est quasi laboriosam rerum.', 'Debitis laboriosam itaque rerum est ut fugit cum. Ut fugit dolorem deleniti recusandae. Rerum quisquam laborum fugiat reiciendis necessitatibus esse unde. Qui dicta quia et et numquam quia.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(56, 15, 'Reprehenderit aut illum excepturi quo.', 'Distinctio corrupti harum officiis culpa sint cupiditate. Reprehenderit aspernatur cum quia non. Eos vel deserunt occaecati qui sint magni accusamus.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(57, 26, 'Nam doloribus repellendus quia tempora sit.', 'Culpa voluptas ipsam minima iste. Quod cum molestias soluta commodi rem nisi libero dolore. Error deleniti nam unde sit. Totam qui cumque qui dolores autem.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(58, 5, 'Incidunt quaerat voluptatem aliquam facilis culpa cum facilis in.', 'Quia qui ipsum nisi est est dicta rem odio. Harum minima voluptates fugiat qui aut delectus itaque. Modi amet perspiciatis illum quia.', 'medium', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(59, 18, 'Cupiditate sunt dolorem nihil est corrupti quo.', 'Error et dignissimos numquam doloribus dignissimos molestias voluptatum. Iste dolor iste sint deleniti assumenda non fuga. Nostrum animi eum voluptas soluta. Sed temporibus est qui.', 'medium', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(60, 15, 'Numquam deserunt officia perferendis nulla atque tempora ut quia.', 'Adipisci voluptatem dolore blanditiis ducimus tempora. Atque porro asperiores cupiditate. In sunt est sit at.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(61, 24, 'Neque sed porro dicta necessitatibus minima occaecati est iure.', 'Vitae qui qui voluptatem quam voluptatibus occaecati quos. Facere nihil est ut laborum temporibus. At delectus at quia vel sed non rerum. Veniam aut voluptatum sunt quos esse.', 'medium', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(62, 12, 'Qui quis similique voluptate.', 'Suscipit adipisci commodi sunt iste minima itaque ut cumque. Placeat aliquam eum asperiores aut iste dolor ut. Accusantium fugiat nihil dicta.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(63, 2, 'Adipisci consequuntur voluptas tempora voluptatem accusamus.', 'Explicabo voluptates distinctio ea quas nihil ratione. Accusamus sit et placeat dolor sed. Quam repellendus assumenda ut ut quia consectetur non. Aut cumque ullam dolorum natus at.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(64, 17, 'Autem velit sint et qui ea impedit nesciunt ipsa.', 'Illo dolor atque aut. Qui possimus veniam error pariatur. Amet cum sunt voluptate omnis nihil.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(65, 4, 'Repellat beatae voluptatem dolores praesentium voluptas omnis.', 'Nulla adipisci aliquid et id. Non enim consequatur iste. Vero quis adipisci tempore et.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(66, 5, 'Corrupti aperiam magni beatae ut.', 'Optio aut voluptatem nihil nihil id. Animi in perferendis sequi error et. Quia ut id ratione. Accusantium culpa sint in rerum assumenda velit. Dolores ipsum quod ipsa doloremque aut aut soluta.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(67, 11, 'Quo iure cum minus.', 'Ut iste quam enim quo sit ab. Et odit aperiam et et.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(68, 11, 'Odit dolores consequuntur aut inventore quis.', 'Ratione deleniti sint ullam voluptates aut. Voluptatem quo voluptatem ut quaerat. Accusantium aut ullam expedita non.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(69, 8, 'Esse quasi quos vitae assumenda.', 'Voluptas autem laudantium et vel nulla illo. Doloremque cum perferendis facilis magnam voluptatem quod sit. Aut excepturi sunt esse vel alias. Facere officiis itaque quidem consectetur ut.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(70, 3, 'Provident similique ut eum eius.', 'Quia dolores accusamus ut non est. Provident aspernatur cum necessitatibus possimus. Et omnis nemo non soluta. Dolores sit sit est molestias iste occaecati.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(71, 25, 'Modi repellendus nihil non qui quod voluptate perspiciatis.', 'Asperiores rerum autem quia tempora et minima. Molestiae est et sunt fugit molestias. Nulla voluptatum rem quia ullam alias quibusdam odio quibusdam.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(72, 19, 'Hic quia laborum necessitatibus eum officiis.', 'Odio doloremque autem eos eius voluptatum aut excepturi. Et quod quas consequuntur ab et.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(73, 15, 'Sequi et expedita facere et minima numquam ducimus possimus.', 'Praesentium ea accusamus qui illum facilis et fuga. Est debitis mollitia beatae voluptate eum. Consequatur veniam repellendus asperiores voluptatibus neque.', 'medium', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(74, 10, 'Aut quae qui quaerat hic ut.', 'Adipisci rerum est temporibus sit illum consequatur totam. Repellendus molestiae consequatur dolorem quis quo hic. Vel deserunt adipisci sint in possimus. Optio nemo nobis est.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(75, 6, 'Commodi dolorem ea eius aliquid itaque.', 'Id enim laudantium tempore eligendi deserunt doloremque occaecati iusto. Ab ut nihil neque quo eius labore. Saepe libero dolorem vero aut dolores quidem.', 'medium', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(76, 12, 'Fugiat qui sit ut nisi.', 'Dolore non sunt officiis ullam quae est saepe. Et qui quasi consequatur officia voluptas sit.', 'medium', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(77, 14, 'Dolor consequuntur aut blanditiis non.', 'Qui molestias non similique quisquam iure quis. Qui sint minus earum libero quaerat. Tempora dolor magni amet doloribus aliquam occaecati rerum. Quia neque neque dolor quia ratione.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(78, 25, 'Non voluptas enim deleniti id quos.', 'Non velit rerum accusamus repellendus qui corporis quaerat. Reiciendis accusamus maxime dolorem a. Sed ea quam odio nostrum.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(79, 6, 'Excepturi ullam saepe est nulla et amet soluta.', 'Nostrum nulla nam et unde tempora consequatur ad. Illum non nam consequatur doloremque architecto hic. Voluptates architecto omnis officia eos nulla rerum. Molestiae doloribus voluptatem omnis.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(80, 9, 'Est debitis accusamus quo doloremque ut omnis aliquid harum.', 'Asperiores esse rerum sint. Et ipsa error ad vitae quia sit. Quia in odit similique. Eaque est et maxime.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(81, 20, 'Quod dolor ratione rerum aut expedita officia similique.', 'Quibusdam eius dolor voluptas in in voluptas pariatur. Sunt deleniti sapiente consequatur voluptatum dolores officia. Assumenda vero quia esse aut. Alias quas sed iure odio.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(82, 24, 'Aperiam aut non consequatur sint eveniet sint.', 'Dicta amet fuga neque eveniet et. Expedita qui aut et. Qui omnis dolorem perspiciatis iusto. Est reprehenderit laudantium dolor magni.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(83, 2, 'Quaerat voluptate mollitia quae explicabo quis quam expedita.', 'Dolor sit rerum facere eligendi ipsam nihil ipsa. Perferendis doloremque voluptatem quo non iusto quo praesentium. Dignissimos pariatur esse labore magnam.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(84, 5, 'Nesciunt fugiat est culpa est dolores consequatur.', 'Inventore quisquam dolorum rem id similique cum. Quo beatae voluptates et tenetur impedit. Numquam blanditiis accusamus est repellendus.', 'medium', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(85, 2, 'Necessitatibus culpa sed commodi dolore rem.', 'Commodi dolorem ut placeat et sint ipsa praesentium. Assumenda quae voluptatibus velit non ut. Eaque sapiente neque non qui optio aut vero. Sit impedit doloribus quia sed inventore fugiat pariatur.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(86, 17, 'Aspernatur repudiandae ut sunt nisi.', 'Voluptate ipsum reiciendis quo. A quos facilis distinctio aut. Recusandae minima quia distinctio fuga neque explicabo deleniti.', 'medium', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(87, 4, 'Eum excepturi pariatur libero eum molestiae quaerat autem.', 'In et quisquam placeat odit adipisci praesentium ad. Et quo dolorum et. Perferendis consectetur alias quia aut. Et omnis temporibus quos et quam.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(88, 15, 'Sunt hic et ipsum repudiandae iste inventore aut natus.', 'Porro neque officiis saepe temporibus eveniet ut. Ab et error quam dolorem occaecati. Molestias accusantium corrupti omnis velit vero quibusdam.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(89, 12, 'Repudiandae sit voluptas omnis ut.', 'Cumque autem minima necessitatibus voluptatem labore aut. Molestiae est eius qui minima dolore sed. Voluptas harum deleniti dolor in dolorem maxime sit. Sed fugit aliquam impedit consectetur in et.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(90, 15, 'Aut corrupti tenetur ratione minima libero molestias.', 'Dolor aperiam et eum magni eveniet repellat. Aperiam ipsum et consequuntur et assumenda et omnis. Quia officiis explicabo et aut dolores.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(91, 18, 'Dignissimos rerum omnis tempore corporis error qui assumenda aut.', 'Distinctio distinctio sunt autem. Doloribus minima rerum et aut qui voluptatibus. Eos qui ut quo quibusdam. Provident voluptatibus sit et rerum mollitia beatae.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(92, 12, 'Fugiat impedit porro cupiditate explicabo quo.', 'Aperiam iure sit reprehenderit assumenda. Non autem unde facilis pariatur neque modi. Itaque quasi laboriosam blanditiis adipisci quibusdam aperiam officiis. Iste ullam dolorum amet velit.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(93, 13, 'Dolorum repellat et possimus repellat.', 'Ut quas quia est incidunt sint sit nulla officia. Iste molestiae omnis fugit explicabo et ut quis est. Sed harum velit autem cum et animi.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(94, 21, 'Architecto illum facilis est voluptas sint qui dolorum.', 'Odit mollitia voluptatem dolor inventore ipsam voluptas laboriosam. Perspiciatis qui labore tempora laboriosam voluptatem saepe omnis. Est earum ex nobis dolor veniam ut.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(95, 22, 'Et voluptatem ullam laborum est molestias eligendi.', 'Nesciunt et et qui. Repellendus magni a quam eum. In aut necessitatibus ratione. Ut dignissimos animi unde delectus vel omnis.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(96, 10, 'Dolorem ullam aut hic a nam.', 'Qui atque placeat et ut ut est. Rem odit nisi nihil nostrum iste ut est. Ut laboriosam cum aliquid architecto. Illo reprehenderit et maiores delectus sit nesciunt.', 'medium', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(97, 18, 'Esse vel dicta illo fuga recusandae inventore quas eos.', 'Labore delectus omnis iusto et est. Dolores et harum autem et. Voluptate quis molestiae iure quidem et cupiditate dolore.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(98, 23, 'Cum aliquid aut error molestias quis deleniti et.', 'Hic corporis laboriosam non similique nihil. Aut at eum itaque odit rerum. Repudiandae consectetur ut est in enim. Neque placeat quod qui dolores voluptas.', 'medium', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(99, 3, 'Reiciendis consequuntur qui et est.', 'Fuga nihil sit debitis et rerum excepturi ut. At excepturi reiciendis aut est voluptatum qui. Et incidunt dolores tempore at voluptatem delectus.', 'medium', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(100, 17, 'Architecto quibusdam dignissimos iure expedita omnis vero vel.', 'Neque accusantium ab quia cumque qui est aliquid. Provident dolorem autem quam sunt cum harum soluta. Vitae qui sint sint suscipit illo eos temporibus. Provident cupiditate nemo minima eos ut omnis.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(101, 10, 'Et quisquam recusandae aspernatur autem et iste nam.', 'Perspiciatis alias optio est voluptatibus eveniet architecto consequuntur. Vitae inventore aut officiis.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(102, 2, 'Explicabo perferendis et accusantium consequatur rerum.', 'Consequatur earum iusto vitae vel. Nulla ut explicabo omnis. Nihil quidem nisi fugiat quibusdam quis doloremque atque. Et possimus molestias eum eaque harum nesciunt recusandae.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(103, 18, 'Porro magnam voluptatem quia aut blanditiis et molestias quia.', 'Tenetur ipsam consequuntur rerum qui. Alias fugiat atque provident minima. Expedita reiciendis qui voluptas dolorum voluptatum ad. Officiis sit dolorem illum.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(104, 17, 'A cum fugiat soluta illum.', 'Consequatur et et voluptas sunt. Voluptas est cum suscipit voluptatem nesciunt. Et quisquam aut molestiae minima asperiores.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(105, 5, 'Rerum magni est ducimus impedit magnam consequatur omnis.', 'Aut sed laudantium eius suscipit. Culpa porro perferendis a qui et. Consequatur quasi aut est nemo ipsam amet.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(106, 4, 'Dolor enim voluptatibus asperiores ut.', 'Voluptatem suscipit ad sunt dolorum qui et similique. Id in molestias deleniti non qui possimus minima. Totam sed numquam at eaque tenetur architecto mollitia.', 'medium', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(107, 6, 'Ab et dolor vel dolore sunt sapiente nulla.', 'Et illum voluptates est. Pariatur tempore dolor quis perspiciatis at. Nisi voluptas officiis rerum ut et iure.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(108, 22, 'Voluptatem aut blanditiis omnis et rerum voluptates.', 'Culpa quod magni pariatur officia qui itaque. Ex ut possimus iusto. Esse ut quo cupiditate illo.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(109, 8, 'Voluptatem alias quis dolor eos non asperiores assumenda.', 'Eum et omnis quis. Velit aut cum incidunt et aut quia. Impedit voluptatem soluta dolore eum cum ut. Ut minima inventore rerum deserunt eligendi.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(110, 15, 'Temporibus debitis quisquam ut sunt veritatis.', 'Facere quia itaque error quis totam ut aut. Asperiores tempore omnis soluta consequatur aut numquam sit.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(111, 16, 'Autem dolorem aut aut quasi.', 'Doloremque aliquam autem et corporis consectetur commodi doloribus. Et nemo ut laborum deleniti.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(112, 22, 'Est aliquam iusto deleniti.', 'Et maxime atque velit tenetur aspernatur. Laudantium facere consequuntur quia impedit error qui unde. Atque aperiam et quis tempore voluptatem ea. Eveniet sit ea deserunt iste reiciendis vel.', 'medium', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(113, 20, 'Ut dolores qui consectetur iusto nobis voluptatem.', 'Corrupti officia odit repellendus molestiae ut sunt. Inventore provident omnis aspernatur a quae. Eligendi excepturi rem ut cum nesciunt ut.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(114, 8, 'Qui officiis veniam quia nulla alias.', 'Velit eos nobis tenetur nam nihil eaque ea aliquid. Sed minus fuga et consequatur earum earum aut ea. Explicabo dicta molestias sit occaecati id. Qui quo distinctio autem aspernatur.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(115, 26, 'Autem qui aut et beatae sint.', 'Soluta fugit ipsum id molestiae. Nam numquam molestiae enim et soluta similique ut et. Dolorum architecto minima molestiae labore a repellendus iusto.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(116, 12, 'Eaque delectus praesentium sit iste impedit sapiente.', 'Dicta harum incidunt ducimus quam minima enim. Qui et natus saepe. Dolorum sunt quos atque eligendi vel ut saepe. Maiores aut maxime consequatur rerum quibusdam magni.', 'medium', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(117, 1, 'Quisquam temporibus nam voluptas esse.', 'Sed et voluptas quae quia. Totam harum ducimus totam non. Assumenda rem ut fugit consequatur occaecati delectus totam et. Harum in ut officiis est eligendi.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(118, 18, 'Accusantium necessitatibus voluptate aut non recusandae occaecati.', 'Et sed quo consequatur ut qui. At reprehenderit et itaque. Dicta aut animi ut inventore ut eum sequi. Fugit tempore quis corrupti quam. Dolores magnam quae amet deserunt quas perferendis.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(119, 13, 'Commodi aliquam ea cum distinctio distinctio velit perspiciatis quia.', 'Harum molestiae exercitationem velit veritatis et. Eaque quaerat delectus fugiat deserunt eius sit odit. Voluptatem eos eius minus amet.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(120, 14, 'Et impedit esse est libero aut voluptatum.', 'Aspernatur ad qui quas minima aut. Sunt dolorum eos aperiam vel alias enim exercitationem.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(121, 20, 'Accusantium quos a id asperiores omnis tempora molestias quia.', 'Expedita quia officia veritatis nesciunt quasi. Sapiente laudantium voluptates odit commodi sit consequatur impedit. Repudiandae nam nam aut voluptate voluptate.', 'medium', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(122, 18, 'Similique aliquid officiis et.', 'At dignissimos molestias tenetur debitis. Aperiam et et reiciendis consequuntur enim nam. Laboriosam id est et est sunt deleniti.', 'medium', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(123, 14, 'Voluptatum tempora nisi ut aperiam.', 'Qui ex velit ipsa. Et autem illum non neque rerum eius iusto. Cum doloremque officia dolore sed nobis.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(124, 13, 'Voluptatem dolor iure aut a minima ut explicabo cumque.', 'Eaque vel facere voluptatem quae fugiat. Sunt soluta repellendus sit eum. Nulla minus eaque ipsa tempore ea et. Et omnis commodi dolore rerum non.', 'medium', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(125, 15, 'Eligendi tempore sed itaque ea id iste.', 'Dicta eveniet id omnis eligendi accusantium architecto deserunt. Pariatur fugit ea quae facilis modi. Sunt dolores doloribus aut esse. Nostrum aut reprehenderit quia repellat nihil quia nihil.', 'medium', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(126, 1, 'Neque sit accusantium quibusdam consequuntur nobis doloremque.', 'Voluptatem id et et vitae qui. Id alias aspernatur cupiditate esse. Culpa quasi repellendus nulla nihil aut doloribus amet. Vel deleniti quod laboriosam quidem.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(127, 19, 'Pariatur voluptates tempora aliquid voluptatum.', 'Rerum eaque officia commodi maiores accusantium id. Enim quam culpa atque cupiditate. Tempora temporibus aut dolorum aut non aut. A dicta nam pariatur.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(128, 18, 'Magni et non dignissimos voluptatem laboriosam.', 'Accusantium qui dolorem et commodi. Cupiditate id tenetur perspiciatis vel est. Ipsum eius facilis saepe praesentium optio.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(129, 22, 'Nulla eos aperiam ut.', 'Excepturi explicabo voluptatibus numquam suscipit excepturi. Natus ea atque ut non architecto. Animi consequatur corrupti excepturi laudantium rem.', 'medium', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(130, 2, 'Molestiae maxime optio et dolor veritatis porro.', 'Architecto fuga et consequuntur illum voluptas. Voluptatem asperiores molestiae sed a tenetur fugit ab. Eos rerum consequatur blanditiis optio placeat soluta dolores enim.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(131, 20, 'Itaque similique quia dolorem debitis fuga.', 'Laboriosam aut est delectus aspernatur qui et. Delectus fuga enim consequuntur quia deserunt rerum sed. Nulla incidunt deserunt illo provident.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(132, 22, 'Aut qui quibusdam a omnis.', 'Tempore minus occaecati illum vel repellat libero. Quis consequatur vel perspiciatis occaecati dolor autem hic. Eos non et occaecati ab vel magni totam.', 'medium', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(133, 4, 'A illum et iste quae dolor veritatis aut.', 'Laudantium dolore cum corrupti. Accusantium vitae possimus adipisci numquam ducimus ut dolore. A error laborum odit ea voluptatem.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(134, 9, 'Voluptatum quidem dicta maiores delectus qui aut fugit voluptatem.', 'Iusto quam assumenda non praesentium eius maiores accusantium quidem. Sunt officiis quia quis quisquam aliquid qui eaque. Quia nemo aperiam reiciendis et. Inventore minima nisi rem minima illum quia.', 'medium', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(135, 8, 'Possimus commodi suscipit illum sit.', 'Sed architecto placeat assumenda modi in. Non dolores eum deleniti sapiente veritatis ut quibusdam. Aut quisquam ad neque.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(136, 17, 'Delectus qui sunt veritatis architecto non sint eum dolores.', 'Voluptatem sequi est qui qui voluptas ex. Qui aspernatur eveniet necessitatibus error et. Ducimus illum at inventore. Quod ab vel occaecati odit doloremque quis nulla.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(137, 24, 'Suscipit voluptatum mollitia impedit et ut.', 'Numquam est velit eligendi reiciendis et earum commodi. Ut ut id et non placeat maxime. Est cum quae illo ut et molestiae.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(138, 7, 'Accusamus quia temporibus voluptatem unde recusandae nam.', 'Facere dolorem provident alias eos rem aut. Aspernatur omnis incidunt modi ut. Minima velit quia illo accusamus est molestias aut.', 'medium', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(139, 7, 'Esse earum et dolore non.', 'Dolores odio nam est temporibus nisi omnis magni. Asperiores non labore quibusdam ullam. Sunt atque veniam ad quaerat nisi qui aliquid. Ut sint consequatur eligendi illum veniam totam sed.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(140, 4, 'Ut minus facilis sed cum saepe nesciunt velit.', 'Laborum quaerat accusamus quam occaecati eaque. Odit sint eius ut sed dolore. Natus eveniet voluptas reprehenderit et corporis quaerat sunt. Iste ex numquam quas mollitia itaque.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(141, 16, 'Ut sed fuga vero officiis nulla.', 'Est aut blanditiis aut aut. Voluptas eos ut est culpa rerum. Culpa repudiandae asperiores qui pariatur. Praesentium mollitia hic autem et omnis vero.', 'medium', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(142, 3, 'Qui eaque consequatur fugiat debitis necessitatibus ea ullam eos.', 'Exercitationem quo possimus dolores deserunt est ratione saepe. Ut dignissimos rerum non sit quia velit. Atque iste assumenda ut dolor non molestiae. Praesentium sit corporis officia itaque nemo.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(143, 21, 'Deserunt debitis blanditiis eaque quam eius voluptas deleniti reprehenderit.', 'Sit autem reiciendis placeat. Beatae nisi ipsa commodi laborum. Nisi id hic eligendi repellat repudiandae. Mollitia rem id et minima.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(144, 13, 'Corrupti itaque odit iusto ea doloremque quam.', 'Ut incidunt numquam libero quis. Itaque similique repudiandae tempore itaque sunt temporibus at. Nemo velit rerum molestias id et culpa corrupti dolorum.', 'medium', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(145, 10, 'Eum occaecati totam necessitatibus rerum.', 'Et quibusdam assumenda nihil culpa. Exercitationem ut nulla eos. Ipsum exercitationem ex harum ut magni nulla aut eos. Autem mollitia vel sint hic modi explicabo.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(146, 19, 'Id non dicta facere occaecati tenetur nulla enim.', 'Enim voluptas omnis illo quis. Quo maiores qui voluptates cupiditate quia ullam. Voluptates repellat veniam mollitia. Molestiae amet aut doloremque quia ea.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(147, 6, 'Excepturi velit iure tempora perferendis iure ratione.', 'Facere minus ut repudiandae sit repellendus. Corrupti ullam facere sunt. Accusamus odio atque quae unde voluptate.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(148, 16, 'Numquam est quaerat eius sed molestiae cupiditate.', 'Corporis dolore et iure et amet ut eos. Inventore sit dolorem eum sed placeat voluptas et cum. Est voluptatem officia quia.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(149, 15, 'Provident consequatur voluptatum et sit in.', 'Dolorem totam aperiam sunt sint perspiciatis repellat. Voluptas odit et amet aut. Ea facere aut consequuntur nemo.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(150, 23, 'Quae eius alias dolores est.', 'Adipisci eaque qui deleniti. Cumque qui dignissimos inventore autem quidem. Sequi illum laboriosam eos voluptas non corrupti velit. Et culpa dolores harum dolore quisquam voluptas.', 'medium', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(151, 13, 'Pariatur occaecati quam rerum deleniti.', 'Unde pariatur similique molestias at. Molestias illum tenetur labore sunt est nobis earum. Magnam alias assumenda sint magnam quas ut. Ab ut officiis magni. Et quos ut laudantium.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(152, 26, 'Magni est tempora dignissimos quia accusantium expedita.', 'Dicta dolores ullam rerum esse minus. Sequi ad deleniti labore occaecati sint. Iure atque nihil id voluptatem consequatur.', 'medium', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(153, 9, 'Quo fuga et aut provident odit.', 'Consectetur repellendus consequatur magni harum aut voluptas. Cupiditate delectus voluptates velit numquam. Nobis possimus nisi totam perferendis iure.', 'medium', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(154, 12, 'Velit deserunt eveniet omnis recusandae minus.', 'Architecto aut excepturi itaque ea dolorum facilis. Rerum odio ipsum corporis corrupti. Rem commodi qui accusantium consequatur id eum rem. Vero dolores sit neque.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(155, 26, 'Impedit et ex ratione ut.', 'Voluptatem quia fuga aperiam non minus aut et. Et ratione enim fugiat mollitia optio esse sit. Ducimus perferendis voluptas consequatur officiis.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(156, 10, 'Omnis dicta rerum mollitia et quisquam deleniti voluptatibus.', 'Veritatis cumque corrupti natus veniam ut soluta odio. Omnis veniam et doloribus aut qui accusantium voluptatibus dicta.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(157, 21, 'Voluptatum et ut libero voluptatem.', 'Aut eos accusamus rerum at illum eos. Unde ut est velit non architecto dolores.', 'medium', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(158, 11, 'Eveniet doloremque enim vel.', 'Sint eos est id vel omnis. Minus natus tempora et quia ut sunt ducimus. Tempore vel qui veniam at. Cumque atque quod sit et.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(159, 21, 'Ipsa odio quidem sunt id dignissimos ad quae.', 'Provident magnam voluptas occaecati. Repudiandae dolor ipsum neque tempore quisquam. Facilis non aut non illum omnis consequatur. Vitae nihil accusamus qui qui. Ullam voluptas odit quia.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(160, 21, 'Eligendi quasi id velit blanditiis doloribus vel blanditiis.', 'Id officiis occaecati rem distinctio a voluptatibus facilis eos. Sed cumque repellat aut aliquid voluptatibus aut. Et possimus aperiam soluta vero dignissimos.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(161, 1, 'Doloribus et et magnam nemo eos.', 'Quos dolor sunt et. Porro id voluptatum optio vitae in ducimus rerum. Enim in maiores id quod natus deleniti dolor nesciunt.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(162, 19, 'Quia et id ex corporis impedit et illum eaque.', 'Voluptatem quos explicabo quia. Odio aut et totam cumque. At dolorem ipsum animi ad consectetur officia eum.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(163, 20, 'Totam libero dolorum fugiat et.', 'Consequuntur omnis occaecati sunt repudiandae vel ea delectus. Dolor assumenda qui eos consequuntur facere voluptatem. Ut et explicabo voluptas est expedita eum.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(164, 6, 'Vel corrupti adipisci id aut.', 'Quos neque totam aut. Facilis quasi harum tenetur pariatur in est impedit. Fugit error vel velit quia excepturi enim. Provident debitis natus eaque eos provident aut nihil.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(165, 13, 'Eum velit explicabo reiciendis quis facilis non.', 'Ut cumque est labore. Est beatae repudiandae aut voluptas incidunt. Qui tempora facilis voluptas. Unde a dolores non nobis.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(166, 17, 'Sint cupiditate aut unde vel.', 'Odio architecto optio ut nulla occaecati ipsam culpa assumenda. Non iste earum est non. Accusantium nihil illo laboriosam aut.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(167, 4, 'Autem asperiores repellendus corrupti nobis quia eos.', 'Architecto tenetur et voluptatibus sit est occaecati et ad. Impedit asperiores quibusdam quasi nostrum. Eos dolores aut dolor ducimus ullam dolores. Cupiditate quo ut aut libero est aut quasi.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(168, 22, 'Possimus eos reprehenderit deleniti.', 'Molestiae asperiores corrupti quaerat rerum. Veniam officiis optio delectus nesciunt possimus consequuntur.', 'medium', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(169, 21, 'Quo sequi sequi et non consectetur non assumenda.', 'Hic est qui in veritatis accusamus adipisci est delectus. Voluptate non beatae ut.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(170, 8, 'Molestiae sed quod voluptatum et.', 'Iure natus veniam dolorem tempora facere. Officia veniam nihil enim. Quidem et ratione suscipit velit dolores.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(171, 7, 'Labore voluptatibus laudantium quos mollitia consequuntur eveniet pariatur.', 'Mollitia laudantium nam odio velit fugit occaecati. Et ab quasi non nam sit. Pariatur odio est et doloribus.', 'medium', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(172, 22, 'Voluptates et quis ut voluptatum corporis aut dolores.', 'Repudiandae corrupti deleniti ex ut quos veniam nobis ea. Provident dolore delectus est et. Possimus nihil eveniet tempore cum enim accusantium.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(173, 24, 'Perferendis quia sequi est.', 'In doloremque nostrum incidunt rerum voluptatum libero non sunt. Doloremque rem qui inventore id. Cumque et et praesentium vel vero iusto. Magni aut a quia sapiente sit.', 'medium', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(174, 9, 'Rerum doloribus saepe necessitatibus ea ab recusandae.', 'Reiciendis fuga commodi tempore aut qui. Quod culpa ipsum quia assumenda facilis. Beatae maiores nihil dolores odio error. Officia blanditiis voluptas doloremque.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(175, 12, 'Iste quo expedita dicta ut sed id.', 'Debitis magni error et qui. Qui dolor eos omnis illo quia et enim. Adipisci totam magni velit et. Ea iste non consequatur eveniet soluta expedita consequatur blanditiis.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(176, 24, 'Veniam laudantium consequatur et aut rem autem harum illo.', 'Veritatis et voluptatem laudantium. Similique vitae maiores quod vel quo tempora ipsa. Cum expedita id sunt quasi dolores doloribus consequuntur.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(177, 16, 'Quo facilis magni vitae ut.', 'Ab et voluptatem et laboriosam aut qui. Omnis qui saepe rerum aspernatur autem nobis quisquam. Distinctio sequi nulla unde voluptatem. At ut cumque incidunt incidunt.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(178, 26, 'Et voluptas qui quo quae deserunt.', 'Eos eum ab qui natus. Qui velit laborum culpa sed. Officia adipisci est error iure omnis facilis officia.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(179, 19, 'Sunt sit quaerat sequi culpa quos qui.', 'Expedita minima quod quia. Magni iusto temporibus sit enim id. Odit et reprehenderit in iure rerum reprehenderit.', 'medium', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(180, 9, 'In blanditiis culpa expedita sint quod non laboriosam.', 'Totam suscipit autem sequi aspernatur. Commodi ad in vero sit minus est. Corporis consectetur neque dolorem. Itaque dignissimos libero earum architecto.', 'medium', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(181, 23, 'Earum totam provident eligendi.', 'Molestiae et odio fuga similique. Molestiae inventore perferendis facilis voluptate. Qui dolorum nisi qui consequatur magnam. Aliquid et molestiae soluta iure culpa laborum dolores.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(182, 21, 'Error id cupiditate et et fugiat consectetur error.', 'Et nobis voluptas magni esse. Et non perspiciatis a et voluptas dignissimos. Architecto laborum hic qui voluptates. Voluptatem velit ea et.', 'medium', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(183, 18, 'Quo consequuntur et soluta sit.', 'Odio et exercitationem eius qui. Quos velit quaerat praesentium voluptatem et dolore totam. Architecto et voluptas architecto unde. Totam est tempora quibusdam esse sit omnis quae.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(184, 13, 'Consequatur id et aut aut.', 'Voluptate et expedita eum voluptates sapiente. Non quasi quam qui dolor. Enim rerum quaerat officiis aliquam amet aliquid et. Nam debitis dignissimos ea dignissimos.', 'medium', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(185, 5, 'Voluptates ut aut cum libero deleniti iusto autem.', 'Deserunt deserunt soluta voluptate magnam. Quaerat autem ex debitis est unde. Sunt pariatur ducimus iusto et ratione et asperiores. Omnis dolores veritatis aut nihil rerum.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(186, 2, 'Ut temporibus ratione beatae dolor.', 'Veniam eos reprehenderit molestiae sequi quia repellendus. Aspernatur voluptate nam quo accusamus velit. Eius aut soluta quod consequatur.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(187, 16, 'Rerum consequatur sit dolores omnis.', 'Consequuntur eveniet molestiae sed minus repudiandae. Et quia id fuga quia earum. Nesciunt consequatur et assumenda dolores id.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(188, 13, 'Inventore voluptas accusamus aut velit voluptatibus.', 'Quibusdam molestiae aliquam animi sit quidem dolorum dolorem. Voluptas adipisci nulla maiores perferendis. In maiores quae sed. Ea excepturi consectetur dolorem in.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(189, 6, 'Autem provident ad aut.', 'Ut voluptatem quibusdam minus vel nam dolorem. Vel voluptatem est dolor quos ut ut qui cupiditate. Vel possimus autem quo. Sunt perspiciatis aut autem quasi consectetur.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(190, 2, 'Occaecati minus rem voluptatum in temporibus quo ex.', 'Est nostrum quibusdam est. Maxime reiciendis at consequuntur sed et optio et. Laboriosam dolor autem sit autem asperiores molestiae odit perspiciatis.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42');
INSERT INTO `tasks` (`id`, `user_id`, `name`, `description`, `priority`, `created_at`, `updated_at`) VALUES
(191, 4, 'Alias commodi omnis consequatur cupiditate aliquam.', 'Possimus aliquam placeat dolore omnis. Qui accusantium repudiandae incidunt qui ex. Eaque ex commodi odio maxime labore quisquam. Quos facilis quis earum in quod cupiditate similique delectus.', 'medium', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(192, 19, 'Laborum mollitia et repellendus cumque.', 'Quia rerum animi earum saepe perspiciatis laborum aspernatur. Quo natus autem sed vel ratione temporibus assumenda. Et sed eos quia inventore nam nihil eos. Expedita iure vero hic eos.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(193, 25, 'Aut natus laboriosam aut qui quam ut.', 'Nobis in asperiores nisi amet hic. Quia natus quam vel inventore aperiam dolores deserunt. Provident sunt non nemo officia vel. Pariatur dolor velit quis est. Sunt sunt explicabo omnis dignissimos.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(194, 3, 'Vero animi itaque provident.', 'Sit adipisci illo ut a. Voluptatibus consectetur ut eius. In ullam tenetur quasi animi et voluptates quaerat. Debitis sed maxime est enim.', 'medium', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(195, 5, 'Velit dolores exercitationem sit aut totam qui.', 'Laboriosam nihil quaerat modi aut quis blanditiis est. Labore accusantium et enim praesentium velit est iste. Pariatur sit assumenda vel numquam aliquam a ut.', 'medium', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(196, 21, 'Illum et animi nihil unde aliquid adipisci quo.', 'Aut facilis voluptas soluta. Et magnam aspernatur iusto expedita ipsa. Sed dolores quis beatae fugit. Quidem qui iure cupiditate assumenda perspiciatis deleniti eaque atque.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(197, 26, 'Consequatur sunt magnam assumenda.', 'Quia consequuntur dolorem quidem qui qui blanditiis. Fugit et est in perferendis ea fugiat possimus ratione. Dolorem aut ut quos harum doloribus et. Voluptatum quia tempora aut aut.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(198, 5, 'Quae vero placeat nemo voluptas.', 'Aut a magnam iste dolores non quasi officia. Sit consectetur voluptates omnis maiores nihil.', 'medium', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(199, 13, 'Cum enim qui ratione rerum et.', 'Minima animi ex ipsum nam velit. Possimus occaecati debitis qui quod tempore dolor autem.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(200, 21, 'Eos voluptatem eos velit ea sed quas excepturi.', 'Est adipisci iure ut aliquid fugit. Ut soluta ullam adipisci voluptate. Provident sit vel consectetur itaque iusto ea autem nobis.', 'medium', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(201, 18, 'Distinctio autem debitis magnam perferendis rerum quidem facilis.', 'Exercitationem quo laboriosam reprehenderit aut fugit nostrum sit. Libero laudantium aut vero aut. In repellendus rem quos ducimus aliquam atque cumque ipsum.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(202, 5, 'Odio quia corrupti modi.', 'Quis ad delectus ullam quibusdam. Autem unde incidunt aut placeat assumenda aut inventore. Non in sint deleniti fuga. Magni est necessitatibus eum dolores.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(203, 11, 'Sunt aliquid nam minus ipsam.', 'Omnis qui sit aut rem. Aut modi inventore accusamus perferendis exercitationem assumenda et nam. Rerum quia vero rerum animi.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(204, 1, 'Quod aut et nobis.', 'Eveniet sit nobis maiores. Qui qui necessitatibus id. Provident omnis quia quis nobis sed accusantium alias consequatur. Ullam iure magni ut dolor. Nostrum sit aut sequi sit illum assumenda ut.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(205, 14, 'Quis quam fugit nesciunt.', 'Aut nemo enim nihil earum iste enim. Minus doloremque fuga earum dolor explicabo omnis iste et. Perferendis voluptatem minima id error. Sed minima dolore vero officiis incidunt rerum molestias.', 'medium', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(206, 11, 'Aut ipsa accusantium eos ut soluta.', 'At suscipit eos consequatur quas. Incidunt voluptates velit magnam temporibus consectetur dolor quas. Error possimus enim dolorem. Dolor cumque id nobis accusantium. Delectus sit perferendis sed.', 'medium', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(207, 10, 'Consequatur quo voluptatem quis at soluta.', 'Ea sit id et est accusantium. Laboriosam ab dolore excepturi quae. Asperiores voluptas at accusantium illum perferendis eius. Praesentium animi placeat minus dolorum aliquam placeat.', 'medium', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(208, 22, 'Veniam quisquam voluptas odit consectetur repellat tenetur.', 'Nemo quas officiis ipsum doloremque quia expedita aperiam. Fugiat facere animi id necessitatibus asperiores placeat in omnis. Aspernatur commodi repudiandae laborum repellendus nostrum minima.', 'medium', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(209, 24, 'Beatae perspiciatis qui voluptates quia eius sapiente dolore.', 'Id at sit numquam voluptatem vero rerum. Non quisquam ea omnis aspernatur. Sint qui dolores quo rem. Dolorem rerum aut laborum aut veniam repudiandae qui vitae.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(210, 17, 'Placeat at omnis sunt commodi.', 'Provident deleniti labore cum sed. Aut quisquam consequatur soluta. Adipisci ut est sapiente voluptatem.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(211, 25, 'Illum qui dolores et fugit et quisquam.', 'Asperiores totam unde est voluptatem. Quae in voluptatem consequatur quisquam a atque. Velit explicabo ut excepturi delectus corporis quis velit.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(212, 24, 'Harum blanditiis eius veniam dolorum dolores quia tempore.', 'Iusto voluptatem dolorem qui nihil. Eos voluptatum ab voluptatum. Repudiandae dignissimos cum et a natus.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(213, 15, 'Cupiditate fugiat et quos iure.', 'Perferendis sed aut nostrum numquam ut reprehenderit hic nisi. Totam et accusantium magnam autem quaerat. Ut et quaerat non ut aut alias.', 'medium', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(214, 19, 'Omnis eius voluptatem rerum dignissimos illo exercitationem.', 'Ducimus reprehenderit illum ex voluptatem voluptatem. Et ut veritatis dolores reprehenderit praesentium delectus sequi. Saepe earum iste non dolor. Aut ut delectus eum vel laborum nihil quaerat.', 'medium', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(215, 10, 'Mollitia qui et distinctio ad quia minima nihil sed.', 'Nisi repudiandae enim id qui illo ipsa enim. Corrupti vel reiciendis quia. Debitis soluta soluta et enim.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(216, 23, 'Odio ut sit perspiciatis eligendi error laborum animi.', 'Eos eos nihil nihil et est expedita. Voluptas tenetur accusamus facilis consectetur facere. A autem perspiciatis veniam voluptatem accusantium. Veritatis ipsum nostrum repudiandae.', 'medium', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(217, 2, 'Nam nemo fugiat qui nostrum adipisci nam exercitationem.', 'Est aliquam qui perferendis unde quia. Adipisci est ea culpa aut. Aut cumque iusto vel autem dolores quibusdam ea dolores.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(218, 4, 'Reiciendis distinctio quo delectus et possimus fuga doloremque sed.', 'Officia aliquam corrupti quam assumenda sint. Ex perspiciatis assumenda rerum enim ut. Quo libero inventore fugit porro autem vero.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(219, 25, 'Aut magnam itaque fugit.', 'Ex doloribus tempore veniam non. Illo deserunt modi voluptates at earum. Maxime quibusdam velit quia mollitia at. Tempora commodi rerum voluptate.', 'medium', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(220, 11, 'Consequatur qui voluptatibus consequatur voluptatibus est cumque.', 'Provident impedit voluptas in. Asperiores est quia mollitia. Et quia quibusdam libero nam iure quod. Rem nihil occaecati aut est.', 'medium', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(221, 4, 'Nihil nemo molestiae ut ullam eos.', 'Laudantium omnis et aut voluptatem tempore id omnis recusandae. Ut amet quos necessitatibus. Incidunt quia et repellendus exercitationem cumque reiciendis.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(222, 23, 'In dicta rerum quia non.', 'Ea nostrum quibusdam non distinctio. Dolore accusantium dolor nihil sint. Dicta qui dolores atque id.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(223, 25, 'Rerum est quidem perferendis numquam tenetur.', 'Et repellendus ullam nostrum quam tempore debitis expedita. Quia omnis et ut est voluptatum cupiditate. Consequuntur ut optio doloremque explicabo. Non rem odio pariatur laboriosam consequatur et.', 'medium', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(224, 4, 'Ab veritatis et esse.', 'Sint ut velit asperiores. Est nobis non sed fugit molestiae impedit blanditiis.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(225, 5, 'Et ut perspiciatis asperiores.', 'Est ut id sunt dicta. Atque quidem facilis maxime. Id dolor sapiente quisquam accusamus.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(226, 1, 'Nemo natus expedita impedit accusantium nihil voluptatem ullam.', 'Saepe et saepe non ipsum facilis quo omnis. Quam dolor optio velit. Est nemo omnis in molestiae eum assumenda.', 'medium', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(227, 4, 'Illum atque deleniti itaque ut est et.', 'Magnam voluptas praesentium dolore adipisci qui nesciunt. Asperiores aut quae a modi nemo quis dolor. Soluta facere consequatur reprehenderit voluptatem.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(228, 18, 'Doloribus cum architecto sed amet saepe quod.', 'Fuga laborum vero dolorem veniam eius qui. Architecto provident fugiat qui non delectus culpa. Quia ex aliquid quia inventore dolorem possimus nisi. Est consequatur non inventore enim sequi.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(229, 17, 'Et ut voluptatum sint aspernatur.', 'Quas a est aliquam. Libero voluptatem soluta sunt qui praesentium facere. Sit eum ex nihil incidunt autem quia laboriosam et.', 'medium', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(230, 7, 'Nam tempore incidunt ad omnis et.', 'Possimus minima debitis tempora ut. Soluta sit vel voluptatibus ea voluptatem corporis maxime. Esse esse voluptatem velit quia. Aut quos aut quam ipsam.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(231, 4, 'Velit mollitia aut numquam enim repudiandae.', 'Sit quidem id eaque dolorem reiciendis et earum. Eos et et sint quam quia voluptatem. Et magni sint ut facere incidunt. Suscipit soluta tempore rerum dolore praesentium ab in.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(232, 10, 'Aliquid molestiae sunt corporis rerum autem.', 'Officia adipisci nesciunt quis sed autem consequatur. Earum recusandae quos repellat perspiciatis quo inventore quis. Consequuntur vel qui corporis dolor.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(233, 15, 'Velit voluptate officiis autem.', 'Ut ut provident ea eveniet ad ut voluptatem. Nihil earum omnis et iste porro. Explicabo voluptatum non incidunt minima quidem eveniet doloribus.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(234, 16, 'Molestias fuga magnam facere et praesentium adipisci doloribus.', 'Eum quaerat est dolorem perferendis voluptatem omnis omnis. Suscipit consectetur omnis in enim aperiam numquam.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(235, 1, 'Iste non maxime omnis.', 'Sequi qui error hic officiis officiis culpa. Qui facilis illo quos eos. Atque doloribus ullam itaque exercitationem dolores sunt.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(236, 23, 'Voluptatem eos facere eos unde omnis eum alias.', 'Porro aut quia beatae non blanditiis incidunt. Libero maxime cupiditate ducimus quia rem ab consequatur earum. Error placeat voluptatem numquam temporibus.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(237, 20, 'Aut est quidem error eaque.', 'Velit aut est dolores corporis nam. Alias recusandae et cum. Repellat eum odit et ex.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(238, 14, 'Praesentium qui similique exercitationem et quo.', 'Repudiandae quaerat id aliquid placeat aspernatur. Deleniti placeat natus saepe id sint. Illo laudantium qui reprehenderit tenetur possimus inventore pariatur.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(239, 12, 'Porro tempore iusto reprehenderit ut est.', 'Eaque vel possimus repellat consectetur. Aliquid minus dignissimos sunt ut. Voluptatem in ratione eos et.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(240, 2, 'Dolores nemo sed suscipit hic et.', 'Molestias explicabo assumenda eligendi atque natus et mollitia. Iste expedita et officia suscipit consequatur a. Nulla rem laborum aliquid. Est excepturi vero optio.', 'medium', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(241, 4, 'Rem eum ut qui quis alias voluptatem natus.', 'Officia velit modi ex et ut optio. Distinctio soluta quo amet molestias qui. Et illo voluptatem consectetur sint omnis.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(242, 15, 'Culpa quae sit fugit cumque.', 'Ea ut aliquam necessitatibus quas aspernatur qui. Et enim consequatur blanditiis et aut consequuntur vel. Delectus officiis quam blanditiis quod et eum commodi. Assumenda quia sed perferendis totam.', 'medium', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(243, 11, 'Necessitatibus quia et quam.', 'Rerum id asperiores impedit ratione. Consequatur quia porro quisquam.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(244, 5, 'Ea totam impedit omnis.', 'Nobis velit placeat cupiditate. Quo dolorum nesciunt deleniti commodi rerum libero.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(245, 16, 'Laboriosam sed eos quia culpa totam.', 'Voluptatibus eligendi quos repudiandae commodi. Iusto ut hic et accusamus. Sed aut sit magni. Unde optio animi eveniet est mollitia voluptatibus. Corporis ducimus dolor eveniet.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(246, 13, 'Sit totam dolor repellat eligendi.', 'Quisquam consequatur enim eum reprehenderit autem assumenda. Rerum repellendus veritatis quasi iure sint. Itaque sit consequatur quo delectus et omnis et.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(247, 26, 'Hic tempora architecto ut ratione minima minima voluptatem.', 'Sint animi non amet consequatur nam aliquam aut facere. Omnis sed sequi debitis impedit. Et mollitia repellendus amet.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(248, 11, 'Perferendis voluptatem consequatur doloribus sed illo iusto.', 'Omnis fuga culpa ut in nulla. Quis iste necessitatibus quia odio. Ipsum neque enim voluptas praesentium. Saepe sit voluptatem nihil quis. Eaque in cumque magni quibusdam. Et maiores quaerat minima.', 'low', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(249, 12, 'Doloremque a omnis laborum.', 'Non tenetur repellat iusto eveniet quia. Cumque dolorem officia consequatur expedita qui velit. Enim est architecto molestias vero ut ipsum. Dolorem harum velit esse qui aut sint rerum.', 'medium', '2022-09-15 12:41:42', '2022-09-15 12:41:42'),
(250, 7, 'Atque vitae eius dolorem id molestias at.', 'Quae ipsa earum ullam ut saepe aut. Ut accusamus pariatur pariatur dolorem consequatur neque deleniti. Alias iste natus non at velit. Ad magnam quia quo dolorem amet perspiciatis.', 'high', '2022-09-15 12:41:42', '2022-09-15 12:41:42');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Billy', 'billy@email.com', NULL, '$2y$10$CI8BkkZc0.t/8GSVsu9/RegR.Qkn1wxWfwuiSjEmx9QhjrqtMy3gm', NULL, '2022-09-14 11:18:29', '2022-09-14 11:18:29'),
(2, 'Dr. Noel Hickle', 'jbuckridge@example.com', '2022-09-15 12:39:48', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'iHnhYeV6qB', '2022-09-15 12:39:48', '2022-09-15 12:39:48'),
(3, 'Ms. Taryn Wyman', 'brekke.dolly@example.net', '2022-09-15 12:39:48', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'GHk0duNVM1', '2022-09-15 12:39:48', '2022-09-15 12:39:48'),
(4, 'Prof. Jacey Kling Sr.', 'vicenta15@example.org', '2022-09-15 12:39:48', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1mZVgrtmum', '2022-09-15 12:39:48', '2022-09-15 12:39:48'),
(5, 'Mr. Kameron Lebsack MD', 'aurelio.koelpin@example.net', '2022-09-15 12:39:48', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ToeYWFlp5d', '2022-09-15 12:39:48', '2022-09-15 12:39:48'),
(6, 'Tiara Medhurst', 'octavia.hauck@example.net', '2022-09-15 12:39:48', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RibE9YtM3R', '2022-09-15 12:39:48', '2022-09-15 12:39:48'),
(7, 'Burley Breitenberg', 'jonas.barton@example.com', '2022-09-15 12:39:48', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'aMe47A8Wpf', '2022-09-15 12:39:48', '2022-09-15 12:39:48'),
(8, 'Mrs. Lonie Schaefer', 'yasmin.monahan@example.net', '2022-09-15 12:39:48', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'IOEkPN0TiY', '2022-09-15 12:39:48', '2022-09-15 12:39:48'),
(9, 'Dasia Tremblay DVM', 'tsenger@example.com', '2022-09-15 12:39:48', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Erkq1hYL8f', '2022-09-15 12:39:48', '2022-09-15 12:39:48'),
(10, 'Prof. Jo Heathcote DVM', 'cameron.mitchell@example.org', '2022-09-15 12:39:48', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0EghddQk9x', '2022-09-15 12:39:48', '2022-09-15 12:39:48'),
(11, 'Winnifred Legros', 'jstreich@example.org', '2022-09-15 12:39:48', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'qOq3azwTqz', '2022-09-15 12:39:48', '2022-09-15 12:39:48'),
(12, 'Monty Gutmann', 'morar.abigale@example.net', '2022-09-15 12:39:48', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9L1lW15Cwx', '2022-09-15 12:39:48', '2022-09-15 12:39:48'),
(13, 'Clotilde Hansen', 'lbogisich@example.org', '2022-09-15 12:39:48', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'MVKBmxPUkp', '2022-09-15 12:39:48', '2022-09-15 12:39:48'),
(14, 'Rosanna Reynolds I', 'idella.ferry@example.org', '2022-09-15 12:39:48', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'otvnqinzUc', '2022-09-15 12:39:48', '2022-09-15 12:39:48'),
(15, 'Ms. Celia Feeney III', 'nona.grant@example.com', '2022-09-15 12:39:48', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DZHEzN6JO8', '2022-09-15 12:39:48', '2022-09-15 12:39:48'),
(16, 'Erica Dietrich', 'collins.wyman@example.net', '2022-09-15 12:39:48', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2Ujgj8Xznv', '2022-09-15 12:39:48', '2022-09-15 12:39:48'),
(17, 'Kavon Luettgen DDS', 'rempel.yadira@example.net', '2022-09-15 12:39:48', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TiGiPR2A9S', '2022-09-15 12:39:48', '2022-09-15 12:39:48'),
(18, 'Margaretta Bailey', 'helga29@example.org', '2022-09-15 12:39:48', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mrkussdpD9', '2022-09-15 12:39:48', '2022-09-15 12:39:48'),
(19, 'Lucie Torphy', 'maia.kuhic@example.org', '2022-09-15 12:39:48', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'oYsaNZ5tWj', '2022-09-15 12:39:48', '2022-09-15 12:39:48'),
(20, 'Omer Hermann', 'jedediah49@example.net', '2022-09-15 12:39:48', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8UNlGHymB4', '2022-09-15 12:39:48', '2022-09-15 12:39:48'),
(21, 'Modesto Bergstrom', 'ekohler@example.org', '2022-09-15 12:39:48', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kXhLUS1Cni', '2022-09-15 12:39:48', '2022-09-15 12:39:48'),
(22, 'Karson Kunde', 'ilowe@example.org', '2022-09-15 12:39:48', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'u6jXrDOsgM', '2022-09-15 12:39:48', '2022-09-15 12:39:48'),
(23, 'Prof. Osbaldo Weber', 'elisabeth21@example.net', '2022-09-15 12:39:48', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'KpsrOyL6R9', '2022-09-15 12:39:48', '2022-09-15 12:39:48'),
(24, 'Abbie Pfeffer', 'xgoldner@example.net', '2022-09-15 12:39:48', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9LRwbdMYWv', '2022-09-15 12:39:48', '2022-09-15 12:39:48'),
(25, 'Shania Harber Sr.', 'geovanni.kuphal@example.org', '2022-09-15 12:39:48', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'UtsTRzZ9jU', '2022-09-15 12:39:48', '2022-09-15 12:39:48'),
(26, 'Dr. Ivah Medhurst Jr.', 'flatley.bryana@example.com', '2022-09-15 12:39:48', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'HIeBH0zIEH', '2022-09-15 12:39:48', '2022-09-15 12:39:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tasks_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
