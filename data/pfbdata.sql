SQLite format 3   @     !                                                               ! .?�   � A�J�
�	��                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    �##�KtablecompanyNewscompanyNewsCREATE TABLE `companyNews` (`id` integer not null primary key autoincrement, `title` varchar(255) not null, `image` varchar(255) not null, `author` varchar(255) not null, `content` varchar(255) not null, `tags` varchar(255) not null, `cNews_id` integer, `user_id` integer, `created_at` datetime default CURRENT_TIMESTAMP, `updated_at` datetime default CURRENT_TIMESTAMP, foreign key(`cNews_id`) references `article`(`article_id`), foreign key(`user_id`) references `users`(`id`))�u�MtabletagstagsCREATE TABLE `tags` (`id` integer not null primary key autoincrement, `tags` varchar(255) not null, `tag_id` integer not null, `created_at` datetime default CURRENT_TIMESTAMP, `updated_at` datetime default CURRENT_TIMESTAMP)��	tablearticlearticleCREATE TABLE `article` (`id` integer not null primary key autoincrement, `title` varchar(255) not null, `image` varchar(255) not null, `author` varchar(255) not null, `content` varchar(255) not null, `article_type` varchar(255) not null, `tags` varchar(255) not null, `article_id` integer, `user_id` integer, `created_at` datetime default CURRENT_TIMESTAMP, `updated_at` datetime default CURRENT_TIMESTAMP, foreign key(`article_id`) references `tags`(`tag_id`), foreign key(`user_id`) references `users`(`id`))�`�tableusersusersCREATE TABLE `users` (`id` integer not null primary key autoincrement, `username` varchar(255) not null, `email` varchar(255) not null, `password` varchar(255) not null, `role` varchar(255) not null, `avatar` varchar(255) not null, `created_at` datetime default CURRENT_TIMESTAMP, `updated_at` datetime default CURRENT_TIMESTAMP)�"55�gtableknex_migrations_lockknex_migrations_lockCREATE TABLE `knex_migrations_lock` (`index` integer not null primary key autoincrement, `is_locked` integer)P++Ytablesqlite_sequencesqlite_sequenceCREATE TABLE sqlite_sequence(name,seq)�<++�/tableknex_migrationsknex_migrationsCREATE TABLE `knex_migrations` (`id` integer not null primary key autoincrement, `name` varchar(255), `batch` integer, `migration_time` datetime)   h ���h                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        ) I	20201215072340_company_news.jsvfm��! 9	20201215071813_tags.jsvfm��$ ?	20201215071336_article.jsvfm��" ;	20201215070255_users.jsvfm��� � ����                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                	usersarticle
   
	users+knex_migrations5	knex_migrations_lock   � �                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     g g                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             �
 #C�33FinalBossXDfinalb@projectfinalboss.com$2a$12$2Y3XGWkoZ3RSkVQD17HxXegmRIHL7z3sMsfxlNQJtWWEmEkH9t4.SDev 2020-12-15 15:00:172020-12-15 15:00:17      ���������                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           ##A  33New Article FinalBossXDArticle Successfully AddedSite NewsUpdates2020-12-15 13:51:452020-12-15 13:51:45  �##A 	33New Article FinalBossXDArticle Successfully AddedSite NewsUpdates2020-12-15 13:51:342020-12-15 13:51:34  3##A 	33New Article FinalBossXDArticle Successfully AddedSite NewsUpdates2020-12-15 13:51:082020-12-15 13:51:08s ##A 	33New Article FinalBossXDArticle Successfully AddedSite NewsUpdates2020-12-15 13:50:412020-12-15 13:50:41  I##A 	33New Article FinalBossXDArticle Successfully AddedSite NewsUpdates2020-12-15 13:50:292020-12-15 13:50:29  �##A  33New Article FinalBossXDArticle Successfully AddedSite NewsUpdates2020-12-15 13:50:002020-12-15 13:50:00  _##A  33New Article FinalBossXDArticle Successfully AddedSite NewsUpdates2020-12-15 13:49:592020-12-15 13:49:59   �##A  33New Article FinalBossXDArticle Successfully AddedSite NewsUpdates2020-12-15 13:49:542020-12-15 13:49:54   u##A  33N   f##% 	33New Article FinalBossXDIt's updatesSite Newsupdate2020-12-15 14:07:102020-12-15 14:07:10                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            