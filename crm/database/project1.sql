-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2022 at 03:03 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project1`
--

-- --------------------------------------------------------

--
-- Table structure for table `career`
--

CREATE TABLE `career` (
  `id` int(255) NOT NULL,
  `title` text NOT NULL,
  `description` text DEFAULT NULL,
  `php_file_location` text NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `career`
--

INSERT INTO `career` (`id`, `title`, `description`, `php_file_location`, `active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(33, 'This The Title', 'Test Message', '', 1, '2022-06-20 11:47:17', '2022-06-22 07:22:52', '2022-06-22 07:22:52'),
(34, 'This The Title', '&lt;h1&gt;&lt;strong&gt;Job Opening&lt;/strong&gt;&lt;/h1&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;&lt;strong&gt;dummy job opening&lt;/strong&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;strong&gt;heloo&lt;/strong&gt;&lt;/li&gt;\r\n&lt;/ul&gt;', 'career/This_The_Title/index.php', 1, '2022-06-22 06:56:49', '2022-06-22 07:22:51', '2022-06-22 07:22:51'),
(35, 'This The Title', '<h1><strong>Job Opening</strong></h1>\r\n\r\n<ul>\r\n	<li><strong>dummy job opening</strong></li>\r\n	<li><strong>heloo</strong></li>\r\n</ul>\r\n', 'career/This_The_Title/index.php', 1, '2022-06-22 06:57:54', '2022-06-22 07:22:50', '2022-06-22 07:22:50'),
(36, 'CA Job Opening', '<h1><strong>CA with 5 year of experiance</strong></h1>\r\n\r\n<ul>\r\n	<li><strong>Communication skills</strong></li>\r\n	<li><strong>Verbal skills</strong></li>\r\n	<li><strong>CA skills</strong></li>\r\n	<li><strong>Finance Skill</strong></li>\r\n	<li><strong>Mathmatics</strong></li>\r\n	<li><strong>English</strong></li>\r\n	<li><strong>Hindi</strong></li>\r\n</ul>\r\n', 'career/CA_Job_Opening/index.php', 1, '2022-06-22 07:12:02', '2022-07-03 19:30:49', '2022-07-03 19:30:49'),
(37, 'Finance Job', '<h1><strong>Job Heading</strong></h1>\r\n\r\n<ol>\r\n	<li><strong>skills</strong></li>\r\n	<li><strong>skills 2</strong></li>\r\n</ol>\r\n', 'career/Finance_Job/index.php', 1, '2022-06-22 08:09:01', '2022-07-03 19:30:47', '2022-07-03 19:30:47'),
(38, 'New Job', '<h1><strong>Test Job</strong></h1>\r\n\r\n<ul>\r\n	<li><strong>Skill 1</strong></li>\r\n	<li><strong>Skill 2</strong></li>\r\n	<li><strong>skill 3</strong></li>\r\n</ul>\r\n', 'career/New_Job/index.php', 1, '2022-06-22 09:09:57', '2022-07-03 19:30:44', '2022-07-03 19:30:44'),
(39, 'New Job for Electrician', '<p>this is something for test</p>\r\n', 'career/New_Job_for_Electrician/index.php', 1, '2022-07-03 19:28:47', '2022-07-07 04:28:09', '2022-07-07 04:28:09'),
(40, 'New Job for plumber', '<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Sit sunt repudiandae nesciunt vitae sequi dignissimos, vero illum minus molestiae eius facere architecto mollitia adipisci ducimus harum laborum, cum iure facilis id porro velit est sapiente. Itaque consequatur modi necessitatibus fugit inventore dolores maiores blanditiis reiciendis. Culpa dolorum assumenda laborum doloremque exercitationem eum libero ipsam non nisi ex aliquid, fuga, blanditiis veritatis, minima voluptas possimus! Soluta quisquam dolor quasi error expedita maxime pariatur culpa atque at minus debitis nemo, cupiditate a ab consectetur dignissimos dolorum molestiae magnam animi deserunt! Possimus animi eligendi iste obcaecati debitis ullam laudantium officia illum voluptates tempora quisquam quidem qui expedita vitae delectus itaque recusandae distinctio, atque beatae, temporibus aperiam voluptate quaerat. Repellendus atque nihil a unde delectus, non ratione commodi eum, totam laboriosam illum odio perferendis quasi similique minima eaque laudantium sint cum? Aspernatur eos nobis consequatur suscipit! Maxime unde possimus asperiores error quas eius excepturi nesciunt id est animi. Iste laborum velit cumque rem necessitatibus libero amet, consequuntur beatae incidunt quo inventore doloremque est placeat repudiandae doloribus maxime esse eius. Illo quae magnam molestias dolor quia exercitationem nam nostrum, quisquam est obcaecati! Voluptates vero magnam in, nisi nobis ad officiis modi? Totam iusto ullam ab, expedita rerum nemo. Autem maxime beatae quibusdam impedit incidunt voluptate rem esse numquam mollitia! Autem sunt numquam ipsa error eius! Repudiandae, nobis quia ullam praesentium labore iste a amet officia magnam ea nemo sapiente! Fugit magnam laborum alias reprehenderit, aperiam totam, ipsa ipsam suscipit fugiat ducimus odio, quisquam recusandae quo unde assumenda asperiores tenetur nam eius maiores? Magnam recusandae vitae, dignissimos, beatae veniam ad numquam quisquam, in excepturi odit dicta placeat ipsum corporis ipsa enim dolorum! Ipsam possimus rem, illo facilis debitis eos perspiciatis inventore distinctio cumque eveniet sint suscipit odio dolorem odit. Modi placeat amet est asperiores autem consectetur, consequatur exercitationem beatae accusantium alias nihil minus, magni officia id nesciunt repudiandae provident, vel eveniet. Quis deleniti, porro ducimus, eveniet, sunt saepe facilis nihil adipisci optio nemo quisquam facere perferendis in at ad voluptate incidunt excepturi expedita sed? Excepturi aliquam fuga deserunt? Laborum ipsam repellendus in quo mollitia tenetur eos quos impedit. Iusto aliquam ratione mollitia doloremque tenetur tempora accusamus accusantium, voluptatibus atque nulla culpa maiores earum! Vero reiciendis optio praesentium deserunt. Perspiciatis quaerat cum, maxime, corporis distinctio inventore dignissimos necessitatibus consequuntur tempore maiores alias animi et saepe illum! Eaque cum quos esse facilis? Qui commodi iusto reiciendis neque numquam magni quibusdam error laudantium sunt vitae minima facilis eaque doloremque, similique natus quidem necessitatibus omnis doloribus dolorem in tempore exercitationem placeat esse nemo. Consequuntur asperiores dignissimos pariatur consequatur ratione, repudiandae dolorem ipsa saepe quas harum voluptatem ex fugiat, earum odit aperiam non repellat veniam sapiente, error iure totam. Quaerat odit sequi, ullam similique quam officia eius in totam ad quos est animi illum impedit soluta excepturi culpa obcaecati nesciunt illo, dolorum facilis voluptatem, quas sunt iste? Officiis sit illum repellat? Obcaecati ducimus dicta voluptatum quaerat maiores omnis repellendus? Nam, soluta illo. Recusandae autem enim in consectetur cumque quae excepturi voluptatum?</p>\r\n', 'career/New_Job_for_plumber/index.php', 1, '2022-07-04 05:00:14', '2022-07-07 04:28:21', '2022-07-07 04:28:21'),
(41, 'blog', '<h2>The software lifecycle in the cloud</h2>\r\n\r\n<p>When developers discuss the software lifecycle in the cloud, it&rsquo;s often broken down into Day 0, Day 1, and Day 2 Operations. Day 0 Operations focus on learning about the tool they&rsquo;re interested in using, while Day 1 and Day 2 Operations is where developers typically begin to configure and deploy applications and focus on operational tasks.&nbsp;</p>\r\n\r\n<p><strong>Day 0 Operations for Kubernetes</strong></p>\r\n\r\n<p>Day 0 Operations focus on the developers&rsquo; understanding of Kubernetes. In this phase, developers will research Kubernetes requirements, explore high-level use cases, and learn best practices for setting up their clusters. There are many resources and tools available through the vibrant Kubernetes community to help developers develop a simple understanding of the basics of the Kubernetes cluster orchestration system.</p>\r\n\r\n<p><strong>Day 1 Operations for Kubernetes</strong></p>\r\n\r\n<p>Day 1 operations take developers through&nbsp;<a href=\"https://www.digitalocean.com/blog/three-ways-to-spin-up-a-kubernetes-cluster\">spinning up a Kubernetes cluster</a>&nbsp;using a managed service and deploying their application. It&rsquo;s very simple to create a cluster using DigitalOcean&mdash;it&rsquo;s possible to spin up a cluster with just one command. Builders are free to choose how they prefer to create their cluster, often making a choice between a web interface, the command line interface, or terraform. Spinning up the Kubernetes cluster and deploying your application during Day 1 Operations allows you to verify that Kubernetes is a viable choice for your app.</p>\r\n\r\n<p><strong>Day 2 Operations for Kubernetes</strong></p>\r\n\r\n<p>Day 2 Operations for Kubernetes include the operational tasks like setting up logging, monitoring, ingress, security, backups, and optimization. Day 2 Operations is where developers often get stuck. There&rsquo;s a significant time commitment to learning and implementing all the details of making a cluster production-ready. By using&nbsp;<a href=\"https://github.com/digitalocean/Kubernetes-Starter-Kit-Developers\">DigitalOcean&rsquo;s starter kit for Kubernetes</a>&nbsp;developers can learn through example configurations using step-by-step tutorials. And finally, they can bootstrap their own operations-ready cluster using GitOps (ArgoCD or Flux).&nbsp;</p>\r\n\r\n<h2>The DigitalOccean Kubernetes Starter Kit</h2>\r\n\r\n<p>Since Day 2 Operations is where developers most often find themselves stuck or moving slowly,&nbsp;<a href=\"https://github.com/digitalocean/Kubernetes-Starter-Kit-Developers\">DigitalOcean&rsquo;s starter kit</a>&nbsp;focuses on simplifying Day 2 operations. The step-by-step guide takes you through important operations like logging and monitoring, ingress, enabling backups, autoscaling, automation, and optimizing your cluster in a way that makes sense for you and your customers.&nbsp;</p>\r\n\r\n<p><strong>Logging and monitoring</strong></p>\r\n\r\n<p>Without logging and monitoring, it&rsquo;s difficult to recognize areas of issue within your containers. If you run into a problem and don&rsquo;t have logging and monitoring in place, you have nothing to troubleshoot and no way of finding out where the issue is.</p>\r\n\r\n<p>Logging in relation to Kubernetes allows you to track errors and refine the performance of your containers. Logging is an essential function of Kubernetes management, and there are many open source strategies for cluster-level monitoring and logging. The starter kit uses Loki for logging, using promtail to send worker nodes and application logs to Loki, Grafana for visualizing and analyzing logs, and DigitalOcean block storage, or Spaces, for logs.&nbsp;</p>\r\n\r\n<p>Monitoring allows for easier management of Kubernetes clusters through detailed reporting of memory, CPU usage, and storage. Using Kube-prom-stack, organizations can monitor the DigitalOcean control plane, nodes, and applications and receive metrics data stored in DigitalOcean block storage. Developers can also configure alertmanager to deliver important notifications through slack or email.</p>\r\n\r\n<p><strong>Ingress</strong></p>\r\n\r\n<p>In many cases, developers start with the load balancer available to them through their cloud provider. Adding one load balancer for every service can get expensive. To avoid using one Load Balancer per service, developers need a proxy inside the cluster. That&rsquo;s Ingress. Ingress helps route incoming traffic to appropriate backend services. Nginx is a popular Ingress Controller and is covered in detail. For developers who need an API gateway, Ambassador is provided through the starter kit. Using Ambassador as the API gateway provides benefits such as automatic certificate management, authentication, and API publishing.&nbsp;</p>\r\n\r\n<p><strong>Backups</strong></p>\r\n\r\n<p>Creating backups is an absolutely critical best practice for Kubernetes management. With Velero, developers are able to back up the cluster and application configuration and data, schedule backups with pre and post hooks, and restore in the event of a disaster or when migrating over to another cluster in the same or even a different cloud.&nbsp; The starter kit provides step-by-step tutorials on two of the most popular backup solutions, Velero and Triliovault, and developers can choose which one best suits their needs.</p>\r\n\r\n<p><strong>Auto-scaling</strong></p>\r\n\r\n<p>Kubernetes provides several resources that allow developers to run multiple instances of an application and create high availability configurations, but there&rsquo;s still a level of uncertainty around the amount of CPU needed at any given time. Developers will often set up cluster management based on monitoring application response to load over time, but this requires manually adjusting the values and manually making changes if applications misbehave. This also doesn&rsquo;t account for a load decrease, wasting resources such as CPU and RAM when applications don&rsquo;t automatically scale down.</p>\r\n\r\n<p>With the HorizontalPodAutoscaler (HPA), a dedicated controller automatically changes the replica set value for your application deployments. Based on the load, the HorizontalPodAutoscaler will automatically scale your deployments up or down.</p>\r\n\r\n<p><strong>Automation</strong></p>\r\n\r\n<p><a href=\"https://www.digitalocean.com/blog/what-is-gitops\">GitOps</a>&nbsp;is an operational approach for platform engineers and software developers where every aspect of a project&rsquo;s infrastructure, including infrastructure as code files, configuration files, and application code files, are stored in git repositories.&nbsp; GitOps keeps your system state synchronized with a Git repository and works with infrastructure that can be observed and described declaratively (like Kubernetes, for example).<strong>&nbsp;</strong>When a git commit is pushed to source control, it triggers a change that updates the cloud infrastructure or application. With continuous delivery, GitOps tools like&nbsp; Flux CD or Argo CD fetch current configuration from the Git repository and apply required changes to your Kubernetes cluster to maintain the desired state.</p>\r\n\r\n<p>When adopting GitOps, the cluster state is stored in Git. This has sensitive configuration data like secrets. Hence, sensitive configuration data should not be kept in a Git repo in clear text. The sealed secrets controller is used to encrypt the secrets outside the cluster. The step-by-step tutorials include the sealed secrets controller as part of the GitOps chapter.</p>\r\n\r\n<h2>Try it today</h2>\r\n\r\n<p><a href=\"https://www.digitalocean.com/products/kubernetes\">Spin up a DigitalOcean Kubernetes cluster today</a>&nbsp;and test the&nbsp;<a href=\"https://github.com/digitalocean/Kubernetes-Starter-Kit-Developers\">starter kit</a>&nbsp;for yourself! For those looking for more of a UI experience, you can use equivalent&nbsp;<a href=\"https://marketplace.digitalocean.com/category/kubernetes\">DigitalOcean Kubernetes 1-clicks</a>. Those are maintained at par with the starter kit.&nbsp;</p>\r\n\r\n<p>For more information about using DigitalOcean and Managed Kubernetes for your business,&nbsp;<a href=\"https://www.digitalocean.com/company/contact/sales\">contact our sales team</a>.</p>\r\n', 'career/blog/index.php', 1, '2022-07-04 06:15:26', '2022-07-07 05:42:00', '2022-07-07 05:42:00'),
(42, 'our blog', '<p>new blog for test</p>\r\n', 'career/our_blog/index.php', 1, '2022-07-05 05:30:33', '2022-07-07 05:43:02', '2022-07-07 05:43:02'),
(43, 'mobile', '<h1>About this item</h1>\r\n\r\n<ul>\r\n	<li>15 cm (6.1-inch) Super Retina XDR display</li>\r\n	<li>Cinematic mode adds shallow depth of field and shifts focus automatically in your videos</li>\r\n	<li>Advanced dual-camera system with 12MP Wide and Ultra Wide cameras; Photographic Styles, Smart HDR 4, Night mode, 4K Dolby Vision HDR recording</li>\r\n	<li>12MP TrueDepth front camera with Night mode, 4K Dolby Vision HDR recording</li>\r\n	<li>A15 Bionic chip for lightning-fast performance</li>\r\n	<li>Up to 19 hours of video playback</li>\r\n	<li>Durable design with Ceramic Shield</li>\r\n</ul>\r\n\r\n<p><a href=\"javascript:void(0)\">Show More</a></p>\r\n', 'career/mobile/index.php', 1, '2022-07-06 04:57:35', '2022-07-07 05:55:10', '2022-07-07 05:55:10'),
(44, 'Telecommunications', '<p>something new for test</p>\r\n', 'career/Telecommunications/index.php', 1, '2022-07-06 18:26:23', '2022-07-07 06:00:54', '2022-07-07 06:00:54'),
(45, 'New Blog', '<p>something new to test</p>\r\n', 'career/New_Blog/index.php', 1, '2022-07-07 04:25:46', '2022-07-07 05:48:07', '2022-07-07 05:48:07'),
(46, 'Test Blog', '<p>something for test</p>\r\n', 'career/Test_Blog/index.php', 1, '2022-07-07 04:29:34', '2022-07-07 05:45:25', '2022-07-07 05:45:25'),
(47, 'Test Blog', '<p>something here to test</p>\r\n', 'career/Test_Blog/index.php', 1, '2022-07-07 05:50:08', NULL, NULL),
(48, 'Test Blog 2', '<p>typing here to test</p>\r\n', 'career/Test_Blog_2/index.php', 1, '2022-07-07 06:01:25', '2022-07-07 06:02:48', '2022-07-07 06:02:48');

-- --------------------------------------------------------

--
-- Table structure for table `carrer2`
--

CREATE TABLE `carrer2` (
  `id` int(255) NOT NULL DEFAULT 0,
  `title` text NOT NULL,
  `description` text DEFAULT NULL,
  `php_file_location` text NOT NULL,
  `job_type` text DEFAULT NULL,
  `job_location` text DEFAULT NULL,
  `job_category` text DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `carrer2`
--

INSERT INTO `carrer2` (`id`, `title`, `description`, `php_file_location`, `job_type`, `job_location`, `job_category`, `active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(33, 'This The Title', 'Test Message', '', NULL, NULL, NULL, 1, '2022-06-20 11:47:17', '2022-06-22 07:22:52', '2022-06-22 07:22:52'),
(34, 'This The Title', '&lt;h1&gt;&lt;strong&gt;Job Opening&lt;/strong&gt;&lt;/h1&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;&lt;strong&gt;dummy job opening&lt;/strong&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;strong&gt;heloo&lt;/strong&gt;&lt;/li&gt;\r\n&lt;/ul&gt;', 'career/This_The_Title/index.php', NULL, NULL, NULL, 1, '2022-06-22 06:56:49', '2022-06-22 07:22:51', '2022-06-22 07:22:51'),
(35, 'This The Title', '<h1><strong>Job Opening</strong></h1>\r\n\r\n<ul>\r\n	<li><strong>dummy job opening</strong></li>\r\n	<li><strong>heloo</strong></li>\r\n</ul>\r\n', 'career/This_The_Title/index.php', NULL, NULL, NULL, 1, '2022-06-22 06:57:54', '2022-06-22 07:22:50', '2022-06-22 07:22:50'),
(36, 'CA Job Opening', '<h1><strong>CA with 5 year of experiance</strong></h1>\r\n\r\n<ul>\r\n	<li><strong>Communication skills</strong></li>\r\n	<li><strong>Verbal skills</strong></li>\r\n	<li><strong>CA skills</strong></li>\r\n	<li><strong>Finance Skill</strong></li>\r\n	<li><strong>Mathmatics</strong></li>\r\n	<li><strong>English</strong></li>\r\n	<li><strong>Hindi</strong></li>\r\n</ul>\r\n', 'career/CA_Job_Opening/index.php', 'Full Time', 'Remote', 'Accounts', 1, '2022-06-22 07:12:02', '2022-07-03 19:30:49', '2022-07-03 19:30:49'),
(37, 'Finance Job', '<h1><strong>Job Heading</strong></h1>\r\n\r\n<ol>\r\n	<li><strong>skills</strong></li>\r\n	<li><strong>skills 2</strong></li>\r\n</ol>\r\n', 'career/Finance_Job/index.php', 'Full Time', 'Hydrabad', 'Accounts', 1, '2022-06-22 08:09:01', '2022-07-03 19:30:47', '2022-07-03 19:30:47'),
(38, 'New Job', '<h1><strong>Test Job</strong></h1>\r\n\r\n<ul>\r\n	<li><strong>Skill 1</strong></li>\r\n	<li><strong>Skill 2</strong></li>\r\n	<li><strong>skill 3</strong></li>\r\n</ul>\r\n', 'career/New_Job/index.php', 'Full Time', 'Hydrabad', '0', 1, '2022-06-22 09:09:57', '2022-07-03 19:30:44', '2022-07-03 19:30:44'),
(39, 'New Job for Electrician', '<p>this is something for test</p>\r\n', 'career/New_Job_for_Electrician/index.php', 'Full Time', 'Delhi', '0', 1, '2022-07-03 19:28:47', '2022-07-04 03:12:11', NULL),
(40, 'New Job for plumber', '<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Sit sunt repudiandae nesciunt vitae sequi dignissimos, vero illum minus molestiae eius facere architecto mollitia adipisci ducimus harum laborum, cum iure facilis id porro velit est sapiente. Itaque consequatur modi necessitatibus fugit inventore dolores maiores blanditiis reiciendis. Culpa dolorum assumenda laborum doloremque exercitationem eum libero ipsam non nisi ex aliquid, fuga, blanditiis veritatis, minima voluptas possimus! Soluta quisquam dolor quasi error expedita maxime pariatur culpa atque at minus debitis nemo, cupiditate a ab consectetur dignissimos dolorum molestiae magnam animi deserunt! Possimus animi eligendi iste obcaecati debitis ullam laudantium officia illum voluptates tempora quisquam quidem qui expedita vitae delectus itaque recusandae distinctio, atque beatae, temporibus aperiam voluptate quaerat. Repellendus atque nihil a unde delectus, non ratione commodi eum, totam laboriosam illum odio perferendis quasi similique minima eaque laudantium sint cum? Aspernatur eos nobis consequatur suscipit! Maxime unde possimus asperiores error quas eius excepturi nesciunt id est animi. Iste laborum velit cumque rem necessitatibus libero amet, consequuntur beatae incidunt quo inventore doloremque est placeat repudiandae doloribus maxime esse eius. Illo quae magnam molestias dolor quia exercitationem nam nostrum, quisquam est obcaecati! Voluptates vero magnam in, nisi nobis ad officiis modi? Totam iusto ullam ab, expedita rerum nemo. Autem maxime beatae quibusdam impedit incidunt voluptate rem esse numquam mollitia! Autem sunt numquam ipsa error eius! Repudiandae, nobis quia ullam praesentium labore iste a amet officia magnam ea nemo sapiente! Fugit magnam laborum alias reprehenderit, aperiam totam, ipsa ipsam suscipit fugiat ducimus odio, quisquam recusandae quo unde assumenda asperiores tenetur nam eius maiores? Magnam recusandae vitae, dignissimos, beatae veniam ad numquam quisquam, in excepturi odit dicta placeat ipsum corporis ipsa enim dolorum! Ipsam possimus rem, illo facilis debitis eos perspiciatis inventore distinctio cumque eveniet sint suscipit odio dolorem odit. Modi placeat amet est asperiores autem consectetur, consequatur exercitationem beatae accusantium alias nihil minus, magni officia id nesciunt repudiandae provident, vel eveniet. Quis deleniti, porro ducimus, eveniet, sunt saepe facilis nihil adipisci optio nemo quisquam facere perferendis in at ad voluptate incidunt excepturi expedita sed? Excepturi aliquam fuga deserunt? Laborum ipsam repellendus in quo mollitia tenetur eos quos impedit. Iusto aliquam ratione mollitia doloremque tenetur tempora accusamus accusantium, voluptatibus atque nulla culpa maiores earum! Vero reiciendis optio praesentium deserunt. Perspiciatis quaerat cum, maxime, corporis distinctio inventore dignissimos necessitatibus consequuntur tempore maiores alias animi et saepe illum! Eaque cum quos esse facilis? Qui commodi iusto reiciendis neque numquam magni quibusdam error laudantium sunt vitae minima facilis eaque doloremque, similique natus quidem necessitatibus omnis doloribus dolorem in tempore exercitationem placeat esse nemo. Consequuntur asperiores dignissimos pariatur consequatur ratione, repudiandae dolorem ipsa saepe quas harum voluptatem ex fugiat, earum odit aperiam non repellat veniam sapiente, error iure totam. Quaerat odit sequi, ullam similique quam officia eius in totam ad quos est animi illum impedit soluta excepturi culpa obcaecati nesciunt illo, dolorum facilis voluptatem, quas sunt iste? Officiis sit illum repellat? Obcaecati ducimus dicta voluptatum quaerat maiores omnis repellendus? Nam, soluta illo. Recusandae autem enim in consectetur cumque quae excepturi voluptatum?</p>\r\n', 'career/New_Job_for_plumber/index.php', 'Full Time', 'Mumbai', '0', 1, '2022-07-04 05:00:14', NULL, NULL),
(41, 'blog', '<h2>The software lifecycle in the cloud</h2>\r\n\r\n<p>When developers discuss the software lifecycle in the cloud, it&rsquo;s often broken down into Day 0, Day 1, and Day 2 Operations. Day 0 Operations focus on learning about the tool they&rsquo;re interested in using, while Day 1 and Day 2 Operations is where developers typically begin to configure and deploy applications and focus on operational tasks.&nbsp;</p>\r\n\r\n<p><strong>Day 0 Operations for Kubernetes</strong></p>\r\n\r\n<p>Day 0 Operations focus on the developers&rsquo; understanding of Kubernetes. In this phase, developers will research Kubernetes requirements, explore high-level use cases, and learn best practices for setting up their clusters. There are many resources and tools available through the vibrant Kubernetes community to help developers develop a simple understanding of the basics of the Kubernetes cluster orchestration system.</p>\r\n\r\n<p><strong>Day 1 Operations for Kubernetes</strong></p>\r\n\r\n<p>Day 1 operations take developers through&nbsp;<a href=\"https://www.digitalocean.com/blog/three-ways-to-spin-up-a-kubernetes-cluster\">spinning up a Kubernetes cluster</a>&nbsp;using a managed service and deploying their application. It&rsquo;s very simple to create a cluster using DigitalOcean&mdash;it&rsquo;s possible to spin up a cluster with just one command. Builders are free to choose how they prefer to create their cluster, often making a choice between a web interface, the command line interface, or terraform. Spinning up the Kubernetes cluster and deploying your application during Day 1 Operations allows you to verify that Kubernetes is a viable choice for your app.</p>\r\n\r\n<p><strong>Day 2 Operations for Kubernetes</strong></p>\r\n\r\n<p>Day 2 Operations for Kubernetes include the operational tasks like setting up logging, monitoring, ingress, security, backups, and optimization. Day 2 Operations is where developers often get stuck. There&rsquo;s a significant time commitment to learning and implementing all the details of making a cluster production-ready. By using&nbsp;<a href=\"https://github.com/digitalocean/Kubernetes-Starter-Kit-Developers\">DigitalOcean&rsquo;s starter kit for Kubernetes</a>&nbsp;developers can learn through example configurations using step-by-step tutorials. And finally, they can bootstrap their own operations-ready cluster using GitOps (ArgoCD or Flux).&nbsp;</p>\r\n\r\n<h2>The DigitalOccean Kubernetes Starter Kit</h2>\r\n\r\n<p>Since Day 2 Operations is where developers most often find themselves stuck or moving slowly,&nbsp;<a href=\"https://github.com/digitalocean/Kubernetes-Starter-Kit-Developers\">DigitalOcean&rsquo;s starter kit</a>&nbsp;focuses on simplifying Day 2 operations. The step-by-step guide takes you through important operations like logging and monitoring, ingress, enabling backups, autoscaling, automation, and optimizing your cluster in a way that makes sense for you and your customers.&nbsp;</p>\r\n\r\n<p><strong>Logging and monitoring</strong></p>\r\n\r\n<p>Without logging and monitoring, it&rsquo;s difficult to recognize areas of issue within your containers. If you run into a problem and don&rsquo;t have logging and monitoring in place, you have nothing to troubleshoot and no way of finding out where the issue is.</p>\r\n\r\n<p>Logging in relation to Kubernetes allows you to track errors and refine the performance of your containers. Logging is an essential function of Kubernetes management, and there are many open source strategies for cluster-level monitoring and logging. The starter kit uses Loki for logging, using promtail to send worker nodes and application logs to Loki, Grafana for visualizing and analyzing logs, and DigitalOcean block storage, or Spaces, for logs.&nbsp;</p>\r\n\r\n<p>Monitoring allows for easier management of Kubernetes clusters through detailed reporting of memory, CPU usage, and storage. Using Kube-prom-stack, organizations can monitor the DigitalOcean control plane, nodes, and applications and receive metrics data stored in DigitalOcean block storage. Developers can also configure alertmanager to deliver important notifications through slack or email.</p>\r\n\r\n<p><strong>Ingress</strong></p>\r\n\r\n<p>In many cases, developers start with the load balancer available to them through their cloud provider. Adding one load balancer for every service can get expensive. To avoid using one Load Balancer per service, developers need a proxy inside the cluster. That&rsquo;s Ingress. Ingress helps route incoming traffic to appropriate backend services. Nginx is a popular Ingress Controller and is covered in detail. For developers who need an API gateway, Ambassador is provided through the starter kit. Using Ambassador as the API gateway provides benefits such as automatic certificate management, authentication, and API publishing.&nbsp;</p>\r\n\r\n<p><strong>Backups</strong></p>\r\n\r\n<p>Creating backups is an absolutely critical best practice for Kubernetes management. With Velero, developers are able to back up the cluster and application configuration and data, schedule backups with pre and post hooks, and restore in the event of a disaster or when migrating over to another cluster in the same or even a different cloud.&nbsp; The starter kit provides step-by-step tutorials on two of the most popular backup solutions, Velero and Triliovault, and developers can choose which one best suits their needs.</p>\r\n\r\n<p><strong>Auto-scaling</strong></p>\r\n\r\n<p>Kubernetes provides several resources that allow developers to run multiple instances of an application and create high availability configurations, but there&rsquo;s still a level of uncertainty around the amount of CPU needed at any given time. Developers will often set up cluster management based on monitoring application response to load over time, but this requires manually adjusting the values and manually making changes if applications misbehave. This also doesn&rsquo;t account for a load decrease, wasting resources such as CPU and RAM when applications don&rsquo;t automatically scale down.</p>\r\n\r\n<p>With the HorizontalPodAutoscaler (HPA), a dedicated controller automatically changes the replica set value for your application deployments. Based on the load, the HorizontalPodAutoscaler will automatically scale your deployments up or down.</p>\r\n\r\n<p><strong>Automation</strong></p>\r\n\r\n<p><a href=\"https://www.digitalocean.com/blog/what-is-gitops\">GitOps</a>&nbsp;is an operational approach for platform engineers and software developers where every aspect of a project&rsquo;s infrastructure, including infrastructure as code files, configuration files, and application code files, are stored in git repositories.&nbsp; GitOps keeps your system state synchronized with a Git repository and works with infrastructure that can be observed and described declaratively (like Kubernetes, for example).<strong>&nbsp;</strong>When a git commit is pushed to source control, it triggers a change that updates the cloud infrastructure or application. With continuous delivery, GitOps tools like&nbsp; Flux CD or Argo CD fetch current configuration from the Git repository and apply required changes to your Kubernetes cluster to maintain the desired state.</p>\r\n\r\n<p>When adopting GitOps, the cluster state is stored in Git. This has sensitive configuration data like secrets. Hence, sensitive configuration data should not be kept in a Git repo in clear text. The sealed secrets controller is used to encrypt the secrets outside the cluster. The step-by-step tutorials include the sealed secrets controller as part of the GitOps chapter.</p>\r\n\r\n<h2>Try it today</h2>\r\n\r\n<p><a href=\"https://www.digitalocean.com/products/kubernetes\">Spin up a DigitalOcean Kubernetes cluster today</a>&nbsp;and test the&nbsp;<a href=\"https://github.com/digitalocean/Kubernetes-Starter-Kit-Developers\">starter kit</a>&nbsp;for yourself! For those looking for more of a UI experience, you can use equivalent&nbsp;<a href=\"https://marketplace.digitalocean.com/category/kubernetes\">DigitalOcean Kubernetes 1-clicks</a>. Those are maintained at par with the starter kit.&nbsp;</p>\r\n\r\n<p>For more information about using DigitalOcean and Managed Kubernetes for your business,&nbsp;<a href=\"https://www.digitalocean.com/company/contact/sales\">contact our sales team</a>.</p>\r\n', 'career/blog/index.php', 'Full Time', 'Hydrabad', '0', 1, '2022-07-04 06:15:26', NULL, NULL),
(42, 'our blog', '<p>new blog for test</p>\r\n', 'career/our_blog/index.php', 'Not Available', 'Not Available', 'Not Available', 1, '2022-07-05 05:30:33', NULL, NULL),
(43, 'mobile', '<h1>About this item</h1>\r\n\r\n<ul>\r\n	<li>15 cm (6.1-inch) Super Retina XDR display</li>\r\n	<li>Cinematic mode adds shallow depth of field and shifts focus automatically in your videos</li>\r\n	<li>Advanced dual-camera system with 12MP Wide and Ultra Wide cameras; Photographic Styles, Smart HDR 4, Night mode, 4K Dolby Vision HDR recording</li>\r\n	<li>12MP TrueDepth front camera with Night mode, 4K Dolby Vision HDR recording</li>\r\n	<li>A15 Bionic chip for lightning-fast performance</li>\r\n	<li>Up to 19 hours of video playback</li>\r\n	<li>Durable design with Ceramic Shield</li>\r\n</ul>\r\n\r\n<p><a href=\"javascript:void(0)\">Show More</a></p>\r\n', 'career/mobile/index.php', 'Not Available', 'Not Available', 'Not Available', 1, '2022-07-06 04:57:35', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `case_study`
--

CREATE TABLE `case_study` (
  `id` int(255) NOT NULL,
  `title` text NOT NULL,
  `description` text DEFAULT NULL,
  `file` text NOT NULL,
  `file_type` text DEFAULT NULL,
  `php_file_location` text NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `case_study`
--

INSERT INTO `case_study` (`id`, `title`, `description`, `file`, `file_type`, `php_file_location`, `active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(38, 'Transaction Processing', 'Test Desc', 'big_buck_bunny_720p_1mb62b1a9e0d23547.92772732.mp4', 'mp4', 'case_study/Transaction_Processing/index.php', 1, '2022-06-21 11:22:08', NULL, NULL),
(39, 'Transaction Processing', 'text description', '0', '0', 'case_study/Transaction_Processing/index.php', 1, '2022-06-22 09:25:00', '2022-06-22 09:29:40', NULL),
(40, 'Transaction Processing', 'text description', '0', '0', 'case_study/Transaction_Processing/index.php', 1, '2022-06-22 09:25:22', '2022-06-22 09:29:48', NULL),
(41, 'Transaction Processing 6', 'text description', '0', '0', 'case_study/Transaction_Processing_6/index.php', 1, '2022-06-22 09:26:09', '2022-06-22 09:29:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contact_subject_list`
--

CREATE TABLE `contact_subject_list` (
  `id` int(255) NOT NULL,
  `service_id` int(255) NOT NULL,
  `code` bigint(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_subject_list`
--

INSERT INTO `contact_subject_list` (`id`, `service_id`, `code`, `created_at`, `updated_at`, `deleted_at`) VALUES
(12, 8, 1655727227, '2022-06-20 12:13:47', NULL, NULL),
(13, 6, 1655727227, '2022-06-20 12:13:47', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(255) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` bigint(13) NOT NULL,
  `service` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `page_name` text DEFAULT NULL,
  `archive` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `phone`, `service`, `message`, `page_name`, `archive`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'user', 'user@gmail.com', 9845213485, 'service1', 'first message', 'http://localhost/gec/', 0, '2022-07-04 04:17:55', NULL, NULL),
(3, 'Amar Nath', 'amarnathjnp2002@gmail.com', 9845213485, 'service1', 'first message', 'http://localhost/gec/', 0, '2022-07-04 06:07:20', NULL, NULL),
(4, 'user12', 'user@gmail.com', 9475847395, 'service3', 'first message', 'http://localhost/gec/', 1, '2022-07-06 01:43:51', '2022-07-06 04:33:39', NULL),
(5, 'user123', 'user@gmail.com', 9786424234, NULL, 'message thru contact us', 'http://localhost/gec/contact_us.php', 1, '2022-07-06 01:44:54', '2022-07-06 04:33:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contact_us2`
--

CREATE TABLE `contact_us2` (
  `id` int(255) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` bigint(13) NOT NULL,
  `message` text DEFAULT NULL,
  `page_name` text DEFAULT NULL,
  `archive` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_us2`
--

INSERT INTO `contact_us2` (`id`, `name`, `email`, `phone`, `message`, `page_name`, `archive`, `created_at`, `updated_at`, `deleted_at`) VALUES
(19, 'DA Team', 'xyzhjs@gmail.com', 7851332230, 'Test Query', 'http://localhost/folder123/oremus/contact.php', 0, '2022-06-20 12:13:47', '2022-07-04 03:05:24', NULL),
(21, 'user', 'user@gmail.com', 9845213485, 'first message', 'http://localhost/gec/contact_us.php', 0, '2022-07-03 05:00:30', NULL, NULL),
(22, 'user2', 'user2@gmail.com', 9786424234, 'second message', 'http://localhost/gec/contact_us.php', 0, '2022-07-03 05:16:08', NULL, NULL),
(23, 'new user', 'new@gmail.com', 9475847395, 'this is the message from new user.', 'http://localhost/gec/contact_us.php', 0, '2022-07-04 02:37:49', '2022-07-04 03:08:48', NULL),
(24, 'Kartik Sir', 'admin@gmail.com', 9845213485, 'first message thru DA team', 'http://localhost/gec/contact_us.php', 0, '2022-07-04 06:03:42', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `machine`
--

CREATE TABLE `machine` (
  `id` int(255) NOT NULL,
  `machine` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `machine`
--

INSERT INTO `machine` (`id`, `machine`, `created_at`, `updated_at`, `deleted_at`) VALUES
(6, 'Shot blasting machine', '2022-07-09 05:15:26', NULL, NULL),
(7, 'new blasting machine', '2022-07-09 07:18:08', NULL, NULL),
(8, 'Fire machine', '2022-09-08 18:22:33', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(255) NOT NULL,
  `title` text NOT NULL,
  `description` text DEFAULT NULL,
  `file` text NOT NULL,
  `file_type` text DEFAULT NULL,
  `php_file_location` text NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `title`, `description`, `file`, `file_type`, `php_file_location`, `active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(33, 'This The Title', 'Test Message', 'big_buck_bunny_720p_1mb62b05e45791db4.57844611.mp4', 'mp4', '', 0, '2022-06-20 11:47:17', '2022-07-03 10:27:16', NULL),
(34, 'Job', 'this is the description for job', 'Image (1)62c1435ab56911.47831269.png', 'png', '', 1, '2022-07-03 07:20:58', '2022-07-03 10:27:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `product` varchar(255) DEFAULT NULL,
  `page_name` text DEFAULT NULL,
  `archive` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `email`, `product`, `page_name`, `archive`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admin@gmail.com', 'option1', 'http://localhost/gec/', 0, '2022-07-07 01:13:14', NULL, NULL),
(2, 'user@gmail.com', 'option2', 'http://localhost/gec/shot.php', 0, '2022-07-07 01:40:51', NULL, NULL),
(3, 'user2@gmail.com', 'option2', 'http://localhost/gec/company.php', 0, '2022-07-07 04:32:22', NULL, NULL),
(4, 'admin2@gmail.com', 'option3', 'http://localhost/gec/', 0, '2022-07-07 04:49:46', NULL, NULL),
(5, 'amarnathjnp2002@gmail.com', 'Shot blasting machine', 'http://localhost/gec/', 0, '2022-08-21 02:27:30', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(255) NOT NULL,
  `service_name` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `service_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Taxation', '2022-06-17 11:18:44', '2022-06-17 11:44:09', '2022-06-17 11:44:09'),
(2, 'Transaction Processing', '2022-06-17 11:37:15', '2022-06-17 11:44:15', '2022-06-17 11:44:15'),
(3, 'Transaction Processing', '2022-06-17 11:44:24', '2022-06-17 11:45:48', NULL),
(4, 'payroll managment', '2022-06-17 11:46:03', '2022-06-17 11:46:51', '2022-06-17 11:46:51'),
(5, 'Payroll Managment', '2022-06-17 11:46:57', NULL, NULL),
(6, 'Taxation', '2022-06-18 12:20:03', NULL, NULL),
(7, 'Custom Reporting', '2022-06-18 12:20:22', NULL, NULL),
(8, 'Book Keeping', '2022-06-18 12:20:58', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `phone` bigint(15) NOT NULL,
  `password` varchar(100) NOT NULL,
  `is_admin` int(11) NOT NULL DEFAULT 0 COMMENT ' 1-godfather, 2-super admin,3-admin, \r\n',
  `verification_code` text DEFAULT NULL,
  `forgot_token` text DEFAULT NULL,
  `verified` int(10) NOT NULL DEFAULT 0 COMMENT '0-No, 1-Yes',
  `user_block` int(10) NOT NULL DEFAULT 0 COMMENT '0-unblock, 1-block',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `password`, `is_admin`, `verification_code`, `forgot_token`, `verified`, `user_block`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 'admin 1', 'admin@gmail.com', 7775875580, '$2y$10$0HoVpDL4bhRdmw4cGlFfZeilr0C8EyHslRdWDiQcQiLyB63GcdCym', 1, NULL, '6616', 1, 0, '2022-03-03 07:44:41', '2022-06-20 12:12:17', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `career`
--
ALTER TABLE `career`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `case_study`
--
ALTER TABLE `case_study`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_subject_list`
--
ALTER TABLE `contact_subject_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us2`
--
ALTER TABLE `contact_us2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `machine`
--
ALTER TABLE `machine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `career`
--
ALTER TABLE `career`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `case_study`
--
ALTER TABLE `case_study`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `contact_subject_list`
--
ALTER TABLE `contact_subject_list`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contact_us2`
--
ALTER TABLE `contact_us2`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `machine`
--
ALTER TABLE `machine`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
