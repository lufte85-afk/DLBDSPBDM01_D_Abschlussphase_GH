-- phpMyAdmin SQL Dump
-- version 5.2.1deb1+deb12u1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Erstellungszeit: 31. Mai 2026 um 15:47
-- Server-Version: 10.11.14-MariaDB-0+deb12u2
-- PHP-Version: 8.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `book_lending`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `addresses`
--

CREATE TABLE `addresses` (
  `id` int(11) NOT NULL,
  `street` varchar(100) NOT NULL,
  `number` varchar(5) NOT NULL,
  `zipcode` varchar(10) NOT NULL,
  `city` varchar(50) NOT NULL,
  `countries_id` int(11) NOT NULL,
  `locations_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `addresses`
--

INSERT INTO `addresses` (`id`, `street`, `number`, `zipcode`, `city`, `countries_id`, `locations_id`) VALUES
(1, 'Waldstrasse', '11a', '66651', 'Merzig', 2, 1),
(2, 'Hauptstrasse', '22', '66653', 'Merzig', 2, 1),
(3, 'Baggerweg', '33', '66661', 'Besseringen', 2, 1),
(4, 'Carlsstrasse', '44', '66693', 'Mettlach', 2, 2),
(5, 'Rue de la Frontiere', '55', '57480', 'Lauendorf', 3, 7),
(6, 'Deichstrasse', '6', '66979', 'Bachem', 2, 3),
(7, 'Edwins-Platz', '77b', '66809', 'Nalbach', 2, 10),
(8, 'Freistrasse', '8', '66867', 'Saarwellingen', 2, 10),
(9, 'Gerdaweg', '9', '66485', 'Losheim', 2, 4),
(10, 'Hauptstrasse', '11', '66458', 'Perl', 2, 5),
(11, 'Innsweg', '21b', '66798', 'Merchingen', 2, 1),
(12, 'Jacobsweg', '31', '66464', 'Düppenweiler', 2, 6),
(13, 'Bering-Plaza', '4', '66661', 'Merzig', 2, 1),
(14, 'Cleonsstrasse', '43', '66867', 'Saarwellingen', 2, 10),
(15, 'Luxemburger Strasse', '4', '66706', 'Perl', 2, 5),
(16, 'Zellnerweg', '32', '66701', 'Beckingen', 2, 6),
(17, 'Wittelsweg', '1', '1205', 'Remich', 14, 5);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `addresses_users`
--

CREATE TABLE `addresses_users` (
  `addresses_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `addresses_users`
--

INSERT INTO `addresses_users` (`addresses_id`, `users_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `authors`
--

CREATE TABLE `authors` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `birthdate` date DEFAULT NULL,
  `countries_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `authors`
--

INSERT INTO `authors` (`id`, `first_name`, `last_name`, `birthdate`, `countries_id`) VALUES
(1, 'Terry', 'Pratchett', '1948-04-28', 5),
(2, 'Neil', 'Gaiman', '1960-11-10', 5),
(3, 'Alexandre', 'Dumas der Ältere', '1802-07-24', 3),
(4, 'Erich', 'Gamma', '1961-03-13', 11),
(5, 'Ralph', 'Johnson', '1955-10-07', 1),
(6, 'John', 'Vlissides', '1961-08-02', 1),
(7, 'Richard', 'Helm', NULL, 12),
(8, 'Miguel', 'de Cervantes', '1547-09-29', 4),
(9, 'Lew', 'Tolstoi', '1828-09-09', 6),
(10, 'Mark', 'Danielewski', '1966-03-05', 1),
(11, 'Jane', 'Austen', '1775-12-16', 5),
(12, 'Stephen', 'King', '1947-09-21', 1),
(13, 'Isaac', 'Asimov', '1920-01-02', 6),
(14, 'Thomas', 'Harris', '1940-04-11', 1),
(15, 'Albert', 'Camus', '1913-11-07', 13),
(16, 'Arkadi', 'Strugatzki', '1925-08-28', 6),
(17, 'Boris', 'Strugatzki', '1933-04-15', 6);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `authors_books`
--

CREATE TABLE `authors_books` (
  `authors_id` int(11) NOT NULL,
  `books_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `authors_books`
--

INSERT INTO `authors_books` (`authors_id`, `books_id`) VALUES
(1, 1),
(1, 10),
(1, 11),
(1, 15),
(2, 1),
(3, 2),
(4, 3),
(5, 3),
(6, 3),
(7, 3),
(8, 4),
(9, 5),
(10, 7),
(11, 6),
(12, 8),
(13, 9),
(14, 12),
(15, 13),
(16, 14),
(17, 14);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `isbn` varchar(13) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `page_count` smallint(5) UNSIGNED DEFAULT NULL,
  `edition` tinyint(3) UNSIGNED DEFAULT NULL,
  `release_year` year(4) DEFAULT NULL,
  `languages_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `books`
--

INSERT INTO `books` (`id`, `isbn`, `title`, `description`, `page_count`, `edition`, `release_year`, `languages_id`) VALUES
(1, '9783492281669', 'Ein gutes Omen', 'Ein gutes Omen. Die präzisen und zutreffenden Prophezeiungen der Hexe Agnes Spinner ist ein 1990 erschienener Roman von Terry Pratchett und Neil Gaiman. Er beschreibt in humorvoller Art den Kampf zwischen Gut und Böse, zwischen Gott und Teufel, repräsentiert durch einen Engel und einen Dämon auf Erden.', 464, 10, '2018', 2),
(2, '9783458684633', 'Der Graf von Monte Christo', 'Der junge Seemann Edmond Dantès hat alles: Liebe, Zukunft, Glück – bis er am Tag seiner Verlobung Opfer einer teuflischen Intrige seiner Neider wird und unschuldig in Chateau d’If im Kerker landet. Viele Jahre später gelingt ihm die Flucht, und dank eines unermesslichen Schatzes verwandelt er sich in den mysteriösen Grafen von Monte Christo. Getrieben von Schmerz und der Sehnsucht nach Gerechtigkeit beginnt er einen beispiellosen Rachefeldzug gegen seine Verräter ...', 1167, 1, '2026', 2),
(3, '3827321999', 'Entwurfsmuster : Elemente wiederverwendbarer objektorientierter Software', 'Mit Design Patterns lassen sich wiederkehrende Aufgaben in der objektorientierten Softwareentwicklung effektiv lösen. Die Autoren stellen einen Katalog einfacher und prägnanter Lösungen für häufig auftretende Aufgabenstellungen vor. Mit diesen 23 Patterns können Softwareentwickler flexiblere, elegantere und vor allem auch wiederverwendbare Designs erstellen, ohne die Lösungen jedes Mal aufs Neue selbst entwickeln zu müssen.', 479, 1, '2004', 2),
(4, '9783866475489', 'Don Quijote: Der sinnreiche Junker Don Quijote von der Mancha', 'Mit grandiosem Einfallsreichtum erzählt Cervantes von den Abenteuern des verarmten Adligen, der in einer Traumwelt vergangener Ritterzeiten lebt, und seines treuen Waffenträgers Sancho Pansa. Ähnlich wie Goethes Faust für die Deutschen ist Don Quijote für die Spanier zum Sinnbild eines nationalen Genius geworden. Die Sympathie des Erzählers für seine Figuren und sein liebevoll-ironischer Ton machen Don Quijote zum wunderbarsten Antihelden der Weltliteratur.', 1274, NULL, '2010', 2),
(5, '9783866471764', 'Krieg und Frieden', 'Vor dem Hintergrund der russisch-napoleonischen Kriege erzählt \'Krieg und Frieden\' in wahrhaft meisterlicher Manier die Geschichte dreier Familien, deren Schicksale eng miteinander verwoben sind. Der Roman, 1863 - 69 entstanden, ist ein Meilenstein der russischen Literatur und trug seinem Autor Leo Tolstoi Weltgeltung ein. Furios sind die Schilderungen der blutigen Schlachten bei Austerlitz und Borodino, präzise und einfühlsam die Zeichnungen der Charaktere - ein Meisterwerk, das bis heute nur selten seinesgleichen fand.', 1536, NULL, '2007', 2),
(6, '9783866471788', 'Stolz und Vorurteil', 'Im England des ausgehenden 18. Jahrhunderts steht die junge und schöne Elisabeth Bennet vor einer großen Lebensentscheidung: der Wahl eines geeigneten Heiratskandidaten. Ihr allzu stolzes Wesen jedoch vernebelt ihr ein ums andere Mal den Blick, bis sie nach vielen Verwicklungen schließlich doch die Liebe ihres Lebens findet. Jane Austens berühmtester Roman \'Stolz und Vorurteil\', der 1813 erschien, krönt die erste Schaffensphase der englischen Autorin und sicherte ihr einen Platz in den Annalen der Weltliteratur.', 368, NULL, '2007', 2),
(7, '9783608937770', 'Das Haus - House of Leaves', 'Als der Pulitzer-Preisträger Will Navidson mit seiner Frau und den beiden Kindern in das Haus zieht, ahnt er nicht, wie hier sein Leben aus den Fugen geraten wird. Ganz beiläufig filmt er die alltäglichen Vorgänge in den Zimmern und Fluren; ganz beiläufig muss er feststellen, dass dieses Haus über Räume verfügt, die kein Grundriss verzeichnet.\r\n\r\nNachdem er bei einer ersten Erkundung dieser Räume fast den Rückweg nicht mehr findet, holt er Hilfe - ein Ingenieur und ein professioneller Höhlenforscher sollen die unermesslichen Räume im Hausinneren erforschen helfen. Und immer läuft die Kamera mit - und zeichnet auf, was über den Verstand aller Beteiligten geht und ganze Generationen von Filmkritikern und Kinogängern schaudern lassen wird.', 797, 5, '2007', 2),
(8, '9783453438187', 'The Stand - Das letzte Gefecht', 'In einem entvölkerten Amerika versucht eine Handvoll Überlebende die Zivilisation zu retten. Ihr Gegenspieler ist eine mythische Gestalt, die man den Dunklen Mann nennt, eine Verkörperung des absolut Bösen. In der Wüste Nevada kommt es zum Entscheidungskampf um das Schicksal der Menschheit.', 1712, NULL, '2016', 2),
(9, '9783453527942', 'Die Stahlhöhlen', 'Zu Beginn des 30. Jahrhunderts ist die Menschheit gespalten: Die einen leben auf der Erde, zusammengepfercht unter riesigen Kuppeln, die anderen – die sogenannten „Spacer“ – haben sich auf fremden Planeten niedergelassen. Doch mit der räumlichen Trennung entwickeln beide Parteien auch ganz unterschiedliche Weltanschauungen, vor allem, was die auf der Erde verpönten Roboter betrifft. Elijah Baley von der New York City Police ist alles andere als begeistert von seinem neuen Fall: ein Diplomat der Spacer wird ermordet aufgefunden. Baley soll ausgerechnet zusammen mit einem Roboter ermitteln und so jede politische Ausweitung dieses unangenehmen Falles verhindern. Dass R. Daneel ein hochentwickelter Android ist, der von einem Menschen nicht mehr unterschieden werden kann, macht die Zusammenarbeit für Baley zunächst nicht einfacher …', 288, NULL, '2016', 2),
(10, '9783492286299', 'MacBest', 'Nachdem er den König erdolcht hat, besteigt der finstere Herzog Felmet gemeinsam mit seiner unausstehlichen Gattin den Thron. Der wahre Thronerbe, ein zweijähriger Junge, wurde indes von fahrenden Schauspielern adoptiert. Nur ein unschlagbares Team kann jetzt noch helfen: Oma Wetterwachs mit ihren hexenden Freundinnen. Gemeinsam ersinnen sie einen unglaublichen Plan, der selbst Shakespeares Macbeth das Fürchten und Lachen zugleich lehren würde ', 352, NULL, '2008', 2),
(11, '9783492280686', 'Wachen! Wachen!', 'Eine geheime Bruderschaft ruft mittels eines gestohlenen magischen Buches einen Drachen herbei. Das Fabelwesen soll helfen, einen neuen König einzusetzen, der den Verschwörern gefügig ist. Doch der Drache setzt sich selbst als Herrscher ein – schläft er doch so gern auf den gemütlichen Goldreserven der Stadt. Nur eine Handvoll Wachen begehrt gegen den geschuppten König auf: Hauptmann Mumm, der beinahe zwei Meter große Zwerg Karotte und eine adlige Sumpfdrachenzüchterin machen sich auf, den Tyrannen zu vertreiben.', 432, 5, '2015', 2),
(12, '9783453440869', 'Roter Drache', 'Ein Killer verbreitet Angst und Schrecken in Florida. Er hat schon zehn Menschen umgebracht, und die Mordserie reißt nicht ab. Wer wäre besser geeignet, ein Psychogramm des Gesuchten anzufertigen, als der Psychiater und Massenmörder, den das FBI drei Jahre zuvor fassen konnte: Dr. Hannibal Lecter.', 512, NULL, '2019', 2),
(13, '9780679720201', 'The Stranger', 'With the intrigue of a psychological thriller, The Stranger—Camus\'s masterpiece—gives us the story of an ordinary man unwittingly drawn into a senseless murder on an Algerian beach. With an Introduction by Peter Dunwoodie; translated by Matthew Ward.\r\n\r\nBehind the subterfuge, Camus explores what he termed \"the nakedness of man faced with the absurd\" and describes the condition of reckless alienation and spiritual exhaustion that characterized so much of twentieth-century life. \r\n\r\n“The Stranger is a strikingly modern text and Matthew Ward’s translation will enable readers to appreciate why Camus’s stoical anti-hero and ­devious narrator remains one of the key expressions of a postwar Western malaise, and one of the cleverest exponents of a literature of ambiguity.” —from the Introduction by Peter Dunwoodie', 144, NULL, '1989', 1),
(14, '9783453526310', 'Strugatzki 2: Picknick am Wegesrand; Eine Milliarde Jahre vor dem Weltuntergang; Das Experiment', 'Arkadi und Boris Strugatzkis Romane sind nicht nur Parabeln über die Stellung des Menschen im Universum, sondern auch schonungslose Abrechnungen mit Ideologiegläubigkeit und Personenkult. In der UdSSR durften zahlreiche ihrer Texte nicht erscheinen. Der zweite Band der Werkausgabe enthält die Romane \"Picknick am Wegesrand\", verfilmt von Andrej Tarkowski als \"Stalker\", \"Das Experiment\" und \"Eine Milliarde Jahre vor dem Weltuntergang\".', 912, 2, '2010', 2),
(15, '9783442416585', 'Der fünfte Elefant', 'Im Auftrag des Patriziers reist Sam Mumm von der Stadtwache in das geheimnisvolle Land Überwald. Dort erfährt er, dass den Zwergen die uralte Steinsemmel, das Symbol der Königswürde, gestohlen wurde. Er stellt Ermittlungen an und gerät dabei in die verwickelten Auseinandersetzungen zwischen Zwergen, Werwölfen und Vampiren...\r\nIm Medium der Scheibenwelt erzählt Pratchett von der Annäherung fremder Nachbarn mit psychologischer Tiefe und satirischer Schärfe', 416, NULL, '2002', 2);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `books_publishers`
--

CREATE TABLE `books_publishers` (
  `books_id` int(11) NOT NULL,
  `publishers_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `books_publishers`
--

INSERT INTO `books_publishers` (`books_id`, `publishers_id`) VALUES
(1, 4),
(2, 5),
(3, 6),
(4, 2),
(5, 2),
(6, 2),
(7, 3),
(8, 1),
(9, 1),
(10, 4),
(11, 4),
(12, 1),
(13, 11),
(14, 1),
(15, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `book_objects`
--

CREATE TABLE `book_objects` (
  `id` int(11) NOT NULL,
  `condition` varchar(255) NOT NULL,
  `available` tinyint(1) NOT NULL,
  `duration_months` tinyint(3) UNSIGNED NOT NULL,
  `users_id` int(11) NOT NULL,
  `books_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `book_objects`
--

INSERT INTO `book_objects` (`id`, `condition`, `available`, `duration_months`, `users_id`, `books_id`) VALUES
(1, 'Leichte Gebrauchsspuren an den Rändern.', 1, 2, 1, 1),
(2, 'Wie neu. Keine Gebrauchsspuren', 1, 6, 2, 2),
(3, 'Das Buch hat starke Gebrauchsspuren. Ein paar Eselsohren und abgenutzte Ecken', 1, 10, 3, 3),
(4, 'Leichte Abnutzung an den Kanten', 1, 6, 4, 5),
(5, 'Wie neu', 1, 12, 5, 4),
(6, 'Leichte Gebrauchsspuren', 1, 4, 6, 6),
(7, 'Wie neu', 1, 6, 7, 7),
(8, 'Leichte Gebrauchsspuren an den Rändern', 1, 6, 8, 8),
(9, 'Dellen am Buchrücken', 1, 4, 9, 9),
(10, 'Eselsohren', 1, 3, 10, 10),
(11, 'Einband hat leichte Schäden', 1, 6, 1, 11),
(12, 'Leichte Gebrauchtsspuren an den Rändern', 1, 4, 2, 12),
(13, 'Kaffeeränder auf dem Buchrücken', 1, 4, 1, 5),
(14, 'Wie neu', 1, 3, 2, 12),
(15, 'Leichte Spuren am Buchrücken', 1, 6, 9, 7),
(16, 'Leichte Abnutzung am Buchrücken', 1, 4, 5, 10),
(17, 'Wie neu', 0, 9, 3, 10),
(18, 'Eselsohren', 0, 3, 5, 7),
(19, 'Wie neu', 1, 4, 6, 1),
(20, 'Abnutzung an den Ecken', 0, 3, 8, 2),
(21, 'Eselsohren', 1, 4, 5, 12),
(22, 'Wie neu', 1, 6, 8, 13),
(23, 'Leichte Gebrauchsspuren', 1, 6, 11, 14),
(24, 'Wie neu', 1, 4, 12, 15);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `countries`
--

INSERT INTO `countries` (`id`, `name`) VALUES
(13, 'Algerien'),
(12, 'Australien'),
(9, 'Dänemark'),
(2, 'Deutschland'),
(5, 'England'),
(3, 'Frankreich'),
(7, 'Irland'),
(14, 'Luxemburg'),
(8, 'Polen'),
(6, 'Russland'),
(10, 'Schweden'),
(11, 'Schweiz'),
(4, 'Spanien'),
(1, 'USA');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `deliveries`
--

CREATE TABLE `deliveries` (
  `id` int(11) NOT NULL,
  `category` enum('Hinsendung','Rücksendung') NOT NULL,
  `status` enum('Offen','Verschickt','Fehlgeschlagen','Angekommen') NOT NULL,
  `lendings_id` int(11) NOT NULL,
  `addresses_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `deliveries`
--

INSERT INTO `deliveries` (`id`, `category`, `status`, `lendings_id`, `addresses_id`) VALUES
(1, 'Hinsendung', 'Offen', 6, 6),
(2, 'Hinsendung', 'Verschickt', 7, 7),
(3, 'Hinsendung', 'Angekommen', 8, 8),
(4, 'Hinsendung', 'Angekommen', 9, 11),
(5, 'Hinsendung', 'Angekommen', 11, 12),
(6, 'Hinsendung', 'Angekommen', 15, 5),
(7, 'Rücksendung', 'Angekommen', 15, 3),
(8, 'Hinsendung', 'Angekommen', 16, 5),
(9, 'Rücksendung', 'Angekommen', 16, 12),
(10, 'Hinsendung', 'Angekommen', 17, 11),
(11, 'Rücksendung', 'Angekommen', 17, 9);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `genres`
--

INSERT INTO `genres` (`id`, `name`) VALUES
(10, 'Abenteurroman'),
(1, 'Fantasy'),
(4, 'Historienroman'),
(9, 'Horror'),
(3, 'Krimi'),
(5, 'Ritterroman'),
(7, 'Sachbuch'),
(8, 'Satire'),
(6, 'Science Fiction'),
(2, 'Thriller');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `handovers`
--

CREATE TABLE `handovers` (
  `id` int(11) NOT NULL,
  `category` enum('Ausleihe','Rückgabe') NOT NULL,
  `status` enum('Angefragt','Bestätigt','Erledigt','Storniert') NOT NULL,
  `timeslots_id` int(11) NOT NULL,
  `lendings_id` int(11) NOT NULL,
  `addresses_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `handovers`
--

INSERT INTO `handovers` (`id`, `category`, `status`, `timeslots_id`, `lendings_id`, `addresses_id`) VALUES
(1, 'Ausleihe', 'Angefragt', 16, 4, 4),
(2, 'Ausleihe', 'Bestätigt', 12, 5, 5),
(3, 'Ausleihe', 'Erledigt', 18, 10, 9),
(4, 'Ausleihe', 'Erledigt', 19, 12, 2),
(5, 'Rückgabe', 'Erledigt', 20, 12, 2),
(6, 'Ausleihe', 'Storniert', 24, 13, 6),
(7, 'Ausleihe', 'Erledigt', 23, 13, 6),
(8, 'Rückgabe', 'Erledigt', 22, 13, 6),
(9, 'Ausleihe', 'Erledigt', 26, 14, 8),
(10, 'Rückgabe', 'Erledigt', 25, 14, 8);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `languages`
--

INSERT INTO `languages` (`id`, `name`) VALUES
(4, 'Dänisch'),
(2, 'Deutsch'),
(1, 'Englisch'),
(5, 'Französisch'),
(10, 'Italienisch'),
(9, 'Norwegisch'),
(8, 'Polnisch'),
(3, 'Russisch'),
(7, 'Schwedisch'),
(6, 'Spanisch');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `lendings`
--

CREATE TABLE `lendings` (
  `id` int(11) NOT NULL,
  `category` enum('Übergabe','Versand') NOT NULL,
  `status` enum('Angefragt','Bestätigt','Aktiv','Überfällig','Abgeschlossen') NOT NULL,
  `target_returndate` date NOT NULL,
  `actual_returndate` date DEFAULT NULL,
  `users_id` int(11) NOT NULL,
  `book_objects_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `lendings`
--

INSERT INTO `lendings` (`id`, `category`, `status`, `target_returndate`, `actual_returndate`, `users_id`, `book_objects_id`) VALUES
(1, 'Übergabe', 'Angefragt', '2026-09-25', NULL, 1, 6),
(2, 'Übergabe', 'Angefragt', '2026-09-23', NULL, 2, 5),
(3, 'Versand', 'Angefragt', '2026-08-20', NULL, 3, 13),
(4, 'Übergabe', 'Bestätigt', '2026-10-12', NULL, 4, 6),
(5, 'Übergabe', 'Bestätigt', '2026-10-04', NULL, 5, 21),
(6, 'Versand', 'Bestätigt', '2026-10-18', NULL, 6, 9),
(7, 'Versand', 'Bestätigt', '2026-11-11', NULL, 7, 24),
(8, 'Versand', 'Aktiv', '2026-12-16', NULL, 8, 23),
(9, 'Versand', 'Aktiv', '2026-08-25', NULL, 11, 7),
(10, 'Übergabe', 'Aktiv', '2026-05-28', NULL, 3, 9),
(11, 'Versand', 'Überfällig', '2026-05-01', NULL, 12, 1),
(12, 'Übergabe', 'Abgeschlossen', '2026-05-15', '2026-04-14', 2, 16),
(13, 'Übergabe', 'Abgeschlossen', '2025-12-16', '2026-02-18', 6, 6),
(14, 'Übergabe', 'Abgeschlossen', '2025-11-11', '2025-11-11', 7, 9),
(15, 'Versand', 'Abgeschlossen', '2026-05-03', '2026-04-22', 5, 17),
(16, 'Versand', 'Abgeschlossen', '2025-06-15', '2025-06-20', 12, 18),
(17, 'Versand', 'Abgeschlossen', '2026-05-28', '2026-05-06', 11, 9);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `locations`
--

CREATE TABLE `locations` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `coordinate_x` int(11) NOT NULL,
  `coordinate_y` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `locations`
--

INSERT INTO `locations` (`id`, `name`, `coordinate_x`, `coordinate_y`) VALUES
(1, 'Merzig Stadt', 0, 0),
(2, 'Mettlach', -2, 5),
(3, 'Brotdorf', 4, 3),
(4, 'Losheim', 7, 7),
(5, 'Perl ', -18, 3),
(6, 'Beckingen', 5, -7),
(7, 'Bethingen', -8, 1),
(8, 'Orscholz', -8, 7),
(9, 'Gerlfangen / Oberesch', -3, -7),
(10, 'Nalbach / Saarwellingen', 11, -8);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `meetings`
--

CREATE TABLE `meetings` (
  `id` int(11) NOT NULL,
  `status` enum('Geplant','Aktiv','Abgeschlossen','Abgesagt') NOT NULL,
  `description` text NOT NULL,
  `addresses_id` int(11) NOT NULL,
  `timeslots_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `meetings`
--

INSERT INTO `meetings` (`id`, `status`, `description`, `addresses_id`, `timeslots_id`) VALUES
(3, 'Geplant', 'Treffen im Cafe Ulmenhausens in der Innenstadt.', 1, 8),
(4, 'Aktiv', 'Bäckerei Illmen beim Brunnen', 13, 16),
(5, 'Aktiv', 'Schlossplatz in der Innenstadt beim Brunnen', 14, 10),
(6, 'Aktiv', 'Treffen bei Dieter Dirks', 4, 10),
(7, 'Aktiv', 'Treffen alle 8 Wochen im Bücherwurm Perl', 15, 17),
(8, 'Abgeschlossen', 'Treffen bei Hans', 8, 11),
(9, 'Abgesagt', 'Bücherbörse in Losheim', 9, 14),
(10, 'Abgeschlossen', 'Treffen bei Kara', 11, 8),
(11, 'Abgeschlossen', 'Treffen beim Remicher Markt', 17, 14),
(12, 'Geplant', 'Treffen bei Frederick', 6, 13);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `meetings_users`
--

CREATE TABLE `meetings_users` (
  `meetings_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `meetings_users`
--

INSERT INTO `meetings_users` (`meetings_id`, `users_id`) VALUES
(4, 1),
(4, 3),
(4, 5),
(5, 1),
(5, 9),
(6, 3),
(6, 4),
(6, 6),
(7, 1),
(7, 2),
(7, 6),
(8, 1),
(8, 3),
(10, 3),
(10, 11),
(10, 12),
(11, 4),
(11, 7);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `publishers`
--

CREATE TABLE `publishers` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `website` varchar(100) DEFAULT NULL,
  `countries_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `publishers`
--

INSERT INTO `publishers` (`id`, `name`, `website`, `countries_id`) VALUES
(1, 'Heyne Verlag', 'https://www.penguin.de/verlage/heyne', 2),
(2, 'Anaconda Verlag', 'https://www.penguin.de/verlage/anaconda-verlag', 2),
(3, 'Klett-Cotta', 'https://www.klett-cotta.de/', 2),
(4, 'Piper Verlag', 'https://www.piper.de/', 2),
(5, 'Insel Verlag', 'https://www.suhrkamp.de/verlage/insel-verlag-s-22', 2),
(6, 'Addison-Wesley Verlag', 'https://www.pearson.de/', 2),
(7, 'Ernst Klett Verlag', 'www.klett.de', 2),
(8, 'Hachette Book Group', 'https://www.hachettebookgroup.com/', 1),
(9, 'BBC Books', 'https://www.penguin.co.uk/about/publishing-houses/ebury', 5),
(10, 'Grupo Planeta', 'https://planeta.es/en/books', 4),
(11, 'Knopf Doubleday Publishing Group', 'https://knopfdoubleday.com/', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `category` enum('Buch','Ausleihe','Autor','Verlag') NOT NULL,
  `rating` tinyint(10) UNSIGNED NOT NULL,
  `commentary` text DEFAULT NULL,
  `users_id` int(11) NOT NULL,
  `books_id` int(11) DEFAULT NULL,
  `lendings_id` int(11) DEFAULT NULL,
  `authors_id` int(11) DEFAULT NULL,
  `publishers_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `reviews`
--

INSERT INTO `reviews` (`id`, `category`, `rating`, `commentary`, `users_id`, `books_id`, `lendings_id`, `authors_id`, `publishers_id`) VALUES
(1, 'Buch', 5, 'War ganz ok. Würde es als nicht sehr spannend beschreiben.', 1, 5, NULL, NULL, NULL),
(2, 'Buch', 9, 'Wunderbares und spannendes Buch', 3, 12, NULL, NULL, NULL),
(3, 'Buch', 8, NULL, 7, 5, NULL, NULL, NULL),
(4, 'Buch', 7, 'Ganz tolles Buch. Wird zum Ende hin etwas langatmig', 9, 5, NULL, NULL, NULL),
(5, 'Buch', 8, NULL, 11, 11, NULL, NULL, NULL),
(6, 'Buch', 7, NULL, 11, 15, NULL, NULL, NULL),
(7, 'Autor', 10, 'Immer wieder tolle Bücher von ihm!', 8, NULL, NULL, 1, NULL),
(8, 'Autor', 8, 'Mag seinen Schreibstil sehr!', 3, NULL, NULL, 9, NULL),
(9, 'Autor', 4, 'Seine Charaktere sind immer sehr hölzern und die Erzählweise besteht fast nur aus Dialogen', 10, NULL, NULL, 13, NULL),
(10, 'Autor', 8, 'Immer wieder interessante Geschichten. Manchmal verwendet er zu viele Dialoge anstatt zu beschreiben.', 4, NULL, NULL, 13, NULL),
(11, 'Autor', 10, 'Tolle Geschichten, die zeitlos sind.', 5, NULL, NULL, 9, NULL),
(12, 'Verlag', 8, 'Tolle Bücher aus allen Genres', 1, NULL, NULL, NULL, 1),
(13, 'Verlag', 4, 'Schlechtes Lektorat bei vielen ihrer Bücher', 4, NULL, NULL, NULL, 2),
(14, 'Ausleihe', 10, 'Lief alles Super!', 5, NULL, 15, NULL, NULL),
(15, 'Ausleihe', 10, 'Danke! Alles prima! ', 3, NULL, 15, NULL, NULL),
(16, 'Ausleihe', 10, NULL, 11, NULL, 17, NULL, NULL),
(17, 'Ausleihe', 8, NULL, 9, NULL, NULL, 17, NULL),
(18, 'Buch', 10, NULL, 6, 3, NULL, NULL, NULL),
(19, 'Buch', 8, NULL, 10, 3, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `roles`
--

INSERT INTO `roles` (`id`, `role`) VALUES
(3, 'admin'),
(2, 'planner'),
(1, 'user');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `timeslots`
--

CREATE TABLE `timeslots` (
  `id` int(11) NOT NULL,
  `recurring` tinyint(1) NOT NULL,
  `weekday` enum('Montag','Dienstag','Mittwoch','Donnerstag','Freitag','Samstag','Sonntag') DEFAULT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `every_n_weeks` tinyint(3) UNSIGNED DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `timeslots`
--

INSERT INTO `timeslots` (`id`, `recurring`, `weekday`, `start_time`, `end_time`, `every_n_weeks`, `date`) VALUES
(1, 1, 'Montag', '18:00:00', '19:30:00', 1, NULL),
(2, 1, 'Dienstag', '16:00:00', '18:00:00', 2, NULL),
(3, 1, 'Mittwoch', '20:00:00', '21:00:00', 1, NULL),
(4, 1, 'Freitag', '12:00:00', '18:00:00', 2, NULL),
(5, 1, 'Samstag', '14:00:00', '16:00:00', 1, NULL),
(6, 1, 'Donnerstag', '18:00:00', '20:30:00', 1, NULL),
(7, 1, 'Sonntag', '13:00:00', '18:00:00', 1, NULL),
(8, 0, NULL, '16:00:00', '20:00:00', NULL, '2026-06-10'),
(9, 0, NULL, '14:00:00', '21:00:00', NULL, '2026-06-06'),
(10, 0, NULL, '18:00:00', '21:30:00', NULL, '2026-06-27'),
(11, 0, NULL, '18:00:00', '19:00:00', NULL, '2026-06-24'),
(12, 0, NULL, '20:00:00', '21:00:00', NULL, '2026-06-11'),
(13, 0, NULL, '16:00:00', '16:30:00', NULL, '2026-07-03'),
(14, 0, NULL, '20:00:00', '21:00:00', NULL, '2026-07-06'),
(15, 0, NULL, '18:00:00', '18:30:00', NULL, '2026-05-29'),
(16, 0, NULL, '13:00:00', '14:00:00', NULL, '2026-05-30'),
(17, 1, 'Freitag', '16:00:00', '18:30:00', 8, NULL),
(18, 0, NULL, '16:00:00', '16:30:00', NULL, '2026-02-17'),
(19, 0, NULL, '18:00:00', '18:30:00', NULL, '2026-01-06'),
(20, 0, NULL, '20:00:00', '21:00:00', NULL, '2026-04-14'),
(21, 0, NULL, '18:00:00', '18:30:00', NULL, '2025-12-02'),
(22, 0, NULL, '14:00:00', '14:30:00', NULL, '2026-02-18'),
(23, 0, NULL, '12:00:00', '12:30:00', NULL, '2025-07-16'),
(24, 0, NULL, '16:00:00', '16:30:00', NULL, '2025-07-02'),
(25, 0, NULL, '16:00:00', '16:30:00', NULL, '2025-11-11'),
(26, 0, NULL, '14:00:00', '14:30:00', NULL, '2026-05-04');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `timeslots_users`
--

CREATE TABLE `timeslots_users` (
  `timeslots_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `timeslots_users`
--

INSERT INTO `timeslots_users` (`timeslots_id`, `users_id`) VALUES
(1, 1),
(1, 12),
(2, 2),
(2, 8),
(3, 3),
(3, 8),
(4, 4),
(4, 9),
(4, 12),
(5, 5),
(5, 11),
(6, 6),
(6, 10),
(7, 4),
(7, 7);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `status` enum('Inaktiv','Aktiv','Gesperrt','Gelöscht') NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `status`, `password`) VALUES
(1, 'Albert', 'Andres', 'alber.andres@email.com', 'Inaktiv', 'äapwoijf2wf*e-/'),
(2, 'Beate', 'Benedikt', 'b.benedikt@email.com', 'Aktiv', 'äöaslkjfngm#äasölfjnmas'),
(3, 'Cora', 'Corrinth', 'c.corrinth@email.com', 'Aktiv', 's*dfsf#üsfsfe'),
(4, 'Dieter', 'Dirks', 'd.dirks@email.com', 'Aktiv', '+#asfdüö3f2q'),
(5, 'Edith', 'Engels', 'e.engels@email.com', 'Aktiv', 'slöäfjk90382'),
(6, 'Frederick', 'Ferdinand', 'f.ferdinand@email.com', 'Aktiv', 'fsf232w34f2'),
(7, 'Gertrud', 'Gerolsteiner', 'g.gerolsteiner@email.com', 'Aktiv', 'safa3w*/sf'),
(8, 'Hans', 'Herbert', 'h.herbert@email.com', 'Aktiv', 'fsa2345qy+#'),
(9, 'Inge', 'Innsbruck', 'i.innsbruck@email.com', 'Gesperrt', 'slakfjljsaf+'),
(10, 'Jannik', 'Jarmush', 'j.jarmush@email.com', 'Gelöscht', 'sffa3w24rt'),
(11, 'Kara', 'Klein', 'k.klein@email.com', 'Aktiv', 'sdf232f23f32'),
(12, 'Ludwig', 'Leistenschneider', 'l.leistenschneider@email.com', 'Aktiv', 'sdfsfd411');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `users_roles`
--

CREATE TABLE `users_roles` (
  `users_id` int(11) NOT NULL,
  `roles_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `users_roles`
--

INSERT INTO `users_roles` (`users_id`, `roles_id`) VALUES
(1, 1),
(2, 1),
(2, 3),
(3, 1),
(3, 3),
(4, 1),
(4, 2),
(5, 1),
(5, 2),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 2),
(12, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `wishes`
--

CREATE TABLE `wishes` (
  `id` int(11) NOT NULL,
  `status` enum('Offen','Erfüllt') NOT NULL,
  `users_id` int(11) NOT NULL,
  `books_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `wishes`
--

INSERT INTO `wishes` (`id`, `status`, `users_id`, `books_id`) VALUES
(1, 'Offen', 1, 2),
(2, 'Offen', 2, 3),
(3, 'Offen', 2, 4),
(5, 'Offen', 3, 5),
(6, 'Offen', 4, 6),
(7, 'Offen', 4, 10),
(8, 'Offen', 4, 12),
(10, 'Offen', 5, 5),
(11, 'Offen', 6, 9),
(13, 'Offen', 8, 14),
(4, 'Erfüllt', 2, 11),
(9, 'Erfüllt', 4, 7),
(12, 'Erfüllt', 7, 9);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `countries_id` (`countries_id`),
  ADD KEY `locations_id` (`locations_id`);

--
-- Indizes für die Tabelle `addresses_users`
--
ALTER TABLE `addresses_users`
  ADD PRIMARY KEY (`addresses_id`,`users_id`),
  ADD KEY `users_id` (`users_id`);

--
-- Indizes für die Tabelle `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `countries_id` (`countries_id`) USING BTREE;

--
-- Indizes für die Tabelle `authors_books`
--
ALTER TABLE `authors_books`
  ADD PRIMARY KEY (`authors_id`,`books_id`),
  ADD KEY `books_id` (`books_id`);

--
-- Indizes für die Tabelle `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `isbn` (`isbn`),
  ADD KEY `languages_id` (`languages_id`);

--
-- Indizes für die Tabelle `books_publishers`
--
ALTER TABLE `books_publishers`
  ADD PRIMARY KEY (`books_id`,`publishers_id`),
  ADD KEY `publishers_id` (`publishers_id`);

--
-- Indizes für die Tabelle `book_objects`
--
ALTER TABLE `book_objects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `books_id` (`books_id`);

--
-- Indizes für die Tabelle `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indizes für die Tabelle `deliveries`
--
ALTER TABLE `deliveries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lendings_id` (`lendings_id`),
  ADD KEY `addresses_id` (`addresses_id`);

--
-- Indizes für die Tabelle `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indizes für die Tabelle `handovers`
--
ALTER TABLE `handovers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `timeslots_id` (`timeslots_id`),
  ADD KEY `lendings_id` (`lendings_id`),
  ADD KEY `addresses_id` (`addresses_id`);

--
-- Indizes für die Tabelle `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indizes für die Tabelle `lendings`
--
ALTER TABLE `lendings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `book_objects_id` (`book_objects_id`);

--
-- Indizes für die Tabelle `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indizes für die Tabelle `meetings`
--
ALTER TABLE `meetings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_id` (`addresses_id`),
  ADD KEY `timeslots_id` (`timeslots_id`);

--
-- Indizes für die Tabelle `meetings_users`
--
ALTER TABLE `meetings_users`
  ADD PRIMARY KEY (`meetings_id`,`users_id`),
  ADD KEY `users_id` (`users_id`);

--
-- Indizes für die Tabelle `publishers`
--
ALTER TABLE `publishers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `countries_id` (`countries_id`);

--
-- Indizes für die Tabelle `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `books_id` (`books_id`),
  ADD KEY `lendings_id` (`lendings_id`),
  ADD KEY `authors_id` (`authors_id`),
  ADD KEY `publishers_id` (`publishers_id`);

--
-- Indizes für die Tabelle `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `role` (`role`);

--
-- Indizes für die Tabelle `timeslots`
--
ALTER TABLE `timeslots`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `timeslots_users`
--
ALTER TABLE `timeslots_users`
  ADD PRIMARY KEY (`timeslots_id`,`users_id`),
  ADD KEY `users_id` (`users_id`);

--
-- Indizes für die Tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `users_roles`
--
ALTER TABLE `users_roles`
  ADD PRIMARY KEY (`users_id`,`roles_id`),
  ADD KEY `roles_id` (`roles_id`);

--
-- Indizes für die Tabelle `wishes`
--
ALTER TABLE `wishes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `status` (`status`,`users_id`,`books_id`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `books_id` (`books_id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT für Tabelle `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT für Tabelle `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT für Tabelle `book_objects`
--
ALTER TABLE `book_objects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT für Tabelle `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT für Tabelle `deliveries`
--
ALTER TABLE `deliveries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT für Tabelle `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT für Tabelle `handovers`
--
ALTER TABLE `handovers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT für Tabelle `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT für Tabelle `lendings`
--
ALTER TABLE `lendings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT für Tabelle `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT für Tabelle `meetings`
--
ALTER TABLE `meetings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT für Tabelle `publishers`
--
ALTER TABLE `publishers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT für Tabelle `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT für Tabelle `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT für Tabelle `timeslots`
--
ALTER TABLE `timeslots`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT für Tabelle `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT für Tabelle `wishes`
--
ALTER TABLE `wishes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_ibfk_1` FOREIGN KEY (`countries_id`) REFERENCES `countries` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `addresses_ibfk_2` FOREIGN KEY (`locations_id`) REFERENCES `locations` (`id`) ON UPDATE CASCADE;

--
-- Constraints der Tabelle `addresses_users`
--
ALTER TABLE `addresses_users`
  ADD CONSTRAINT `addresses_users_ibfk_1` FOREIGN KEY (`addresses_id`) REFERENCES `addresses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `addresses_users_ibfk_2` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints der Tabelle `authors`
--
ALTER TABLE `authors`
  ADD CONSTRAINT `authors_ibfk_1` FOREIGN KEY (`countries_id`) REFERENCES `countries` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints der Tabelle `authors_books`
--
ALTER TABLE `authors_books`
  ADD CONSTRAINT `authors_books_ibfk_1` FOREIGN KEY (`authors_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `authors_books_ibfk_2` FOREIGN KEY (`books_id`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints der Tabelle `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`languages_id`) REFERENCES `languages` (`id`) ON UPDATE CASCADE;

--
-- Constraints der Tabelle `books_publishers`
--
ALTER TABLE `books_publishers`
  ADD CONSTRAINT `books_publishers_ibfk_1` FOREIGN KEY (`books_id`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `books_publishers_ibfk_2` FOREIGN KEY (`publishers_id`) REFERENCES `publishers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints der Tabelle `book_objects`
--
ALTER TABLE `book_objects`
  ADD CONSTRAINT `book_objects_ibfk_1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `book_objects_ibfk_2` FOREIGN KEY (`books_id`) REFERENCES `books` (`id`) ON UPDATE CASCADE;

--
-- Constraints der Tabelle `deliveries`
--
ALTER TABLE `deliveries`
  ADD CONSTRAINT `deliveries_ibfk_1` FOREIGN KEY (`lendings_id`) REFERENCES `lendings` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `deliveries_ibfk_2` FOREIGN KEY (`addresses_id`) REFERENCES `addresses` (`id`) ON UPDATE CASCADE;

--
-- Constraints der Tabelle `handovers`
--
ALTER TABLE `handovers`
  ADD CONSTRAINT `handovers_ibfk_1` FOREIGN KEY (`timeslots_id`) REFERENCES `timeslots` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `handovers_ibfk_2` FOREIGN KEY (`lendings_id`) REFERENCES `lendings` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `handovers_ibfk_3` FOREIGN KEY (`addresses_id`) REFERENCES `addresses` (`id`) ON UPDATE CASCADE;

--
-- Constraints der Tabelle `lendings`
--
ALTER TABLE `lendings`
  ADD CONSTRAINT `lendings_ibfk_1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `lendings_ibfk_2` FOREIGN KEY (`book_objects_id`) REFERENCES `book_objects` (`id`) ON UPDATE CASCADE;

--
-- Constraints der Tabelle `meetings`
--
ALTER TABLE `meetings`
  ADD CONSTRAINT `meetings_ibfk_1` FOREIGN KEY (`addresses_id`) REFERENCES `addresses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `meetings_ibfk_2` FOREIGN KEY (`timeslots_id`) REFERENCES `timeslots` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints der Tabelle `meetings_users`
--
ALTER TABLE `meetings_users`
  ADD CONSTRAINT `meetings_users_ibfk_1` FOREIGN KEY (`meetings_id`) REFERENCES `meetings` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `meetings_users_ibfk_2` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints der Tabelle `publishers`
--
ALTER TABLE `publishers`
  ADD CONSTRAINT `publishers_ibfk_1` FOREIGN KEY (`countries_id`) REFERENCES `countries` (`id`) ON UPDATE CASCADE;

--
-- Constraints der Tabelle `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`books_id`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reviews_ibfk_3` FOREIGN KEY (`lendings_id`) REFERENCES `lendings` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reviews_ibfk_4` FOREIGN KEY (`authors_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reviews_ibfk_5` FOREIGN KEY (`publishers_id`) REFERENCES `publishers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints der Tabelle `timeslots_users`
--
ALTER TABLE `timeslots_users`
  ADD CONSTRAINT `timeslots_users_ibfk_1` FOREIGN KEY (`timeslots_id`) REFERENCES `timeslots` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `timeslots_users_ibfk_2` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints der Tabelle `users_roles`
--
ALTER TABLE `users_roles`
  ADD CONSTRAINT `users_roles_ibfk_1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `users_roles_ibfk_2` FOREIGN KEY (`roles_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints der Tabelle `wishes`
--
ALTER TABLE `wishes`
  ADD CONSTRAINT `wishes_ibfk_1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `wishes_ibfk_2` FOREIGN KEY (`books_id`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
