--
-- File generated with SQLiteStudio v3.2.1 on Sun Dec 13 19:57:41 2020
--
-- Text encoding used: UTF-8
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: About
CREATE TABLE About (Content STRING, FeatureImage STRING);

-- Table: ComapnyNews
CREATE TABLE ComapnyNews (id INTEGER PRIMARY KEY AUTOINCREMENT, Title STRING, Author STRING, AvatarUrl STRING, Date DATETIME, Content STRING, FeatureImage STRING);

-- Table: Contact
CREATE TABLE Contact (Phone INTEGER, Email STRING, Discord STRING, Twitter STRING, Facebook STRING, instagram STRING);

-- Table: DevNews
CREATE TABLE DevNews (id INTEGER PRIMARY KEY AUTOINCREMENT, Title STRING, Author STRING, AvatarUrl STRING, Date DATETIME, Content STRING, FeatureImage STRING);

-- Table: FinalRPG
CREATE TABLE FinalRPG (Id PRIMARY KEY, Home TEXT, HomeURL STRING, Plot TEXT, HomeContent STRING, PlotURL STRING, PlotContent STRING, Maps TEXT, MapsURL STRING, MapsContent STRING, BattleSystem TEXT, BattleSystemURL STRING, BattleSystemContent STRING, Glossary TEXT, GlossaryURL STRING, GlossaryContent STRING, Gallery TEXT, GalleryURL STRING, GalleryContent STRING);

-- Table: GreedySalvation
CREATE TABLE GreedySalvation (Id PRIMARY KEY, Home TEXT, HomeURL STRING, Plot TEXT, HomeContent STRING, PlotURL STRING, PlotContent STRING, Maps TEXT, MapsURL STRING, MapsContent STRING, Glossary TEXT, GlossaryURL STRING, GlossaryContent STRING, Gallery TEXT, GalleryURL STRING, GalleryContent STRING);
INSERT INTO GreedySalvation (Id, Home, HomeURL, Plot, HomeContent, PlotURL, PlotContent, Maps, MapsURL, MapsContent, Glossary, GlossaryURL, GlossaryContent, Gallery, GalleryURL, GalleryContent) VALUES (NULL, NULL, NULL, NULL, 'Genderal Info', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- Table: Home
CREATE TABLE Home (id INTEGER PRIMARY KEY AUTOINCREMENT, LogoURL STRING, LatestSiteNews TEXT, LatestDevNews TEXT, LatestProjectNews TEXT, LatestCompanyNews TEXT, Date DATETIME, Article STRING DEFAULT "Article Link", ArticleLink STRING);
INSERT INTO Home (id, LogoURL, LatestSiteNews, LatestDevNews, LatestProjectNews, LatestCompanyNews, Date, Article, ArticleLink) VALUES (1, NULL, NULL, NULL, NULL, NULL, '2020--12-13 00:00:00', NULL, NULL);

-- Table: Jobs
CREATE TABLE Jobs (Writer TEXT, Artist TEXT, Editor TEXT, Programmer TEXT, Designer TEXT, MusicComposer TEXT, SFXComposer TEXT, VoiceActor TEXT);

-- Table: Navigation
CREATE TABLE Navigation (Home TEXT, HomeURL STRING, About TEXT, AboutURL STRING, Staff TEXT, StaffURL STRING, Jobs TEXT, JobsURL STRING, Contact TEXT, ContactURL STRING, SiteNews TEXT, SiteNewsURL STRING, CompanyNews TEXT, CompanyNewURL STRING, DevNews TEXT, DevNewsURL STRING, ProjectNews TEXT, ProjectNewsURL STRING, WebServices TEXT, WebServicesURL STRING, Portfolio TEXT, PortfolioURL STRING, Projects TEXT, ProjectsURL STRING, ZIN TEXT, ZINURL STRING, FinalRPG TEXT, FinalRPGURL STRING, Affilliates TEXT, AffilliatesURL STRING, GreedySalvation TEXT, GreedySalvationURL STRING);

-- Table: ProjectNews
CREATE TABLE ProjectNews (id INTEGER PRIMARY KEY AUTOINCREMENT, Title STRING, Author STRING, AvatarUrl STRING, Date DATETIME, Content STRING, FeatureImage STRING);

-- Table: SiteUpdate
CREATE TABLE SiteUpdate (id INTEGER PRIMARY KEY AUTOINCREMENT, Title STRING, Author STRING, AvatarUrl STRING, Date DATETIME, Content STRING, FeatureImage STRING);

-- Table: Staff
CREATE TABLE Staff (id INTEGER PRIMARY KEY AUTOINCREMENT, Name TEXT, JobTitle TEXT, Avatar STRING);

-- Table: Tags
CREATE TABLE Tags (Id INTEGER PRIMARY KEY, ZIN TEXT, FinalRPG TEXT, WebDevelopment TEXT, GameDevelopment TEXT, PCGaming TEXT, ConsoleGaming TEXT, WebGaming TEXT, "Update" TEXT, "Greedy Salvation" TEXT, VisualNovel TEXT, WebNovel TEXT, LightNovel TEXT, News TEXT);

-- Table: Users
CREATE TABLE Users (id INTEGER PRIMARY KEY AUTOINCREMENT, username STRING NOT NULL, email STRING NOT NULL, password STRING NOT NULL, Avatar STRING, Role TEXT NOT NULL);
INSERT INTO Users (id, username, email, password, Avatar, Role) VALUES (1, 'FinalBossXD', 'finalb@projectfinalboss.com', 'Alpha5891!', NULL, 'Dev');

-- Table: ZIN
CREATE TABLE ZIN (Id INTEGER PRIMARY KEY, Home TEXT (0), HomeURL STRING (0), Plot TEXT (0), HomeContent STRING, PlotURL STRING (0), PlotContent STRING, Maps TEXT (0), MapsURL STRING (0), MapsContent STRING, BattleSystem TEXT (0), BattleSystemURL STRING (0), BattleSystemContent STRING, Glossary TEXT (0), GlossaryURL STRING (0), GlossaryContent STRING, Gallery TEXT (0), GalleryURL STRING (0), GalleryContent STRING);
INSERT INTO ZIN (Id, Home, HomeURL, Plot, HomeContent, PlotURL, PlotContent, Maps, MapsURL, MapsContent, BattleSystem, BattleSystemURL, BattleSystemContent, Glossary, GlossaryURL, GlossaryContent, Gallery, GalleryURL, GalleryContent) VALUES (1, NULL, NULL, NULL, 'ZIN is an rpg set in a sci-fi / fantasy atmosphere. As a player, you will engage in a deep storyline with exciting battles that will make you feel like you''re interacting with an animated webtoon. As you progress, you''ll have three job routes to choose from. Each choice you make during the story may lead up to one of many different endings.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ZIN (Id, Home, HomeURL, Plot, HomeContent, PlotURL, PlotContent, Maps, MapsURL, MapsContent, BattleSystem, BattleSystemURL, BattleSystemContent, Glossary, GlossaryURL, GlossaryContent, Gallery, GalleryURL, GalleryContent) VALUES (2, 'Home', NULL, 'Plot', 'General Info:', NULL, NULL, 'Maps', NULL, NULL, 'Battle System', NULL, NULL, 'Glossary', NULL, NULL, 'Gallery', NULL, NULL);
INSERT INTO ZIN (Id, Home, HomeURL, Plot, HomeContent, PlotURL, PlotContent, Maps, MapsURL, MapsContent, BattleSystem, BattleSystemURL, BattleSystemContent, Glossary, GlossaryURL, GlossaryContent, Gallery, GalleryURL, GalleryContent) VALUES (3, NULL, NULL, NULL, 'Genre: Turn Based RPG / Eroge
Platform: PC
Engine: Unreal
Release Date: TBA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ZIN (Id, Home, HomeURL, Plot, HomeContent, PlotURL, PlotContent, Maps, MapsURL, MapsContent, BattleSystem, BattleSystemURL, BattleSystemContent, Glossary, GlossaryURL, GlossaryContent, Gallery, GalleryURL, GalleryContent) VALUES (4, NULL, NULL, NULL, 'Demo Script is complete
', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ZIN (Id, Home, HomeURL, Plot, HomeContent, PlotURL, PlotContent, Maps, MapsURL, MapsContent, BattleSystem, BattleSystemURL, BattleSystemContent, Glossary, GlossaryURL, GlossaryContent, Gallery, GalleryURL, GalleryContent) VALUES (5, NULL, NULL, NULL, 2020, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ZIN (Id, Home, HomeURL, Plot, HomeContent, PlotURL, PlotContent, Maps, MapsURL, MapsContent, BattleSystem, BattleSystemURL, BattleSystemContent, Glossary, GlossaryURL, GlossaryContent, Gallery, GalleryURL, GalleryContent) VALUES (6, NULL, NULL, NULL, 'Update Log:', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ZIN (Id, Home, HomeURL, Plot, HomeContent, PlotURL, PlotContent, Maps, MapsURL, MapsContent, BattleSystem, BattleSystemURL, BattleSystemContent, Glossary, GlossaryURL, GlossaryContent, Gallery, GalleryURL, GalleryContent) VALUES (7, NULL, NULL, NULL, 'More Concept art is made for characters
', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ZIN (Id, Home, HomeURL, Plot, HomeContent, PlotURL, PlotContent, Maps, MapsURL, MapsContent, BattleSystem, BattleSystemURL, BattleSystemContent, Glossary, GlossaryURL, GlossaryContent, Gallery, GalleryURL, GalleryContent) VALUES (8, NULL, NULL, NULL, 'Dropped Sony platform possibility. ZIN will now be PC only
', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ZIN (Id, Home, HomeURL, Plot, HomeContent, PlotURL, PlotContent, Maps, MapsURL, MapsContent, BattleSystem, BattleSystemURL, BattleSystemContent, Glossary, GlossaryURL, GlossaryContent, Gallery, GalleryURL, GalleryContent) VALUES (9, NULL, NULL, NULL, 'Cutscene name for demo in progress
', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ZIN (Id, Home, HomeURL, Plot, HomeContent, PlotURL, PlotContent, Maps, MapsURL, MapsContent, BattleSystem, BattleSystemURL, BattleSystemContent, Glossary, GlossaryURL, GlossaryContent, Gallery, GalleryURL, GalleryContent) VALUES (10, NULL, NULL, NULL, 'Battle Choreography for the demo is fleshed out
', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ZIN (Id, Home, HomeURL, Plot, HomeContent, PlotURL, PlotContent, Maps, MapsURL, MapsContent, BattleSystem, BattleSystemURL, BattleSystemContent, Glossary, GlossaryURL, GlossaryContent, Gallery, GalleryURL, GalleryContent) VALUES (11, NULL, NULL, NULL, 2019, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ZIN (Id, Home, HomeURL, Plot, HomeContent, PlotURL, PlotContent, Maps, MapsURL, MapsContent, BattleSystem, BattleSystemURL, BattleSystemContent, Glossary, GlossaryURL, GlossaryContent, Gallery, GalleryURL, GalleryContent) VALUES (12, NULL, NULL, NULL, 'Character Names have been changed/altered
', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ZIN (Id, Home, HomeURL, Plot, HomeContent, PlotURL, PlotContent, Maps, MapsURL, MapsContent, BattleSystem, BattleSystemURL, BattleSystemContent, Glossary, GlossaryURL, GlossaryContent, Gallery, GalleryURL, GalleryContent) VALUES (13, NULL, NULL, NULL, 'Battle System Prototype Finished
', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ZIN (Id, Home, HomeURL, Plot, HomeContent, PlotURL, PlotContent, Maps, MapsURL, MapsContent, BattleSystem, BattleSystemURL, BattleSystemContent, Glossary, GlossaryURL, GlossaryContent, Gallery, GalleryURL, GalleryContent) VALUES (14, NULL, NULL, NULL, 'Game Designer Hired
', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ZIN (Id, Home, HomeURL, Plot, HomeContent, PlotURL, PlotContent, Maps, MapsURL, MapsContent, BattleSystem, BattleSystemURL, BattleSystemContent, Glossary, GlossaryURL, GlossaryContent, Gallery, GalleryURL, GalleryContent) VALUES (15, NULL, NULL, NULL, 'Demo Script fleshed out
', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ZIN (Id, Home, HomeURL, Plot, HomeContent, PlotURL, PlotContent, Maps, MapsURL, MapsContent, BattleSystem, BattleSystemURL, BattleSystemContent, Glossary, GlossaryURL, GlossaryContent, Gallery, GalleryURL, GalleryContent) VALUES (16, NULL, NULL, NULL, 'Addinf an extra Visual Novel mode for the demo.
', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ZIN (Id, Home, HomeURL, Plot, HomeContent, PlotURL, PlotContent, Maps, MapsURL, MapsContent, BattleSystem, BattleSystemURL, BattleSystemContent, Glossary, GlossaryURL, GlossaryContent, Gallery, GalleryURL, GalleryContent) VALUES (17, NULL, NULL, NULL, 'A few character concept art have been created
', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ZIN (Id, Home, HomeURL, Plot, HomeContent, PlotURL, PlotContent, Maps, MapsURL, MapsContent, BattleSystem, BattleSystemURL, BattleSystemContent, Glossary, GlossaryURL, GlossaryContent, Gallery, GalleryURL, GalleryContent) VALUES (18, NULL, NULL, NULL, 'Plantation and battle Sound tracks have been made
', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ZIN (Id, Home, HomeURL, Plot, HomeContent, PlotURL, PlotContent, Maps, MapsURL, MapsContent, BattleSystem, BattleSystemURL, BattleSystemContent, Glossary, GlossaryURL, GlossaryContent, Gallery, GalleryURL, GalleryContent) VALUES (19, NULL, NULL, NULL, 'A few story lines have been voiced out by the VAs
', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ZIN (Id, Home, HomeURL, Plot, HomeContent, PlotURL, PlotContent, Maps, MapsURL, MapsContent, BattleSystem, BattleSystemURL, BattleSystemContent, Glossary, GlossaryURL, GlossaryContent, Gallery, GalleryURL, GalleryContent) VALUES (20, NULL, NULL, NULL, 'Game Artists Hired
', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ZIN (Id, Home, HomeURL, Plot, HomeContent, PlotURL, PlotContent, Maps, MapsURL, MapsContent, BattleSystem, BattleSystemURL, BattleSystemContent, Glossary, GlossaryURL, GlossaryContent, Gallery, GalleryURL, GalleryContent) VALUES (21, NULL, NULL, NULL, 2018, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ZIN (Id, Home, HomeURL, Plot, HomeContent, PlotURL, PlotContent, Maps, MapsURL, MapsContent, BattleSystem, BattleSystemURL, BattleSystemContent, Glossary, GlossaryURL, GlossaryContent, Gallery, GalleryURL, GalleryContent) VALUES (22, NULL, NULL, NULL, 'Music Composers Hired
', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ZIN (Id, Home, HomeURL, Plot, HomeContent, PlotURL, PlotContent, Maps, MapsURL, MapsContent, BattleSystem, BattleSystemURL, BattleSystemContent, Glossary, GlossaryURL, GlossaryContent, Gallery, GalleryURL, GalleryContent) VALUES (23, NULL, NULL, NULL, 'Character Concept Artist hired
', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ZIN (Id, Home, HomeURL, Plot, HomeContent, PlotURL, PlotContent, Maps, MapsURL, MapsContent, BattleSystem, BattleSystemURL, BattleSystemContent, Glossary, GlossaryURL, GlossaryContent, Gallery, GalleryURL, GalleryContent) VALUES (24, NULL, NULL, NULL, 'Editor hired
', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ZIN (Id, Home, HomeURL, Plot, HomeContent, PlotURL, PlotContent, Maps, MapsURL, MapsContent, BattleSystem, BattleSystemURL, BattleSystemContent, Glossary, GlossaryURL, GlossaryContent, Gallery, GalleryURL, GalleryContent) VALUES (25, NULL, NULL, NULL, 'Voice actors hired
', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ZIN (Id, Home, HomeURL, Plot, HomeContent, PlotURL, PlotContent, Maps, MapsURL, MapsContent, BattleSystem, BattleSystemURL, BattleSystemContent, Glossary, GlossaryURL, GlossaryContent, Gallery, GalleryURL, GalleryContent) VALUES (26, NULL, NULL, NULL, 'Basic Battle Concept fleshed out
', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ZIN (Id, Home, HomeURL, Plot, HomeContent, PlotURL, PlotContent, Maps, MapsURL, MapsContent, BattleSystem, BattleSystemURL, BattleSystemContent, Glossary, GlossaryURL, GlossaryContent, Gallery, GalleryURL, GalleryContent) VALUES (27, NULL, NULL, NULL, 'Minor Changes to the plot
', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ZIN (Id, Home, HomeURL, Plot, HomeContent, PlotURL, PlotContent, Maps, MapsURL, MapsContent, BattleSystem, BattleSystemURL, BattleSystemContent, Glossary, GlossaryURL, GlossaryContent, Gallery, GalleryURL, GalleryContent) VALUES (28, NULL, NULL, NULL, 'Story Outline Complete
', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
