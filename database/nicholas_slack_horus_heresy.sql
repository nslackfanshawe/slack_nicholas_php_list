-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 27, 2026 at 07:59 AM
-- Server version: 8.4.7
-- PHP Version: 8.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nicholas_slack_horus_heresy`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
CREATE TABLE IF NOT EXISTS `books` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `description` text COLLATE utf8mb4_general_ci NOT NULL,
  `synopsis` text COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `thumbnail`, `image`, `description`, `synopsis`) VALUES
(1, 'Horus Rising', 'Dan Abnett', 'images/horus-rising-thumb.jpg', 'images/horus-rising.jpg', 'It is the 31st Millennium. Under the benevolent leadership of the Immortal Emperor, the Imperium has stretched out across the galaxy. It is a golden age of discovery and conquest. But now, on the eve of victory, the Emperor leaves the front lines, entrusting the great crusade to his favourite son, Horus.\r\n\r\nPromoted to Warmaster, can the idealistic Horus carry out the Emperor\'s grand plan, or will this promotion sow the seeds of heresy amongst his brothers? Horus Rising is the first chapter in the epic tale of the Horus Heresy, a galactic civil war that threatened to bring about the extinction of humanity.', 'Horus Rising (Abnett 2006), the series opener, starts in the early years of the 31st millennium, during the 203rd year of the Great Crusade. It describes the rise to power of Horus Lupercal, Primarch of the \"Luna Wolves\" Legion of Space Marines, and the most versatile and favoured \"son\" of the Emperor. The Emperor has recently appointed him Warmaster, overall commander of Imperial military forces, while also leaving him in charge of the rest of the Crusade; the Emperor meanwhile returns to Terra, where in relative isolation he undertakes a secret project to which not even Horus is privy. The focus and perspective of the novel centres on a Space Marine Captain, Garviel Loken, leader of the Luna Wolves\' 10th Company. He becomes a member of the Mournival, an informal advisory body to Horus, and participates in Crusade campaigns against anti-Imperial human populations and aliens, referred to in the series as \"xenos\". The story also hints at tensions in the nascent Imperium, exacerbated by the Emperor\'s absence and contentious actions and inactions – these are common themes in following books.[17]'),
(2, 'False Gods', 'Graham McNeill', 'images/false-gods-thumb.jpg', 'images/false-gods.jpg', 'The Great Crusade that has taken humanity into the stars continues. The Emperor has handed the reins of command to his favoured son, the Warmaster Horus. Yet all is not well in the armies of the Imperium. Horus is still battling against the jealousy and resentment of his brother primarchs and, when he is injured on the planet Davin, he must also battle his inner daemons. With all the temptations that Chaos has to offer, can the weakened Horus resist?', 'False Gods (McNeill 2006) picks up a few weeks after the conclusion of Horus Rising in the series timeline, and tells the story of Horus\' fall. In a complicated conspiracy implemented by followers of Chaos, Horus is mortally wounded during a Crusade mission by a Chaos-tainted xenos weapon. In a desperate action by his lieutenants to ensure his survival  – one taken in strict contradiction to Imperial doctrine  – Horus is brought to a local temple with a reputation for healing. The temple is the seat of a powerful Chaos cult, and both Horus\' wound and its supposed healing makes him susceptible to Chaos\' influence. He ultimately turns against his \"father\", the Emperor, and sets in motion the entire Heresy. This novel further highlights the institutional and personal tensions that accompany the Imperium\'s maturity into the preeminent power of the galaxy; they include rifts among the Primarchs, as well as both between and within their Space Marine Legions. Conflicts and characters flaws are repeatedly and effectively manipulated by Chaos in pursuit of their agenda throughout the series. A parallel storyline, also present in several other books, involves the growing influence – both within the Crusade Expeditionary forces and across the wider Imperium – of a forbidden religious cult, whose members, while loyal to the Emperor and Imperium, defy the Imperial Truth by worshipping the Emperor as a god.[18]'),
(3, 'Galaxy in Flames', 'Ben Counter', 'images/galaxy-in-flames-thumb.jpg', 'images/galaxy-in-flames.jpg', 'Having recovered from his grievous injuries, Warmaster Horus leads the triumphant Imperial forces against the rebel world of Isstvan III. Though the rebels are swiftly crushed, Horus\'s treachery is finally revealed when the planet is razed by virus bombs and Space Marines turn on their battle-brothers in the most bitter struggle imaginable.\r\n', 'Galaxy in Flames (Counter 2006) starts shortly after the end of False Gods. It outlines the corrupted Warmaster\'s descent into madness, which leads to the fomentation of his plot to betray the Imperium. Horus pursues his secret planning of the rebellion in earnest, seeking and finding allies among his disgruntled fellow Primarchs, their Legions, and the Imperium\'s other organisations and key personalities. The novel details the first open move of the Heresy, the \"Betrayal of Isstvan III\", wherein factions of four Astartes Legions who were deemed unconvertible by their traitor brethren are ambushed during a planetary invasion of the fictional Isstvan star system. The novel marks the first distinguishment of the \"Loyalists\" and \"Traitor\" factions within the Legions and other rebel forces, including the unmodified soldiers of the Imperial Army.[19]'),
(4, 'The Flight of the Eisenstein', 'James Swallow', 'images/flight-eisenstein-thumb.jpg', 'images/flight-eisenstein.jpg', 'When Garro\'s fleeing ship, the Eisenstein, is damaged by enemy fire, it becomes stranded in the warp – the realm of the Dark Powers. Can Garro and his men survive the depredations of Chaos and get his warning to the Emperor before Horus\'s plans reach fruition?', 'The Flight of the Eisenstein (Swallow 2007) follows the eponymous Eisenstein, a space frigate of the \"Death Guard\" 14th Legion of Space Marines. The story follows the ship\'s escape from the Betrayal of Isstvan III, crewed by surviving loyalists of the four Legions present at the battle and commanded by Battle‑Captain Nathaniel Garro of the Death Guard 7th Company and one of the few Commanders in the Traitor Legions that remain loyal to the Emperor  – followed by the perilous voyage the vessel must take across the galaxy in an effort to reach Terra and raise the alarm over the developing rebellion. Garro and the others on board the vessel face suspicion and incredulity from Imperial authorities; apart from the inconceivable news of Horus\' betrayal, the situation is complicated by the fact that many of the travellers on the Eisenstein now openly proclaim their belief in the Emperor\'s divinity, itself a heresy.[20]'),
(5, 'Fulgrim', 'Graham McNeill', 'images/fulgrim-thumb.jpg', 'images/fulgrim.jpg', 'Under the command of the newly appointed Warmaster Horus, the Great Crusade continues. Fulgrim, Primarch of the Emperor\'s Children, leads his warriors into battle against a vile alien foe, unaware of the darker forces that have already set their sights upon the Imperium of Man. Loyalties are tested, and every murderous whim indulged as the Emperor\'s Children take their first steps down the road to true corruption - a road that will ultimately lead them to the killing fields of Isstvan V...', 'Fulgrim (McNeill 2007) centers on the eponymous Primarch of the 3rd Legion, the \"Emperor\'s Children\". Characterised as flamboyant perfectionists, the novel tracks the descent of Fulgrim and his Legion into the service of Chaos roughly simultaneously with that of Horus in (Book 2). Fulgrim is delivered a warning about Horus\' imminent betrayal and the disaster that may follow by the alien Eldar race, but he and his staff dismiss it. The Emperor\'s Children eventually become the \"Chosen\" of Slaanesh, one of the four Gods of Chaos, with which Fulgrim is slowly and unwittingly drawn into grotesque communion. Primarch Ferrus Manus and his \"Iron Hands\" Space Marines (the 10th Legion) also play a prominent role in the novel as Fulgrim attempts to lure them into betrayal, and several other Primarchs and Legions make appearances. Described in passing is the pivotal Battle of Isstvaan V, also known as the Dropsite Massacre, where several entirely Loyalist Legions are slaughtered in another Traitor ambush in the Isstvan star system. The battle fully reveals the scale and ferocity of the rebellion.[21]'),
(6, 'Descent of Angels', 'Mitchel Scanlon', 'images/descent-of-angels-thumb.jpg', 'images/descent-of-angels.jpg', 'As the Great Crusade reaches Caliban, the Order is absorbed into the Dark Angels Legion, and Zahariel is selected as a Space Marine neophyte. The transition strains Calibanite traditions and foreshadows internal division.', 'Descent of Angels (Scanlon 2007) is a pre-Heresy story that concludes about 50 years before the start of that conflict. It introduces the \"Dark Angels\", first of the Space Marine Legions, and their Primarch Lion El\'Jonson. The story is mainly told from the viewpoint of Zahariel El\'Zurias, a native of the fictional planet Caliban. Caliban is an isolated, low-technology world that resembles a feudal medieval fantasy setting. Zahariel is introduced in the story as an Aspirant of the Order, an organisation of techno-barbarian knights. The first half of the novel is set on Caliban and covers the final battles of the Order under the leadership of Jonson, the future Primarch. The book\'s second half describes Caliban\'s unification with the Imperium of Man as well as the actions of the Dark Angels during the early years of the Great Crusade. In this part of the story, Zahariel, selected as a candidate Space Marine, is accepted as a Dark Angel Neophyte. A future schism within the Legion is intimated towards the end of the book.[22]'),
(7, 'Legion', 'Dan Abnett', 'images/legion-thumb.jpg', 'images/legion.jpg', 'A Great War is coming, and it will engulf the Imperium of Man. The Space Marines of the Alpha Legion, the last and most secretive of all the Astartes brotherhoods, arrive on a heathen world to support the Imperial Army in a pacification campaign against strange and uncanny foes. But what drives the Alpha Legion? Can they be trusted, what side will they choose when the Great War begins? Loyalties are put to the test, and the cunning schemes of an alien intelligence revealed, as the fate of mankind hangs in the balance. ', 'Legion (Abnett 2008) focuses on the \"Alpha Legion\", the 20th and last of the Space Marine Legions. Characterised in earlier publications as clandestine and inscrutable, the book constitutes a major development of the entire canon of the setting with the revelation that the Legion\'s Primarch is actually a pair of twins, Alpharius and Omegon. The book also features the Imperial Army, the regular unmodified human fighting force of the Imperium, covering several officers and their units. Lastly, the novel introduces a new organisation to the setting, the enigmatic and ancient Cabal  – an interspecies organisation opposed to Chaos. The human John Grammaticus is introduced as a prominent Cabal member. The story takes place over roughly a 6‑month period, about two years before the Heresy starts; it describes the events that eventually lead Alpharius and Omegon (publicly a single figure named Alpharius Omegon) to support Horus.'),
(8, 'Battle for the Abyss', 'Ben Counter', 'images/battle-abyss-thumb.jpg', 'images/battle-abyss.jpg', 'Now that news of Horus\'s treachery is in the open, a time of testing has come. Some Legions have already declared their allegiance to the Warmaster, while the loyalty of others lies firmly with the Emperor. As Horus deploys his forces, a small band of loyal Space Marines from disparate Legions learn that a massive enemy armada is heading to Ultramar, home of the Ultramarines, headed by the most destructive starship ever constructed. Unless they can intercept the fleet, and destroy the mighty battleship the Furious Abyss, the Ultramarines may suffer a blow from which they will never recover.', 'Battle for the Abyss (Counter 2008) concerns the lead‑up to a Traitor invasion of Ultramar, a remote star system and the home base of the unshakeably-Loyalist 13th Legion, the \"Ultramarines\" (Book 19 and 24). Early in the Heresy, the Traitor Word Bearers Legion is tasked with organising and leading the invasion; they plan to use an immense, secretly commissioned warship, the Furious Abyss, to spearhead the surprise attack. The vessel, commanded by Fleet Captain Zadkiel, launches from shipyards near Jupiter around the time of the events on Isstvan III (Book 3), and sets course for Macragge, Ultramar\'s capital world. Leading the cast of Loyalist protagonists is Cestus, Fleet Commander and Captain of the 7th Company of the Ultramarines. They become aware of the powerful capital ship\'s true purpose, and engage in long pursuit; they will seek to prevent the Furious Abyss from participating in the invasion and from reaching Macragge.'),
(9, 'Mechanicum', 'Graham McNeill', 'images/mechanicum-thumb.jpg', 'images/mechanicum.jpg', 'As the flames of treachery spread throughout the Imperium, Horus plots to subvert or destroy all those who would stand against him. On Mars, home world of the Mechanicum priesthood, the great manufactory-cities have long produced much of the weaponry required for the expeditionary fleets across the galaxy - making the world invaluable to whoever controls it in the coming war. Now, the Warmaster\'s agents begin to stoke the fires of rebellion, turning the loyalist forges and the mighty Titan Legions against one another. And, with whispers spreading of an ancient terror lurking beneath the Red Planet\'s surface, the Dark Mechanicum rises...', 'Mechanicum (McNeill 2008) is the first book in the series not to focus on either the Primarchs or their Space Marines Legions. The novel centres on the eponymous \"Mechanicum\", a cult of machine-worshipping technologists based on the real-life planet Mars and which serves as the chief engineering authority in the nascent Imperium. The machinations of Horus and the Chaos-worshipping Traitors affects the Martian cult as much as every other Imperial organisation, leading to a civil war on Mars itself. Kelbor-Hal, Fabricator General of Mars and the technocracy\'s supreme leader, declares for Horus, and together they carry out a coup d\'état to eliminate Techpriest and Magos adherents of the Cult who are loyal to Terra and the Emperor. As the Mechanicum is the sole power responsible for all civil and military technology in the Imperium, the conflict has vast implications for whichever side of the broader intergalactic civil war receives Mars\' crucial support.[23][24]'),
(10, 'Tales of Heresy', 'Various Authors', 'images/tales-of-heresy-thumb.jpg', 'images/tales-of-heresy.jpg', 'When Horus the Warmaster rebelled against the Emperor, the ensuing civil war nearly destroyed the Imperium. War raged across galaxy, pitting Astartes against their battle-brothers in a struggle where death was the only victor. But long before that, the Legions struggled with their identities and the demands of the Great Crusade. From battles with alien invaders to conflicts within a Legion, and even dealing with a wayward primarch, these stories show the battles fought as the Great Crusade draws to a close and the Horus Heresy begins...', 'Tales of Heresy (Kyme & Priestley 2009) is a collection of short stories introducing and expanding upon numerous threads within the greater happenings of the Heresy. Various stories centre on the Custodian Guard, the elite Praetorian Guard-esque retinue of the Emperor, and the Sisters of Silence, a classified Imperial organisation of anti-psychic warrior‑nuns originally introduced in Book 4. Most stories are concurrent with the Heresy, with some occurring in the years prior. It includes two stories that take place on Terra, one of which occurs long before the Heresy and adds to the background regarding the Imperial Truth; another entry in the compilation is a Primarch origin story, covering the contentious circumstances under which the gladiatorial Primarch Angron takes command of the 12th Space Marine Legion, which he renames from the \"Warhounds\" to the \"World Eaters\". The book contains seven stories by various authors;[25] several stories relate to full-length novels in the series.\r\n\r\nThis anthology contains the following stories: Blood Games by Dan Abnett, Wolf at the Door by Mike Lee, Scions of the Storm by Anthony Reynolds, The Voice by James Swallow, Call of the Lion by Gav Thorpe, The Last Church by Graham McNeill and After Desh\'ea by Matthew Farrer.');

-- --------------------------------------------------------

--
-- Table structure for table `book_genre`
--

DROP TABLE IF EXISTS `book_genre`;
CREATE TABLE IF NOT EXISTS `book_genre` (
  `book_id` int NOT NULL,
  `genre_id` int NOT NULL,
  PRIMARY KEY (`book_id`,`genre_id`),
  KEY `fk_book_genre_genre` (`genre_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book_genre`
--

INSERT INTO `book_genre` (`book_id`, `genre_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(1, 3),
(2, 3),
(3, 3),
(4, 3),
(5, 3),
(7, 3),
(8, 3),
(10, 3),
(2, 4),
(4, 4),
(5, 4),
(1, 5),
(2, 5),
(3, 5),
(4, 5),
(5, 5),
(6, 5),
(8, 5),
(9, 5),
(10, 5),
(1, 6),
(2, 6),
(7, 6),
(9, 6);

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
CREATE TABLE IF NOT EXISTS `genres` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`) VALUES
(5, 'Action'),
(4, 'Horror'),
(2, 'Military Fiction'),
(6, 'Political Fiction'),
(1, 'Science Fiction'),
(3, 'Space Opera');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `book_genre`
--
ALTER TABLE `book_genre`
  ADD CONSTRAINT `fk_book_genre_book` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_book_genre_genre` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
