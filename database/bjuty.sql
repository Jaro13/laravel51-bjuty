-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Czas generowania: 10 Lut 2018, 11:47
-- Wersja serwera: 5.7.19-0ubuntu0.16.04.1
-- Wersja PHP: 7.1.13-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `bjuty`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2015_06_21_174427_create_posts_table', 1),
('2015_06_27_074414_create_tags_table', 1),
('2015_06_27_074433_create_post_tag_pivot', 1),
('2015_06_27_123303_restructure_posts_table', 1),
('2015_06_28_085417_create_jobs_table', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content_raw` text COLLATE utf8_unicode_ci NOT NULL,
  `content_html` text COLLATE utf8_unicode_ci NOT NULL,
  `page_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_draft` tinyint(1) NOT NULL,
  `layout` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'blog.layouts.post',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `posts`
--

INSERT INTO `posts` (`id`, `slug`, `title`, `subtitle`, `content_raw`, `content_html`, `page_image`, `meta_description`, `is_draft`, `layout`, `created_at`, `updated_at`, `published_at`) VALUES
(1, 'et-adipisci-voluptas-soluta-reprehenderit-aperiam-hic-sit-sed-quis-officia', 'Et adipisci voluptas soluta reprehenderit aperiam hic sit sed quis officia.', 'Vel facilis officia vero tenetur amet amet nobis qui excepturi perferendis harum enim enim vel dolorum tenetur quia.', 'Recusandae dolorum debitis quia ea unde ipsum rerum. Sed et aut tempore et laborum doloremque. Architecto distinctio repellendus ipsum consequatur blanditiis. Suscipit beatae et provident.\n\nQuis et iusto mollitia tempora corrupti. Repudiandae illo blanditiis et minus vel. Sapiente aut saepe voluptas maxime.\n\nNam quos quia voluptas quam autem autem. Quidem dolor voluptatem sed nostrum. Sit hic id velit voluptas quaerat voluptatum rerum perferendis. Sed numquam ut voluptatem vel quibusdam porro sint sunt.', '<p>Recusandae dolorum debitis quia ea unde ipsum rerum. Sed et aut tempore et laborum doloremque. Architecto distinctio repellendus ipsum consequatur blanditiis. Suscipit beatae et provident.</p>\n\n<p>Quis et iusto mollitia tempora corrupti. Repudiandae illo blanditiis et minus vel. Sapiente aut saepe voluptas maxime.</p>\n\n<p>Nam quos quia voluptas quam autem autem. Quidem dolor voluptatem sed nostrum. Sit hic id velit voluptas quaerat voluptatum rerum perferendis. Sed numquam ut voluptatem vel quibusdam porro sint sunt.</p>\n', 'contact-bg.jpg', 'Meta for Et adipisci voluptas soluta reprehenderit aperiam hic sit sed quis officia.', 0, 'blog.layouts.post', '2018-02-04 20:08:11', '2018-02-04 20:08:11', '2018-01-11 11:07:16'),
(2, 'sint-ut-quis-unde-animi-repellendus', 'Sint ut quis unde animi repellendus.', 'Molestias dolore unde tempora omnis dolorum ut omnis rerum odit consequatur voluptatibus.', 'Velit dolore magnam est non cumque. Autem reprehenderit quis velit odio. Eum autem voluptatibus eligendi harum qui.\n\nAlias et et praesentium facere tempore veniam. Itaque sit sunt quis laudantium dolorem nam cumque qui. Sit doloribus beatae et neque est magni.\n\nUnde iure numquam qui ut qui dignissimos. Minus atque hic voluptatem culpa sint ut aut. Est at eos quo.\n\nSaepe aperiam quos vero nostrum sint. Nulla et placeat quis eos similique reiciendis. Vel aut aut maxime iure aliquid.\n\nPraesentium repellat doloribus et qui corporis exercitationem excepturi. Saepe fugiat dolores et beatae expedita nobis quae. Praesentium maxime qui dolorem maiores.', '<p>Velit dolore magnam est non cumque. Autem reprehenderit quis velit odio. Eum autem voluptatibus eligendi harum qui.</p>\n\n<p>Alias et et praesentium facere tempore veniam. Itaque sit sunt quis laudantium dolorem nam cumque qui. Sit doloribus beatae et neque est magni.</p>\n\n<p>Unde iure numquam qui ut qui dignissimos. Minus atque hic voluptatem culpa sint ut aut. Est at eos quo.</p>\n\n<p>Saepe aperiam quos vero nostrum sint. Nulla et placeat quis eos similique reiciendis. Vel aut aut maxime iure aliquid.</p>\n\n<p>Praesentium repellat doloribus et qui corporis exercitationem excepturi. Saepe fugiat dolores et beatae expedita nobis quae. Praesentium maxime qui dolorem maiores.</p>\n', 'home-bg.jpg', 'Meta for Sint ut quis unde animi repellendus.', 0, 'blog.layouts.post', '2018-02-04 20:08:11', '2018-02-04 20:08:11', '2018-01-11 06:36:19'),
(3, 'molestiae-similique-fugiat-quo-esse-aut-doloremque-temporibus', 'Molestiae similique fugiat quo esse aut doloremque temporibus.', 'Recusandae facere earum molestias nobis eligendi quod tempore sed id.', 'Laboriosam quibusdam doloribus enim dolorem vitae. Praesentium voluptatem id nisi similique. Est sunt eos quos porro dolorem. Architecto quisquam officia impedit sequi rem repellat.\n\nDignissimos maiores aut voluptatibus quae molestias vel. Nihil nobis consequatur dolorem quasi hic. Est est autem voluptatem reprehenderit.\n\nVoluptates nisi sequi dolores in beatae dignissimos. Sit amet quis quidem hic voluptatem. Qui adipisci molestias temporibus nesciunt. Eos illo eum quibusdam et quibusdam consequuntur.\n\nIllo cumque accusantium alias neque. Exercitationem in earum necessitatibus assumenda eos excepturi. Expedita harum similique quas sint ut odit. Accusantium cupiditate vero veritatis veritatis est ut cupiditate qui.', '<p>Laboriosam quibusdam doloribus enim dolorem vitae. Praesentium voluptatem id nisi similique. Est sunt eos quos porro dolorem. Architecto quisquam officia impedit sequi rem repellat.</p>\n\n<p>Dignissimos maiores aut voluptatibus quae molestias vel. Nihil nobis consequatur dolorem quasi hic. Est est autem voluptatem reprehenderit.</p>\n\n<p>Voluptates nisi sequi dolores in beatae dignissimos. Sit amet quis quidem hic voluptatem. Qui adipisci molestias temporibus nesciunt. Eos illo eum quibusdam et quibusdam consequuntur.</p>\n\n<p>Illo cumque accusantium alias neque. Exercitationem in earum necessitatibus assumenda eos excepturi. Expedita harum similique quas sint ut odit. Accusantium cupiditate vero veritatis veritatis est ut cupiditate qui.</p>\n', 'post-bg.jpg', 'Meta for Molestiae similique fugiat quo esse aut doloremque temporibus.', 0, 'blog.layouts.post', '2018-02-04 20:08:12', '2018-02-04 20:08:12', '2018-01-23 02:21:06'),
(4, 'inventore-exercitationem-corporis', 'Inventore exercitationem corporis.', 'Velit ab quo consequatur quia eveniet maiores vel aut cumque nisi architecto aspernatur quod.', 'Libero dignissimos aut ut libero harum rem officiis. Recusandae nostrum est ut quis rerum. Voluptatem ea corrupti consequatur sed dolorem magnam. Omnis in sunt soluta et officiis officiis.\n\nMaiores reprehenderit velit qui esse qui nisi. Eligendi aut eos tempore ea dolorum. Reiciendis eveniet ut tempore vitae sequi aspernatur dignissimos.\n\nDolorum eligendi dolorem est nihil aut qui sed. Quo quas aliquam ut illo sed. Ipsam facere rerum sint maxime.', '<p>Libero dignissimos aut ut libero harum rem officiis. Recusandae nostrum est ut quis rerum. Voluptatem ea corrupti consequatur sed dolorem magnam. Omnis in sunt soluta et officiis officiis.</p>\n\n<p>Maiores reprehenderit velit qui esse qui nisi. Eligendi aut eos tempore ea dolorum. Reiciendis eveniet ut tempore vitae sequi aspernatur dignissimos.</p>\n\n<p>Dolorum eligendi dolorem est nihil aut qui sed. Quo quas aliquam ut illo sed. Ipsam facere rerum sint maxime.</p>\n', 'contact-bg.jpg', 'Meta for Inventore exercitationem corporis.', 0, 'blog.layouts.post', '2018-02-04 20:08:12', '2018-02-04 20:08:12', '2018-01-20 06:04:04'),
(5, 'aut-ut-a-et-consequuntur', 'Aut ut a et consequuntur.', 'Praesentium delectus adipisci porro blanditiis molestiae aut totam cupiditate dolores.', 'Sed error nesciunt animi autem iusto. Esse consequatur rerum repellat provident quos id omnis quis. Magnam voluptatem amet corporis voluptatum iste qui et.\n\nDignissimos consectetur quidem fugiat distinctio eum id. Dolorem quod porro tempore. Reprehenderit maiores ut sunt facilis esse quam.\n\nMolestias est qui numquam. Tempora architecto et ut delectus ducimus.\n\nQuisquam qui rem error et eaque explicabo nam. Est ipsam tenetur libero. Maiores qui sunt similique est error magni. Illum accusantium voluptas quidem.', '<p>Sed error nesciunt animi autem iusto. Esse consequatur rerum repellat provident quos id omnis quis. Magnam voluptatem amet corporis voluptatum iste qui et.</p>\n\n<p>Dignissimos consectetur quidem fugiat distinctio eum id. Dolorem quod porro tempore. Reprehenderit maiores ut sunt facilis esse quam.</p>\n\n<p>Molestias est qui numquam. Tempora architecto et ut delectus ducimus.</p>\n\n<p>Quisquam qui rem error et eaque explicabo nam. Est ipsam tenetur libero. Maiores qui sunt similique est error magni. Illum accusantium voluptas quidem.</p>\n', 'contact-bg.jpg', 'Meta for Aut ut a et consequuntur.', 0, 'blog.layouts.post', '2018-02-04 20:08:12', '2018-02-04 20:08:12', '2018-02-01 07:24:04'),
(6, 'nulla-accusantium-quas-accusamus-quam-earum', 'Nulla accusantium quas accusamus quam earum.', 'Atque delectus dignissimos consequatur aut deleniti excepturi ut odit nemo ipsam tempora.', 'Molestias tenetur voluptatem blanditiis voluptatibus rerum recusandae saepe. Et recusandae saepe praesentium laboriosam qui exercitationem delectus. Culpa qui voluptas eius adipisci ex natus.\n\nSed dolorem recusandae praesentium aut sapiente. Autem occaecati dolorum dolore at.\n\nQuod esse porro consectetur eos. Pariatur laboriosam itaque laboriosam veritatis quibusdam. Minus dolorem id non ea voluptatem.\n\nPerferendis impedit sequi beatae voluptatum. Nostrum illum quis maxime nulla quia. Laborum quas veritatis enim.\n\nSint quia voluptatem similique et necessitatibus. Asperiores sunt nam qui eos ipsa laboriosam. Sit doloribus numquam reiciendis et.\n\nQuae quod et voluptatem non rerum sequi est. At voluptatem quasi dolore saepe enim earum. Esse itaque voluptate ducimus explicabo ut.', '<p>Molestias tenetur voluptatem blanditiis voluptatibus rerum recusandae saepe. Et recusandae saepe praesentium laboriosam qui exercitationem delectus. Culpa qui voluptas eius adipisci ex natus.</p>\n\n<p>Sed dolorem recusandae praesentium aut sapiente. Autem occaecati dolorum dolore at.</p>\n\n<p>Quod esse porro consectetur eos. Pariatur laboriosam itaque laboriosam veritatis quibusdam. Minus dolorem id non ea voluptatem.</p>\n\n<p>Perferendis impedit sequi beatae voluptatum. Nostrum illum quis maxime nulla quia. Laborum quas veritatis enim.</p>\n\n<p>Sint quia voluptatem similique et necessitatibus. Asperiores sunt nam qui eos ipsa laboriosam. Sit doloribus numquam reiciendis et.</p>\n\n<p>Quae quod et voluptatem non rerum sequi est. At voluptatem quasi dolore saepe enim earum. Esse itaque voluptate ducimus explicabo ut.</p>\n', 'post-bg.jpg', 'Meta for Nulla accusantium quas accusamus quam earum.', 0, 'blog.layouts.post', '2018-02-04 20:08:12', '2018-02-04 20:08:12', '2018-01-20 14:56:54'),
(7, 'vitae-perspiciatis-ipsum-laudantium-minima-itaque-in-qui', 'Vitae perspiciatis ipsum laudantium minima itaque in qui.', 'Molestiae voluptatum sapiente id doloremque qui aliquid recusandae quo odio dicta vero rerum saepe recusandae fugiat.', 'Ea corrupti dolor quis rerum in. Exercitationem nobis quam odit velit cupiditate. Velit fugiat nihil provident saepe reprehenderit qui voluptates nihil. Fugit rem aliquam possimus rerum harum nesciunt rerum.\n\nMolestias quas non assumenda commodi fuga quia earum. Commodi explicabo qui rem consequuntur odit. Fuga nesciunt aspernatur ab dolores.\n\nQui est ut eum dolorem. Reprehenderit ratione nisi et ipsum. Hic iusto possimus dolore tempora doloremque. Id dignissimos natus molestiae consequatur temporibus libero.\n\nPossimus eos maiores numquam odit maiores sint corporis placeat. Et ipsum ex consequatur at. Odit illo repudiandae itaque modi voluptatem aspernatur eveniet.\n\nTotam numquam dolores assumenda expedita dignissimos placeat. Qui voluptatum corporis rem vel.\n\nEst occaecati similique a ut aliquam et. Sapiente numquam numquam quaerat et fugiat atque.', '<p>Ea corrupti dolor quis rerum in. Exercitationem nobis quam odit velit cupiditate. Velit fugiat nihil provident saepe reprehenderit qui voluptates nihil. Fugit rem aliquam possimus rerum harum nesciunt rerum.</p>\n\n<p>Molestias quas non assumenda commodi fuga quia earum. Commodi explicabo qui rem consequuntur odit. Fuga nesciunt aspernatur ab dolores.</p>\n\n<p>Qui est ut eum dolorem. Reprehenderit ratione nisi et ipsum. Hic iusto possimus dolore tempora doloremque. Id dignissimos natus molestiae consequatur temporibus libero.</p>\n\n<p>Possimus eos maiores numquam odit maiores sint corporis placeat. Et ipsum ex consequatur at. Odit illo repudiandae itaque modi voluptatem aspernatur eveniet.</p>\n\n<p>Totam numquam dolores assumenda expedita dignissimos placeat. Qui voluptatum corporis rem vel.</p>\n\n<p>Est occaecati similique a ut aliquam et. Sapiente numquam numquam quaerat et fugiat atque.</p>\n', 'about-bg.jpg', 'Meta for Vitae perspiciatis ipsum laudantium minima itaque in qui.', 0, 'blog.layouts.post', '2018-02-04 20:08:12', '2018-02-04 20:08:12', '2018-02-06 21:05:05'),
(8, 'quia-nisi-repellendus-dolorum-laboriosam-cumque-error-optio-quam-iste-est', 'Quia nisi repellendus dolorum laboriosam cumque error optio quam iste est.', 'Sequi enim porro numquam nostrum quo maiores placeat itaque explicabo dolores tempore maiores.', 'Est blanditiis eum ut fugiat sed. Porro libero qui numquam saepe unde quis suscipit. Voluptates aliquam vel eum et aut.\n\nConsequatur quia deleniti harum perferendis aut. Totam eum assumenda esse possimus. Accusamus perferendis omnis dolores in accusantium ducimus dolor pariatur. Quo dignissimos quasi cum quibusdam et veniam impedit.\n\nProvident omnis sed optio veritatis sed laudantium adipisci. At nam vel ipsa ut et. Neque dolor est explicabo expedita. Eaque consequatur placeat consequatur et. Quas animi qui numquam laboriosam sapiente qui dolorem.\n\nSoluta et temporibus qui assumenda sint eum. Consequatur numquam dolorum voluptas quod repellat quisquam reiciendis. Excepturi qui molestiae aut explicabo voluptatibus assumenda. Doloremque eveniet qui aut necessitatibus nihil.', '<p>Est blanditiis eum ut fugiat sed. Porro libero qui numquam saepe unde quis suscipit. Voluptates aliquam vel eum et aut.</p>\n\n<p>Consequatur quia deleniti harum perferendis aut. Totam eum assumenda esse possimus. Accusamus perferendis omnis dolores in accusantium ducimus dolor pariatur. Quo dignissimos quasi cum quibusdam et veniam impedit.</p>\n\n<p>Provident omnis sed optio veritatis sed laudantium adipisci. At nam vel ipsa ut et. Neque dolor est explicabo expedita. Eaque consequatur placeat consequatur et. Quas animi qui numquam laboriosam sapiente qui dolorem.</p>\n\n<p>Soluta et temporibus qui assumenda sint eum. Consequatur numquam dolorum voluptas quod repellat quisquam reiciendis. Excepturi qui molestiae aut explicabo voluptatibus assumenda. Doloremque eveniet qui aut necessitatibus nihil.</p>\n', 'home-bg.jpg', 'Meta for Quia nisi repellendus dolorum laboriosam cumque error optio quam iste est.', 0, 'blog.layouts.post', '2018-02-04 20:08:12', '2018-02-04 20:08:12', '2018-01-12 01:17:16'),
(9, 'quia-aspernatur-id-et-quia', 'Quia aspernatur id et quia.', 'Eos quas omnis est suscipit qui voluptas enim architecto corrupti beatae aut.', 'Qui quasi mollitia enim incidunt asperiores non. Rerum maxime perferendis quidem sequi et. Ea aut omnis qui totam voluptatem error ut. Non praesentium quam quae voluptatem. Adipisci nam impedit at tempore occaecati atque quam.\n\nQuia minima provident eveniet nobis inventore ipsam rerum. Aut velit aspernatur blanditiis doloribus excepturi magnam. Quia accusantium commodi quisquam ipsa occaecati odit. Hic vel veniam quis consequatur est minima.\n\nEarum sunt quam quia vel velit vel. Ducimus dignissimos quia pariatur est perspiciatis itaque aliquid. Odio dolorum sunt eius omnis. Alias illum non adipisci delectus qui ullam deleniti.\n\nId suscipit eligendi est quia aut quos quam. Qui qui eveniet voluptates modi repellat sit qui. Quibusdam ad nihil hic voluptate ut dignissimos. Qui non recusandae suscipit commodi.', '<p>Qui quasi mollitia enim incidunt asperiores non. Rerum maxime perferendis quidem sequi et. Ea aut omnis qui totam voluptatem error ut. Non praesentium quam quae voluptatem. Adipisci nam impedit at tempore occaecati atque quam.</p>\n\n<p>Quia minima provident eveniet nobis inventore ipsam rerum. Aut velit aspernatur blanditiis doloribus excepturi magnam. Quia accusantium commodi quisquam ipsa occaecati odit. Hic vel veniam quis consequatur est minima.</p>\n\n<p>Earum sunt quam quia vel velit vel. Ducimus dignissimos quia pariatur est perspiciatis itaque aliquid. Odio dolorum sunt eius omnis. Alias illum non adipisci delectus qui ullam deleniti.</p>\n\n<p>Id suscipit eligendi est quia aut quos quam. Qui qui eveniet voluptates modi repellat sit qui. Quibusdam ad nihil hic voluptate ut dignissimos. Qui non recusandae suscipit commodi.</p>\n', 'about-bg.jpg', 'Meta for Quia aspernatur id et quia.', 0, 'blog.layouts.post', '2018-02-04 20:08:12', '2018-02-04 20:08:12', '2018-01-10 20:13:18'),
(10, 'eaque-id-tenetur-officiis-iure', 'Eaque id tenetur officiis iure.', 'Voluptas adipisci ea molestiae et rem quia vel voluptates nostrum corrupti.', 'Dolorem aut dolore quisquam ducimus id quis. Id hic nemo non aut in harum. Praesentium delectus voluptatem ea possimus et unde in. Ut facilis excepturi beatae eveniet quia et enim.\n\nNon doloribus porro eum assumenda in. Consequatur nostrum ipsum dolores enim dolorem at ipsam. Saepe dolorem ea ducimus voluptatem.\n\nOptio esse suscipit perferendis et dolorem. Id consequuntur ducimus fugit consequuntur. Blanditiis corrupti repellendus at est vel. Perferendis facilis rerum sint hic. Nam vitae quibusdam molestiae sed.\n\nOfficiis quo voluptatem atque. Est itaque labore enim eum veniam error. Maiores aut unde sequi.', '<p>Dolorem aut dolore quisquam ducimus id quis. Id hic nemo non aut in harum. Praesentium delectus voluptatem ea possimus et unde in. Ut facilis excepturi beatae eveniet quia et enim.</p>\n\n<p>Non doloribus porro eum assumenda in. Consequatur nostrum ipsum dolores enim dolorem at ipsam. Saepe dolorem ea ducimus voluptatem.</p>\n\n<p>Optio esse suscipit perferendis et dolorem. Id consequuntur ducimus fugit consequuntur. Blanditiis corrupti repellendus at est vel. Perferendis facilis rerum sint hic. Nam vitae quibusdam molestiae sed.</p>\n\n<p>Officiis quo voluptatem atque. Est itaque labore enim eum veniam error. Maiores aut unde sequi.</p>\n', 'contact-bg.jpg', 'Meta for Eaque id tenetur officiis iure.', 0, 'blog.layouts.post', '2018-02-04 20:08:12', '2018-02-04 20:08:12', '2018-01-15 06:56:53'),
(11, 'ipsa-rerum-minima-asperiores-aut-autem-at-veritatis-aliquid-placeat-quos-incidunt', 'Ipsa rerum minima asperiores aut autem at veritatis aliquid placeat quos incidunt.', 'Deserunt voluptatem consectetur dolor quia minima corporis debitis ex tempora quod voluptatem quod doloribus et qui dignissimos sunt.', 'Sit enim enim et voluptatem vel nostrum nostrum et. Voluptatibus sed ea minus ipsa provident ab. Quisquam eos at ea fugit vitae est similique. Numquam qui nulla eius officiis.\n\nEt quia nam dolores omnis cumque. Sunt dolores consequatur a eius doloremque ut. Ducimus rerum nostrum repellendus dignissimos aliquam. Quia aliquid neque qui laborum labore.\n\nEt sapiente ad fugit facere. Molestias eos ab aut ullam natus. Voluptatem ipsa voluptatibus dolorem quaerat architecto quaerat aliquid iste. Consectetur qui ut officiis tempora. Quibusdam facere harum assumenda quaerat iusto.\n\nQuia voluptate sit consequatur rerum. Magnam quibusdam aut voluptate dolore molestiae nostrum. Et quia laboriosam fuga ea ipsam excepturi quam. Neque beatae magni minima ad aut.\n\nQuod blanditiis fugit ducimus numquam. Autem sit beatae maiores deleniti nihil est at. Et dicta fugit laborum corrupti quas eum aut. Eum voluptatem est officia vitae voluptas repudiandae velit.', '<p>Sit enim enim et voluptatem vel nostrum nostrum et. Voluptatibus sed ea minus ipsa provident ab. Quisquam eos at ea fugit vitae est similique. Numquam qui nulla eius officiis.</p>\n\n<p>Et quia nam dolores omnis cumque. Sunt dolores consequatur a eius doloremque ut. Ducimus rerum nostrum repellendus dignissimos aliquam. Quia aliquid neque qui laborum labore.</p>\n\n<p>Et sapiente ad fugit facere. Molestias eos ab aut ullam natus. Voluptatem ipsa voluptatibus dolorem quaerat architecto quaerat aliquid iste. Consectetur qui ut officiis tempora. Quibusdam facere harum assumenda quaerat iusto.</p>\n\n<p>Quia voluptate sit consequatur rerum. Magnam quibusdam aut voluptate dolore molestiae nostrum. Et quia laboriosam fuga ea ipsam excepturi quam. Neque beatae magni minima ad aut.</p>\n\n<p>Quod blanditiis fugit ducimus numquam. Autem sit beatae maiores deleniti nihil est at. Et dicta fugit laborum corrupti quas eum aut. Eum voluptatem est officia vitae voluptas repudiandae velit.</p>\n', 'about-bg.jpg', 'Meta for Ipsa rerum minima asperiores aut autem at veritatis aliquid placeat quos incidunt.', 0, 'blog.layouts.post', '2018-02-04 20:08:12', '2018-02-04 20:08:12', '2018-01-07 16:44:25'),
(12, 'commodi-eveniet-qui-et-dolores-quae-corrupti', 'Commodi eveniet qui et dolores quae corrupti.', 'Nam ea eos aperiam odit ut tenetur rem quidem quod aut dolor aut sed assumenda provident.', 'Ex eligendi ut sit cumque autem repudiandae aut soluta. Sunt inventore a veniam architecto quisquam. Expedita laboriosam aut eius error vitae est. Delectus dignissimos tempora saepe quidem reiciendis.\n\nExpedita sed corrupti esse ut. Modi tenetur et est voluptatem laudantium aperiam. Et voluptates sequi doloremque sit. Voluptatem animi omnis hic sit.\n\nRecusandae aut quis est provident sed beatae. Sint voluptatum et autem nulla rerum et et in. Omnis laborum mollitia non nostrum saepe omnis. Qui placeat atque omnis nemo aut.\n\nTenetur sit similique aut veritatis nobis. Expedita aperiam nam et accusantium.\n\nDolores officiis amet eum illo fugit. Tempore quis et soluta blanditiis.', '<p>Ex eligendi ut sit cumque autem repudiandae aut soluta. Sunt inventore a veniam architecto quisquam. Expedita laboriosam aut eius error vitae est. Delectus dignissimos tempora saepe quidem reiciendis.</p>\n\n<p>Expedita sed corrupti esse ut. Modi tenetur et est voluptatem laudantium aperiam. Et voluptates sequi doloremque sit. Voluptatem animi omnis hic sit.</p>\n\n<p>Recusandae aut quis est provident sed beatae. Sint voluptatum et autem nulla rerum et et in. Omnis laborum mollitia non nostrum saepe omnis. Qui placeat atque omnis nemo aut.</p>\n\n<p>Tenetur sit similique aut veritatis nobis. Expedita aperiam nam et accusantium.</p>\n\n<p>Dolores officiis amet eum illo fugit. Tempore quis et soluta blanditiis.</p>\n', 'contact-bg.jpg', 'Meta for Commodi eveniet qui et dolores quae corrupti.', 0, 'blog.layouts.post', '2018-02-04 20:08:12', '2018-02-04 20:08:12', '2018-01-17 16:23:26'),
(13, 'laboriosam-cum-voluptatum-necessitatibus-eaque-voluptates-exercitationem-atque', 'Laboriosam cum voluptatum necessitatibus eaque voluptates exercitationem atque.', 'Dolorum ducimus rerum esse eaque accusantium rerum a.', 'Iste rerum ipsum dolores aut rerum deserunt. Voluptatem fuga et fugiat rerum aperiam. Illum qui placeat non iusto ut earum. Sed alias aut consectetur occaecati. Ut quia est qui qui quidem illo.\n\nQuo enim est molestiae officia libero. Totam consequatur pariatur sequi libero ut eligendi iure accusantium.\n\nQuis impedit quasi autem aut aut sed alias. Dolorem incidunt illum et omnis. Quibusdam qui ducimus voluptates corrupti numquam accusantium qui quis.\n\nEt atque excepturi quisquam modi. Nihil dicta nihil consequatur voluptas sunt error. Ad eos sed qui natus suscipit doloremque accusamus.\n\nNihil dolorem consequatur quasi nulla ipsam magni. Ipsum autem non eos repellat optio quasi. A consequatur velit tenetur ut repellendus est.\n\nEt sapiente accusamus laboriosam illo eum aliquid repudiandae. Sed ea aut sint fugit reiciendis. Ut libero perspiciatis tempore est aut est.', '<p>Iste rerum ipsum dolores aut rerum deserunt. Voluptatem fuga et fugiat rerum aperiam. Illum qui placeat non iusto ut earum. Sed alias aut consectetur occaecati. Ut quia est qui qui quidem illo.</p>\n\n<p>Quo enim est molestiae officia libero. Totam consequatur pariatur sequi libero ut eligendi iure accusantium.</p>\n\n<p>Quis impedit quasi autem aut aut sed alias. Dolorem incidunt illum et omnis. Quibusdam qui ducimus voluptates corrupti numquam accusantium qui quis.</p>\n\n<p>Et atque excepturi quisquam modi. Nihil dicta nihil consequatur voluptas sunt error. Ad eos sed qui natus suscipit doloremque accusamus.</p>\n\n<p>Nihil dolorem consequatur quasi nulla ipsam magni. Ipsum autem non eos repellat optio quasi. A consequatur velit tenetur ut repellendus est.</p>\n\n<p>Et sapiente accusamus laboriosam illo eum aliquid repudiandae. Sed ea aut sint fugit reiciendis. Ut libero perspiciatis tempore est aut est.</p>\n', 'about-bg.jpg', 'Meta for Laboriosam cum voluptatum necessitatibus eaque voluptates exercitationem atque.', 0, 'blog.layouts.post', '2018-02-04 20:08:12', '2018-02-04 20:08:12', '2018-01-20 01:26:47'),
(14, 'debitis-quia-sint-asperiores-temporibus', 'Debitis quia sint asperiores temporibus.', 'Perferendis eos et natus voluptatem autem nesciunt est itaque labore enim ipsam est.', 'Cupiditate aut corrupti quae laudantium totam. Possimus placeat iure repudiandae et et laudantium sed velit. Minima in quia magni doloribus totam nobis voluptatibus.\n\nAd dolores sapiente ex aut. Nihil voluptatum perferendis sapiente dolores.\n\nInventore unde qui aut facere distinctio minus. Illo distinctio enim molestiae et. Voluptatem a qui quas id eveniet at. Facilis laborum dolorem aut sint quo aliquam. Voluptas similique quia voluptatum placeat accusantium maiores.', '<p>Cupiditate aut corrupti quae laudantium totam. Possimus placeat iure repudiandae et et laudantium sed velit. Minima in quia magni doloribus totam nobis voluptatibus.</p>\n\n<p>Ad dolores sapiente ex aut. Nihil voluptatum perferendis sapiente dolores.</p>\n\n<p>Inventore unde qui aut facere distinctio minus. Illo distinctio enim molestiae et. Voluptatem a qui quas id eveniet at. Facilis laborum dolorem aut sint quo aliquam. Voluptas similique quia voluptatum placeat accusantium maiores.</p>\n', 'post-bg.jpg', 'Meta for Debitis quia sint asperiores temporibus.', 0, 'blog.layouts.post', '2018-02-04 20:08:12', '2018-02-04 20:08:12', '2018-02-07 11:05:25'),
(15, 'nostrum-adipisci-harum-libero-perferendis-maiores-libero', 'Nostrum adipisci harum libero perferendis maiores libero.', 'Ullam est at vel est consequatur voluptas deserunt tenetur consequatur consequuntur aut sed non dignissimos dolorem esse officia nostrum sit est.', 'Officiis harum et at natus quam qui voluptatem est. Est earum ut officiis cumque. Quod et esse maxime explicabo labore sed. Voluptatum eum facilis aspernatur vel repellat totam.\n\nConsequatur sunt est sint rem veniam. Vel libero corrupti atque deleniti et consectetur velit. Aliquid explicabo ipsa repellat fuga quis. Modi facilis aut tenetur ut facilis dicta.\n\nConsequuntur qui velit excepturi dolores et. Sint omnis repudiandae tenetur et dolore. Nostrum quas exercitationem ad et rerum recusandae. Culpa ipsam aliquam eaque eum.\n\nAd enim dicta aliquid quaerat dolore et tempora. Nihil exercitationem cumque enim rem laudantium consectetur.\n\nSit natus et rerum accusamus. Quia et distinctio deserunt qui assumenda harum. Cupiditate veniam odio deleniti non rerum. Aut occaecati est est soluta sequi officiis.\n\nAccusantium perferendis eos quisquam veniam. Dolor debitis odit ullam quia. Odit totam delectus totam blanditiis.', '<p>Officiis harum et at natus quam qui voluptatem est. Est earum ut officiis cumque. Quod et esse maxime explicabo labore sed. Voluptatum eum facilis aspernatur vel repellat totam.</p>\n\n<p>Consequatur sunt est sint rem veniam. Vel libero corrupti atque deleniti et consectetur velit. Aliquid explicabo ipsa repellat fuga quis. Modi facilis aut tenetur ut facilis dicta.</p>\n\n<p>Consequuntur qui velit excepturi dolores et. Sint omnis repudiandae tenetur et dolore. Nostrum quas exercitationem ad et rerum recusandae. Culpa ipsam aliquam eaque eum.</p>\n\n<p>Ad enim dicta aliquid quaerat dolore et tempora. Nihil exercitationem cumque enim rem laudantium consectetur.</p>\n\n<p>Sit natus et rerum accusamus. Quia et distinctio deserunt qui assumenda harum. Cupiditate veniam odio deleniti non rerum. Aut occaecati est est soluta sequi officiis.</p>\n\n<p>Accusantium perferendis eos quisquam veniam. Dolor debitis odit ullam quia. Odit totam delectus totam blanditiis.</p>\n', 'contact-bg.jpg', 'Meta for Nostrum adipisci harum libero perferendis maiores libero.', 0, 'blog.layouts.post', '2018-02-04 20:08:12', '2018-02-04 20:08:12', '2018-01-13 12:21:45'),
(16, 'ullam-qui-adipisci-ea-et-et-cupiditate-et', 'Ullam qui adipisci ea et et cupiditate et.', 'Dolor amet voluptatibus debitis tenetur et qui modi voluptas saepe id molestiae.', 'Voluptatibus et qui rerum ratione. Eum maiores aspernatur officiis illo consequatur nesciunt. Totam aut minima nostrum aut cum voluptas aut deleniti. Maxime dolores odio provident debitis dolorum cupiditate.\n\nRerum suscipit dolorem rerum minima reiciendis. Dolor porro voluptas aut ad quisquam assumenda ut amet. Beatae fugit provident facere doloremque. Unde sed sapiente pariatur nobis cumque nulla praesentium.\n\nQuibusdam aut corrupti sint eos. Repellendus molestias aliquid labore nihil dolores omnis optio veniam.\n\nQuia voluptates ex modi temporibus. At iure fuga quasi. Fugiat consequatur quo quis nesciunt dolorum corporis. Sit ducimus ratione et dolores ea.\n\nEst occaecati adipisci eligendi labore. Id a voluptatibus velit magni dolores fuga maxime. Voluptates placeat et aperiam alias et dolorem rerum pariatur.\n\nNam ipsum quaerat repudiandae est soluta. Quas quas ea assumenda nisi. Consequatur ipsum quo et deserunt vero et.', '<p>Voluptatibus et qui rerum ratione. Eum maiores aspernatur officiis illo consequatur nesciunt. Totam aut minima nostrum aut cum voluptas aut deleniti. Maxime dolores odio provident debitis dolorum cupiditate.</p>\n\n<p>Rerum suscipit dolorem rerum minima reiciendis. Dolor porro voluptas aut ad quisquam assumenda ut amet. Beatae fugit provident facere doloremque. Unde sed sapiente pariatur nobis cumque nulla praesentium.</p>\n\n<p>Quibusdam aut corrupti sint eos. Repellendus molestias aliquid labore nihil dolores omnis optio veniam.</p>\n\n<p>Quia voluptates ex modi temporibus. At iure fuga quasi. Fugiat consequatur quo quis nesciunt dolorum corporis. Sit ducimus ratione et dolores ea.</p>\n\n<p>Est occaecati adipisci eligendi labore. Id a voluptatibus velit magni dolores fuga maxime. Voluptates placeat et aperiam alias et dolorem rerum pariatur.</p>\n\n<p>Nam ipsum quaerat repudiandae est soluta. Quas quas ea assumenda nisi. Consequatur ipsum quo et deserunt vero et.</p>\n', 'contact-bg.jpg', 'Meta for Ullam qui adipisci ea et et cupiditate et.', 0, 'blog.layouts.post', '2018-02-04 20:08:12', '2018-02-04 20:08:12', '2018-01-18 21:07:12'),
(17, 'nemo-occaecati-velit-qui-incidunt', 'Nemo occaecati velit qui incidunt.', 'Qui voluptas sit deleniti fugit est aut tenetur eius aliquid nesciunt vitae quod quia quia.', 'Quas totam molestiae sed eligendi. Quis quam laboriosam quo.\n\nOmnis culpa soluta voluptatem natus. Mollitia aliquam eius vitae placeat adipisci est. Dolor excepturi ducimus doloremque quidem nisi. Sint quam delectus harum illum dolor beatae non. Rerum voluptatem qui quis eos earum rerum.\n\nAperiam neque asperiores quos sint commodi. Voluptates optio totam nihil totam placeat ducimus repellendus assumenda. Repudiandae dicta quae eligendi et. Voluptatem cum possimus aut quia ad tempore. Reprehenderit vel molestiae saepe.\n\nUt sint nisi cum impedit. Recusandae numquam sed odit blanditiis voluptatum provident ipsam. Dolor nobis dolores rem vero consequuntur. Vero vel debitis est doloremque minus laborum mollitia.', '<p>Quas totam molestiae sed eligendi. Quis quam laboriosam quo.</p>\n\n<p>Omnis culpa soluta voluptatem natus. Mollitia aliquam eius vitae placeat adipisci est. Dolor excepturi ducimus doloremque quidem nisi. Sint quam delectus harum illum dolor beatae non. Rerum voluptatem qui quis eos earum rerum.</p>\n\n<p>Aperiam neque asperiores quos sint commodi. Voluptates optio totam nihil totam placeat ducimus repellendus assumenda. Repudiandae dicta quae eligendi et. Voluptatem cum possimus aut quia ad tempore. Reprehenderit vel molestiae saepe.</p>\n\n<p>Ut sint nisi cum impedit. Recusandae numquam sed odit blanditiis voluptatum provident ipsam. Dolor nobis dolores rem vero consequuntur. Vero vel debitis est doloremque minus laborum mollitia.</p>\n', 'about-bg.jpg', 'Meta for Nemo occaecati velit qui incidunt.', 0, 'blog.layouts.post', '2018-02-04 20:08:12', '2018-02-04 20:08:12', '2018-02-02 05:03:23'),
(18, 'placeat-perferendis-alias-ullam-magni-rerum-rerum', 'Placeat perferendis alias ullam magni rerum rerum.', 'Itaque sunt facilis et provident ut unde et amet voluptatibus id eveniet architecto eos qui beatae.', 'Quis ipsa voluptas dolor sapiente occaecati. Voluptates perspiciatis eos nihil ad. Recusandae ut excepturi velit corporis et. Sequi atque perspiciatis aliquam maxime quis tempora explicabo.\n\nEum ut qui quo sit. Nobis sint voluptatem hic hic. Voluptatibus ut dolores doloribus veniam et.\n\nUnde vel eius ut. Blanditiis iure est provident dignissimos maxime quo. Distinctio corrupti suscipit rem ut. Eum autem architecto in delectus sed. Minima mollitia quos dolores ut aliquid adipisci.\n\nAut explicabo a hic magni quia architecto molestias. Et mollitia suscipit sed asperiores dolore. Dolore illo qui et cumque quidem accusamus. Et aut omnis itaque est enim aut voluptas aut.', '<p>Quis ipsa voluptas dolor sapiente occaecati. Voluptates perspiciatis eos nihil ad. Recusandae ut excepturi velit corporis et. Sequi atque perspiciatis aliquam maxime quis tempora explicabo.</p>\n\n<p>Eum ut qui quo sit. Nobis sint voluptatem hic hic. Voluptatibus ut dolores doloribus veniam et.</p>\n\n<p>Unde vel eius ut. Blanditiis iure est provident dignissimos maxime quo. Distinctio corrupti suscipit rem ut. Eum autem architecto in delectus sed. Minima mollitia quos dolores ut aliquid adipisci.</p>\n\n<p>Aut explicabo a hic magni quia architecto molestias. Et mollitia suscipit sed asperiores dolore. Dolore illo qui et cumque quidem accusamus. Et aut omnis itaque est enim aut voluptas aut.</p>\n', 'home-bg.jpg', 'Meta for Placeat perferendis alias ullam magni rerum rerum.', 0, 'blog.layouts.post', '2018-02-04 20:08:13', '2018-02-04 20:08:13', '2018-01-20 06:21:56'),
(19, 'qui-error-temporibus-consequatur-accusamus-possimus-cum', 'Qui error temporibus consequatur accusamus possimus cum.', 'Odio et voluptatibus quaerat aut voluptatem voluptatum magni error dolorem modi quod exercitationem quisquam velit quidem temporibus atque.', 'Voluptatibus id deleniti voluptas omnis magnam dolorem dignissimos labore. Ut ipsum excepturi eligendi repellat illum. Consequatur incidunt id non sapiente unde. Tempora ut quae architecto soluta optio.\n\nIpsa quibusdam qui qui vel vero aperiam magnam. Libero praesentium minima voluptatibus dicta ullam. Sapiente similique dolor ut quia ut perspiciatis. Consequatur quam modi earum. Earum inventore quam dolore saepe iusto explicabo.\n\nEsse iste rerum facere et quod quos est. Et iure quis amet ut sed tenetur voluptatem. Fuga rerum natus dolore deserunt voluptatem omnis consequuntur. Sunt quo et voluptates incidunt praesentium.\n\nId reprehenderit ex cum non optio dolor voluptatibus. Et sit placeat vel mollitia occaecati. Saepe quia ut velit. Magni enim itaque placeat et alias.\n\nVoluptatem et et nostrum quia dolor. Quibusdam nihil dicta voluptatum veniam vero quia. Aut accusantium voluptas numquam dolores eius in voluptate saepe. Perferendis et eveniet eos alias quod velit corporis. Nemo nihil in ut dolorem doloremque.', '<p>Voluptatibus id deleniti voluptas omnis magnam dolorem dignissimos labore. Ut ipsum excepturi eligendi repellat illum. Consequatur incidunt id non sapiente unde. Tempora ut quae architecto soluta optio.</p>\n\n<p>Ipsa quibusdam qui qui vel vero aperiam magnam. Libero praesentium minima voluptatibus dicta ullam. Sapiente similique dolor ut quia ut perspiciatis. Consequatur quam modi earum. Earum inventore quam dolore saepe iusto explicabo.</p>\n\n<p>Esse iste rerum facere et quod quos est. Et iure quis amet ut sed tenetur voluptatem. Fuga rerum natus dolore deserunt voluptatem omnis consequuntur. Sunt quo et voluptates incidunt praesentium.</p>\n\n<p>Id reprehenderit ex cum non optio dolor voluptatibus. Et sit placeat vel mollitia occaecati. Saepe quia ut velit. Magni enim itaque placeat et alias.</p>\n\n<p>Voluptatem et et nostrum quia dolor. Quibusdam nihil dicta voluptatum veniam vero quia. Aut accusantium voluptas numquam dolores eius in voluptate saepe. Perferendis et eveniet eos alias quod velit corporis. Nemo nihil in ut dolorem doloremque.</p>\n', 'post-bg.jpg', 'Meta for Qui error temporibus consequatur accusamus possimus cum.', 0, 'blog.layouts.post', '2018-02-04 20:08:13', '2018-02-04 20:08:13', '2018-01-14 02:22:56'),
(20, 'quo-unde-cumque-at-tempore-corporis-necessitatibus-reiciendis-maxime', 'Quo unde cumque at tempore corporis necessitatibus reiciendis maxime.', 'Aspernatur velit illum distinctio distinctio minus in nulla neque ut cumque possimus hic reiciendis qui in sed enim non.', 'Ratione eos sed hic natus consequuntur deleniti. Minus distinctio nostrum quis id tempore. Et commodi nihil aut est. Ducimus est quisquam at et earum dolor.\n\nNam doloribus sed vitae recusandae in eos. Cum natus totam fugiat quo aperiam aspernatur. Ut dolor aut labore maxime soluta quis quo porro.\n\nVoluptas doloribus voluptatem consequatur mollitia cupiditate ipsam. Veniam sed ea assumenda rerum sit.', '<p>Ratione eos sed hic natus consequuntur deleniti. Minus distinctio nostrum quis id tempore. Et commodi nihil aut est. Ducimus est quisquam at et earum dolor.</p>\n\n<p>Nam doloribus sed vitae recusandae in eos. Cum natus totam fugiat quo aperiam aspernatur. Ut dolor aut labore maxime soluta quis quo porro.</p>\n\n<p>Voluptas doloribus voluptatem consequatur mollitia cupiditate ipsam. Veniam sed ea assumenda rerum sit.</p>\n', 'about-bg.jpg', 'Meta for Quo unde cumque at tempore corporis necessitatibus reiciendis maxime.', 0, 'blog.layouts.post', '2018-02-04 20:08:13', '2018-02-04 20:08:13', '2018-01-13 07:57:41'),
(21, 'test-natus-asperiores-anim-harum-nam-consequatur-fugit-facilis-rerum-ut-perspiciatis-eos-ab-voluptatem', 'test-Natus asperiores anim harum Nam consequatur fugit facilis rerum ut perspiciatis eos ab voluptatem', 'Qui dolorum enim natus id', 'Tenetur quae velit sed aperiam omnis autem quam laborum Optio eos qui', '<p>Tenetur quae velit sed aperiam omnis autem quam laborum Optio eos qui</p>\n', 'http://localhost:8000/uploads//home-bg.jpg', 'Non asperiores et itaque dolorem deserunt in necessitatibus qui minim', 0, 'blog.layouts.post', '2018-02-05 07:45:00', '2018-02-05 20:45:13', '2018-02-05 08:44:00'),
(22, 'test2-qui-qui-velit-impedit-ut-est-pariatur-aperiam-cum-ab-elit-magna-cillum-veritatis-fuga-minima-delectus', 'test2-Qui qui velit impedit ut est pariatur Aperiam cum ab elit magna cillum veritatis fuga Minima delectus', 'Magnam eos quis inventore ad sit ut debitis voluptatem Dolore aut', 'Quibusdam deleniti quia esse illo occaecat ea nesciunt consequatur libero eos', '<p>Quibusdam deleniti quia esse illo occaecat ea nesciunt consequatur libero eos</p>\n', '', 'Ullamco voluptatibus tempora reiciendis laudantium dolore hic est voluptatibus recusandae', 0, 'blog.layouts.post', '2018-02-05 07:45:32', '2018-02-05 20:41:33', '2018-02-05 08:45:00'),
(23, 'ad-incididunt-dolor-iusto-voluptatibus-rerum-eos-labore-duis-dolore-dolor-numquam-eveniet-praesentium-harum', 'Ad incididunt dolor iusto voluptatibus rerum eos labore duis dolore dolor numquam eveniet praesentium harum', 'Consequatur sunt qui cupidatat consequatur Beatae perspiciatis debitis at assumenda ipsam quis laboris est', 'Sequi quisquam labore accusamus tempore molestiae harum odit saepe recusandae Porro facilis enim cum Nam fuga Suscipit dolore non', '<p>Sequi quisquam labore accusamus tempore molestiae harum odit saepe recusandae Porro facilis enim cum Nam fuga Suscipit dolore non</p>\n', 'Eum magnam sint cum est voluptatum illo ut repellendus Nihil voluptas deleniti id nobis pariatur Et eum', 'Eu soluta natus officia autem', 0, 'Culpa minim ut ad ut vero necessitatibus', '2018-02-05 07:59:47', '2018-02-05 07:59:47', '2018-02-05 08:59:00'),
(24, 'test3', 'test3', 'subtitle3', 'to jest content', '<p>to jest content</p>\n', 'http://localhost:8000/uploads//home-bg.jpg', 'to jest meta', 0, 'blog.layouts.post', '2018-02-05 20:34:30', '2018-02-05 20:44:24', '2018-02-05 21:33:00');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `post_tag_pivot`
--

CREATE TABLE `post_tag_pivot` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `post_tag_pivot`
--

INSERT INTO `post_tag_pivot` (`id`, `post_id`, `tag_id`) VALUES
(1, 1, 1),
(2, 3, 3),
(3, 3, 4),
(4, 4, 4),
(5, 5, 5),
(6, 7, 4),
(7, 9, 2),
(8, 10, 1),
(9, 10, 2),
(10, 16, 4),
(11, 16, 2),
(12, 18, 1),
(13, 18, 2),
(14, 19, 2),
(15, 22, 5),
(16, 23, 5),
(17, 23, 3),
(18, 23, 4),
(19, 24, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `tag` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `page_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `layout` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'blog.layouts.index',
  `reverse_direction` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `tags`
--

INSERT INTO `tags` (`id`, `tag`, `title`, `subtitle`, `page_image`, `meta_description`, `layout`, `reverse_direction`, `created_at`, `updated_at`) VALUES
(1, 'dolor', 'Dolor', 'Ut quidem tenetur voluptas voluptatem quam perspiciatis.', 'post-bg.jpg', 'Meta for dolor', 'blog.layouts.index', 0, '2018-02-04 20:08:10', '2018-02-04 20:08:10'),
(2, 'tempore', 'Tempore', 'Id veritatis quia laborum quis.', 'post-bg.jpg', 'Meta for tempore', 'blog.layouts.index', 0, '2018-02-04 20:08:10', '2018-02-04 20:08:10'),
(3, 'maxime', 'Maxime', 'Fugit recusandae nihil voluptatem aut similique facere dolor nemo.', 'post-bg.jpg', 'Meta for maxime', 'blog.layouts.index', 0, '2018-02-04 20:08:10', '2018-02-04 20:08:10'),
(4, 'qui', 'Qui', 'Doloribus dignissimos perspiciatis dolor quidem quia sunt est.', 'home-bg.jpg', 'Meta for qui', 'blog.layouts.index', 0, '2018-02-04 20:08:10', '2018-02-04 20:08:10'),
(5, 'inventore', 'Inventore', 'Totam veniam qui cum.', 'post-bg.jpg', 'Meta for inventore', 'blog.layouts.index', 0, '2018-02-04 20:08:10', '2018-02-04 20:08:10');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', '$2y$10$TyD4.xEJ.Jng3UBp5j4aA.NWaYHiQIxkkfnodH0197AR6kBWhAdje', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_published_at_index` (`published_at`);

--
-- Indexes for table `post_tag_pivot`
--
ALTER TABLE `post_tag_pivot`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_tag_pivot_post_id_index` (`post_id`),
  ADD KEY `post_tag_pivot_tag_id_index` (`tag_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_tag_unique` (`tag`);

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
-- AUTO_INCREMENT dla tabeli `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT dla tabeli `post_tag_pivot`
--
ALTER TABLE `post_tag_pivot`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT dla tabeli `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
