-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 26, 2023 at 06:33 PM
-- Server version: 5.7.42-0ubuntu0.18.04.1
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dnd`
--

-- --------------------------------------------------------

--
-- Table structure for table `alignment`
--

CREATE TABLE `alignment` (
  `align` varchar(35) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alignment`
--

INSERT INTO `alignment` (`align`, `id`) VALUES
('Lawful Good', 1),
('Borderline Good', 2),
('Chaotic Good', 3),
('Lawful Neutral', 4),
('True Neutral', 5),
('Chaotic Neutral', 6),
('Lawful Evil', 7),
('Borderline Evil', 8),
('Chaotic Evil', 9);

-- --------------------------------------------------------

--
-- Table structure for table `characters`
--

CREATE TABLE `characters` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `alignment` varchar(100) NOT NULL,
  `extroversion` varchar(100) NOT NULL,
  `generation` varchar(100) NOT NULL,
  `judging` varchar(100) NOT NULL,
  `morality` varchar(100) NOT NULL,
  `planning` varchar(100) NOT NULL,
  `sensing` varchar(100) NOT NULL,
  `sex` varchar(100) NOT NULL,
  `race` varchar(20) DEFAULT NULL,
  `class` varchar(255) NOT NULL,
  `guild` varchar(20) DEFAULT NULL,
  `profession` varchar(155) DEFAULT NULL,
  `rumor` varchar(500) NOT NULL,
  `URL` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `characters`
--

INSERT INTO `characters` (`id`, `name`, `alignment`, `extroversion`, `generation`, `judging`, `morality`, `planning`, `sensing`, `sex`, `race`, `class`, `guild`, `profession`, `rumor`, `URL`) VALUES
(1, 'Verten Rikad', 'Lawful Neutral', '(E) Strong Extroversion', 'Late Civic', '(F) Strong Feeler', 'Universal Respect', '(P) Prefers spontaneity', '(N) Extremely Intuitive', 'Female', 'Vedalken', 'Wizard', 'Boros Legion', 'Furrier', '', 'https://silvermere.org/characters/generator/Verten-Rikad.php'),
(2, 'Kharus Silverhoof', 'Borderline Evil', '(I) Mild Introversion', 'Early Civic', '(T) Strong Thinker', 'Universal Respect', '(J) Moderate planner', '(N) Extremely Intuitive', 'Male', 'Minotaur', 'Warlock', 'Simic Conclave', 'Guard', '', 'https://silvermere.org/characters/generator/Kharus-Silverhoof.php'),
(3, 'Sirran Voxidat', 'Borderline Evil', 'Balanced', 'Core Nomad', '(T) Slight Thinker', 'Blind Egoism', '(J) Moderate planner', '(S) Detail Obsessed', 'Female', 'Loxodon', 'Wizard', 'Simic Conclave', 'Guard', '', 'https://silvermere.org/characters/generator/Sirran-Voxidat.php'),
(4, 'Lilith Derros', 'Chaotic Neutral', '(I) Mild Introversion', 'Late Civic', '(T) Thinker', 'Social Systems Perspective', '(J) Moderate planner', '(S) Slightly Detailed', 'Female', 'Elf', 'Wizard', 'Orzhov Syndicate', 'Fighting pit ringmaster', '', 'https://silvermere.org/characters/generator/Lilith-Derros.php'),
(5, 'Siras Moonleaf', 'True Neutral', '(I) Mild Introversion', 'Core Civic', '(F) Slight Feeler', 'Social Relationships Perspective', '(J) Meticulous planner', '(N) Moderately Intuitive', 'Female', 'Elf', 'Wizard', 'Simic Conclave', 'Philosophers', '', 'https://silvermere.org/characters/generator/Siras-Moonleaf.php'),
(6, 'Sivara Darkbloom', 'Borderline Evil', '(I) Extreme Introversion', 'Late Nomad', '(F) Strong Feeler', 'Contractual Perspective', '(P) Lives in the moment', '(N) Slightly Intuitive', 'Female', 'Elf', 'Warlock', 'Golgari Swarm', 'Beggar', '', 'https://silvermere.org/characters/generator/Sivara-Darkbloom.php'),
(21, 'Barris Swapp', 'Chaotic Neutral', 'Balanced', 'Core Nomad', '(T) Strong Thinker', 'Universal Respect', '(J) Prefers a plan', '(S) Detail Oriented', 'Female', 'Human', 'Warlock', 'Golgari Swarm', 'Chimney Sweeps', '', 'https://silvermere.org/characters/generator/Barris-Swapp.php'),
(12, 'Gorrel Broad-Tusk', 'Lawful Good', '(I) Extreme Introversion', 'Core Prophet', '(F) Slight Feeler', 'Instrumental Egoism', '(J) Moderate planner', '(N) Moderately Intuitive', 'Female', 'Loxodon', 'Druid', 'Golgari Swarm', 'Madhouse caretakers', '', 'https://silvermere.org/characters/generator/Gorrel-Broad-Tusk.php'),
(13, 'Barad Steelhoof', 'Chaotic Evil', '(E) Mild Extroversion', 'Core Prophet', '(F) Feeler', 'Blind Egoism', '(P) Lives in the moment', '(N) Slightly Intuitive', 'Male', 'Minotaur', 'Barbarian', 'Golgari Swarm', 'Mudlark/scavenger', '', 'https://silvermere.org/characters/generator/Barad-Steelhoof.php'),
(14, 'Tarris Kos', 'Chaotic Evil', '(E) Extroverted', 'Late Artist', '(T) Thinker', 'Social Relationships Perspective', 'Balanced', '(S) Detail Oriented', 'Male', 'Human', 'Monk', 'Boros Legion', 'Master of Ceremony', '', 'https://silvermere.org/characters/generator/Tarris-Kos.php'),
(15, 'Jarus Diranis', 'Lawful Good', '(I) Mild Introversion', 'Late Prophet', '(F) Feeler', 'Social Systems Perspective', '(P) Prefers spontaneity', '(N) Slightly Intuitive', 'Male', 'Human', 'Ranger', 'Orzhov Syndicate', 'Alchemist', '', 'https://silvermere.org/characters/generator/Jarus-Diranis.php'),
(16, 'Teizzy Terenizonix', 'Chaotic Evil', 'Extreme extroversion', 'Nomad', 'Moderate Feeler', 'Social systems perspective', 'Strong Perceiver', 'Detail oriented', 'Female', 'Goblin', 'Wizard', 'Rakdos', 'Performer (music)', '', 'https://silvermere.org/characters/generator/Teizzy-Terenizonix.php'),
(17, 'Visarin Blackleaf', 'Borderline Evil', '(E) Strong Extroversion', 'Late Civic', '(T) Slight Thinker', 'Instrumental Egoism', '(J) Moderate planner', 'Balanced', 'Male', 'Elf', 'Druid', 'Orzhov Syndicate', 'Advisors/sages', '', 'https://silvermere.org/characters/generator/Visarin-Blackleaf.php'),
(18, 'SerptentType 37WX', 'Borderline Evil', '(E) Strong Extroversion', 'Late Prophet', '(T) Strong Thinker', 'Blind Egoism', '(P) Totally random', '(N) Moderately Intuitive', 'Male', 'Simic hybrid', 'Wizard', 'Cult of Rakdos', 'Spinster', '', 'https://silvermere.org/characters/generator/SerptentType-37WX.php'),
(19, 'Teserrin Soulfeeder', 'Lawful Evil', '(E) Extroverted', 'Early Artist', '(T) Thinker', 'Instrumental Egoism', '(J) Meticulous planner', '(S) Slightly Detailed', 'Male', 'Simic hybrid', 'Warlock', 'House Dimir', 'Philosophers', '', 'https://silvermere.org/characters/generator/Teserrin-Soulfeeder.php'),
(20, 'Dyfnier Sunbow', 'Chaotic Neutral', '(I) Mild Introversion', 'Core Civic', '(F) Feeler', 'Contractual Perspective', '(J) Moderate planner', '(S) Detail Oriented', 'Female', 'Elf', 'Druid', 'Azorius Senate', 'Priests', '', 'https://silvermere.org/characters/generator/Dyfnier-Sunbow.php'),
(22, 'Athish Elliv', 'Lawful Good', '(E) Strong Extroversion', 'Late Nomad', '(T) Thinker', 'Universal Respect', '(J) Meticulous planner', '(S) Slightly Detailed', 'Female', 'Vedalken', 'Monk', 'Selesnya Conclave', 'Diviner/Oracle', '', 'https://silvermere.org/characters/generator/Athish-Elliv.php'),
(23, 'Rom Ak-sha', 'Borderline Evil', '(E) Extroverted', 'Core Civic', '(F) Strong Feeler', 'Contractual Perspective', '(J) Meticulous planner', 'Balanced', 'Male', 'Centaur', 'Ranger', 'Simic Conclave', 'Cartographer', '', 'https://silvermere.org/characters/generator/Rom-Ak-sha.php'),
(24, 'Hirrick Longfeather', 'Lawful Good', '(I) Mild Introversion', 'Early Nomad', '(T) Thinker', 'Blind Egoism', '(P) Totally random', '(N) Extremely Intuitive', 'Male', 'Elf', 'Fighter', 'Gruul Clans', 'Caravansary/traveling merchant', '', 'https://silvermere.org/characters/generator/Hirrick-Longfeather.php'),
(25, 'Brund Pinion', 'Lawful Good', '(E) Strong Extroversion', 'Late Nomad', '(T) Thinker', 'Social Relationships Perspective', '(P) Prefers spontaneity', '(N) Extremely Intuitive', 'Male', 'Human', 'Rogue', 'Gruul Clans', 'Fighting pit ringmaster', '', 'https://silvermere.org/characters/generator/Brund-Pinion.php'),
(26, 'Luraliath Darkstitch', 'Borderline Evil', '(I) Introverted', 'Core Prophet', '(F) Feeler', 'Instrumental Egoism', '(P) Totally random', '(S) Detail Obsessed', 'Female', 'Elf', 'Warlock', 'Cult of Rakdos', 'Seamstress/tailor', '', 'https://silvermere.org/characters/generator/Luraliath-Darkstitch.php'),
(27, 'Nira Brinner', 'Chaotic Evil', '(E) Strong Extroversion', 'Early Nomad', '(T) Strong Thinker', 'Social Relationships Perspective', '(P) Lives in the moment', 'Balanced', 'Female', 'Human', 'Sorcerer', 'House Dimir', 'Tavern/Inn keeper', '', 'https://silvermere.org/characters/generator/Nira-Brinner.php'),
(28, 'Garong Gombek', 'Chaotic Neutral', '(I) Mild Introversion', 'Early Artist', '(T) Thinker', 'Instrumental Egoism', 'Balanced', '(N) Extremely Intuitive', 'Male', 'Minotaur', 'Monk', 'Cult of Rakdos', 'Washer', '', 'https://silvermere.org/characters/generator/Garong-Gombek.php'),
(29, 'Zivania Kubin', 'Chaotic Evil', '(E) Mild Extroversion', 'Core Prophet', 'Balanced', 'Blind Egoism', '(J) Meticulous planner', '(S) Detail Obsessed', 'Female', 'Human', 'Barbarian', 'Selesnya Conclave', 'Stablehand', '', 'https://silvermere.org/characters/generator/Zivania-Kubin.php'),
(30, 'Grozzix Mixinor', 'Borderline Good', '(E) Mild Extroversion', 'Late Artist', '(F) Strong Feeler', 'Instrumental Egoism', '(P) Prefers spontaneity', '(N) Moderately Intuitive', 'Male', 'Goblin', 'Bard', 'Selesnya Conclave', 'Fighting pit ringmaster', '', 'https://silvermere.org/characters/generator/Grozzix-Mixinor.php'),
(31, 'Heveren Swain', 'Lawful Evil', '(I) Mild Introversion', 'Early Nomad', 'Balanced', 'Instrumental Egoism', '(P) Totally random', '(S) Detail Obsessed', 'Male', 'Vedalken', 'Barbarian', 'Simic Conclave', 'Wainwright', '', 'https://silvermere.org/characters/generator/Heveren-Swain.php'),
(32, 'Tandui Esclark', 'Lawful Neutral', '(I) Extreme Introversion', 'Core Civic', '(T) Strong Thinker', 'Instrumental Egoism', '(P) Totally random', '(S) Slightly Detailed', 'Female', 'Loxodon', 'Rogue', 'Selesnya Conclave', 'Cartographer', '', 'https://silvermere.org/characters/generator/Tandui-Esclark.php'),
(33, 'Danurian Gromzlit', 'Lawful Good', '(E) Extroverted', 'Core Artist', '(T) Strong Thinker', 'Contractual Perspective', 'Balanced', '(N) Slightly Intuitive', 'Male', 'Centaur', 'Cleric', 'Orzhov Syndicate', 'Courier/messenger', '', 'https://silvermere.org/characters/generator/Danurian-Gromzlit.php'),
(35, 'Tarnov Prevenz', 'Borderline Good', '(E) Mild Extroversion', 'Early Civic', '(T) Strong Thinker', 'Blind Egoism', '(P) Lives in the moment', '(S) Slightly Detailed', 'Male', 'Vedalken', 'Bard', 'Orzhov Syndicate', 'Store Keeper', '', 'https://silvermere.org/characters/generator/Tarnov-Prevenz.php'),
(36, 'Nythas Eulani', 'True Neutral', '(E) Strong Extroversion', 'Late Nomad', 'Balanced', 'Universal Respect', '(P) Lives in the moment', '(N) Moderately Intuitive', 'Male', 'Elf', 'Warlock', 'Simic Conclave', 'Grave digger', '', 'https://silvermere.org/characters/generator/Nythas-Eulani.php'),
(38, 'Thomas Buren', 'Lawful Evil', '(E) Extroverted', 'Core Nomad', '(T) Thinker', 'Blind Egoism', '(J) Prefers a plan', 'Balanced', 'Male', 'Human', 'Paladin', 'Boros Legion', 'Caravansary/traveling merchant', '', 'https://silvermere.org/characters/generator/Thomas-Buren.php'),
(39, 'Drevlov ', 'Lawful Good', 'Balanced', 'Early Civic', 'Balanced', 'Instrumental Egoism', 'Balanced', '(S) Detail Obsessed', 'Male', 'Vedalken', 'Barbarian', 'Boros Legion', 'Chimney Sweeps', '', 'https://silvermere.org/characters/generator/Drevlov-.php'),
(40, 'Jennara Farres', 'Chaotic Neutral', '(E) Extroverted', 'Early Civic', '(T) Slight Thinker', 'Social Systems Perspective', '(J) Meticulous planner', '(N) Moderately Intuitive', 'Female', 'Human', 'Sorcerer', 'Azorius Senate', 'Soldiers/generals', '', 'https://silvermere.org/characters/generator/Jennara-Farres.php'),
(41, 'Fizzlerik Dazzlerop', 'Chaotic Evil', 'Balanced', 'Late Nomad', '(F) Feeler', 'Social Relationships Perspective', '(J) Moderate planner', '(S) Detail Obsessed', 'Male', 'Goblin', 'Bard', 'Golgari Swarm', 'Carpenter/wood worker', '', 'https://silvermere.org/characters/generator/Fizzlerik-Dazzlerop.php'),
(42, 'Rinnis Ternozzak', 'Chaotic Evil', 'Balanced', 'Early Prophet', '(F) Feeler', 'Contractual Perspective', 'Balanced', '(S) Slightly Detailed', 'Male', 'Goblin', 'Druid', 'Azorius Senate', 'Barber', '', 'https://silvermere.org/characters/generator/Rinnis-Ternozzak.php'),
(43, 'Duren Fong', 'Borderline Evil', '(E) Strong Extroversion', 'Core Civic', '(T) Thinker', 'Instrumental Egoism', '(P) Totally random', '(S) Slightly Detailed', 'Male', 'Human', 'Monk', 'Orzhov Syndicate', 'Thatchers/roofers', '', 'https://silvermere.org/characters/generator/Duren-Fong.php'),
(44, 'Firrin Darrow', 'Lawful Evil', '(I) Mild Introversion', 'Early Artist', '(F) Slight Feeler', 'Social Relationships Perspective', '(J) Prefers a plan', '(S) Slightly Detailed', 'Male', 'Elf', 'Barbarian', 'Golgari Swarm', 'Jailer', '', 'https://silvermere.org/characters/generator/Firrin-Darrow.php'),
(45, 'Jeffis Longleaf', 'Lawful Neutral', '(E) Mild Extroversion', 'Early Nomad', '(T) Slight Thinker', 'Universal Respect', '(P) Totally random', '(S) Detail Oriented', 'Male', 'Elf', 'Wizard', 'Izzet League', 'Knight', '', 'https://silvermere.org/characters/generator/Jeffis-Longleaf.php'),
(46, 'Nyran Jaress', 'Lawful Good', 'Balanced', 'Early Artist', '(T) Slight Thinker', 'Instrumental Egoism', '(J) Prefers a plan', '(S) Detail Obsessed', 'Female', 'Centaur', 'Warlock', 'Izzet League', 'Pawn shop owner', '', 'https://silvermere.org/characters/generator/Nyran-Jaress.php'),
(47, 'Florrix Dazzarap', 'Chaotic Neutral', 'Balanced', 'Early Civic', '(F) Slight Feeler', 'Instrumental Egoism', '(J) Moderate planner', '(N) Slightly Intuitive', 'Male', 'Goblin', 'Cleric', 'Azorius Senate', 'Florist (cart)', '', 'https://silvermere.org/characters/generator/Florrix-Dazzarap.php'),
(48, 'Gheran Deharis', 'Lawful Neutral', '(E) Strong Extroversion', 'Core Prophet', '(T) Strong Thinker', 'Social Relationships Perspective', '(J) Prefers a plan', '(S) Slightly Detailed', 'Female', 'Vedalken', 'Ranger', 'Golgari Swarm', 'Chimney Sweeps', '', 'https://silvermere.org/characters/generator/Gheran-Deharis.php'),
(49, 'Eezvatil Druz', 'Lawful Neutral', '(I) Mild Introversion', 'Late Artist', '(T) Thinker', 'Universal Respect', '(P) Prefers spontaneity', 'Balanced', 'Female', 'Goblin', 'Paladin', 'Azorius Senate', 'Smoke shop tobacconist', '', 'https://silvermere.org/characters/generator/Eezvatil-Druz.php'),
(50, 'Hargira Thunderhorn', 'True Neutral', '(E) Mild Extroversion', 'Late Artist', '(T) Slight Thinker', 'Contractual Perspective', '(J) Meticulous planner', '(S) Detail Oriented', 'Female', 'Minotaur', 'Barbarian', 'Gruul Clans', 'Knight', '', 'https://silvermere.org/characters/generator/Hargira-Thunderhorn.php'),
(51, 'Azzixia Trisk', 'Lawful Neutral', '(I) Extreme Introversion', 'Core Artist', '(T) Slight Thinker', 'Blind Egoism', 'Balanced', '(S) Detail Oriented', 'Female', 'Simic hybrid', 'Wizard', 'Izzet League', 'Baron', '', 'https://silvermere.org/characters/generator/Azzixia-Trisk.php'),
(52, 'Deiyen Paine', 'Borderline Evil', '(E) Mild Extroversion', 'Early Artist', '(F) Feeler', 'Social Relationships Perspective', '(P) Prefers spontaneity', '(S) Detail Oriented', 'Male', 'Centaur', 'Warlock', 'Gruul Clans', 'Librarian', '', 'https://silvermere.org/characters/generator/Deiyen-Paine.php'),
(54, 'Travir Daylos', 'Borderline Good', '(I) Mild Introversion', 'Core Civic', '(F) Slight Feeler', 'Universal Respect', '(J) Moderate planner', '(S) Slightly Detailed', 'Male', 'Elf', 'Rogue', 'Azorius Senate', 'Duke', '', 'https://silvermere.org/characters/generator/Travir-Daylos.php'),
(55, 'Sivaris Lanos', 'Chaotic Good', '(I) Mild Introversion', 'Core Prophet', '(T) Strong Thinker', 'Contractual Perspective', '(P) Prefers spontaneity', '(N) Extremely Intuitive', 'Female', 'Simic hybrid', 'Bard', 'Orzhov Syndicate', 'Fighting pit ringmaster', '', 'https://silvermere.org/characters/generator/Sivaris-Lanos.php'),
(56, 'Konis Jakkenturr', 'Lawful Good', 'Balanced', 'Core Prophet', '(T) Thinker', 'Contractual Perspective', '(J) Prefers a plan', '(N) Slightly Intuitive', 'Female', 'Centaur', 'Warlock', 'Selesnya Conclave', 'Smith (tin, silver)', '', 'https://silvermere.org/characters/generator/Konis-Jakkenturr.php'),
(57, 'Triniax Grazzelop', 'Lawful Evil', '(E) Extroverted', 'Late Nomad', '(T) Slight Thinker', 'Contractual Perspective', '(P) Totally random', '(S) Detail Oriented', 'Female', 'Goblin', 'Bard', 'Gruul Clans', 'Washer', '', 'https://silvermere.org/characters/generator/Triniax-Grazzelop.php'),
(58, 'Krul Freighten', 'Lawful Good', '(E) Mild Extroversion', 'Core Artist', '(F) Feeler', 'Social Relationships Perspective', '(P) Lives in the moment', 'Balanced', 'Male', 'Minotaur', 'Fighter', 'House Dimir', 'Carriage driver', '', 'https://silvermere.org/characters/generator/Krul-Freighten.php'),
(59, 'Brin Giovan', 'Chaotic Good', 'Balanced', 'Early Artist', '(T) Strong Thinker', 'Contractual Perspective', '(P) Lives in the moment', '(N) Moderately Intuitive', 'Female', 'Human', 'Wizard', 'Izzet League', 'Jeweler', '', 'https://silvermere.org/characters/generator/Brin-Giovan.php'),
(60, 'Sia Farren', 'Lawful Good', '(I) Mild Introversion', 'Early Nomad', '(F) Strong Feeler', 'Blind Egoism', '(J) Prefers a plan', '(N) Extremely Intuitive', 'Female', 'Simic hybrid', 'Sorcerer', 'Orzhov Syndicate', 'Rope maker', '', 'https://silvermere.org/characters/generator/Sia-Farren.php'),
(61, 'Genris Lissian', 'Lawful Neutral', '(I) Introverted', 'Early Prophet', '(F) Feeler', 'Social Relationships Perspective', '(P) Prefers spontaneity', '(N) Moderately Intuitive', 'Female', 'Elf', 'Paladin', 'Cult of Rakdos', 'Miner (copper)', '', 'https://silvermere.org/characters/generator/Genris-Lissian.php'),
(62, 'Syvarias Duntarras', 'True Neutral', 'Balanced', 'Early Artist', '(T) Thinker', 'Blind Egoism', '(J) Moderate planner', 'Balanced', 'Female', 'Centaur', 'Rogue', 'Boros Legion', 'Lector', '', 'https://silvermere.org/characters/generator/Syvarias-Duntarras.php'),
(63, 'Tyolus Yivvidick', 'Borderline Evil', '(I) Introverted', 'Early Nomad', '(T) Slight Thinker', 'Social Systems Perspective', '(P) Lives in the moment', '(S) Detail Oriented', 'Male', 'Vedalken', 'Bard', 'Izzet League', 'Fletcher', '', 'https://silvermere.org/characters/generator/Tyolus-Yivvidick.php'),
(64, 'Jari Hyvan', 'Lawful Evil', '(I) Introverted', 'Core Artist', '(T) Strong Thinker', 'Blind Egoism', '(P) Lives in the moment', '(N) Slightly Intuitive', 'Female', 'Elf', 'Paladin', 'Gruul Clans', 'Criminal, theif, lookout', '', 'https://silvermere.org/characters/generator/Jari-Hyvan.php'),
(65, 'Avish Rivis', 'Chaotic Good', '(E) Extroverted', 'Early Prophet', '(T) Strong Thinker', 'Social Relationships Perspective', '(J) Meticulous planner', '(S) Slightly Detailed', 'Female', 'Human', 'Cleric', 'Golgari Swarm', 'Smith (tin, silver)', '', 'https://silvermere.org/characters/generator/Avish-Rivis.php'),
(66, 'Daeriana Nivvosi', 'Chaotic Good', '(I) Mild Introversion', 'Core Prophet', '(F) Slight Feeler', 'Blind Egoism', 'Balanced', '(N) Moderately Intuitive', 'Female', 'Elf', 'Paladin', 'House Dimir', 'Florist (cart)', '', 'https://silvermere.org/characters/generator/Daeriana-Nivvosi.php'),
(67, 'Trinnis DeQuanos', 'Lawful Neutral', '(E) Mild Extroversion', 'Core Civic', '(T) Thinker', 'Blind Egoism', '(P) Prefers spontaneity', '(N) Extremely Intuitive', 'Female', 'Elf', 'Ranger', 'Gruul Clans', 'Diviner/Oracle', '', 'https://silvermere.org/characters/generator/Trinnis-DeQuanos.php'),
(68, 'Vera Rance', 'Borderline Good', 'Balanced', 'Late Prophet', '(F) Slight Feeler', 'Blind Egoism', '(P) Lives in the moment', '(S) Detail Obsessed', 'Female', 'Simic hybrid', 'Cleric', 'House Dimir', 'Council member', '', 'https://silvermere.org/characters/generator/Vera-Rance.php'),
(69, 'Meius Dorran', 'True Neutral', '(I) Mild Introversion', 'Early Nomad', '(T) Thinker', 'Social Relationships Perspective', '(J) Meticulous planner', '(S) Detail Obsessed', 'Male', 'Simic hybrid', 'Barbarian', 'House Dimir', 'Magic merchant', '', 'https://silvermere.org/characters/generator/Meius-Dorran.php'),
(71, 'Faura Stonehoof', 'True Neutral', '(I) Extreme Introversion', 'Core Prophet', '(F) Strong Feeler', 'Social Systems Perspective', '(P) Lives in the moment', '(N) Extremely Intuitive', 'Female', 'Minotaur', 'Wizard', 'Simic Conclave', 'Master of Ceremony', '', 'https://silvermere.org/characters/generator/Faura-Stonehoof.php'),
(72, 'Faeris Silverleaf', 'True Neutral', '(I) Introverted', 'Core Nomad', '(T) Strong Thinker', 'Social Relationships Perspective', '(P) Lives in the moment', '(S) Detail Oriented', 'Male', 'Elf', 'Ranger', 'Azorius Senate', 'Diviner/Oracle', '', 'https://silvermere.org/characters/generator/Faeris-Silverleaf.php'),
(73, 'Jayen Trissup', 'Borderline Good', '(I) Introverted', 'Core Nomad', '(T) Slight Thinker', 'Social Relationships Perspective', '(P) Lives in the moment', '(N) Moderately Intuitive', 'Male', 'Human', 'Druid', 'House Dimir', 'Street Cleaners', '', 'https://silvermere.org/characters/generator/Jayen-Trissup.php'),
(74, 'Garrun Stonehoof', 'Borderline Evil', 'Balanced', 'Core Artist', '(T) Strong Thinker', 'Social Relationships Perspective', '(J) Meticulous planner', '(N) Moderately Intuitive', 'Male', 'Minotaur', 'Paladin', 'Golgari Swarm', 'Pottery mason', '', 'https://silvermere.org/characters/generator/Garrun-Stonehoof.php'),
(75, 'Nihras Viansi', 'Borderline Good', 'Balanced', 'Core Nomad', '(T) Strong Thinker', 'Instrumental Egoism', '(P) Lives in the moment', '(S) Detail Oriented', 'Female', 'Elf', 'Ranger', 'Azorius Senate', 'Miner (gold)', '', 'https://silvermere.org/characters/generator/Nihras-Viansi.php'),
(76, 'Jael Masserra', 'Lawful Neutral', '(E) Extroverted', 'Early Civic', '(T) Slight Thinker', 'Instrumental Egoism', '(J) Meticulous planner', '(S) Detail Obsessed', 'Male', 'Human', 'Wizard', 'Cult of Rakdos', 'Bowyer', '', 'https://silvermere.org/characters/generator/Jael-Masserra.php'),
(77, 'Daura Kloris', 'Borderline Evil', '(I) Mild Introversion', 'Early Prophet', '(F) Slight Feeler', 'Universal Respect', '(P) Totally random', '(N) Slightly Intuitive', 'Female', 'Minotaur', 'Cleric', 'House Dimir', 'Lamp lighter', '', 'https://silvermere.org/characters/generator/Daura-Kloris.php'),
(78, 'Ujantu Torrize', 'Lawful Good', 'Balanced', 'Core Artist', '(F) Feeler', 'Social Systems Perspective', '(P) Prefers spontaneity', 'Balanced', 'Male', 'Vedalken', 'Sorcerer', 'Gruul Clans', 'Stable master/head groom', '', 'https://silvermere.org/characters/generator/Ujantu-Torrize.php'),
(80, 'Najan Vidati', 'Chaotic Good', '(I) Mild Introversion', 'Core Civic', '(T) Slight Thinker', 'Blind Egoism', '(P) Prefers spontaneity', 'Balanced', 'Female', 'Elf', 'Sorcerer', 'Simic Conclave', 'Furrier', '', 'https://silvermere.org/characters/generator/Najan-Vidati.php'),
(82, 'Gregory Daphnil', 'Chaotic Evil', '(E) Extroverted', 'Early Civic', '(T) Slight Thinker', 'Contractual Perspective', 'Balanced', '(S) Slightly Detailed', 'Male', 'Human', 'Ranger', 'Orzhov Syndicate', 'Caravansary/traveling merchant', '', 'https://silvermere.org/characters/generator/Gregory-Daphnil.php'),
(83, 'Larris Ziarra', 'Borderline Good', '(E) Mild Extroversion', 'Late Artist', '(F) Feeler', 'Contractual Perspective', '(J) Moderate planner', '(N) Extremely Intuitive', 'Male', 'Centaur', 'Bard', 'House Dimir', 'Tavern/Inn keeper', '', 'https://silvermere.org/characters/generator/Larris-Ziarra.php'),
(84, 'Genesa Dawnbringer', 'Lawful Evil', '(E) Mild Extroversion', 'Late Civic', '(F) Slight Feeler', 'Social Relationships Perspective', '(P) Lives in the moment', '(N) Extremely Intuitive', 'Female', 'Elf', 'Cleric', 'Izzet League', 'Cartographer', '', 'https://silvermere.org/characters/generator/Genesa-Dawnbringer.php'),
(85, 'Jenu Disav', 'Lawful Evil', '(E) Strong Extroversion', 'Core Prophet', '(T) Slight Thinker', 'Social Relationships Perspective', '(J) Meticulous planner', '(S) Detail Oriented', 'Female', 'Human', 'Rogue', 'Cult of Rakdos', 'Miner (gold)', '', 'https://silvermere.org/characters/generator/Jenu-Disav.php'),
(86, 'Frazzixia Huzzarix', 'Lawful Neutral', '(I) Mild Introversion', 'Early Nomad', '(F) Slight Feeler', 'Contractual Perspective', '(P) Prefers spontaneity', '(S) Detail Oriented', 'Female', 'Goblin', 'Cleric', 'Simic Conclave', 'Jailer', '', 'https://silvermere.org/characters/generator/Frazzixia-Huzzarix.php'),
(87, 'Dranyn Yvinta', 'Chaotic Neutral', '(I) Introverted', 'Core Nomad', 'Balanced', 'Social Systems Perspective', '(J) Meticulous planner', '(N) Slightly Intuitive', 'Female', 'Vedalken', 'Barbarian', 'Selesnya Conclave', 'Printer', '', 'https://silvermere.org/characters/generator/Dranyn-Yvinta.php'),
(88, 'Ilfara Levas', 'Chaotic Evil', '(I) Extreme Introversion', 'Core Prophet', '(T) Slight Thinker', 'Instrumental Egoism', 'Balanced', '(N) Moderately Intuitive', 'Female', 'Elf', 'Rogue', 'Cult of Rakdos', 'Lamp lighter', '', 'https://silvermere.org/characters/generator/Ilfara-Levas.php'),
(89, 'Ratok Rockfoot', 'Lawful Good', '(I) Introverted', 'Early Civic', '(T) Slight Thinker', 'Universal Respect', '(J) Prefers a plan', '(S) Slightly Detailed', 'Male', 'Minotaur', 'Druid', 'Boros Legion', 'Jailer', '', 'https://silvermere.org/characters/generator/Ratok-Rockfoot.php'),
(90, 'Lartua Gronk', 'Lawful Good', '(E) Mild Extroversion', 'Early Nomad', '(F) Slight Feeler', 'Social Systems Perspective', '(P) Totally random', '(N) Slightly Intuitive', 'Female', 'Minotaur', 'Druid', 'Cult of Rakdos', 'Lector', '', 'https://silvermere.org/characters/generator/Lartua-Gronk.php'),
(91, 'Dajir Virranis', 'Lawful Good', '(E) Strong Extroversion', 'Early Artist', '(F) Slight Feeler', 'Contractual Perspective', '(J) Meticulous planner', '(N) Slightly Intuitive', 'Male', 'Elf', 'Sorcerer', 'House Dimir', 'Advisors/sages', '', 'https://silvermere.org/characters/generator/Dajir-Virranis.php'),
(92, 'Lomik Bantar', 'Chaotic Neutral', '(E) Extroverted', 'Early Prophet', '(F) Slight Feeler', 'Instrumental Egoism', '(P) Prefers spontaneity', '(S) Detail Obsessed', 'Male', 'Human', 'Warlock', 'House Dimir', 'Beggar', '', 'https://silvermere.org/characters/generator/Lomik-Bantar.php'),
(93, 'Karrox Henterfil', 'Borderline Evil', '(E) Mild Extroversion', 'Late Prophet', '(F) Feeler', 'Social Systems Perspective', '(J) Prefers a plan', '(S) Slightly Detailed', 'Male', 'Centaur', 'Sorcerer', 'House Dimir', 'Grocer', '', 'https://silvermere.org/characters/generator/Karrox-Henterfil.php'),
(94, 'Daryn Turikas', 'Chaotic Good', '(E) Strong Extroversion', 'Core Prophet', '(T) Thinker', 'Social Relationships Perspective', '(P) Prefers spontaneity', '(N) Moderately Intuitive', 'Male', 'Human', 'Bard', 'Gruul Clans', 'Florist (cart)', '', 'https://silvermere.org/characters/generator/Daryn-Turikas.php'),
(95, 'Rivinia Silverleaf', 'Lawful Neutral', '(E) Strong Extroversion', 'Early Artist', '(T) Slight Thinker', 'Universal Respect', '(J) Moderate planner', '(S) Detail Obsessed', 'Female', 'Elf', 'Sorcerer', 'Cult of Rakdos', 'Apothecary/pharmacist', '', 'https://silvermere.org/characters/generator/Rivinia-Silverleaf.php'),
(97, 'Cyrrin Holfer', 'Lawful Good', '(E) Mild Extroversion', 'Early Artist', '(T) Strong Thinker', 'Social Systems Perspective', '(P) Lives in the moment', '(S) Detail Oriented', 'Male', 'Human', 'Cleric', 'Gruul Clans', 'Pottery mason', '', 'https://silvermere.org/characters/generator/Cyrrin-Holfer.php'),
(98, 'Mirra Delan', 'Lawful Evil', '(I) Extreme Introversion', 'Early Nomad', '(T) Slight Thinker', 'Instrumental Egoism', '(P) Prefers spontaneity', '(N) Slightly Intuitive', 'Female', 'Simic hybrid', 'Druid', 'House Dimir', 'Serf', '', 'https://silvermere.org/characters/generator/Mirra-Delan.php'),
(100, 'Kirraz Suraxxa', 'Borderline Evil', '(E) Mild Extroversion', 'Late Prophet', '(T) Strong Thinker', 'Contractual Perspective', '(J) Moderate planner', '(S) Detail Obsessed', 'Female', 'Goblin', 'Monk', 'House Dimir', 'Botanical Gardener', '', 'https://silvermere.org/characters/generator/Kirraz-Suraxxa.php'),
(101, 'Krenni Taroff', 'Chaotic Good', '(E) Mild Extroversion', 'Early Prophet', '(F) Strong Feeler', 'Social Relationships Perspective', '(J) Moderate planner', '(N) Moderately Intuitive', 'Female', 'Minotaur', 'Sorcerer', 'Gruul Clans', 'Guild master/member', '', 'https://silvermere.org/characters/generator/Krenni-Taroff.php'),
(103, 'Varas Trank', 'Borderline Good', '(I) Introverted', 'Core Prophet', '(T) Thinker', 'Blind Egoism', '(J) Meticulous planner', '(N) Slightly Intuitive', 'Male', 'Minotaur', 'Bard', 'House Dimir', 'Wainwright', '', 'https://silvermere.org/characters/generator/Varas-Trank.php'),
(105, 'Dagrath Nammick', 'Borderline Good', '(I) Mild Introversion', 'Early Prophet', '(T) Slight Thinker', 'Social Systems Perspective', '(P) Totally random', '(N) Moderately Intuitive', 'Male', 'Vedalken', 'Cleric', 'Boros Legion', 'Captain/Constable', 'Rakdos - Izzet: Unintended explosions keep on happening at every performance. Find the perpetrator and bring him to the ringleader. ', 'https://silvermere.org/characters/generator/Dagrath-Nammick.php'),
(106, 'Fravvix Bristleswoop', 'Chaotic Evil', '(I) Extreme Introversion', 'Core Artist', '(T) Thinker', 'Social Relationships Perspective', '(J) Moderate planner', '(N) Slightly Intuitive', 'Male', 'Goblin', 'Bard', 'Orzhov Syndicate', 'Street Cleaners', 'Golgari - Izzet: A team of inventors are in the process of creating a volatile herbicide that will wipe out the undercity. ', 'https://silvermere.org/characters/generator/Fravvix-Bristleswoop.php'),
(107, 'Evelyth Mistias', 'Borderline Good', '(I) Mild Introversion', 'Late Artist', '(T) Slight Thinker', 'Blind Egoism', '(J) Meticulous planner', '(S) Slightly Detailed', 'Female', 'Elf', 'Warlock', 'Simic Conclave', 'Barber', 'Golgari - Dimir: A Dimir agent disguised as a Rakdos ringleader discovers a mushroom that induces rage in its participants. They proceed to raid fungal farms in Golgari territory. ', 'https://silvermere.org/characters/generator/Evelyth-Mistias.php'),
(108, 'Tirria Avianta', 'Chaotic Evil', 'Balanced', 'Core Nomad', '(F) Strong Feeler', 'Social Systems Perspective', 'Balanced', 'Balanced', 'Female', 'Loxodon', 'Wizard', 'Selesnya Conclave', 'Sail maker', 'Selesnya - Azorius: An Archon of the Triumvirate believes that social gatherings lead to crimes, and has made such actions illegal. Anyone who disobeys is put into prison. ', 'https://silvermere.org/characters/generator/Tirria-Avianta.php'),
(109, 'Jiven Yirali', 'Lawful Evil', '(E) Strong Extroversion', 'Early Nomad', '(T) Thinker', 'Social Relationships Perspective', '(J) Meticulous planner', '(S) Detail Obsessed', 'Female', 'Elf', 'Barbarian', 'Gruul Clans', 'Madhouse caretakers', 'Dimir - Rakdos: Flyers have begun spreading around the city advertising a Rakdos magician. In big bold red ink are the words \"And for my next trick, I will make Duskmantle appear!\"', 'https://silvermere.org/characters/generator/Jiven-Yirali.php'),
(111, 'Fijun Minsap', 'Lawful Neutral', '(I) Mild Introversion', 'Core Artist', '(T) Strong Thinker', 'Contractual Perspective', '(P) Totally random', '(S) Detail Oriented', 'Male', 'Human', 'Wizard', 'Boros Legion', 'Brewer', 'Orzhov - Boros: A member of the Boros has not paid their debts as of late, however, they just recently got promoted to Wojek and threaten retaliation. ', 'https://silvermere.org/characters/generator/Fijun-Minsap.php'),
(112, 'Zirak Norran', 'Chaotic Good', '(E) Strong Extroversion', 'Late Artist', '(F) Slight Feeler', 'Blind Egoism', '(J) Moderate planner', '(S) Slightly Detailed', 'Male', 'Centaur', 'Warlock', 'Azorius Senate', 'Washer', 'Rakdos - Selesnya: A small group of Selesnyan soldiers misunderstand a performance, and are led to believe that the Rakdos will be attacking them soon. They decide to attack the Rakdos first.', 'https://silvermere.org/characters/generator/Zirak-Norran.php'),
(113, 'Vrinia Yiansel', 'Chaotic Good', '(E) Strong Extroversion', 'Early Civic', '(F) Strong Feeler', 'Social Systems Perspective', 'Balanced', '(N) Slightly Intuitive', 'Female', 'Elf', 'Barbarian', 'Orzhov Syndicate', 'Madhouse caretakers', 'Rakdos - Izzet: Unintended explosions keep on happening at every performance. Find the perpetrator and bring him to the ringleader. ', 'https://silvermere.org/characters/generator/Vrinia-Yiansel.php'),
(114, 'Kirraz Burrha', 'Chaotic Good', '(E) Extroverted', 'Early Nomad', '(T) Thinker', 'Blind Egoism', '(P) Totally random', '(N) Slightly Intuitive', 'Male', 'Centaur', 'Druid', 'Cult of Rakdos', 'Street sweeper', 'Golgari - Dimir: A Dimir agent disguised as a Rakdos ringleader discovers a mushroom that induces rage in its participants. They proceed to raid fungal farms in Golgari territory. ', 'https://silvermere.org/characters/generator/Kirraz-Burrha.php'),
(115, 'Hevas Kossi', 'Chaotic Good', 'Balanced', 'Early Nomad', '(F) Slight Feeler', 'Blind Egoism', '(J) Prefers a plan', '(S) Detail Obsessed', 'Male', 'Centaur', 'Bard', 'Boros Legion', 'Thatchers/roofers', 'Rakdos - Rakdos: Another ringleader starts performing in someone else\'s territory, and taking away her audience. She decides to put on a \"heart stopping\" performance for him.', 'https://silvermere.org/characters/generator/Hevas-Kossi.php'),
(116, 'Nidanyo Dorina', 'Lawful Evil', 'Balanced', 'Core Artist', '(F) Feeler', 'Social Relationships Perspective', '(J) Moderate planner', '(S) Slightly Detailed', 'Male', 'Human', 'Monk', 'Orzhov Syndicate', 'Gambler', 'Izzet - Boros: A squad of corrupt Boros soldiers are extorting Izzet inventors to get them cheaper and better weapons and threaten to jail anyone who does not comply.', 'https://silvermere.org/characters/generator/Nidanyo-Dorina.php'),
(117, 'Chiarin Evrens', 'Chaotic Good', '(I) Mild Introversion', 'Late Prophet', '(T) Slight Thinker', 'Contractual Perspective', '(P) Totally random', '(N) Moderately Intuitive', 'Female', 'Centaur', 'Bard', 'Boros Legion', 'Criminal, theif, lookout', 'Selesnya - Dimir: Spybugs have been coming in much larger and more obvious waves. This many drones is very unusual. ', 'https://silvermere.org/characters/generator/Chiarin-Evrens.php'),
(118, 'Tarragus Thunderfist', 'Lawful Neutral', '(E) Mild Extroversion', 'Core Civic', '(T) Thinker', 'Instrumental Egoism', '(J) Meticulous planner', '(S) Detail Oriented', 'Male', 'Minotaur', 'Sorcerer', 'Azorius Senate', 'Cobbler (shoes)', 'Simic - Golgari: A sentient clan of fungus and saprolings take several research stations hostage, and say they will return them to the surface once they are officially recognized in the guildpact.', 'https://silvermere.org/characters/generator/Tarragus-Thunderfist.php'),
(119, 'Lavinz Arinnu', 'Chaotic Neutral', '(E) Strong Extroversion', 'Late Nomad', '(T) Slight Thinker', 'Contractual Perspective', '(P) Totally random', '(N) Slightly Intuitive', 'Male', 'Elf', 'Wizard', 'House Dimir', 'Street Cleaners', 'Dimir - Gruul: A Dimir shapeshifter sells out a Centaurs gang to the Azorius. He wishes to break them out of jail, to get revenge on this Dimir agent who was previously a part of their gang. ', 'https://silvermere.org/characters/generator/Lavinz-Arinnu.php'),
(120, 'Larina Flashfoot', 'Chaotic Good', '(I) Introverted', 'Core Prophet', '(T) Thinker', 'Social Relationships Perspective', '(P) Lives in the moment', '(S) Detail Oriented', 'Female', 'Minotaur', 'Sorcerer', 'Orzhov Syndicate', 'Pawn shop owner', 'Gruul - Golgari: An Ochran Assassin is killing members of the Gruul Clan in order to win favor among her fellow members in House Ochran. She specializes in making sure those bodies can never be found. ', 'https://silvermere.org/characters/generator/Larina-Flashfoot.php'),
(121, 'Grantom Durrath', 'True Neutral', '(E) Extroverted', 'Late Artist', '(T) Slight Thinker', 'Universal Respect', 'Balanced', '(N) Moderately Intuitive', 'Male', 'Loxodon', 'Paladin', 'Azorius Senate', 'Tax collector', 'Azorius - Izzet: An Izzet spellcaster had the great idea to clone himself. The clones escaped, and are now causing a legal headache, and they no longer know who the original is. ', 'https://silvermere.org/characters/generator/Grantom-Durrath.php'),
(123, 'Wren Drannon', 'Borderline Evil', '(E) Extroverted', 'Late Nomad', '(F) Strong Feeler', 'Contractual Perspective', '(P) Totally random', '(S) Detail Oriented', 'Male', 'Simic hybrid', 'Rogue', 'Azorius Senate', 'Captain/Constable', 'Dimir - Gruul: A Dimir shapeshifter sells out a Centaurs gang to the Azorius. He wishes to break them out of jail, to get revenge on this Dimir agent who was previously a part of their gang. ', 'https://silvermere.org/characters/generator/Wren-Drannon.php'),
(124, 'Travern Finnor', 'Borderline Good', '(I) Extreme Introversion', 'Late Artist', '(F) Slight Feeler', 'Universal Respect', '(P) Lives in the moment', '(S) Detail Obsessed', 'Male', 'Human', 'Warlock', 'Selesnya Conclave', 'Botanical Gardener', 'Boros - Selesnya: The Selesnya challenge the 31st legion Skyjeks to a race. As the Boros begin to win, the previously imprisoned Selesnyans begin to cheat.', 'https://silvermere.org/characters/generator/Travern-Finnor.php'),
(125, 'Pirrenia Lyfans', 'Lawful Evil', '(E) Strong Extroversion', 'Late Artist', '(T) Slight Thinker', 'Blind Egoism', '(J) Prefers a plan', 'Balanced', 'Female', 'Elf', 'Fighter', 'Orzhov Syndicate', 'Millwright', 'Dimir - Izzet: A Dimir agent begins working with an unsanctioned Izzet genius, who is currently working on a alchemical formula that will revolutionize agriculture. However, this is causing a series of ever-worsening laboratory mishaps.', 'https://silvermere.org/characters/generator/Pirrenia-Lyfans.php'),
(126, 'Storak Stormfist', 'Borderline Evil', '(I) Extreme Introversion', 'Core Nomad', 'Balanced', 'Social Relationships Perspective', '(J) Moderate planner', '(N) Moderately Intuitive', 'Male', 'Minotaur', 'Sorcerer', 'Selesnya Conclave', 'Advisors/sages', 'Orzhov - Selesnya: A group of Selesnyans feel as if the people are being oppressed, and begin to start a campaign to fight against the Orzhov. They pass out flyers, recruit members, and even stage attacks against them.', 'https://silvermere.org/characters/generator/Storak-Stormfist.php'),
(127, 'Dragguth Grantok', 'Chaotic Good', '(I) Mild Introversion', 'Late Nomad', '(T) Thinker', 'Universal Respect', 'Balanced', '(S) Slightly Detailed', 'Male', 'Centaur', 'Bard', 'Orzhov Syndicate', 'Lawyer', 'Izzet - Dimir: A Dimir spy is attempting to get the secrets of an Izzet wizard who is attempting to discover imp an Izzet wizard who is attempting to discover immortality. ', 'https://silvermere.org/characters/generator/Dragguth-Grantok.php'),
(128, 'Trevvix Sazzerux', 'Chaotic Evil', '(I) Mild Introversion', 'Early Nomad', '(T) Slight Thinker', 'Universal Respect', '(P) Lives in the moment', '(S) Detail Obsessed', 'Male', 'Goblin', 'Rogue', 'Golgari Swarm', 'Diviner/Oracle', 'Golgari - Azorius: A sadistic warden tortures Golgari prisoners, due to bigotry and in the name of the law.', 'https://silvermere.org/characters/generator/Trevvix-Sazzerux.php'),
(129, 'Traf Gerranis', 'Lawful Evil', '(E) Mild Extroversion', 'Early Nomad', '(T) Thinker', 'Social Systems Perspective', '(J) Meticulous planner', 'Balanced', 'Male', 'Human', 'Warlock', 'Izzet League', 'Dyer', 'Izzet - Golgari: A beloved statue of a famous Izzet inventor suddenly returns to life after being petrified for a hundred years. ', 'https://silvermere.org/characters/generator/Traf-Gerranis.php'),
(130, 'Cyrin Fransdorf', 'Borderline Good', '(E) Mild Extroversion', 'Late Civic', '(F) Strong Feeler', 'Instrumental Egoism', '(J) Moderate planner', '(N) Slightly Intuitive', 'Male', 'Vedalken', 'Wizard', 'Cult of Rakdos', 'Jailer', 'Orzhov - Boros: A member of the Boros has not paid their debts as of late, however, they just recently got promoted to Wojek and threaten retaliation. ', 'https://silvermere.org/characters/generator/Cyrin-Fransdorf.php'),
(131, 'Birrix Dezzeret', 'Chaotic Neutral', '(I) Extreme Introversion', 'Early Prophet', '(T) Slight Thinker', 'Blind Egoism', 'Balanced', '(S) Detail Obsessed', 'Male', 'Goblin', 'Paladin', 'Boros Legion', 'Dock worker/sailor', 'Selesnya - Orzhov: A coin has begun being passed around the conclave that has magic that puts any user of the coin in debt of the Orzhov. ', 'https://silvermere.org/characters/generator/Birrix-Dezzeret.php'),
(132, 'Doctor Lye', 'Lawful Evil', '(E) Extroverted', 'Early Prophet', '(T) Slight Thinker', 'Blind Egoism', '(J) Prefers a plan', 'Balanced', 'Male', 'Human', 'Warlock', 'Orzhov Syndicate', 'Soap maker', 'Simic - Simic: An especially zealous Vedalken has taken the guilds goal of evolution to the extreme. He pumps his tests subjects full of the drugs and magic before torturing them to “ensure survival of the fittest.” His experiments result in violent and dangerous creatures that are “not good enough”', 'https://silvermere.org/characters/generator/Doctor-Lye.php'),
(133, 'Efraya Lye', 'Borderline Evil', '(I) Introverted', 'Core Civic', '(F) Feeler', 'Social Systems Perspective', '(J) Prefers a plan', '(S) Detail Obsessed', 'Female', 'Simic hybrid', 'Rogue', 'Azorius Senate', 'Soap maker', 'Dimir - Selsenya: A Selesnya splinter group calling themselves \"The Stake of Truth\" seek to eradicate the vampire menace in the city, and have been surprisingly effective in their efforts.', 'https://silvermere.org/characters/generator/Efraya-Lye.php'),
(134, 'Trina Siras', 'Chaotic Good', '(E) Extroverted', 'Core Nomad', 'Balanced', 'Social Relationships Perspective', '(P) Prefers spontaneity', '(N) Slightly Intuitive', 'Female', 'Human', 'Rogue', 'Cult of Rakdos', 'Lumber mill worker', 'Golgari - Orzhov: An Orzhov spirit has taken over a troll, in an effort to force people into paying its debts for it. ', 'https://silvermere.org/characters/generator/Trina-Siras.php'),
(135, 'Viara Biren', 'Lawful Neutral', '(I) Mild Introversion', 'Core Artist', '(F) Strong Feeler', 'Blind Egoism', 'Balanced', '(S) Detail Oriented', 'Female', 'Human', 'Wizard', 'Azorius Senate', 'Book Store clerk', 'Simic - Orzhov: Biomancers on the brink of discovery describe being stalked by gargoyles until they disappear suddenly. ', 'https://silvermere.org/characters/generator/Viara-Biren.php'),
(136, 'Shirran Fiyal', 'Borderline Evil', '(I) Extreme Introversion', 'Core Nomad', 'Balanced', 'Social Relationships Perspective', '(P) Totally random', '(S) Detail Obsessed', 'Female', 'Elf', 'Wizard', 'Cult of Rakdos', 'Priest/cleric', 'Simic - Izzet: Many generations ago a joint experiment went horribly wrong. Results of that experiment are starting to resurface as a recent breakthrough shed new light on the situation, causing the ancestors of these experiments to both step up asking for the credit and reward.', 'https://silvermere.org/characters/generator/Shirran-Fiyal.php'),
(137, 'Freyna Doccelli', 'Chaotic Neutral', '(I) Introverted', 'Core Artist', '(T) Thinker', 'Social Systems Perspective', '(J) Moderate planner', '(N) Moderately Intuitive', 'Female', 'Vedalken', 'Barbarian', 'Gruul Clans', 'Falconer', 'Golgari - Azorius: A sadistic warden tortures Golgari prisoners, due to bigotry and in the name of the law.', 'https://silvermere.org/characters/generator/Freyna-Doccelli.php'),
(138, 'Visiya Jeylin', 'Lawful Evil', '(E) Strong Extroversion', 'Early Nomad', 'Balanced', 'Contractual Perspective', '(P) Lives in the moment', '(N) Extremely Intuitive', 'Female', 'Elf', 'Druid', 'Boros Legion', 'Falconer', 'Izzet - Selesnya: A Selesnyan leader has been disrupting buildings, claiming they aren\'t in harmony with nature. The truth is that she is getting paid on the side to target specific buildings so that a specific Izzet company can rise up the ranks faster.', 'https://silvermere.org/characters/generator/Visiya-Jeylin.php'),
(139, 'Lilla Avarin', 'Lawful Neutral', '(E) Mild Extroversion', 'Core Prophet', '(F) Slight Feeler', 'Social Systems Perspective', 'Balanced', '(N) Moderately Intuitive', 'Female', 'Vedalken', 'Bard', 'House Dimir', 'Librarian', 'Boros - Rakdos: An infamous skeleton ringleader needs new bones. He is holding a gladiator pit to get a new set. The Boros send in a sting team to this gladiator pit.', 'https://silvermere.org/characters/generator/Lilla-Avarin.php'),
(140, 'Zarrix Krall', 'Borderline Good', '(E) Mild Extroversion', 'Core Nomad', '(F) Feeler', 'Universal Respect', '(P) Prefers spontaneity', '(N) Slightly Intuitive', 'Male', 'Goblin', 'Bard', 'Izzet League', 'Food vendor', 'Dimir - Boros: An Angel commander believes that there is a Dimir agent in their midst, and is willing to purge the entire garrison to eliminate the spy. ', 'https://silvermere.org/characters/generator/Zarrix-Krall.php'),
(142, 'Evryn Graffington', 'Lawful Neutral', 'Balanced', 'Core Artist', 'Balanced', 'Universal Respect', '(P) Prefers spontaneity', '(N) Slightly Intuitive', 'Male', 'Human', 'Fighter', 'Azorius Senate', 'Duke', 'Golgari - Rakdos: A demon wants to garner influence over the undercity, and is courting the daughter of a very important lich. The rest of the Golgari are suspcious of this demon\'s interest in the undercity.', 'https://silvermere.org/characters/generator/Evryn-Graffington.php'),
(158, 'Jaizix Kizzir', 'Lawful Neutral', '(I) Introverted', 'Core Prophet', '(F) Feeler', 'Instrumental Egoism', 'Balanced', '(N) Slightly Intuitive', 'Male', 'Goblin', 'Barbarian', 'Azorius Senate', 'Courier/messenger', 'Izzet - Rakdos: A Ringleader has seen an Izzet inventor carrying around a very expensive and explosive magic item, and needs it for his next show.', 'https://silvermere.org/characters/generator/Jaizix-Kizzir.php'),
(145, 'Travyn Thunderhoof', 'Chaotic Evil', '(I) Extreme Introversion', 'Early Nomad', '(F) Slight Feeler', 'Universal Respect', '(J) Meticulous planner', '(S) Detail Oriented', 'Male', 'Minotaur', 'Bard', 'Orzhov Syndicate', 'Tavern/Inn keeper', 'Azorius - Gruul: A druid is manipulating the wildlife to attack Azorius neighborhoods. She wants to show Borborygmos that she is ready to challenge him. ', 'https://silvermere.org/characters/generator/Travyn-Thunderhoof.php'),
(146, 'Vren Diranti', 'Lawful Evil', '(E) Extroverted', 'Early Artist', '(F) Slight Feeler', 'Contractual Perspective', '(J) Meticulous planner', '(N) Extremely Intuitive', 'Female', 'Human', 'Cleric', 'Gruul Clans', 'Spinster', 'Boros - Dimir: A \"Rakdos\" cultist is killed, and is taken in for evidence. His lover wants him back. After speaking with the Orzhov, they offer to bring him back if a 5 for 1 soul ratio is met.', 'https://silvermere.org/characters/generator/Vren-Diranti.php'),
(147, 'Brassi Darong', 'True Neutral', '(E) Mild Extroversion', 'Early Civic', '(T) Slight Thinker', 'Social Systems Perspective', '(P) Totally random', '(N) Moderately Intuitive', 'Female', 'Minotaur', 'Fighter', 'Orzhov Syndicate', 'Parchment maker', 'Orzhov - Simic: The Simic have begun experimenting on the local gargoyles, making them more sentient, and much more likely to disobey Orzhov orders. ', 'https://silvermere.org/characters/generator/Brassi-Darong.php'),
(149, 'Liran Viato', 'Borderline Evil', '(E) Extroverted', 'Early Civic', 'Balanced', 'Blind Egoism', '(J) Prefers a plan', '(S) Detail Oriented', 'Female', 'Human', 'Wizard', 'Selesnya Conclave', 'Thatchers/roofers', 'Dimir - Simic: A Biomancer has created the perfect predator of shapeshifters. (Use the stats for Invisible Stalker to represent this creature). ', 'https://silvermere.org/characters/generator/Liran-Viato.php'),
(150, 'Dhurvin Varat', 'True Neutral', '(E) Strong Extroversion', 'Early Prophet', '(F) Slight Feeler', 'Social Relationships Perspective', '(J) Prefers a plan', '(N) Moderately Intuitive', 'Male', 'Vedalken', 'Fighter', 'House Dimir', 'Tanner', 'Gruul - Gruul: A newer chieftian who has very few feats to his name, is challenging Borborygmos to a fight. There have been rumors that he has cheated his way to get this far. ', 'https://silvermere.org/characters/generator/Dhurvin-Varat.php'),
(152, 'Thyrania Devassian', 'Chaotic Good', '(E) Extroverted', 'Late Civic', '(F) Slight Feeler', 'Contractual Perspective', '(P) Prefers spontaneity', '(S) Detail Obsessed', 'Female', 'Simic hybrid', 'Ranger', 'Selesnya Conclave', 'Menagerie/zoo keeper', 'Rakdos - Golgari: We need a troll for the next performance. Or 2. Probably 5 actually.', 'https://silvermere.org/characters/generator/Thyrania-Devassian.php'),
(157, 'Rizzix Mizzian', 'Lawful Evil', '(E) Strong Extroversion', 'Early Nomad', '(F) Feeler', 'Contractual Perspective', 'Balanced', '(N) Slightly Intuitive', 'Female', 'Simic hybrid', 'Cleric', 'Izzet League', 'Council member', 'Golgari - Simic: A researcher creates a moss that threatens to destroy much of the city\'s food production. They plan to sell their new tribble like creature, as an alternative food source. ', 'https://silvermere.org/characters/generator/Rizzix-Mizzian.php'),
(174, 'Delyn Livannis', 'Borderline Evil', '(I) Mild Introversion', 'Core Nomad', '(F) Strong Feeler', 'Social Systems Perspective', '(J) Meticulous planner', '(N) Extremely Intuitive', 'Male', 'Elf', 'Rogue', 'Izzet League', 'Petty obility/mayor', 'Gruul - Gruul: A newer chieftian who has very few feats to his name, is challenging Borborygmos to a fight. There have been rumors that he has cheated his way to get this far. ', 'https://silvermere.org/characters/generator/Delyn-Livannis.php'),
(173, 'Zin Trassi', 'Lawful Evil', '(I) Mild Introversion', 'Late Civic', '(F) Feeler', 'Instrumental Egoism', 'Balanced', '(N) Slightly Intuitive', 'Female', 'Simic hybrid', 'Rogue', 'Boros Legion', 'Farmers market', 'Selesnya - Rakdos: The Rakdos are trying to hold a party on conclave grounds, and they aren\'t taking no for an answer.', 'https://silvermere.org/characters/generator/Zin-Trassi.php'),
(164, 'Sirafis Clorrun', 'True Neutral', '(E) Strong Extroversion', 'Early Prophet', 'Balanced', 'Instrumental Egoism', '(J) Prefers a plan', '(S) Slightly Detailed', 'Female', 'Centaur', 'Warlock', 'Orzhov Syndicate', 'Thatchers/roofers', 'Selesnya - Orzhov: A coin has begun being passed around the conclave that has magic that puts any user of the coin in debt of the Orzhov. ', 'https://silvermere.org/characters/generator/Sirafis-Clorrun.php'),
(165, 'Mazzix Niksi', 'Chaotic Neutral', '(E) Extroverted', 'Core Artist', '(T) Thinker', 'Blind Egoism', '(P) Totally random', '(S) Detail Obsessed', 'Female', 'Goblin', 'Fighter', 'Boros Legion', 'Pottery mason', 'Dimir - Simic: A Biomancer has created the perfect predator of shapeshifters. (Use the stats for Invisible Stalker to represent this creature). ', 'https://silvermere.org/characters/generator/Mazzix-Niksi.php'),
(172, 'Skirrix Rizzati', 'Chaotic Evil', 'Balanced', 'Early Prophet', '(F) Strong Feeler', 'Universal Respect', '(J) Meticulous planner', '(N) Slightly Intuitive', 'Female', 'Goblin', 'Monk', 'Azorius Senate', 'Apothecary/pharmacist', 'Orzhov - Dimir: A group of Dimir agents are plundering the minds of people who have knowledge of Vizkopa Bank. ', 'https://silvermere.org/characters/generator/Skirrix-Rizzati.php'),
(168, 'Shiras Deviz', 'Lawful Good', '(I) Extreme Introversion', 'Early Nomad', '(T) Slight Thinker', 'Social Relationships Perspective', '(J) Meticulous planner', '(N) Slightly Intuitive', 'Male', 'Elf', 'Wizard', 'Cult of Rakdos', 'Spinster', 'Rakdos - Dimir: One of the ringleaders have caught wind of a Dimir spy in their ranks. Rather than killing him, he decides to let him plan the next event.', 'https://silvermere.org/characters/generator/Shiras-Deviz.php');
INSERT INTO `characters` (`id`, `name`, `alignment`, `extroversion`, `generation`, `judging`, `morality`, `planning`, `sensing`, `sex`, `race`, `class`, `guild`, `profession`, `rumor`, `URL`) VALUES
(169, 'Linzia Rannith', 'Lawful Neutral', '(I) Extreme Introversion', 'Late Civic', 'Balanced', 'Universal Respect', 'Balanced', '(N) Moderately Intuitive', 'Female', 'Human', 'Cleric', 'Orzhov Syndicate', 'Gongfarmer', 'Simic - Izzet: Many generations ago a joint experiment went horribly wrong. Results of that experiment are starting to resurface as a recent breakthrough shed new light on the situation, causing the ancestors of these experiments to both step up asking for the credit and reward.', 'https://silvermere.org/characters/generator/Linzia-Rannith.php'),
(170, 'Sahiri Dinevvis', 'Borderline Good', '(E) Extroverted', 'Core Prophet', 'Balanced', 'Contractual Perspective', '(P) Prefers spontaneity', 'Balanced', 'Female', 'Elf', 'Warlock', 'Orzhov Syndicate', 'Criminal, theif, lookout', 'Boros - Simic: The Simic wish to replace the Izzet as the tech and weapon supplier of the Boros. They start churning out inventions and Quality Control goes down. This leads to some dangerous mishaps. ', 'https://silvermere.org/characters/generator/Sahiri-Dinevvis.php'),
(171, 'Charina Stonehoof', 'Chaotic Good', '(E) Strong Extroversion', 'Early Artist', '(F) Slight Feeler', 'Blind Egoism', 'Balanced', '(N) Slightly Intuitive', 'Female', 'Minotaur', 'Monk', 'House Dimir', 'Stone mason', 'Boros - Golgari: A kraul death priest seeks to revive the Nephillim. The summoning grounds are underneath Sunhome. Kraul have been joining the Legion in record numbers as of late. ', 'https://silvermere.org/characters/generator/Charina-Stonehoof.php'),
(175, 'Marmoreal ', 'Chaotic Neutral', '(I) Extreme Introversion', 'Early Artist', '(T) Slight Thinker', 'Contractual Perspective', '(P) Prefers spontaneity', '(N) Extremely Intuitive', 'Female', 'Loxodon', 'Sorcerer', 'Cult of Rakdos', 'Furrier', 'Izzet - Dimir: A Dimir spy is attempting to get the secrets of an Izzet wizard who is attempting to discover imp an Izzet wizard who is attempting to discover immortality. ', 'https://silvermere.org/characters/generator/Marmoreal-.php'),
(176, 'manus skywalker', 'Lawful Good', '(E) Mild Extroversion', 'Early Artist', '(F) Strong Feeler', 'Universal Respect', '(J) Prefers a plan', '(S) Slightly Detailed', 'Female', 'Vedalken', 'Monk', 'House Dimir', 'Grange foreman', 'Golgari - Simic: A researcher creates a moss that threatens to destroy much of the city\'s food production. They plan to sell their new tribble like creature, as an alternative food source. ', 'https://silvermere.org/characters/generator/manus-skywalker.php'),
(177, 'Shrivax Whisperhoof', 'Lawful Good', 'Balanced', 'Late Nomad', 'Balanced', 'Social Systems Perspective', '(P) Lives in the moment', '(N) Extremely Intuitive', 'Female', 'Centaur', 'Druid', 'Golgari Swarm', 'Lumber mill worker', 'Orzhov - Rakdos: A Rakdos festival begins to slander the Orzhov Syndicate, and the audience is really enjoying it. If they aren\'t stopped soon, the Orzhov reputation will be shattered.', 'https://silvermere.org/characters/generator/Shrivax-Whisperhoof.php'),
(178, 'Arvien Belsay', 'Chaotic Evil', '(I) Extreme Introversion', 'Core Artist', '(T) Strong Thinker', 'Social Relationships Perspective', '(P) Totally random', '(N) Moderately Intuitive', 'Female', 'Simic hybrid', 'Cleric', 'Golgari Swarm', 'Smith (tin, silver)', 'Dimir - Rakdos: Flyers have begun spreading around the city advertising a Rakdos magician. In big bold red ink are the words \"And for my next trick, I will make Duskmantle appear!\"', 'https://silvermere.org/characters/generator/Arvien-Belsay.php'),
(179, 'Syrith  Ceranz', 'Lawful Good', '(I) Introverted', 'Late Nomad', '(F) Slight Feeler', 'Universal Respect', '(P) Lives in the moment', '(S) Detail Oriented', 'Female', 'Centaur', 'Rogue', 'House Dimir', 'Falconer', 'Boros - Rakdos: An infamous skeleton ringleader needs new bones. He is holding a gladiator pit to get a new set. The Boros send in a sting team to this gladiator pit.', 'https://silvermere.org/characters/generator/Syrith -Ceranz.php'),
(180, 'Bofisi Weramek', '', '', '', '', '', '', '', '', '', '', '', '', '', 'https://silvermere.org/characters/generator/Bofisi-Weramek.php'),
(181, ' ', '', '', '', '', '', '', '', '', '', '', '', '', '', 'https://silvermere.org/characters/generator/-.php'),
(182, ' ', '', '', '', '', '', '', '', '', '', '', '', '', '', 'https://silvermere.org/characters/generator/-.php'),
(183, ' ', '', '', '', '', '', '', '', '', '', '', '', '', '', 'https://silvermere.org/characters/generator/-.php'),
(184, 'Luvina Janali', 'Borderline Good', '(E) Mild Extroversion', 'Late Artist', '(F) Slight Feeler', 'Social Systems Perspective', 'Balanced', '(S) Detail Oriented', 'Female', 'Human', 'Rogue', 'Golgari Swarm', 'Serf', 'Orzhov - Gruul: A Gruul clan lets it\'s wurms loose upon Orzhov neighborhoods in an effort to destroy significant monuments.', 'https://silvermere.org/characters/generator/Luvina-Janali.php'),
(185, ' ', '', '', '', '', '', '', '', '', '', '', '', '', '', 'https://silvermere.org/characters/generator/-.php'),
(186, ' ', '', '', '', '', '', '', '', '', '', '', '', '', '', 'https://silvermere.org/characters/generator/-.php'),
(187, ' ', 'Lawful Evil', '(E) Mild Extroversion', 'Early Prophet', '(T) Slight Thinker', 'Social Systems Perspective', '(P) Totally random', 'Balanced', 'Male', 'Elf', 'Paladin', 'Golgari Swarm', 'Mudlark/scavenger', 'Golgari - Golgari: A Kraul warrior begins to believe that Svogthar, the original Golgari Parun, has begun speaking to him telling him that he needs to cleanse the undercity. He gathers a warband of Kraul and begins his raids.', 'https://silvermere.org/characters/generator/-.php'),
(188, ' ', 'Chaotic Good', 'Balanced', 'Early Prophet', '(T) Thinker', 'Social Relationships Perspective', '(J) Prefers a plan', '(N) Moderately Intuitive', 'Male', 'Human', 'Rogue', 'Orzhov Syndicate', 'Lumberjack', 'Gruul - Rakdos: A Rakdos Hypnotist has gained control of an entire clan, which he is using to destroy the targets of his choosing. ', 'https://silvermere.org/characters/generator/-.php'),
(189, 'Mal Grives', 'Borderline Good', '(E) Extroverted', 'Late Civic', 'Balanced', 'Social Systems Perspective', '(J) Prefers a plan', '(N) Slightly Intuitive', 'Female', 'Elf', 'Wizard', 'Simic Conclave', 'Coliseum gladiator/slaver', 'Golgari - Orzhov: An Orzhov spirit has taken over a troll, in an effort to force people into paying its debts for it. ', 'https://silvermere.org/characters/generator/Mal-Grives.php'),
(190, 'Mal Grives', 'Lawful Neutral', 'Balanced', 'Core Prophet', '(T) Slight Thinker', 'Blind Egoism', '(P) Totally random', 'Balanced', 'Female', 'Loxodon', 'Sorcerer', 'Izzet League', 'Fighting pit ringmaster', 'Simic - Golgari: A sentient clan of fungus and saprolings take several research stations hostage, and say they will return them to the surface once they are officially recognized in the guildpact.', 'https://silvermere.org/characters/generator/Mal-Grives.php'),
(191, ' ', 'True Neutral', 'Balanced', 'Late Artist', '(T) Strong Thinker', 'Blind Egoism', '(J) Moderate planner', 'Balanced', 'Female', 'Loxodon', 'Fighter', 'Boros Legion', 'Painters', 'Dimir - Azorius: A vengeful imperator is pulling all the stops to attempt to get a warrant to search Duskmantle. (As specified in the guildpact with 100% vote in favor). She wishes to confiscate any magical items she comes across.', 'https://silvermere.org/characters/generator/-.php'),
(192, 'Rizal Tommoroff', 'Borderline Good', '(E) Extroverted', 'Late Artist', '(F) Feeler', 'Blind Egoism', 'Balanced', '(N) Extremely Intuitive', 'Female', 'Minotaur', 'Paladin', 'Orzhov Syndicate', 'Clay mason', 'Rakdos - Azorius: A new law has just been passed that banned all public festivities. It\'s time to show the boring Azorius what a real party looks like!', 'https://silvermere.org/characters/generator/Rizal-Tommoroff.php'),
(193, 'Syru Glinea', 'Chaotic Good', '(E) Extroverted', 'Late Nomad', '(T) Strong Thinker', 'Blind Egoism', '(P) Lives in the moment', '(S) Detail Obsessed', 'Female', 'Human', 'Warlock', 'Simic Conclave', 'Street sweeper', 'Izzet - Izzet: A sabotuer has been destroying rival inventors shops in the hopes that hers will rise up to take their place.', 'https://silvermere.org/characters/generator/Syru-Glinea.php'),
(194, ' ', 'Lawful Evil', '(E) Extroverted', 'Early Prophet', '(F) Slight Feeler', 'Social Systems Perspective', '(P) Prefers spontaneity', '(N) Slightly Intuitive', 'Female', 'Centaur', 'Druid', 'Orzhov Syndicate', 'Lumberjack', 'Rakdos - Orzhov: Any performance being held in Orzhov territory now has a tax associated with it. Not obeying the new tax laws usually means that ghosts will be attending the next show.', 'https://silvermere.org/characters/generator/-.php'),
(195, ' ', '', '', '', '', '', '', '', '', '', '', '', '', '', 'https://silvermere.org/characters/generator/-.php'),
(196, ' ', '', '', '', '', '', '', '', '', '', '', '', '', '', 'https://silvermere.org/characters/generator/-.php'),
(197, 'Sane Pal', 'Lawful Neutral', '(I) Extreme Introversion', 'Core Prophet', '(F) Feeler', 'Social Relationships Perspective', '(P) Lives in the moment', '(N) Moderately Intuitive', 'Male', 'Vedalken', 'Bard', 'Golgari Swarm', 'Gongfarmer', 'Simic - Gruul: Smaller labs are being raided by a scrawny Gruul human. He seeks to make himself strong enough to challenge Borborygmos, and has been growing more dangerous with each raid. ', 'https://silvermere.org/characters/generator/Sane-Pal.php'),
(198, ' ', 'True Neutral', '(I) Mild Introversion', 'Core Artist', '(T) Slight Thinker', 'Social Systems Perspective', '(J) Meticulous planner', '(N) Slightly Intuitive', 'Female', 'Centaur', 'Sorcerer', 'Azorius Senate', 'Coliseum gladiator/slaver', 'Dimir - Boros: An Angel commander believes that there is a Dimir agent in their midst, and is willing to purge the entire garrison to eliminate the spy. ', 'https://silvermere.org/characters/generator/-.php'),
(199, ' ', 'Lawful Evil', '(E) Strong Extroversion', 'Late Civic', '(F) Feeler', 'Blind Egoism', '(J) Meticulous planner', '(S) Detail Oriented', 'Female', 'Goblin', 'Wizard', 'Golgari Swarm', 'Magistrate', 'Golgari - Orzhov: An Orzhov spirit has taken over a troll, in an effort to force people into paying its debts for it. ', 'https://silvermere.org/characters/generator/-.php'),
(200, ' ', 'Borderline Evil', 'Balanced', 'Core Civic', '(F) Strong Feeler', 'Blind Egoism', '(P) Totally random', 'Balanced', 'Female', 'Centaur', 'Barbarian', 'Selesnya Conclave', 'Diviner/Oracle', 'Orzhov - Azorius: An ambitious Lawmage is cracking down on Orzhov criminal activity. They must be silenced as quickly as possible. ', 'https://silvermere.org/characters/generator/-.php'),
(201, 'Shian Hafiax', 'Lawful Neutral', '(E) Strong Extroversion', 'Late Civic', '(F) Slight Feeler', 'Instrumental Egoism', '(P) Lives in the moment', 'Balanced', 'Female', 'Vedalken', 'Sorcerer', 'Azorius Senate', 'Miner (silver)', 'Selesnya - Rakdos: The Rakdos are trying to hold a party on conclave grounds, and they aren\'t taking no for an answer.', 'https://silvermere.org/characters/generator/Shian-Hafiax.php'),
(202, ' ', '', '', '', '', '', '', '', '', '', '', '', '', '', 'https://silvermere.org/characters/generator/-.php'),
(203, ' ', '', '', '', '', '', '', '', '', '', '', '', '', '', 'https://silvermere.org/characters/generator/-.php'),
(204, 'Garusha Brighthoof', 'Borderline Good', '(E) Mild Extroversion', 'Early Artist', '(T) Slight Thinker', 'Contractual Perspective', '(J) Meticulous planner', '(N) Moderately Intuitive', 'Female', 'Minotaur', 'Barbarian', 'House Dimir', 'Clay mason', 'Izzet - Orzhov: A blood drinker vampire is holding Izzet inventors hostage, and will only let them go if they come up with an invention that can constantly feed him or they get eaten.', 'https://silvermere.org/characters/generator/Garusha-Brighthoof.php'),
(205, 'Virrik Dishin', 'Lawful Good', '(E) Strong Extroversion', 'Late Artist', '(F) Feeler', 'Social Systems Perspective', '(P) Lives in the moment', 'Balanced', 'Female', 'Vedalken', 'Rogue', 'Boros Legion', 'Miner (silver)', 'Simic - Gruul: Smaller labs are being raided by a scrawny Gruul human. He seeks to make himself strong enough to challenge Borborygmos, and has been growing more dangerous with each raid. ', 'https://silvermere.org/characters/generator/Virrik-Dishin.php'),
(206, 'Razzik Zipsnapper', 'Lawful Good', 'Balanced', 'Late Nomad', 'Balanced', 'Universal Respect', '(J) Meticulous planner', 'Balanced', 'Male', 'Goblin', 'Fighter', 'Orzhov Syndicate', 'Street Cleaners', 'Rakdos - Azorius: A new law has just been passed that banned all public festivities. It\'s time to show the boring Azorius what a real party looks like!', 'https://silvermere.org/characters/generator/Razzik-Zipsnapper.php'),
(207, 'Trina Dreshawn', 'Borderline Evil', '(I) Introverted', 'Early Prophet', '(T) Slight Thinker', 'Universal Respect', '(P) Totally random', '(N) Slightly Intuitive', 'Female', 'Human', 'Bard', 'Izzet League', 'Doctor/Plaguedoctor', 'Gruul - Izzet: In direct opposition of the Gruul druids, an Izzet wizard is creating a device that can alter the weather on a large scale basis. The Rubblebelt has been the testing grounds for this new device.', 'https://silvermere.org/characters/generator/Trina-Dreshawn.php'),
(208, 'Efris Dirannon', 'True Neutral', '(I) Mild Introversion', 'Core Civic', '(T) Strong Thinker', 'Social Relationships Perspective', '(P) Lives in the moment', '(S) Slightly Detailed', 'Female', 'Elf', 'Paladin', 'Boros Legion', 'Criminal, theif, lookout', 'Selesnya - Orzhov: A coin has begun being passed around the conclave that has magic that puts any user of the coin in debt of the Orzhov. ', 'https://silvermere.org/characters/generator/Efris-Dirannon.php'),
(209, 'Tarrok Culveras', 'Lawful Evil', 'Balanced', 'Core Artist', '(T) Slight Thinker', 'Instrumental Egoism', '(J) Moderate planner', '(S) Slightly Detailed', 'Male', 'Human', 'Paladin', 'Gruul Clans', 'Washer', 'Simic - Gruul: Smaller labs are being raided by a scrawny Gruul human. He seeks to make himself strong enough to challenge Borborygmos, and has been growing more dangerous with each raid. ', 'https://silvermere.org/characters/generator/Tarrok-Culveras.php'),
(210, 'Xiara Finnan', 'Chaotic Evil', '(I) Extreme Introversion', 'Late Prophet', '(F) Slight Feeler', 'Social Relationships Perspective', '(J) Prefers a plan', 'Balanced', 'Female', 'Elf', 'Rogue', 'Simic Conclave', 'Diviner/Oracle', 'Orzhov - Dimir: A group of Dimir agents are plundering the minds of people who have knowledge of Vizkopa Bank. ', 'https://silvermere.org/characters/generator/Xiara-Finnan.php'),
(211, 'Jarren Leafbright', 'Lawful Good', '(I) Introverted', 'Early Prophet', '(F) Slight Feeler', 'Blind Egoism', '(P) Lives in the moment', '(S) Detail Oriented', 'Female', 'Human', 'Druid', 'Boros Legion', 'Book Store clerk', 'Simic - Izzet: Many generations ago a joint experiment went horribly wrong. Results of that experiment are starting to resurface as a recent breakthrough shed new light on the situation, causing the ancestors of these experiments to both step up asking for the credit and reward.', 'https://silvermere.org/characters/generator/Jarren-Leafbright.php'),
(212, 'Arxia Hivon', 'Chaotic Good', '(E) Strong Extroversion', 'Late Nomad', '(T) Thinker', 'Universal Respect', '(P) Lives in the moment', '(N) Extremely Intuitive', 'Female', 'Simic hybrid', 'Rogue', 'Golgari Swarm', 'Jeweler', 'Golgari - Golgari: A Kraul warrior begins to believe that Svogthar, the original Golgari Parun, has begun speaking to him telling him that he needs to cleanse the undercity. He gathers a warband of Kraul and begins his raids.', 'https://silvermere.org/characters/generator/Arxia-Hivon.php'),
(213, 'Timmy Wheeler', 'Lawful Evil', '(E) Mild Extroversion', 'Early Nomad', 'Balanced', 'Contractual Perspective', '(P) Totally random', 'Balanced', 'Male', 'Human', 'Rogue', 'Izzet League', 'Wheelwright', 'Rakdos - Azorius: A new law has just been passed that banned all public festivities. It\'s time to show the boring Azorius what a real party looks like!', 'https://silvermere.org/characters/generator/Timmy-Wheeler.php'),
(214, 'Vinnith Nuralis', 'Borderline Evil', '(I) Introverted', 'Core Civic', '(T) Thinker', 'Blind Egoism', '(P) Lives in the moment', '(N) Slightly Intuitive', 'Male', 'Elf', 'Warlock', 'House Dimir', 'Sail maker', 'Golgari - Orzhov: An Orzhov spirit has taken over a troll, in an effort to force people into paying its debts for it. ', 'https://silvermere.org/characters/generator/Vinnith-Nuralis.php'),
(215, 'thingp ', 'True Neutral', '(I) Extreme Introversion', 'Core Civic', '(T) Slight Thinker', 'Universal Respect', '(P) Lives in the moment', '(N) Slightly Intuitive', 'Male', 'Minotaur', 'Wizard', 'Golgari Swarm', 'Gongfarmer', 'Rakdos - Boros: The Boros have come to stop the show, but what they don\'t realize is that they are the main event!', 'https://silvermere.org/characters/generator/thingp-.php'),
(216, 'Rando Sidekick', 'Chaotic Neutral', '(E) Extroverted', 'Late Civic', '(T) Strong Thinker', 'Blind Egoism', '(J) Moderate planner', '(N) Moderately Intuitive', 'Male', 'Vedalken', 'Warlock', 'House Dimir', 'Miner (silver)', 'Rakdos - Gruul: A recent performance on Borborygmos was not taken too kindly. Clans are beginning to gather up forces.', 'https://silvermere.org/characters/generator/Rando-Sidekick.php'),
(217, 'JINNIE ', 'Chaotic Good', 'Balanced', 'Late Civic', '(F) Strong Feeler', 'Social Systems Perspective', 'Balanced', '(N) Moderately Intuitive', 'Female', 'Loxodon', 'Barbarian', 'Azorius Senate', 'Prostitute/harlot', 'Simic - Azorius: An ailing Sphinx threatens to close Simic laboratories one by one, unless they find a cure to his disease that is slowly turning him into silver. ', 'https://silvermere.org/characters/generator/JINNIE-.php'),
(218, ' ', '', '', '', '', '', '', '', '', '', '', '', '', '', 'https://silvermere.org/characters/generator/-.php'),
(219, 'Boo RaDLEY', 'Lawful Neutral', '(I) Mild Introversion', 'Late Civic', '(F) Slight Feeler', 'Social Systems Perspective', '(J) Prefers a plan', '(N) Slightly Intuitive', 'Female', 'Goblin', 'Barbarian', 'Golgari Swarm', 'Baker', 'Boros - Dimir: A \"Rakdos\" cultist is killed, and is taken in for evidence. His lover wants him back. After speaking with the Orzhov, they offer to bring him back if a 5 for 1 soul ratio is met.', 'https://silvermere.org/characters/generator/Boo-RaDLEY.php'),
(220, 'Hior Cruvan', 'Chaotic Good', 'Balanced', 'Late Civic', '(F) Slight Feeler', 'Blind Egoism', '(J) Moderate planner', '(N) Slightly Intuitive', 'Male', 'Vedalken', 'Barbarian', 'Simic Conclave', 'Candlestick maker', 'Rakdos - Gruul: A recent performance on Borborygmos was not taken too kindly. Clans are beginning to gather up forces.', 'https://silvermere.org/characters/generator/Hior-Cruvan.php'),
(221, 'Marilyn McAvyn', 'Chaotic Good', '(I) Introverted', 'Core Nomad', '(T) Thinker', 'Social Relationships Perspective', '(P) Lives in the moment', '(S) Detail Oriented', 'Female', 'Simic hybrid', 'Wizard', 'Golgari Swarm', 'Falconer', 'Gruul - Golgari: An Ochran Assassin is killing members of the Gruul Clan in order to win favor among her fellow members in House Ochran. She specializes in making sure those bodies can never be found. ', 'https://silvermere.org/characters/generator/Marilyn-McAvyn.php'),
(222, 'Gribox Hazzara', 'Chaotic Neutral', '(I) Introverted', 'Core Prophet', 'Balanced', 'Social Systems Perspective', '(P) Prefers spontaneity', '(S) Slightly Detailed', 'Male', 'Goblin', 'Ranger', 'Simic Conclave', 'Baron', 'Izzet - Azorius: A Precognitve Mage has started to invent visions to frame Izzet inventors that she stalks, in order to advance more quickly through the Azorius ranks. ', 'https://silvermere.org/characters/generator/Gribox-Hazzara.php'),
(223, 'Bo Chi', 'Borderline Evil', '(E) Extroverted', 'Core Civic', '(F) Slight Feeler', 'Blind Egoism', '(P) Prefers spontaneity', '(S) Detail Oriented', 'Male', 'Human', 'Druid', 'Izzet League', 'Cooper', 'Azorius - Selesnya: A crazed prophet is angry at the Azorius for not bending to the laws of nature, and deserve to be wiped out in Trostani\'s name. Trostani does not exactly agree with this.', 'https://silvermere.org/characters/generator/Bo-Chi.php'),
(224, 'Bo Chi', 'Borderline Evil', '(E) Extroverted', 'Early Civic', '(T) Thinker', 'Instrumental Egoism', '(P) Lives in the moment', '(S) Detail Oriented', 'Male', 'Human', 'Warlock', 'Gruul Clans', 'Master of Ceremony', 'Golgari - Golgari: A Kraul warrior begins to believe that Svogthar, the original Golgari Parun, has begun speaking to him telling him that he needs to cleanse the undercity. He gathers a warband of Kraul and begins his raids.', 'https://silvermere.org/characters/generator/Bo-Chi.php'),
(225, 'Bo McElfresh ', 'Lawful Neutral', '(I) Introverted', 'Late Prophet', '(T) Strong Thinker', 'Blind Egoism', '(J) Prefers a plan', '(N) Moderately Intuitive', 'Female', 'Goblin', 'Wizard', 'Boros Legion', 'Magic merchant', 'Azorius - Rakdos: Word spreads that a retiring performer wants to go out with a bang, and their final performance promises to clean out the \"Chamber Pot\" (New Prahv, home of the Azorius Senate).', 'https://silvermere.org/characters/generator/Bo-McElfresh .php'),
(226, ' ', 'True Neutral', '(I) Introverted', 'Late Artist', '(F) Strong Feeler', 'Instrumental Egoism', '(P) Prefers spontaneity', '(S) Slightly Detailed', 'Male', 'Elf', 'Wizard', 'Simic Conclave', 'shipwright', 'Orzhov - Dimir: A group of Dimir agents are plundering the minds of people who have knowledge of Vizkopa Bank. ', 'https://silvermere.org/characters/generator/-.php'),
(227, ' ', '', '', '', '', '', '', '', '', '', '', '', '', '', 'https://silvermere.org/characters/generator/-.php'),
(228, ' ', '', '', '', '', '', '', '', '', '', '', '', '', '', 'https://silvermere.org/characters/generator/-.php'),
(229, ' ', 'True Neutral', '(I) Extreme Introversion', 'Core Prophet', 'Balanced', 'Universal Respect', '(J) Moderate planner', '(S) Detail Obsessed', 'Female', 'Centaur', 'Cleric', 'Azorius Senate', 'Smith (tin, silver)', 'Rakdos - Rakdos: Another ringleader starts performing in someone else\'s territory, and taking away her audience. She decides to put on a \"heart stopping\" performance for him.', 'https://silvermere.org/characters/generator/-.php'),
(230, ' ', 'Lawful Good', '(I) Mild Introversion', 'Late Prophet', '(T) Slight Thinker', 'Universal Respect', 'Balanced', 'Balanced', 'Male', 'Goblin', 'Druid', 'House Dimir', 'Criminal, theif, lookout', 'Dimir - Gruul: A Dimir shapeshifter sells out a Centaurs gang to the Azorius. He wishes to break them out of jail, to get revenge on this Dimir agent who was previously a part of their gang. ', 'https://silvermere.org/characters/generator/-.php'),
(231, ' ', '', '', '', '', '', '', '', '', '', '', '', '', '', 'https://silvermere.org/characters/generator/-.php'),
(232, ' ', 'Borderline Evil', '(E) Strong Extroversion', 'Late Civic', '(F) Strong Feeler', 'Social Relationships Perspective', '(P) Totally random', '(S) Detail Oriented', 'Female', 'Elf', 'Cleric', 'House Dimir', 'Cultist', 'Izzet - Orzhov: A blood drinker vampire is holding Izzet inventors hostage, and will only let them go if they come up with an invention that can constantly feed him or they get eaten.', 'https://silvermere.org/characters/generator/-.php'),
(233, ' ', '', '', '', '', '', '', '', '', '', '', '', '', '', 'https://silvermere.org/characters/generator/-.php'),
(234, 'Darak Dravin', 'Lawful Neutral', '(I) Extreme Introversion', 'Late Civic', 'Balanced', 'Social Systems Perspective', 'Balanced', '(S) Detail Obsessed', 'Male', 'Centaur', 'Cleric', 'Boros Legion', 'Miner (iron)', 'Golgari - Rakdos: A demon wants to garner influence over the undercity, and is courting the daughter of a very important lich. The rest of the Golgari are suspcious of this demon\'s interest in the undercity.', 'https://silvermere.org/characters/generator/Darak-Dravin.php'),
(235, 'Huran Junit', 'Chaotic Neutral', '(E) Extroverted', 'Late Nomad', '(T) Slight Thinker', 'Instrumental Egoism', '(P) Totally random', '(N) Slightly Intuitive', 'Male', 'Loxodon', 'Druid', 'Izzet League', 'Trapper', 'Azorius - Selesnya: A crazed prophet is angry at the Azorius for not bending to the laws of nature, and deserve to be wiped out in Trostani\'s name. Trostani does not exactly agree with this.', 'https://silvermere.org/characters/generator/Huran-Junit.php'),
(236, 'Visanya Turith', 'Chaotic Good', '(I) Introverted', 'Late Nomad', 'Balanced', 'Universal Respect', '(P) Totally random', 'Balanced', 'Female', 'Simic hybrid', 'Fighter', 'House Dimir', 'Botanical Gardener', 'Golgari - Rakdos: A demon wants to garner influence over the undercity, and is courting the daughter of a very important lich. The rest of the Golgari are suspcious of this demon\'s interest in the undercity.', 'https://silvermere.org/characters/generator/Visanya-Turith.php'),
(237, 'Davrin Yissigu', 'True Neutral', '(I) Mild Introversion', 'Late Nomad', '(F) Feeler', 'Social Systems Perspective', '(J) Meticulous planner', '(S) Detail Obsessed', 'Male', 'Simic hybrid', 'Druid', 'Izzet League', 'Printer', 'Rakdos - Azorius: A new law has just been passed that banned all public festivities. It\'s time to show the boring Azorius what a real party looks like!', 'https://silvermere.org/characters/generator/Davrin-Yissigu.php'),
(238, 'Syras Vinellia', 'Lawful Evil', '(I) Mild Introversion', 'Early Civic', '(F) Slight Feeler', 'Instrumental Egoism', '(J) Meticulous planner', '(S) Slightly Detailed', 'Female', 'Elf', 'Paladin', 'Azorius Senate', 'Madhouse caretakers', 'Boros - Azorius: An Azorius lawmage wants to become the sole proprietor of capturing adjunct criminals, after witnessing the escape of Krenko while he was being transported from one prison to another. ', 'https://silvermere.org/characters/generator/Syras-Vinellia.php'),
(239, 'Darrok Buring', 'Borderline Good', '(E) Mild Extroversion', 'Late Civic', '(F) Slight Feeler', 'Universal Respect', '(J) Meticulous planner', '(S) Slightly Detailed', 'Male', 'Loxodon', 'Ranger', 'Simic Conclave', 'Cooper', 'Selesnya - Rakdos: The Rakdos are trying to hold a party on conclave grounds, and they aren\'t taking no for an answer.', 'https://silvermere.org/characters/generator/Darrok-Buring.php'),
(240, 'Jarin Blackfin', 'Chaotic Good', '(E) Extroverted', 'Core Artist', '(F) Strong Feeler', 'Instrumental Egoism', 'Balanced', '(S) Slightly Detailed', 'Male', 'Human', 'Ranger', 'Boros Legion', 'Fishmonger', 'Dimir - Orzhov: An Orzhov Pontiff has knowledge of several Dimir missions. The only reason she isn\'t reporting it, is because the Dimir are still paying an exorbitantly high price. The Dimir wish for the payments to end.', 'https://silvermere.org/characters/generator/Jarin-Blackfin.php'),
(241, 'Trivith Guttir', 'Borderline Evil', '(E) Extroverted', 'Core Civic', '(T) Strong Thinker', 'Universal Respect', '(P) Totally random', '(N) Extremely Intuitive', 'Female', 'Centaur', 'Cleric', 'Boros Legion', 'Academic/scribe', 'Simic - Dimir: For the past few months, the combine has been researching a contagion that is poisonous to several species. Once the formula is derived, the shapeshifting researcher makes off with the discovery.', 'https://silvermere.org/characters/generator/Trivith-Guttir.php'),
(242, 'Zinia Thornhoof', 'True Neutral', '(I) Mild Introversion', 'Early Artist', '(T) Thinker', 'Blind Egoism', 'Balanced', 'Balanced', 'Female', 'Minotaur', 'Wizard', 'Cult of Rakdos', 'Maids/butlers', 'Boros - Izzet: \"Yeah, we kind of have a problem. A self-evolving weird is on its way to Zonot-Seven. If it gets in a Simic laboratory, well…\"', 'https://silvermere.org/characters/generator/Zinia-Thornhoof.php'),
(243, 'Tarryn Bramos', 'Chaotic Neutral', '(E) Mild Extroversion', 'Core Prophet', '(F) Strong Feeler', 'Instrumental Egoism', '(P) Totally random', '(S) Detail Obsessed', 'Female', 'Minotaur', 'Barbarian', 'Orzhov Syndicate', 'Candlestick maker', 'Orzhov - Izzet: An Izzet researcher took more than he needed from the Orzhov and incurred a really massive debt. With the Orzhov coming to claim their debts, he starts setting off explosions in an effort to get away.', 'https://silvermere.org/characters/generator/Tarryn-Bramos.php'),
(244, 'Taryk Jaravin', 'Lawful Evil', '(I) Extreme Introversion', 'Late Nomad', 'Balanced', 'Universal Respect', 'Balanced', '(N) Slightly Intuitive', 'Male', 'Simic hybrid', 'Rogue', 'Orzhov Syndicate', 'Miner (iron)', 'Gruul - Rakdos: A Rakdos Hypnotist has gained control of an entire clan, which he is using to destroy the targets of his choosing. ', 'https://silvermere.org/characters/generator/Taryk-Jaravin.php'),
(245, 'Baruk Yundir', 'Lawful Good', '(I) Extreme Introversion', 'Late Civic', '(F) Strong Feeler', 'Instrumental Egoism', '(J) Prefers a plan', '(S) Slightly Detailed', 'Male', 'Loxodon', 'Sorcerer', 'Golgari Swarm', 'Banker', 'Izzet - Dimir: A Dimir spy is attempting to get the secrets of an Izzet wizard who is attempting to discover imp an Izzet wizard who is attempting to discover immortality. ', 'https://silvermere.org/characters/generator/Baruk-Yundir.php'),
(246, 'Nimix Yigandle', 'Lawful Neutral', '(E) Strong Extroversion', 'Late Nomad', '(T) Strong Thinker', 'Contractual Perspective', '(J) Prefers a plan', '(S) Detail Oriented', 'Male', 'Goblin', 'Sorcerer', 'Simic Conclave', 'Magic merchant', 'Golgari - Izzet: A team of inventors are in the process of creating a volatile herbicide that will wipe out the undercity. ', 'https://silvermere.org/characters/generator/Nimix-Yigandle.php'),
(247, ' ', '', '', '', '', '', '', '', '', '', '', '', '', '', 'https://silvermere.org/characters/generator/-.php'),
(248, 'Veluska Kovac ', 'Lawful Evil', '(E) Mild Extroversion', 'Late Civic', '(T) Thinker', 'Blind Egoism', 'Balanced', '(N) Moderately Intuitive', 'Female', 'Vedalken', 'Warlock', 'Simic Conclave', 'Stable master/head groom', 'Selesnya - Gruul: A Gruul chieftian is upset at the way the Selesnyans treat their animals, and how they coddle them. He decides to send a few wurms their way to encourage natural selection.', 'https://silvermere.org/characters/generator/Veluska Kovac-.php'),
(249, ' ', '', '', '', '', '', '', '', '', '', '', '', '', '', 'https://silvermere.org/characters/generator/-.php'),
(250, 'Shirin Yastoph', 'Chaotic Evil', '(E) Extroverted', 'Late Prophet', 'Balanced', 'Instrumental Egoism', '(P) Prefers spontaneity', '(S) Slightly Detailed', 'Female', 'Human', 'Cleric', 'Cult of Rakdos', 'Street sweeper', 'Izzet - Simic: Simic researchers have challenged the Izzet to a Pokemon battle, and claim that their Krasis\' can defeat any Weird that the Izzet can invent. ', 'https://silvermere.org/characters/generator/Shirin-Yastoph.php'),
(251, 'Joffrey Raffensall', 'Chaotic Good', '(E) Mild Extroversion', 'Core Nomad', 'Balanced', 'Social Systems Perspective', '(J) Meticulous planner', '(S) Detail Obsessed', 'Male', 'Human', 'Rogue', 'Orzhov Syndicate', 'Maids/butlers', 'Dimir - Izzet: A Dimir agent begins working with an unsanctioned Izzet genius, who is currently working on a alchemical formula that will revolutionize agriculture. However, this is causing a series of ever-worsening laboratory mishaps.', 'https://silvermere.org/characters/generator/Joffrey-Raffensall.php'),
(252, 'Jirrix Zazyrox', 'Lawful Evil', '(I) Extreme Introversion', 'Late Nomad', 'Balanced', 'Instrumental Egoism', '(P) Lives in the moment', '(N) Slightly Intuitive', 'Female', 'Goblin', 'Ranger', 'Selesnya Conclave', 'Squire', 'Azorius - Orzhov: An unusually quick-witted Orzhov giant is running for office so that he can legalize his criminal activities, which he is doing in the pursuit of immortality. ', 'https://silvermere.org/characters/generator/Jirrix-Zazyrox.php'),
(253, 'Siranda Nimos', 'Lawful Good', '(E) Extroverted', 'Late Civic', '(F) Feeler', 'Blind Egoism', 'Balanced', 'Balanced', 'Female', 'Human', 'Sorcerer', 'Gruul Clans', 'Orphanage caretaker', 'Gruul - Boros: A rogue giant believes the Gruul are a stain on society and need to be destroyed. He believes that the soul of Razia is driving him towards his ultimate goal, and has declared war on the Gruul.', 'https://silvermere.org/characters/generator/Siranda-Nimos.php'),
(254, 'Grath Mirroon', 'Chaotic Good', '(E) Mild Extroversion', 'Late Prophet', '(F) Slight Feeler', 'Social Relationships Perspective', '(P) Totally random', '(S) Detail Obsessed', 'Male', 'Minotaur', 'Bard', 'House Dimir', 'Lamp lighter', 'Rakdos - Gruul: A recent performance on Borborygmos was not taken too kindly. Clans are beginning to gather up forces.', 'https://silvermere.org/characters/generator/Grath-Mirroon.php'),
(255, ' ', '', '', '', '', '', '', '', '', '', '', '', '', '', 'https://silvermere.org/characters/generator/-.php'),
(256, ' ', 'Chaotic Good', '(I) Extreme Introversion', 'Late Artist', '(F) Strong Feeler', 'Social Relationships Perspective', '(J) Moderate planner', '(N) Moderately Intuitive', 'Male', 'Vedalken', 'Druid', 'Golgari Swarm', 'Winemaker', 'Boros - Selesnya: The Selesnya challenge the 31st legion Skyjeks to a race. As the Boros begin to win, the previously imprisoned Selesnyans begin to cheat.', 'https://silvermere.org/characters/generator/-.php'),
(257, ' ', 'True Neutral', '(I) Introverted', 'Core Artist', '(T) Slight Thinker', 'Universal Respect', 'Balanced', '(N) Moderately Intuitive', 'Female', 'Loxodon', 'Rogue', 'House Dimir', 'Pawn shop owner', 'Rakdos - Rakdos: Another ringleader starts performing in someone else\'s territory, and taking away her audience. She decides to put on a \"heart stopping\" performance for him.', 'https://silvermere.org/characters/generator/-.php'),
(258, ' ', '', '', '', '', '', '', '', '', '', '', '', '', '', 'https://silvermere.org/characters/generator/-.php'),
(259, 'Gerald  Van Es', 'Borderline Evil', '(I) Introverted', 'Late Nomad', '(F) Slight Feeler', 'Contractual Perspective', '(P) Lives in the moment', 'Balanced', 'Male', 'Simic hybrid', 'Wizard', 'Gruul Clans', 'Stone mason', 'Izzet - Gruul: A clan chieftain leads a raid against an Izzet neighborhood as retaliation for their clan members being killed by a wayward weird. ', 'https://silvermere.org/characters/generator/Gerald -Van Es.php'),
(260, 'Papal Enit', 'Lawful Good', '(I) Introverted', 'Core Prophet', '(F) Slight Feeler', 'Social Systems Perspective', '(P) Lives in the moment', '(N) Extremely Intuitive', 'Male', 'Simic hybrid', 'Ranger', 'House Dimir', 'Chimney Sweeps', 'Rakdos - Simic: In the middle of a performance, a caught Krasis changes back into a humanoid form. Upon finding out that one of their prized researchers have been captured, the Simic decide to organize a rescue mission. ', 'https://silvermere.org/characters/generator/Papal-Enit.php'),
(261, ' ', '', '', '', '', '', '', '', '', '', '', '', '', '', 'https://silvermere.org/characters/generator/-.php'),
(262, ' ', '', '', '', '', '', '', '', '', '', '', '', '', '', 'https://silvermere.org/characters/generator/-.php'),
(263, ' ', 'Chaotic Neutral', '(E) Mild Extroversion', 'Early Civic', 'Balanced', 'Universal Respect', 'Balanced', '(S) Detail Obsessed', 'Male', 'Simic hybrid', 'Ranger', 'Selesnya Conclave', 'Florist (cart)', 'Gruul - Golgari: An Ochran Assassin is killing members of the Gruul Clan in order to win favor among her fellow members in House Ochran. She specializes in making sure those bodies can never be found. ', 'https://silvermere.org/characters/generator/-.php'),
(264, ' ', '', '', '', '', '', '', '', '', '', '', '', '', '', 'https://silvermere.org/characters/generator/-.php'),
(265, ' ', 'Lawful Good', '(I) Extreme Introversion', 'Core Civic', '(F) Slight Feeler', 'Social Systems Perspective', '(P) Totally random', '(S) Detail Oriented', 'Male', 'Minotaur', 'Paladin', 'Selesnya Conclave', 'Jailer', 'Rakdos - Simic: In the middle of a performance, a caught Krasis changes back into a humanoid form. Upon finding out that one of their prized researchers have been captured, the Simic decide to organize a rescue mission. ', 'https://silvermere.org/characters/generator/-.php'),
(266, ' ', '', '', '', '', '', '', '', '', '', '', '', '', '', 'https://silvermere.org/characters/generator/-.php'),
(267, ' ', 'Borderline Good', '(I) Mild Introversion', 'Late Civic', '(T) Thinker', 'Contractual Perspective', '(P) Lives in the moment', '(S) Slightly Detailed', 'Male', 'Human', 'Cleric', 'Cult of Rakdos', 'Water bearers', 'Simic - Golgari: A sentient clan of fungus and saprolings take several research stations hostage, and say they will return them to the surface once they are officially recognized in the guildpact.', 'https://silvermere.org/characters/generator/-.php'),
(268, 'Bliptrup Dunmud asdf', 'Chaotic Neutral', '(I) Mild Introversion', 'Late Prophet', '(F) Strong Feeler', 'Instrumental Egoism', 'Balanced', '(S) Detail Obsessed', 'Male', 'Minotaur', 'Fighter', 'Selesnya Conclave', 'Stable master/head groom', 'Izzet - Orzhov: A blood drinker vampire is holding Izzet inventors hostage, and will only let them go if they come up with an invention that can constantly feed him or they get eaten.', 'https://silvermere.org/characters/generator/Bliptrup Dunmud-asdf.php'),
(269, ' ', 'Borderline Good', '(I) Extreme Introversion', 'Core Artist', '(F) Slight Feeler', 'Social Systems Perspective', '(J) Moderate planner', '(S) Detail Oriented', 'Female', 'Human', 'Druid', 'House Dimir', 'Madhouse caretakers', 'Orzhov - Orzhov: Thrulls that have broken free of Orzhov control are causing mischief. If the Obzedat were to discover this, there would be little hope for the owners. ', 'https://silvermere.org/characters/generator/-.php'),
(270, ' ', '', '', '', '', '', '', '', '', '', '', '', '', '', 'https://silvermere.org/characters/generator/-.php'),
(271, ' ', 'Chaotic Good', '(I) Extreme Introversion', 'Early Prophet', '(T) Slight Thinker', 'Instrumental Egoism', '(P) Totally random', '(N) Slightly Intuitive', 'Female', 'Vedalken', 'Ranger', 'Gruul Clans', 'Florist (cart)', 'Azorius - Izzet: An Izzet spellcaster had the great idea to clone himself. The clones escaped, and are now causing a legal headache, and they no longer know who the original is. ', 'https://silvermere.org/characters/generator/-.php'),
(272, ' ', '', '', '', '', '', '', '', '', '', '', '', '', '', 'https://silvermere.org/characters/generator/-.php'),
(273, ' ', 'True Neutral', '(E) Strong Extroversion', 'Core Prophet', '(T) Strong Thinker', 'Social Systems Perspective', '(P) Prefers spontaneity', '(N) Extremely Intuitive', 'Male', 'Vedalken', 'Wizard', 'Gruul Clans', 'Duke', 'Boros - Boros: A crazed angel demands to be worshipped as a god. Aurelia is not pleased.', 'https://silvermere.org/characters/generator/-.php'),
(274, ' ', 'Borderline Evil', '(I) Introverted', 'Late Civic', '(T) Slight Thinker', 'Blind Egoism', '(J) Prefers a plan', 'Balanced', 'Female', 'Goblin', 'Bard', 'Selesnya Conclave', 'Beggar', 'Rakdos - Azorius: A new law has just been passed that banned all public festivities. It\'s time to show the boring Azorius what a real party looks like!', 'https://silvermere.org/characters/generator/-.php'),
(275, 'John ', 'Chaotic Evil', 'Balanced', 'Early Civic', '(F) Strong Feeler', 'Universal Respect', '(P) Totally random', '(S) Slightly Detailed', 'Female', 'Elf', 'Monk', 'Gruul Clans', 'Priest/cleric', 'Azorius - Azorius: A disillusioned judge is letting anything go, including the sanctioning of Rakdos murder-fests, as long as they pay the right price. ', 'https://silvermere.org/characters/generator/John-.php'),
(276, 'John ', 'True Neutral', '(I) Extreme Introversion', 'Core Prophet', '(T) Thinker', 'Social Systems Perspective', '(P) Totally random', '(S) Detail Oriented', 'Female', 'Human', 'Ranger', 'Boros Legion', 'Menagerie/zoo keeper', 'Boros - Golgari: A kraul death priest seeks to revive the Nephillim. The summoning grounds are underneath Sunhome. Kraul have been joining the Legion in record numbers as of late. ', 'https://silvermere.org/characters/generator/John-.php'),
(277, 'John Deveoo', 'Chaotic Good', '(E) Mild Extroversion', 'Late Prophet', '(F) Strong Feeler', 'Blind Egoism', '(J) Prefers a plan', '(S) Detail Oriented', 'Female', 'Loxodon', 'Fighter', 'Cult of Rakdos', 'Rope maker', 'Gruul - Izzet: In direct opposition of the Gruul druids, an Izzet wizard is creating a device that can alter the weather on a large scale basis. The Rubblebelt has been the testing grounds for this new device.', 'https://silvermere.org/characters/generator/John-Deveoo.php'),
(278, ' ', 'Lawful Good', '(E) Strong Extroversion', 'Early Prophet', '(T) Strong Thinker', 'Contractual Perspective', '(J) Moderate planner', '(N) Moderately Intuitive', 'Male', 'Goblin', 'Monk', 'Selesnya Conclave', 'Falconer', 'Simic - Dimir: For the past few months, the combine has been researching a contagion that is poisonous to several species. Once the formula is derived, the shapeshifting researcher makes off with the discovery.', 'https://silvermere.org/characters/generator/-.php'),
(279, ' ', '', '', '', '', '', '', '', '', '', '', '', '', '', 'https://silvermere.org/characters/generator/-.php');

-- --------------------------------------------------------

--
-- Table structure for table `Class`
--

CREATE TABLE `Class` (
  `id` int(11) NOT NULL,
  `Class` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `Class`
--

INSERT INTO `Class` (`id`, `Class`) VALUES
(1, 'Barbarian'),
(2, 'Bard'),
(3, 'Cleric'),
(4, 'Druid'),
(5, 'Fighter'),
(6, 'Monk'),
(7, 'Paladin'),
(8, 'Ranger'),
(9, 'Rogue'),
(10, 'Sorcerer'),
(11, 'Warlock'),
(12, 'Wizard');

-- --------------------------------------------------------

--
-- Table structure for table `Extraversion`
--

CREATE TABLE `Extraversion` (
  `id` int(11) NOT NULL,
  `extroversion` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Extraversion`
--

INSERT INTO `Extraversion` (`id`, `extroversion`) VALUES
(1, '(E) Strong Extroversion'),
(2, '(E) Extroverted'),
(3, '(E) Mild Extroversion'),
(4, 'Balanced'),
(5, '(I) Mild Introversion'),
(6, '(I) Introverted'),
(7, '(I) Extreme Introversion');

-- --------------------------------------------------------

--
-- Table structure for table `generation`
--

CREATE TABLE `generation` (
  `id` int(11) NOT NULL,
  `generation` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `generation`
--

INSERT INTO `generation` (`id`, `generation`) VALUES
(1, 'Early Civic'),
(2, 'Core Civic'),
(3, 'Late Civic'),
(4, 'Early Artist'),
(5, 'Core Artist'),
(6, 'Late Artist'),
(7, 'Early Prophet'),
(8, 'Core Prophet'),
(9, 'Late Prophet'),
(10, 'Early Nomad'),
(11, 'Core Nomad'),
(12, 'Late Nomad');

-- --------------------------------------------------------

--
-- Table structure for table `judging`
--

CREATE TABLE `judging` (
  `id` int(11) NOT NULL,
  `judging` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `judging`
--

INSERT INTO `judging` (`id`, `judging`) VALUES
(1, '(F) Strong Feeler'),
(2, '(F) Feeler'),
(3, '(F) Slight Feeler'),
(4, 'Balanced'),
(5, '(T) Slight Thinker'),
(6, '(T) Thinker'),
(7, '(T) Strong Thinker');

-- --------------------------------------------------------

--
-- Table structure for table `morality`
--

CREATE TABLE `morality` (
  `id` int(11) NOT NULL,
  `morality` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `morality`
--

INSERT INTO `morality` (`id`, `morality`) VALUES
(1, 'Universal Respect'),
(2, 'Contractual Perspective'),
(3, 'Social Systems Perspective'),
(4, 'Social Relationships Perspective'),
(5, 'Instrumental Egoism'),
(6, 'Blind Egoism');

-- --------------------------------------------------------

--
-- Table structure for table `planning`
--

CREATE TABLE `planning` (
  `id` int(11) NOT NULL,
  `planning` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `planning`
--

INSERT INTO `planning` (`id`, `planning`) VALUES
(1, '(J) Meticulous planner'),
(2, '(J) Moderate planner'),
(3, '(J) Prefers a plan'),
(4, 'Balanced'),
(5, '(P) Prefers spontaneity'),
(6, '(P) Lives in the moment'),
(7, '(P) Totally random');

-- --------------------------------------------------------

--
-- Table structure for table `profession`
--

CREATE TABLE `profession` (
  `id` int(11) NOT NULL,
  `profession` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profession`
--

INSERT INTO `profession` (`id`, `profession`) VALUES
(1, 'Store Keeper'),
(2, 'Tavern/Inn keeper'),
(3, 'Guard'),
(4, 'Sherriff/Guard'),
(5, 'Captain/Constable'),
(6, 'Magistrate'),
(7, 'Master of Ceremony'),
(8, 'Food vendor'),
(9, 'Pawn shop owner'),
(10, 'Magic merchant'),
(11, 'Arboretum'),
(12, 'Botanical Gardener'),
(13, 'Lyceum scholar/instructor'),
(14, 'Coliseum gladiator/slaver'),
(15, 'Fighting pit ringmaster'),
(16, 'Clay mason'),
(17, 'Stone mason'),
(18, 'Printer'),
(19, 'Carpenter/wood worker'),
(20, 'Apothecary/pharmacist'),
(21, 'Alchemist'),
(22, 'Butcher'),
(23, 'Smoke shop tobacconist'),
(24, 'Baker'),
(25, 'Candlestick maker'),
(26, 'Fletcher'),
(27, 'Bowyer'),
(28, 'Seamstress/tailor'),
(29, 'Smith (tin, silver)'),
(30, 'Ferrier'),
(31, 'Furrier'),
(32, 'Jeweler'),
(33, 'Trapper'),
(34, 'Falconer'),
(35, 'Tanner'),
(36, 'Herdsmen/Shepard'),
(37, 'Farmers market'),
(38, 'Grocer'),
(39, 'Fishmonger'),
(40, 'Cartographer'),
(41, 'Librarian'),
(42, 'Book Store clerk'),
(43, 'Printer'),
(44, 'Florist (cart)'),
(45, 'Menagerie/zoo keeper'),
(46, 'Miner (silver)'),
(47, 'Miner (gold)'),
(48, 'Miner (copper)'),
(49, 'Miner (iron)'),
(50, 'Miner (coal)'),
(51, 'Slave'),
(52, 'Serf'),
(53, 'Artisans'),
(54, 'Painters'),
(55, 'Pottery mason'),
(56, 'Priests'),
(57, 'Madhouse caretakers'),
(58, 'Petty obility/mayor'),
(59, 'Knight'),
(60, 'Baron'),
(61, 'Count'),
(62, 'Duke'),
(63, 'Monarch or emperor'),
(64, 'Council member'),
(65, 'Cooper'),
(66, 'Gongfarmer'),
(67, 'Cobbler (shoes)'),
(68, 'Glass blower'),
(69, 'Courier/messenger'),
(70, 'Stablehand'),
(71, 'Doctor/Plaguedoctor'),
(72, 'Midwife'),
(73, 'Brewer'),
(74, 'Winemaker'),
(75, 'Barber'),
(76, 'Street Cleaners'),
(77, 'Chimney Sweeps'),
(78, 'Maids/butlers'),
(79, 'Lawyer'),
(80, 'Academic/scribe'),
(81, 'Diviner/Oracle'),
(82, 'Beggar'),
(83, 'Town crier'),
(84, 'Grave digger'),
(85, 'Wainwright'),
(86, 'Caravansary/traveling merchant'),
(87, 'Dock worker/sailor'),
(88, 'shipwright'),
(89, 'Guild master/member'),
(90, 'Grange foreman'),
(91, 'Spinster'),
(92, 'Bathhouse/hot springs worker'),
(93, 'Thatchers/roofers'),
(94, 'Lumber mill worker'),
(95, 'Wheelwright'),
(96, 'Millwright'),
(97, 'Banker'),
(98, 'Veterinary'),
(99, 'Prostitute/harlot'),
(100, 'Washer'),
(101, 'Water bearers'),
(102, 'Criminal, theif, lookout'),
(103, 'Armorer'),
(104, 'Street sweeper'),
(105, 'Carriage driver'),
(106, 'Gambler'),
(107, 'Lamp lighter'),
(108, 'Lumberjack'),
(109, 'Ratter'),
(110, 'Dyer'),
(111, 'Rope maker'),
(112, 'Sail maker'),
(113, 'Cultist'),
(114, 'Tax collector'),
(115, 'Orphanage caretaker'),
(116, 'Advisors/sages'),
(117, 'Philosophers'),
(118, 'Soldiers/generals'),
(119, 'Priest/cleric'),
(120, 'Squire'),
(121, 'Soap maker'),
(122, 'Parchment maker'),
(123, 'Jailer'),
(124, 'Bailiff'),
(125, 'Lector'),
(126, 'Mudlark/scavenger'),
(127, 'Stable master/head groom');

-- --------------------------------------------------------

--
-- Table structure for table `race`
--

CREATE TABLE `race` (
  `id` int(11) NOT NULL,
  `race` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `race`
--

INSERT INTO `race` (`id`, `race`) VALUES
(1, 'Dragonborn'),
(2, 'Dwarf'),
(3, 'Elf'),
(4, 'Gnome'),
(5, 'Half Elf'),
(6, 'Half Orc'),
(7, 'Halfling'),
(8, 'Human'),
(9, 'Tiefling'),
(10, 'Minotaur'),
(11, 'Human'),
(12, 'Human'),
(13, 'Human'),
(14, 'Human'),
(15, 'Dwarf'),
(16, 'Dwarf'),
(17, 'Dwarf'),
(18, 'Elf'),
(19, 'Elf'),
(20, 'Half Elf'),
(21, 'Centaur'),
(22, 'Goblin'),
(23, 'Loxodon'),
(24, 'Simic Hybrid'),
(25, 'Vedalken');

-- --------------------------------------------------------

--
-- Table structure for table `ravguild`
--

CREATE TABLE `ravguild` (
  `id` int(11) NOT NULL,
  `guild` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ravguild`
--

INSERT INTO `ravguild` (`id`, `guild`) VALUES
(1, 'Azorius Senate'),
(2, 'Gruul Clans'),
(3, 'Golgari Swarm'),
(4, 'House Dimir'),
(5, 'Selesnya Conclave'),
(6, 'Boros Legion'),
(7, 'Cult of Rakdos'),
(8, 'Orzhov Syndicate'),
(9, 'Simic Conclave'),
(10, 'Izzet League');

-- --------------------------------------------------------

--
-- Table structure for table `ravrace`
--

CREATE TABLE `ravrace` (
  `id` int(11) NOT NULL,
  `race` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ravrace`
--

INSERT INTO `ravrace` (`id`, `race`) VALUES
(1, 'Human'),
(2, 'Elf'),
(3, 'Centaur'),
(4, 'Goblin'),
(5, 'Loxodon'),
(6, 'Minotaur'),
(7, 'Simic hybrid'),
(8, 'Vedalken');

-- --------------------------------------------------------

--
-- Table structure for table `ravrumor`
--

CREATE TABLE `ravrumor` (
  `rumor` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ravrumor`
--

INSERT INTO `ravrumor` (`rumor`) VALUES
('Azorius - Boros: A Wojek wants to put his Lawmage friend into power. Together they heckle the Golgari into rioting and then arrest the rioters, thus making the lawmage look exceptionally good.'),
('Azorius - Dimir: Several Lawmages have lost all of their memories. A mind drinker vampire has gone rogue in an effort to become Lazav\'s right-hand vampire.'),
('Azorius - Golgari: A Medusa is going around petrifying various Azorius senators. She wants to challenge Vraska and become the new queen. '),
('Azorius - Gruul: A druid is manipulating the wildlife to attack Azorius neighborhoods. She wants to show Borborygmos that she is ready to challenge him. '),
('Azorius - Izzet: An Izzet spellcaster had the great idea to clone himself. The clones escaped, and are now causing a legal headache, and they no longer know who the original is. '),
('Azorius - Orzhov: An unusually quick-witted Orzhov giant is running for office so that he can legalize his criminal activities, which he is doing in the pursuit of immortality. '),
('Azorius - Rakdos: Word spreads that a retiring performer wants to go out with a bang, and their final performance promises to clean out the \"Chamber Pot\" (New Prahv, home of the Azorius Senate).'),
('Azorius - Simic: A Simic researcher has been taking various Lawmages, and experimenting on them, in order to discover the secret to unbinding the law magic surrounding a powerful magic item. '),
('Azorius - Selesnya: A crazed prophet is angry at the Azorius for not bending to the laws of nature, and deserve to be wiped out in Trostani\'s name. Trostani does not exactly agree with this.'),
('Azorius - Azorius: A disillusioned judge is letting anything go, including the sanctioning of Rakdos murder-fests, as long as they pay the right price. '),
('Boros - Azorius: An Azorius lawmage wants to become the sole proprietor of capturing adjunct criminals, after witnessing the escape of Krenko while he was being transported from one prison to another. '),
('Boros - Boros: A crazed angel demands to be worshipped as a god. Aurelia is not pleased.'),
('Boros - Dimir: A \"Rakdos\" cultist is killed, and is taken in for evidence. His lover wants him back. After speaking with the Orzhov, they offer to bring him back if a 5 for 1 soul ratio is met.'),
('Boros - Golgari: A kraul death priest seeks to revive the Nephillim. The summoning grounds are underneath Sunhome. Kraul have been joining the Legion in record numbers as of late. '),
('Boros - Gruul: The Gruul have torn down the 4th garrison stationed in the Rubblebelt. They must be up to something.'),
('Boros - Izzet: \"Yeah, we kind of have a problem. A self-evolving weird is on its way to Zonot-Seven. If it gets in a Simic laboratory, well…\"'),
('Boros - Orzhov: An Orzhov knight had assets locked up in a simic experiment gone illegal, and the Boros have kept the jewels as evidence.'),
('Boros - Rakdos: An infamous skeleton ringleader needs new bones. He is holding a gladiator pit to get a new set. The Boros send in a sting team to this gladiator pit.'),
('Boros - Selesnya: The Selesnya challenge the 31st legion Skyjeks to a race. As the Boros begin to win, the previously imprisoned Selesnyans begin to cheat.'),
('Boros - Simic: The Simic wish to replace the Izzet as the tech and weapon supplier of the Boros. They start churning out inventions and Quality Control goes down. This leads to some dangerous mishaps. '),
('Dimir - Azorius: A vengeful imperator is pulling all the stops to attempt to get a warrant to search Duskmantle. (As specified in the guildpact with 100% vote in favor). She wishes to confiscate any magical items she comes across.'),
('Dimir - Boros: An Angel commander believes that there is a Dimir agent in their midst, and is willing to purge the entire garrison to eliminate the spy. '),
('Dimir - Dimir: A Dimir mindmage has been caught offering sacrifices to Rakdos. He is now hunting down and memory wiping everyone who witnessed this event. '),
('Dimir - Golgari: A Devkarin Lich desires the information that the Dimir possess. He develops a mind-controlling fungus, in an attempt to infiltrate Dimir.'),
('Dimir - Gruul: A Dimir shapeshifter sells out a Centaurs gang to the Azorius. He wishes to break them out of jail, to get revenge on this Dimir agent who was previously a part of their gang. '),
('Dimir - Izzet: A Dimir agent begins working with an unsanctioned Izzet genius, who is currently working on a alchemical formula that will revolutionize agriculture. However, this is causing a series of ever-worsening laboratory mishaps.'),
('Dimir - Orzhov: An Orzhov Pontiff has knowledge of several Dimir missions. The only reason she isn\'t reporting it, is because the Dimir are still paying an exorbitantly high price. The Dimir wish for the payments to end.'),
('Dimir - Rakdos: Flyers have begun spreading around the city advertising a Rakdos magician. In big bold red ink are the words \"And for my next trick, I will make Duskmantle appear!\"'),
('Dimir - Selsenya: A Selesnya splinter group calling themselves \"The Stake of Truth\" seek to eradicate the vampire menace in the city, and have been surprisingly effective in their efforts.'),
('Dimir - Simic: A Biomancer has created the perfect predator of shapeshifters. (Use the stats for Invisible Stalker to represent this creature). '),
('Golgari - Azorius: A sadistic warden tortures Golgari prisoners, due to bigotry and in the name of the law.'),
('Golgari - Boros: Hazardous laboratories across Ravnica have been shut down by a overzealous Boros captain. This is creating a shortage of bodies for the Golgari.'),
('Golgari - Dimir: A Dimir agent disguised as a Rakdos ringleader discovers a mushroom that induces rage in its participants. They proceed to raid fungal farms in Golgari territory. '),
('Golgari - Golgari: A Kraul warrior begins to believe that Svogthar, the original Golgari Parun, has begun speaking to him telling him that he needs to cleanse the undercity. He gathers a warband of Kraul and begins his raids.'),
('Golgari - Gruul: To prove that they are worthy of joining a clan, a giant has started a rampage in the undercity in search of a medusa\'s head. '),
('Golgari - Izzet: A team of inventors are in the process of creating a volatile herbicide that will wipe out the undercity. '),
('Golgari - Orzhov: An Orzhov spirit has taken over a troll, in an effort to force people into paying its debts for it. '),
('Golgari - Rakdos: A demon wants to garner influence over the undercity, and is courting the daughter of a very important lich. The rest of the Golgari are suspcious of this demon\'s interest in the undercity.'),
('Golgari - Selesnya: A Selesnyan serial killer lures victims into the undercity, where they can trap them with vines and suffocate them. The blame is pinned on the Golgari.'),
('Golgari - Simic: A researcher creates a moss that threatens to destroy much of the city\'s food production. They plan to sell their new tribble like creature, as an alternative food source. '),
('Gruul - Azorius: A vengeful imperator persecutes the Gruul, in retaliation for a Gruul raid that killed his parents. parents. She seeks to end the Gruul permanently through the use of a viral contagion.'),
('Gruul - Boros: A rogue giant believes the Gruul are a stain on society and need to be destroyed. He believes that the soul of Razia is driving him towards his ultimate goal, and has declared war on the Gruul.'),
('Gruul - Dimir: A Shapeshifter has replaced one of the A Shapeshifter has replaced one of the chieftians and is provoking CiA Shapeshifter has replaced one of the chieftians and is provoking Civil War among the clans.'),
('Gruul - Golgari: An Ochran Assassin is killing members of the Gruul Clan in order to win favor among her fellow members in House Ochran. She specializes in making sure those bodies can never be found. '),
('Gruul - Gruul: A newer chieftian who has very few feats to his name, is challenging Borborygmos to a fight. There have been rumors that he has cheated his way to get this far. '),
('Gruul - Izzet: In direct opposition of the Gruul druids, an Izzet wizard is creating a device that can alter the weather on a large scale basis. The Rubblebelt has been the testing grounds for this new device.'),
('Gruul - Orzhov: An Orzhov knight challenges a Gruul chieftian so that he may reobtain his ancestors ancient sword, which is rumored to have magic that allows it\'s user to leave the plane. '),
('Gruul - Rakdos: A Rakdos Hypnotist has gained control of an entire clan, which he is using to destroy the targets of his choosing. '),
('Gruul - Selesnya: A crazed loxodon evangel is preying upon people in the Rubblebelt, and torturing them until they decide to join the conclave. '),
('Gruul - Simic: A Simic researcher has been capturing members of the Gruul, and experimenting on them to the point that they become slaves to him. He then shrouds their true identity through the use of biomancy. '),
('Izzet - Azorius: A Precognitve Mage has started to invent visions to frame Izzet inventors that she stalks, in order to advance more quickly through the Azorius ranks. '),
('Izzet - Boros: A squad of corrupt Boros soldiers are extorting Izzet inventors to get them cheaper and better weapons and threaten to jail anyone who does not comply.'),
('Izzet - Dimir: A Dimir spy is attempting to get the secrets of an Izzet wizard who is attempting to discover imp an Izzet wizard who is attempting to discover immortality. '),
('Izzet - Golgari: A beloved statue of a famous Izzet inventor suddenly returns to life after being petrified for a hundred years. '),
('Izzet - Gruul: A clan chieftain leads a raid against an Izzet neighborhood as retaliation for their clan members being killed by a wayward weird. '),
('Izzet - Izzet: A sabotuer has been destroying rival inventors shops in the hopes that hers will rise up to take their place.'),
('Izzet - Orzhov: A blood drinker vampire is holding Izzet inventors hostage, and will only let them go if they come up with an invention that can constantly feed him or they get eaten.'),
('Izzet - Rakdos: A Ringleader has seen an Izzet inventor carrying around a very expensive and explosive magic item, and needs it for his next show.'),
('Izzet - Selesnya: A Selesnyan leader has been disrupting buildings, claiming they aren\'t in harmony with nature. The truth is that she is getting paid on the side to target specific buildings so that a specific Izzet company can rise up the ranks faster.'),
('Izzet - Simic: Simic researchers have challenged the Izzet to a Pokemon battle, and claim that their Krasis\' can defeat any Weird that the Izzet can invent. '),
('Orzhov - Azorius: An ambitious Lawmage is cracking down on Orzhov criminal activity. They must be silenced as quickly as possible. '),
('Orzhov - Boros: A member of the Boros has not paid their debts as of late, however, they just recently got promoted to Wojek and threaten retaliation. '),
('Orzhov - Dimir: A group of Dimir agents are plundering the minds of people who have knowledge of Vizkopa Bank. '),
('Orzhov - Golgari: Several neighborhoods which are under Orzhov protection have started contracting a dangerous and contagious magical infection. All of these neighborhoods are especially poor and have to subsist off of Golgari food. They are demanding retribution.'),
('Orzhov - Gruul: A Gruul clan lets it\'s wurms loose upon Orzhov neighborhoods in an effort to destroy significant monuments.'),
('Orzhov - Izzet: An Izzet researcher took more than he needed from the Orzhov and incurred a really massive debt. With the Orzhov coming to claim their debts, he starts setting off explosions in an effort to get away.'),
('Orzhov - Orzhov: Thrulls that have broken free of Orzhov control are causing mischief. If the Obzedat were to discover this, there would be little hope for the owners. '),
('Orzhov - Rakdos: A Rakdos festival begins to slander the Orzhov Syndicate, and the audience is really enjoying it. If they aren\'t stopped soon, the Orzhov reputation will be shattered.'),
('Orzhov - Selesnya: A group of Selesnyans feel as if the people are being oppressed, and begin to start a campaign to fight against the Orzhov. They pass out flyers, recruit members, and even stage attacks against them.'),
('Orzhov - Simic: The Simic have begun experimenting on the local gargoyles, making them more sentient, and much more likely to disobey Orzhov orders. '),
('Rakdos - Azorius: A new law has just been passed that banned all public festivities. It\'s time to show the boring Azorius what a real party looks like!'),
('Rakdos - Boros: The Boros have come to stop the show, but what they don\'t realize is that they are the main event!'),
('Rakdos - Dimir: One of the ringleaders have caught wind of a Dimir spy in their ranks. Rather than killing him, he decides to let him plan the next event.'),
('Rakdos - Golgari: We need a troll for the next performance. Or 2. Probably 5 actually.'),
('Rakdos - Gruul: A recent performance on Borborygmos was not taken too kindly. Clans are beginning to gather up forces.'),
('Rakdos - Izzet: Unintended explosions keep on happening at every performance. Find the perpetrator and bring him to the ringleader. '),
('Rakdos - Orzhov: Any performance being held in Orzhov territory now has a tax associated with it. Not obeying the new tax laws usually means that ghosts will be attending the next show.'),
('Rakdos - Rakdos: Another ringleader starts performing in someone else\'s territory, and taking away her audience. She decides to put on a \"heart stopping\" performance for him.'),
('Rakdos - Selesnya: A small group of Selesnyan soldiers misunderstand a performance, and are led to believe that the Rakdos will be attacking them soon. They decide to attack the Rakdos first.'),
('Rakdos - Simic: In the middle of a performance, a caught Krasis changes back into a humanoid form. Upon finding out that one of their prized researchers have been captured, the Simic decide to organize a rescue mission. '),
('Selesnya - Azorius: An Archon of the Triumvirate believes that social gatherings lead to crimes, and has made such actions illegal. Anyone who disobeys is put into prison. '),
('Selesnya - Boros: Boros soldiers set up a garrison to keep an eye on both the Gruul and the Selesnya.'),
('Selesnya - Dimir: Spybugs have been coming in much larger and more obvious waves. This many drones is very unusual. '),
('Selesnya - Golgari: Golgari spores are starting to claim old gardens, and have killed most of the plants there. '),
('Selesnya - Gruul: A Gruul chieftian is upset at the way the Selesnyans treat their animals, and how they coddle them. He decides to send a few wurms their way to encourage natural selection.'),
('Selesnya - Izzet: An Izzet inventor has set up a laboratory floating an inch above the Conclave\'s grounds in order to avoid Azorius laws that prevent laboratories from being built on unsanctioned ground. '),
('Selesnya - Orzhov: A coin has begun being passed around the conclave that has magic that puts any user of the coin in debt of the Orzhov. '),
('Selesnya - Rakdos: The Rakdos are trying to hold a party on conclave grounds, and they aren\'t taking no for an answer.'),
('Selesnya - Selesnya: A prophet claiming to be the voice of Mat\'Selesnya preaches that the Selesnyans need to go to war against the other guilds. '),
('Selesnya - Simic: A sentient Krasis wishes to join the Selesnya conclave. He gets denied due to having tendencies for violent outbursts. He has a violent outburst due to this response.'),
('Simic - Azorius: An ailing Sphinx threatens to close Simic laboratories one by one, unless they find a cure to his disease that is slowly turning him into silver. '),
('Simic - Boros: A minotaur sergeant, head over heels for a farming Golgari Gorgon, has begun cracking down on her competition a merfolk specializing in self-watering fungus.'),
('Simic - Dimir: For the past few months, the combine has been researching a contagion that is poisonous to several species. Once the formula is derived, the shapeshifting researcher makes off with the discovery.'),
('Simic - Golgari: A sentient clan of fungus and saprolings take several research stations hostage, and say they will return them to the surface once they are officially recognized in the guildpact.'),
('Simic - Gruul: Smaller labs are being raided by a scrawny Gruul human. He seeks to make himself strong enough to challenge Borborygmos, and has been growing more dangerous with each raid. '),
('Simic - Izzet: Many generations ago a joint experiment went horribly wrong. Results of that experiment are starting to resurface as a recent breakthrough shed new light on the situation, causing the ancestors of these experiments to both step up asking for the credit and reward.'),
('Simic - Orzhov: Biomancers on the brink of discovery describe being stalked by gargoyles until they disappear suddenly. '),
('Simic - Rakdos: Zeganna believes a biomancer to have fallen with the cult, as several Krasis were used as last night\'s show stopper.'),
('Simic - Selesnya: A well-meaning Selesnyan mage has broken into several labs seeking for a cure to his daughters illness. In his ignorance, he is actually making several creatures that are terrifying the local Ravnican citizens.'),
('Simic - Simic: An especially zealous Vedalken has taken the guilds goal of evolution to the extreme. He pumps his tests subjects full of the drugs and magic before torturing them to “ensure survival of the fittest.” His experiments result in violent and dangerous creatures that are “not good enough”');

-- --------------------------------------------------------

--
-- Table structure for table `sensing`
--

CREATE TABLE `sensing` (
  `id` int(11) NOT NULL,
  `sensing` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sensing`
--

INSERT INTO `sensing` (`id`, `sensing`) VALUES
(1, '(S) Detail Obsessed'),
(2, '(S) Detail Oriented'),
(3, '(S) Slightly Detailed'),
(4, 'Balanced'),
(5, '(N) Slightly Intuitive'),
(6, '(N) Moderately Intuitive'),
(7, '(N) Extremely Intuitive');

-- --------------------------------------------------------

--
-- Table structure for table `sex`
--

CREATE TABLE `sex` (
  `id` int(11) NOT NULL,
  `sex` varchar(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sex`
--

INSERT INTO `sex` (`id`, `sex`) VALUES
(1, 'Male'),
(2, 'Female');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alignment`
--
ALTER TABLE `alignment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Class`
--
ALTER TABLE `Class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Extraversion`
--
ALTER TABLE `Extraversion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `generation`
--
ALTER TABLE `generation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `judging`
--
ALTER TABLE `judging`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `morality`
--
ALTER TABLE `morality`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `planning`
--
ALTER TABLE `planning`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profession`
--
ALTER TABLE `profession`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `race`
--
ALTER TABLE `race`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sensing`
--
ALTER TABLE `sensing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sex`
--
ALTER TABLE `sex`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alignment`
--
ALTER TABLE `alignment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `characters`
--
ALTER TABLE `characters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=280;
--
-- AUTO_INCREMENT for table `Class`
--
ALTER TABLE `Class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `Extraversion`
--
ALTER TABLE `Extraversion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `generation`
--
ALTER TABLE `generation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `judging`
--
ALTER TABLE `judging`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `morality`
--
ALTER TABLE `morality`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `planning`
--
ALTER TABLE `planning`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `profession`
--
ALTER TABLE `profession`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;
--
-- AUTO_INCREMENT for table `race`
--
ALTER TABLE `race`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `sensing`
--
ALTER TABLE `sensing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `sex`
--
ALTER TABLE `sex`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
