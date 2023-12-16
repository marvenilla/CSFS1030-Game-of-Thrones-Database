create database mindanaoproject;
use mindanaoproject;

-- Create Users Table: Stores basic user information
CREATE TABLE User (
    UserID INT PRIMARY KEY AUTO_INCREMENT,
    UserType ENUM('Admin', 'Reviewer') NOT NULL,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL
);

INSERT INTO User (UserType, FirstName, LastName) VALUES ('Reviewer', 'Juancho', 'Aguilar');
INSERT INTO User (UserType, FirstName, LastName) VALUES ('Reviewer', 'Angelo', 'Smith');
INSERT INTO User (UserType, FirstName, LastName) VALUES ('Reviewer', 'Jane', 'Johnson');
INSERT INTO User (UserType, FirstName, LastName) VALUES ('Reviewer', 'Emily', 'Davis');
INSERT INTO User (UserType, FirstName, LastName) VALUES ('Reviewer', 'David', 'Martinez');
INSERT INTO User (UserType, FirstName, LastName) VALUES ('Reviewer', 'Sarah', 'Lee');
INSERT INTO User (UserType, FirstName, LastName) VALUES ('Reviewer', 'Daniel', 'Garcia');
INSERT INTO User (UserType, FirstName, LastName) VALUES ('Reviewer', 'Laura', 'Wilson');
INSERT INTO User (UserType, FirstName, LastName) VALUES ('Reviewer', 'James', 'Taylor');
INSERT INTO User (UserType, FirstName, LastName) VALUES ('Reviewer', 'Linda', 'Anderson');
INSERT INTO User (UserType, FirstName, LastName) VALUES ('Reviewer', 'Robert', 'Thomas');
INSERT INTO User (UserType, FirstName, LastName) VALUES ('Reviewer', 'Patricia', 'Jackson');
INSERT INTO User (UserType, FirstName, LastName) VALUES ('Reviewer', 'Mark', 'White');
INSERT INTO User (UserType, FirstName, LastName) VALUES ('Reviewer', 'Elizabeth', 'Harris');
INSERT INTO User (UserType, FirstName, LastName) VALUES ('Reviewer', 'William', 'Martin');
INSERT INTO User (FirstName, LastName, UserType) VALUES ('Alice', 'Brown', 'Admin');
INSERT INTO User (FirstName, LastName, UserType) VALUES ('Bob', 'Jones', 'Admin');
INSERT INTO User (FirstName, LastName, UserType) VALUES ('Charlie', 'Wilson', 'Admin');


-- Create UserContacts Table: Stores contact details of users
CREATE TABLE UserContact (
    ContactID INT PRIMARY KEY AUTO_INCREMENT,
    UserID INT,
    Address VARCHAR(100),
    City VARCHAR(50),
    State VARCHAR(50),
    PostalCode VARCHAR(20),
    Phone VARCHAR(20),
    Email VARCHAR(50),
    FOREIGN KEY (UserID) REFERENCES User(UserID)
);

INSERT INTO UserContact (UserID, Address, City, State, PostalCode, Phone, Email) VALUES (1, '390 Cherry Ln', 'Centerville', 'GA', '46998', '967-471-8365', 'j.aguilar@gmail.com');
INSERT INTO UserContact (UserID, Address, City, State, PostalCode, Phone, Email) VALUES (2, '461 Roxas Avenue', 'Arlington', 'FL', '92423', '323-936-2522', 'angelo_s@yahoo.com');
INSERT INTO UserContact (UserID, Address, City, State, PostalCode, Phone, Email) VALUES (3, '840 Walnut Road', 'Ashland', 'PA', '35340', '684-807-8476', 'jane.johnson@ymail.com');
INSERT INTO UserContact (UserID, Address, City, State, PostalCode, Phone, Email) VALUES (4, '767 Alder St', 'Albany', 'PA', '13847', '128-271-7821', 'emily.davis@yahoo.com');
INSERT INTO UserContact (UserID, Address, City, State, PostalCode, Phone, Email) VALUES (5, '429 Birch St', 'Salem', 'PA', '73518', '798-614-4008', 'david_martinez@gmail.com');
INSERT INTO UserContact (UserID, Address, City, State, PostalCode, Phone, Email) VALUES (6, '540 Willow Ave', 'Franklin', 'PA', '46004', '148-466-6522', 'sarahlee1992@ymail.com');
INSERT INTO UserContact (UserID, Address, City, State, PostalCode, Phone, Email) VALUES (7, '183 Cedar Ln', 'Clinton', 'AZ', '77032', '572-961-7178', 'dgarcia@yahoo.com');
INSERT INTO UserContact (UserID, Address, City, State, PostalCode, Phone, Email) VALUES (8, '539 Chestnut St', 'Auburn', 'FL', '64357', '529-730-1592', 'laura_wilsooooon@gmail.com');
INSERT INTO UserContact (UserID, Address, City, State, PostalCode, Phone, Email) VALUES (9, '905 Maple Ln', 'Dover', 'FL', '18246', '874-644-9041', 'james_yourtaylor@gmail.com');
INSERT INTO UserContact (UserID, Address, City, State, PostalCode, Phone, Email) VALUES (10, '759 Oak Rd', 'Salem', 'PA', '87042', '259-826-7740', 'LAnderson@yahoo.com');
INSERT INTO UserContact (UserID, Address, City, State, PostalCode, Phone, Email) VALUES (11, '351 Hawthorn Rd', 'Dover', 'FL', '67591', '151-793-8166', 'robthomas@yahoo.com');
INSERT INTO UserContact (UserID, Address, City, State, PostalCode, Phone, Email) VALUES (12, '231 Spruce Ave', 'Franklin', 'TX', '38379', '951-286-8268', 'patjack@gmail.com');
INSERT INTO UserContact (UserID, Address, City, State, PostalCode, Phone, Email) VALUES (13, '709 Chestnut Rd', 'Ashland', 'WA', '21619', '900-504-2483', 'mark_white@ymail.com');
INSERT INTO UserContact (UserID, Address, City, State, PostalCode, Phone, Email) VALUES (14, '391 Birch Rd', 'Dover', 'IL', '57970', '442-689-9359', 'e_harris@gmail.com');
INSERT INTO UserContact (UserID, Address, City, State, PostalCode, Phone, Email) VALUES (15, '295 Elm Rd', 'Arlington', 'IL', '32654', '527-592-4798', 'w.martin@yahoo.com');
INSERT INTO UserContact (UserID, Address, City, State, PostalCode, Phone, Email) VALUES (16, '120 Pine St', 'Springfield', 'IL', '52336', '567-890-1234', 'alice_brown@google.com');
INSERT INTO UserContact (UserID, Address, City, State, PostalCode, Phone, Email) VALUES (17, '240 Maple Ave', 'Riverside', 'CA', '78945', '234-567-8901', 'bob.jones@google.com');
INSERT INTO UserContact (UserID, Address, City, State, PostalCode, Phone, Email) VALUES (18, '360 Elm Dr', 'Greenwood', 'IN', '45678', '345-678-9012', 'charlie.wilson@google.com');

-- Create UserAccounts Table: Stores account information of users
CREATE TABLE UserAccount (
    AccountID INT PRIMARY KEY AUTO_INCREMENT,
    UserID INT,
    Username VARCHAR(50),
    Password VARCHAR(50),
    IsActive BOOLEAN,
    CreatedDate DATETIME,
    LastLoginDate DATETIME,
    FOREIGN KEY (UserID) REFERENCES User(UserID)
);
INSERT INTO UserAccount (UserID, Username, Password, IsActive, CreatedDate, LastLoginDate) VALUES (1, 'JuanchoAguilar', 'Juar8365', TRUE, '2023-09-18 14:54:48', '2023-09-30 23:10:04');
INSERT INTO UserAccount (UserID, Username, Password, IsActive, CreatedDate, LastLoginDate) VALUES (2, 'AngeloSmith', 'Anth2522', TRUE, '2023-10-12 15:14:28', '2023-11-13 18:11:32');
INSERT INTO UserAccount (UserID, Username, Password, IsActive, CreatedDate, LastLoginDate) VALUES (3, 'JaneJohnson', 'Jaon8476', TRUE, '2022-07-19 18:26:37', '2022-12-27 20:25:30');
INSERT INTO UserAccount (UserID, Username, Password, IsActive, CreatedDate, LastLoginDate) VALUES (4, 'EmilyDavis', 'Emis7821', TRUE, '2022-04-16 14:51:37', '2022-10-01 02:04:00');
INSERT INTO UserAccount (UserID, Username, Password, IsActive, CreatedDate, LastLoginDate) VALUES (5, 'DavidMartinez', 'Daez4008', TRUE, '2023-05-16 15:57:56', '2023-06-24 19:38:06');
INSERT INTO UserAccount (UserID, Username, Password, IsActive, CreatedDate, LastLoginDate) VALUES (6, 'SarahLee', 'Saee6522', TRUE, '2023-01-06 16:04:46', '2023-01-30 17:06:43');
INSERT INTO UserAccount (UserID, Username, Password, IsActive, CreatedDate, LastLoginDate) VALUES (7, 'DanielGarcia', 'Daia7178', TRUE, '2022-01-14 06:48:32', '2023-11-17 02:26:12');
INSERT INTO UserAccount (UserID, Username, Password, IsActive, CreatedDate, LastLoginDate) VALUES (8, 'LauraWilson', 'Laon1592', TRUE, '2023-12-05 10:14:14', '2023-12-06 14:22:41');
INSERT INTO UserAccount (UserID, Username, Password, IsActive, CreatedDate, LastLoginDate) VALUES (9, 'JamesTaylor', 'Jaor9041', TRUE, '2022-10-23 21:47:56', '2023-10-30 20:50:15');
INSERT INTO UserAccount (UserID, Username, Password, IsActive, CreatedDate, LastLoginDate) VALUES (10, 'LindaAnderson', 'Lion7740', TRUE, '2023-11-23 02:05:55', '2023-11-24 12:48:29');
INSERT INTO UserAccount (UserID, Username, Password, IsActive, CreatedDate, LastLoginDate) VALUES (11, 'RobertThomas', 'Roas8166', TRUE, '2023-02-11 16:36:23', '2023-07-30 04:20:52');
INSERT INTO UserAccount (UserID, Username, Password, IsActive, CreatedDate, LastLoginDate) VALUES (12, 'PatriciaJackson', 'Paon8268', TRUE, '2022-11-19 11:05:35', '2022-12-02 12:49:25');
INSERT INTO UserAccount (UserID, Username, Password, IsActive, CreatedDate, LastLoginDate) VALUES (13, 'MarkWhite', 'Mate2483', TRUE, '2022-12-20 00:16:29', '2023-02-05 16:57:46');
INSERT INTO UserAccount (UserID, Username, Password, IsActive, CreatedDate, LastLoginDate) VALUES (14, 'ElizabethHarris', 'Elis9359', TRUE, '2023-06-26 16:31:17', '2023-10-02 03:23:42');
INSERT INTO UserAccount (UserID, Username, Password, IsActive, CreatedDate, LastLoginDate) VALUES (15, 'WilliamMartin', 'Wiin4798', TRUE, '2022-07-01 01:49:10', '2022-11-26 09:30:00');
INSERT INTO UserAccount (UserID, Username, Password, IsActive, CreatedDate, LastLoginDate) VALUES (16, 'AliceBrownAdmin', 'Alic1234', TRUE, '2021-01-01 00:00:00', '2021-02-01 12:00:00');
INSERT INTO UserAccount (UserID, Username, Password, IsActive, CreatedDate, LastLoginDate) VALUES (17, 'BobJonesAdmin', 'Bobi5678', TRUE, '2021-01-02 00:00:00', '2021-03-01 12:00:00');
INSERT INTO UserAccount (UserID, Username, Password, IsActive, CreatedDate, LastLoginDate) VALUES (18, 'CharlieWilsonAdmin', 'Char9012', TRUE, '2021-01-03 00:00:00', '2021-04-01 12:00:00');


-- Lists all the books related to the Game of Thrones series, including details like title and publication date.
CREATE TABLE Book (
    BookID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(90) NOT NULL,
    PublicationDate DATE NOT NULL,
    AuthorFirstName VARCHAR(50),
    AuthorMiddleName VARCHAR(50),
    AuthorLastName VARCHAR(50)
);

INSERT INTO Book (Title, PublicationDate, AuthorFirstName, AuthorMiddleName, AuthorLastName) VALUES
('A Game of Thrones', '1996-08-06', 'George', 'R. R.', 'Martin'),
('A Clash of Kings', '1998-11-16', 'George', 'R. R.', 'Martin'),
('A Storm of Swords', '2000-08-08', 'George', 'R. R.', 'Martin'),
('A Feast for Crows', '2005-10-17', 'George', 'R. R.', 'Martin'),
('A Dance with Dragons', '2011-07-12', 'George', 'R. R.', 'Martin');

-- Details of every episode in the Game of Thrones TV series, including episode title, season, and air date.
CREATE TABLE TVEpisode (
    EpisodeID INT AUTO_INCREMENT,
    SeasonNumber INT,
    EpisodeNumber INT,
    DateAired DATE NOT NULL,
    EpisodeTitle VARCHAR(255) NOT NULL,
    PRIMARY KEY (EpisodeID),
    UNIQUE (SeasonNumber, EpisodeNumber)
);

INSERT INTO TVEpisode (SeasonNumber, EpisodeNumber, DateAired, EpisodeTitle) VALUES
(1, 1, '2011-04-17', 'Winter Is Coming'),
(1, 2, '2011-04-24', 'The Kingsroad'),
(1, 3, '2011-05-01', 'Lord Snow'),
(1, 4, '2011-05-08', 'Cripples, Bastards, and Broken Things'),
(1, 5, '2011-05-15', 'The Wolf and the Lion'),
(1, 6, '2011-05-22', 'A Golden Crown'),
(1, 7, '2011-05-29', 'You Win or You Die'),
(1, 8, '2011-06-05', 'The Pointy End'),
(1, 9, '2011-06-12', 'Baelor'),
(1, 10, '2011-06-19', 'Fire and Blood');

INSERT INTO TVEpisode (SeasonNumber, EpisodeNumber, DateAired, EpisodeTitle) VALUES
(2, 1, '2012-04-01', 'The North Remembers'),
(2, 2, '2012-04-08', 'The Night Lands'),
(2, 3, '2012-04-15', 'What Is Dead May Never Die'),
(2, 4, '2012-04-22', 'Garden of Bones'),
(2, 5, '2012-04-29', 'The Ghost of Harrenhal'),
(2, 6, '2012-05-06', 'The Old Gods and the New'),
(2, 7, '2012-05-13', 'A Man Without Honor'),
(2, 8, '2012-05-20', 'The Prince of Winterfell'),
(2, 9, '2012-05-27', 'Blackwater'),
(2, 10, '2012-06-03', 'Valar Morghulis');

INSERT INTO TVEpisode (SeasonNumber, EpisodeNumber, DateAired, EpisodeTitle) VALUES
(3, 1, '2013-03-31', 'Valar Dohaeris'),
(3, 2, '2013-04-07', 'Dark Wings, Dark Words'),
(3, 3, '2013-04-14', 'Walk of Punishment'),
 (3, 4, '2013-04-21', 'And Now His Watch Is Ended'),
(3, 5, '2013-04-28', 'Kissed by Fire'),
(3, 6, '2013-05-05', 'The Climb'),
(3, 7, '2013-05-12', 'The Bear and the Maiden Fair'),
(3, 8, '2013-05-19', 'Second Sons'),
(3, 9, '2013-06-02', 'The Rains of Castamere'),
(3, 10, '2013-06-09', 'Mhysa');

INSERT INTO TVEpisode (SeasonNumber, EpisodeNumber, DateAired, EpisodeTitle) VALUES
(4, 1, '2014-04-06', 'Two Swords'),
(4, 2, '2014-04-13', 'The Lion and the Rose'),
(4, 3, '2014-04-20', 'Breaker of Chains'),
(4, 4, '2014-04-27', 'Oathkeeper'),
(4, 5, '2014-05-04', 'First of His Name'),
(4, 6, '2014-05-11', 'The Laws of Gods and Men'),
(4, 7, '2014-05-18', 'Mockingbird'),
(4, 8, '2014-06-01', 'The Mountain and the Viper'),
(4, 9, '2014-06-08', 'The Watchers on the Wall'),
(4, 10, '2014-06-15', 'The Children');

INSERT INTO TVEpisode (SeasonNumber, EpisodeNumber, DateAired, EpisodeTitle) VALUES
(5, 1, '2015-04-12', 'The Wars to Come'),
(5, 2, '2015-04-19', 'The House of Black and White'),
(5, 3, '2015-04-26', 'High Sparrow'),
(5, 4, '2015-05-03', 'Sons of the Harpy'),
(5, 5, '2015-05-10', 'Kill the Boy'),
(5, 6, '2015-05-17', 'Unbowed, Unbent, Unbroken'),
(5, 7, '2015-05-24', 'The Gift'),
(5, 8, '2015-05-31', 'Hardhome'),
(5, 9, '2015-06-07', 'The Dance of Dragons'),
(5, 10, '2015-06-14', 'Mother\'s Mercy');

INSERT INTO TVEpisode (SeasonNumber, EpisodeNumber, DateAired, EpisodeTitle) VALUES
(6, 1, '2016-04-24', 'The Red Woman'),
(6, 2, '2016-05-01', 'Home'),
(6, 3, '2016-05-08', 'Oathbreaker'),
(6, 4, '2016-05-15', 'Book of the Stranger'),
(6, 5, '2016-05-22', 'The Door'),
(6, 6, '2016-05-29', 'Blood of My Blood'),
(6, 7, '2016-06-05', 'The Broken Man'),
(6, 8, '2016-06-12', 'No One'),
(6, 9, '2016-06-19', 'Battle of the Bastards'),
(6, 10, '2016-06-26', 'The Winds of Winter');

INSERT INTO TVEpisode (SeasonNumber, EpisodeNumber, DateAired, EpisodeTitle) VALUES
(7, 1, '2017-07-16', 'Dragonstone'),
(7, 2, '2017-07-23', 'Stormborn'),
(7, 3, '2017-07-30', 'The Queen''s Justice'),
(7, 4, '2017-08-06', 'The Spoils of War'),
(7, 5, '2017-08-13', 'Eastwatch'),
(7, 6, '2017-08-20', 'Beyond the Wall'),
(7, 7, '2017-08-27', 'The Dragon and the Wolf');

INSERT INTO TVEpisode (SeasonNumber, EpisodeNumber, DateAired, EpisodeTitle) VALUES
(8, 1, '2019-04-14', 'Winterfell'),
(8, 2, '2019-04-21', 'A Knight of the Seven Kingdoms'),
(8, 3, '2019-04-28', 'The Long Night'),
(8, 4, '2019-05-05', 'The Last of the Starks'),
(8, 5, '2019-05-12', 'The Bells'),
(8, 6, '2019-05-19', 'The Iron Throne');

-- Information about each character from the Game of Thrones series, including name and role.
CREATE TABLE `Character` (
  CharacterID INT NOT NULL AUTO_INCREMENT,
  Name VARCHAR(90) NOT NULL,
  Alias VARCHAR(90),
  Description TEXT NOT NULL,
  Status ENUM('Alive', 'Deceased') NOT NULL,
  PRIMARY KEY (CharacterID)
);

INSERT INTO `Character` (Name, Description, Status) VALUES
('Lady Stoneheart', 'Formerly known as Catelyn Stark, Lady Stoneheart is a resurrected and vengeful leader of the Brotherhood Without Banners. She is driven by a singular desire for retribution against those who harmed her family.', 'Alive'),
('Arianne Martell', 'The eldest daughter of Prince Doran Martell, Arianne is the Princess of Dorne. Known for her beauty and cunning, she plays a significant role in the political intrigues of Dorne.', 'Alive'),
('Jeyne Poole', 'Jeyne Poole is a childhood friend of Sansa Stark, known for her gentle and kind nature. Her life takes a tragic turn as she is caught in the dangerous politics of King\'s Landing and the North.', 'Alive'),
('Arys Oakheart', 'Ser Arys Oakheart is a member of the Kingsguard, sworn to protect the royal family. He is honorable and chivalrous, finding himself in a complex situation in Dorne.', 'Alive'),
('Victarion Greyjoy', 'A fearsome Ironborn warrior and commander, Victarion Greyjoy is a brother of Lord Balon Greyjoy. Known for his strength and naval prowess, he is a key player in the Greyjoy\'s nautical ambitions.', 'Alive');

-- User-submitted theories about the series, including a description and the user who submitted it.
CREATE TABLE Theory (
    TheoryID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(90) NOT NULL,
    Description TEXT NOT NULL,
    UserID INT,
    CreationDate DATETIME NOT NULL,
    FOREIGN KEY (UserID) REFERENCES UserAccount(UserID)
);

INSERT INTO Theory (Title, Description, UserID, CreationDate)
VALUES
('Rhaegar''s Vision for Peace', 'This theory paints Rhaegar Targaryen not as a usurper, but as a visionary prince with a deep commitment to the realm''s prosperity. It suggests that Rhaegar''s interest in prophecy and ancient lore was driven by a desire to unify the Seven Kingdoms and bring an end to the instability caused by his father''s erratic rule. According to this theory, Rhaegar sought to build alliances and foster peace through understanding and wisdom, rather than through force. His actions, including the harp-playing knight at the Tourney of Harrenhal and the crowning of Lyanna Stark as the Queen of Love and Beauty, were meant to inspire and bring together factions that were once divided, laying the groundwork for a realm ruled by compassion and enlightened leadership.', 1, '2023-09-20'),

('Lyanna''s Hidden Love', 'This theory posits that Lyanna Stark was actually in love with Rhaegar Targaryen. It challenges the common belief that she was kidnapped and held against her will, suggesting instead that their relationship was consensual and possibly even a secret marriage, motivated by love rather than politics.', 14, '2023-07-15'),

('Varys and Illyrio''s Master Plan', 'This theory centers on the idea that Varys and Illyrio Mopatis have been long-time conspirators with the ultimate goal of restoring Daenerys Targaryen to the Iron Throne. It suggests that their actions throughout the series, including their support of Daenerys and Varys'' intricate spy network, were all part of a carefully orchestrated plan to bring a Targaryen back to power.', 10, '2023-11-30');

-- Reviews Table: User reviews for books and episodes, linked to the corresponding item and the user who wrote it.

CREATE TABLE Review (
    ReviewID INT AUTO_INCREMENT PRIMARY KEY,
    UserID INT NOT NULL,
    ReviewType ENUM('Book', 'TV', 'Character') NOT NULL,
    BookID INT NULL,
    EpisodeID INT NULL,
    CharacterID INT NULL,
    Rating DECIMAL(3, 2) CHECK (Rating >= 0 AND Rating <= 5),
    ReviewDate DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (UserID) REFERENCES User(UserID) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (BookID) REFERENCES Book(BookID) ON DELETE SET NULL ON UPDATE CASCADE,
    FOREIGN KEY (EpisodeID) REFERENCES TVEpisode(EpisodeID) ON DELETE SET NULL ON UPDATE CASCADE,
    FOREIGN KEY (CharacterID) REFERENCES `Character`(CharacterID) ON DELETE SET NULL ON UPDATE CASCADE
);

INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (11, 'TV', 1, 3.74, '2023-02-11 16:36:23');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (2, 'TV', 2, 4.37, '2023-10-12 15:14:28');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (13, 'TV', 3, 1.34, '2022-12-20 00:16:29');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (8, 'TV', 4, 4.35, '2023-12-05 10:14:14');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (9, 'TV', 5, 3.67, '2022-10-23 21:47:56');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (15, 'TV', 6, 1.88, '2022-07-01 01:49:10');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (7, 'TV', 7, 3.79, '2022-01-14 06:48:32');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (3, 'TV', 8, 3.97, '2022-07-19 18:26:37');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (9, 'TV', 9, 4.81, '2022-10-23 21:47:56');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (3, 'TV', 10, 3.54, '2022-07-19 18:26:37');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (12, 'TV', 11, 3.62, '2022-11-19 11:05:35');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (14, 'TV', 12, 4.52, '2023-06-26 16:31:17');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (10, 'TV', 13, 3.18, '2023-11-23 02:05:55');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (5, 'TV', 14, 2.63, '2023-05-16 15:57:56');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (13, 'TV', 15, 2.32, '2022-12-20 00:16:29');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (5, 'TV', 16, 3.28, '2023-05-16 15:57:56');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (11, 'TV', 17, 3.56, '2023-02-11 16:36:23');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (6, 'TV', 18, 4.92, '2023-01-06 16:04:46');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (9, 'TV', 19, 2.97, '2022-10-23 21:47:56');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (7, 'TV', 20, 2.77, '2022-01-14 06:48:32');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (13, 'TV', 21, 4.35, '2022-12-20 00:16:29');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (1, 'TV', 22, 1.43, '2023-09-18 14:54:48');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (3, 'TV', 23, 3.73, '2022-07-19 18:26:37');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (15, 'TV', 24, 4.93, '2022-07-01 01:49:10');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (14, 'TV', 25, 1.95, '2023-06-26 16:31:17');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (6, 'TV', 26, 2.20, '2023-01-06 16:04:46');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (12, 'TV', 27, 4.30, '2022-11-19 11:05:35');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (8, 'TV', 28, 1.20, '2023-12-05 10:14:14');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (8, 'TV', 29, 3.64, '2023-12-05 10:14:14');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (11, 'TV', 30, 1.62, '2023-02-11 16:36:23');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (15, 'TV', 31, 3.43, '2022-07-01 01:49:10');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (1, 'TV', 32, 3.91, '2023-09-18 14:54:48');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (5, 'TV', 33, 2.13, '2023-05-16 15:57:56');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (1, 'TV', 34, 4.73, '2023-09-18 14:54:48');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (3, 'TV', 35, 1.70, '2022-07-19 18:26:37');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (14, 'TV', 36, 2.49, '2023-06-26 16:31:17');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (8, 'TV', 37, 4.92, '2023-12-05 10:14:14');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (10, 'TV', 38, 2.17, '2023-11-23 02:05:55');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (9, 'TV', 39, 1.70, '2022-10-23 21:47:56');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (12, 'TV', 40, 1.36, '2022-11-19 11:05:35');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (8, 'TV', 41, 3.77, '2023-12-05 10:14:14');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (1, 'TV', 42, 4.89, '2023-09-18 14:54:48');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (5, 'TV', 43, 2.67, '2023-05-16 15:57:56');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (3, 'TV', 44, 3.80, '2022-07-19 18:26:37');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (12, 'TV', 45, 2.74, '2022-11-19 11:05:35');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (9, 'TV', 46, 4.00, '2022-10-23 21:47:56');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (13, 'TV', 47, 2.75, '2022-12-20 00:16:29');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (6, 'TV', 48, 1.07, '2023-01-06 16:04:46');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (1, 'TV', 49, 1.67, '2023-09-18 14:54:48');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (1, 'TV', 50, 3.29, '2023-09-18 14:54:48');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (1, 'TV', 51, 3.56, '2023-09-18 14:54:48');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (8, 'TV', 52, 2.16, '2023-12-05 10:14:14');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (12, 'TV', 53, 1.55, '2022-11-19 11:05:35');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (12, 'TV', 54, 4.92, '2022-11-19 11:05:35');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (6, 'TV', 55, 2.69, '2023-01-06 16:04:46');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (12, 'TV', 56, 2.66, '2022-11-19 11:05:35');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (2, 'TV', 57, 4.57, '2023-10-12 15:14:28');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (8, 'TV', 58, 4.11, '2023-12-05 10:14:14');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (8, 'TV', 59, 2.92, '2023-12-05 10:14:14');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (3, 'TV', 60, 1.63, '2022-07-19 18:26:37');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (11, 'TV', 61, 4.01, '2023-02-11 16:36:23');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (14, 'TV', 62, 4.22, '2023-06-26 16:31:17');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (2, 'TV', 63, 4.11, '2023-10-12 15:14:28');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (13, 'TV', 64, 4.03, '2022-12-20 00:16:29');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (8, 'TV', 65, 4.64, '2023-12-05 10:14:14');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (8, 'TV', 66, 4.38, '2023-12-05 10:14:14');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (11, 'TV', 67, 4.06, '2023-02-11 16:36:23');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (7, 'TV', 68, 4.75, '2022-01-14 06:48:32');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (8, 'TV', 69, 3.06, '2023-12-05 10:14:14');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (10, 'TV', 70, 3.83, '2023-11-23 02:05:55');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (9, 'TV', 71, 3.52, '2022-10-23 21:47:56');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (11, 'TV', 72, 3.71, '2023-02-11 16:36:23');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (8, 'TV', 73, 3.99, '2023-12-05 10:14:14');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (3, 'TV', 1, 4.91, '2022-10-27 16:46:00');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (6, 'TV', 1, 1.37, '2023-04-17 12:34:57');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (10, 'TV', 68, 1.88, '2023-11-25 04:20:34');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (2, 'TV', 3, 1.44, '2023-11-16 23:47:25');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (6, 'TV', 68, 1.91, '2023-04-27 13:39:47');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (4, 'TV', 1, 2.81, '2023-10-16 03:18:05');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (4, 'TV', 2, 1.08, '2023-08-14 23:00:55');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (8, 'TV', 2, 1.14, '2023-12-05 15:06:06');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (4, 'TV', 3, 2.16, '2022-06-15 10:00:52');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (13, 'TV', 1, 1.33, '2023-09-05 21:54:12');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (7, 'TV', 1, 2.17, '2023-03-24 08:49:40');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (4, 'TV', 1, 4.92, '2022-07-12 00:22:54');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (13, 'TV', 3, 4.34, '2023-10-07 22:53:12');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (2, 'TV', 68, 2.88, '2023-12-05 09:40:31');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (10, 'TV', 3, 4.82, '2023-12-04 09:40:56');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (6, 'TV', 1, 4.5, '2023-04-19 13:42:10');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (14, 'TV', 3, 3.74, '2023-11-03 01:39:21');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (14, 'TV', 3, 2.99, '2023-11-01 10:36:22');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (10, 'TV', 1, 4.51, '2023-12-04 05:41:13');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (15, 'TV', 1, 3.49, '2023-09-19 21:00:25');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (12, 'TV', 66, 4.97, '2023-02-18 02:33:23');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (8, 'TV', 65, 1.43, '2023-12-09 01:11:37');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (14, 'TV', 60, 3.14, '2023-11-11 10:13:05');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (7, 'TV', 62, 4.79, '2023-10-03 05:41:41');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (3, 'TV', 60, 3.25, '2022-12-01 05:50:50');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (15, 'TV', 63, 4.19, '2022-12-02 02:26:51');
INSERT INTO Review (UserID, ReviewType, EpisodeID, Rating, ReviewDate) VALUES (13, 'TV', 63, 4.23, '2023-03-04 03:11:39');


INSERT INTO Review (UserID, ReviewType, BookID, Rating, ReviewDate) VALUES (14, 'Book', 3, 3.89, '2023-08-08 12:01:03');
INSERT INTO Review (UserID, ReviewType, BookID, Rating, ReviewDate) VALUES (12, 'Book', 3, 3.89, '2023-08-31 23:08:02');
INSERT INTO Review (UserID, ReviewType, BookID, Rating, ReviewDate) VALUES (15, 'Book', 3, 2.28, '2022-12-25 15:41:35');
INSERT INTO Review (UserID, ReviewType, BookID, Rating, ReviewDate) VALUES (11, 'Book', 2, 1.47, '2023-02-27 14:06:22');
INSERT INTO Review (UserID, ReviewType, BookID, Rating, ReviewDate) VALUES (2, 'Book', 2, 4.28, '2023-11-21 02:12:38');
INSERT INTO Review (UserID, ReviewType, BookID, Rating, ReviewDate) VALUES (5, 'Book', 3, 3.45, '2023-06-12 06:48:38');
INSERT INTO Review (UserID, ReviewType, BookID, Rating, ReviewDate) VALUES (9, 'Book', 1, 3.59, '2023-07-08 13:32:05');
INSERT INTO Review (UserID, ReviewType, BookID, Rating, ReviewDate) VALUES (5, 'Book', 1, 4.64, '2023-07-14 20:21:58');
INSERT INTO Review (UserID, ReviewType, BookID, Rating, ReviewDate) VALUES (3, 'Book', 2, 2.36, '2022-09-16 19:25:04');
INSERT INTO Review (UserID, ReviewType, BookID, Rating, ReviewDate) VALUES (12, 'Book', 1, 4.95, '2023-10-03 21:56:29');


INSERT INTO Review (UserID, ReviewType, CharacterID, Rating, ReviewDate) VALUES (10, 'Character', 2, 3.58, '2023-11-23 15:39:51');
INSERT INTO Review (UserID, ReviewType, CharacterID, Rating, ReviewDate) VALUES (4, 'Character', 5, 2.57, '2023-01-07 15:08:28');
INSERT INTO Review (UserID, ReviewType, CharacterID, Rating, ReviewDate) VALUES (12, 'Character', 1, 1.26, '2023-01-04 20:03:55');
INSERT INTO Review (UserID, ReviewType, CharacterID, Rating, ReviewDate) VALUES (11, 'Character', 3, 2.9, '2023-05-24 11:47:30');
INSERT INTO Review (UserID, ReviewType, CharacterID, Rating, ReviewDate) VALUES (2, 'Character', 4, 3.77, '2023-11-06 12:14:54');
INSERT INTO Review (UserID, ReviewType, CharacterID, Rating, ReviewDate) VALUES (8, 'Character', 2, 4.72, '2023-12-09 20:21:50');
INSERT INTO Review (UserID, ReviewType, CharacterID, Rating, ReviewDate) VALUES (10, 'Character', 1, 3.01, '2023-11-25 02:12:46');
INSERT INTO Review (UserID, ReviewType, CharacterID, Rating, ReviewDate) VALUES (9, 'Character', 3, 3.69, '2023-08-15 08:17:06');
INSERT INTO Review (UserID, ReviewType, CharacterID, Rating, ReviewDate) VALUES (14, 'Character', 4, 1.65, '2023-07-03 01:55:53');
INSERT INTO Review (UserID, ReviewType, CharacterID, Rating, ReviewDate) VALUES (9, 'Character', 5, 2.05, '2023-04-12 22:10:29');

-- Comments made by users on theories and reviews, including the text of the comment and the associated user.
CREATE TABLE Comment (
    CommentID INT AUTO_INCREMENT PRIMARY KEY,
    UserID INT NOT NULL,
    CommentType ENUM('Episode', 'Book', 'Character', 'Theory') NOT NULL,
    EpisodeID INT NULL,
    BookID INT NULL,
    CharacterID INT NULL,
    TheoryID INT NULL,
    CommentText TEXT NOT NULL,
    CommentDate TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (UserID) REFERENCES User(UserID) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (EpisodeID) REFERENCES TVEpisode(EpisodeID) ON DELETE SET NULL ON UPDATE CASCADE,
    FOREIGN KEY (BookID) REFERENCES Book(BookID) ON DELETE SET NULL ON UPDATE CASCADE,
    FOREIGN KEY (CharacterID) REFERENCES `Character`(CharacterID) ON DELETE SET NULL ON UPDATE CASCADE,
    FOREIGN KEY (TheoryID) REFERENCES Theory(TheoryID) ON DELETE SET NULL ON UPDATE CASCADE
);


INSERT INTO Comment (UserID, CommentType, EpisodeID, CommentText) VALUES (1, 'Episode', 60, 'Loved this episode!');
INSERT INTO Comment (UserID, CommentType, BookID, CommentText) VALUES (2, 'Book', 5, 'Great read!');
INSERT INTO Comment (UserID, CommentType, TheoryID, CommentText) VALUES (4, 'Theory', 3, 'Interesting theory about the plot!');
INSERT INTO Comment (UserID, CommentType, EpisodeID, CommentText) VALUES (5, 'Episode', 41, 'This episode was so exciting!');
INSERT INTO Comment (UserID, CommentType, BookID, CommentText) VALUES (1, 'Book', 4, 'I couldn''t put this book down!');
INSERT INTO Comment (UserID, CommentType, TheoryID, CommentText) VALUES (3, 'Theory', 1, 'My theory on the ending.');
INSERT INTO Comment (UserID, CommentType, EpisodeID, CommentText) VALUES (4, 'Episode', 59, 'Did anyone else notice the clue in this episode?');
INSERT INTO Comment (UserID, CommentType, BookID, CommentText) VALUES (5, 'Book', 2, 'The author''s best work yet!');
INSERT INTO Comment (UserID, CommentType, TheoryID, CommentText) VALUES (2, 'Theory', 2, 'My prediction for the next season');
INSERT INTO Comment (UserID, CommentType, EpisodeID, CommentText) VALUES (3, 'Episode', 30, 'This was the best episode so far!');
INSERT INTO Comment (UserID, CommentType, BookID, CommentText) VALUES (4, 'Book', 1, 'A must-read for fans of the genre.');
INSERT INTO Comment (UserID, CommentType, TheoryID, CommentText) VALUES (1, 'Theory', 1, 'I think I''ve figured out the mystery!');
INSERT INTO Comment (UserID, CommentType, EpisodeID, CommentText) VALUES (2, 'Episode', 58, 'Wow, didn''t see that twist coming!');
INSERT INTO Comment (UserID, CommentType, BookID, CommentText) VALUES (3, 'Book', 2, 'I love how the story develops in this book.');
INSERT INTO Comment (UserID, CommentType, TheoryID, CommentText) VALUES (5, 'Theory', 2, 'Here''s a wild theory about the next book.');
INSERT INTO Comment (UserID, CommentType, CharacterID, CommentText) VALUES (3, 'Character', 4, 'My favorite character!');
INSERT INTO Comment (UserID, CommentType, CharacterID, CommentText) VALUES (2, 'Character', 1, 'I really relate to this character.');
INSERT INTO Comment (UserID, CommentType, CharacterID, CommentText) VALUES (1, 'Character', 3, 'Why did they change this character so much?');
INSERT INTO Comment (UserID, CommentType, CharacterID, CommentText) VALUES (5, 'Character', 4, 'Such a complex and interesting character!');
INSERT INTO Comment (UserID, CommentType, CharacterID, CommentText) VALUES (4, 'Character', 5, 'This character''s arc is incredible.');