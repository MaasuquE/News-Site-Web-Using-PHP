-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2020 at 10:36 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news-site`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `post` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `post`) VALUES
(30, 'Sports', 3),
(31, 'Politics', 1),
(32, 'Business', 1),
(33, 'International', 1),
(34, 'Entertainment', 1),
(35, 'Health', 1);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `category` varchar(100) NOT NULL,
  `post_date` varchar(50) NOT NULL,
  `author` int(11) NOT NULL,
  `post_img` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `title`, `description`, `category`, `post_date`, `author`, `post_img`) VALUES
(39, 'Babar, Imam ruled out of NZ Test series opener', 'Babar Azam and Imam-ul-Haq have been ruled out of Pakistan\'s first Test against New Zealand in Mount Maunganui. Mohammad Rizwan will captain the side in Babar\'s absence, becoming the 33rd Test captain of Pakistan.\r\n\r\nBabar had fractured his right thumb and Imam had fractured his left thumb during training sessions in Queenstown last week and both the players are yet to return to the nets. The team\'s medical staff is closely monitoring their progress and a decision on their participation in the second Test, which starts in Christchurch on 3 January, will be made closer to the time, Pakistan Cricket Board said in a release.\r\n\r\nThe selection committee has also named Imran Butt from Balochistan in the 17-man Test squad for the two Tests. The 24-year-old scored 191 runs in three Quaid-e-Azam Trophy matches this year before boarding a flight to New Zealand. He had also topped the batting charts in the first-class tournament last year with 934 runs at an average of over 62, which included four centuries and three half-centuries.\r\n\r\n\"Contrary to the T20I side, the Test side appears to be pretty organised and we boast some experienced cricketers, both in batting and bowling departments. With some competitive cricket on the tour now under the belt, I am hoping we will be a better outfit in the longer version of the game,\" head coach Misbah-ul-Haq said.\r\n\r\n\"Although it will be nearly two weeks to Babar\'s injury when the first Test starts, it will be hard on him and the team to play him without any net sessions. I remain confident and optimistic that other players will rise to the occasion in Mount Maunganui and use the opportunity to rise to the occasion and put the disappointment of the T20I series behind them.\"', '30', '21 Dec, 2020', 24, 'sports1.jpg'),
(40, 'Hasina asks Awami League leaders to face situations with patience', 'â€œBangladesh is a country built in the spirit of secularism. People of all religions are equal here,â€ she said at the partyâ€™s Victory Day meeting via video conferencing from the Ganabhaban in Dhaka on Wednesday.\r\n\r\nNoting that hardline Islamist groups are objecting to Bangabandhuâ€™s statues, she said, â€œWe canâ€™t subject people of other religions to neglect just because we are a Muslim-majority country. We must remember that people from all groups sacrificed their lives to earn independence for this country.â€\r\n\r\nâ€œSo everyone will live in this country with equal rights regardless of their religion and race. We believe that everyone will have the freedom to practise their own religion.\r\n\r\nIslam teaches us that. Prophet Mohammad has also taught us that.\r\nâ€œSo, you must face any situation showing tolerance,â€ Hasina told her colleagues.\r\nâ€œAnd rather than listening to whatever the people say, we will focus on how much weâ€™re doing for the country. This is what we should keep in mind so we will be able to make the right decision and do the right things,â€ she said.\r\n', '31', '21 Dec, 2020', 24, 'politics1.jpg'),
(41, 'Bidenâ€™s inaugural will be mostly virtual, but money from donors will be real', 'President-elect Joe Bidenâ€™s allies have begun an ambitious campaign to raise millions of dollars from corporations and individuals by offering special â€œVIP participationâ€ in reimagined inaugural festivities that will be largely virtual because of the coronavirus pandemic.To create an air of celebration, Bidenâ€™s inaugural committee said it was raising private funds to pay for virtual events that will echo the Democratic convention this year, which featured a 50-state roll call from spots around the nation. There are also plans for a â€œvirtual concertâ€ with major performers whose names have not yet been released â€” and possibly for an in-person event later in the year.\r\n\r\nThe contrast between the constraints of putting on inaugural festivities in the midst of a public health crisis and fundraising as usual underscores how donations to an inaugural are not just about getting good seats for the swearing-in or tickets to the glitziest black-tie balls. They are also a way for corporations and well-heeled individuals to curry favour with a new administration, a reality that prompted liberal groups on Wednesday to ask Bidenâ€™s inaugural committee to forgo corporate donations.\r\n\r\nPresident Donald Trumpâ€™s inauguration nearly four years ago took the practice to a new level. It became an access-peddling bazaar of sorts, and aspects of its record fundraising and spending emerged as the subjects of investigations.', '33', '21 Dec, 2020', 24, 'inter1.jpg'),
(42, 'Liverpool smash seven past Palace, Arsenal lose again', 'Champions Liverpool are five points clear at the top of the Premier League after a 7-0 away hammering of Crystal Palace while Arsenal\'s troubles continued with a 2-1 defeat at second-placed Everton on Saturday.\r\n\r\nManchester City got back to winning ways with a 1-0 victory at in-form Southampton while Newcastle United were held to a 1-1 draw at home to struggling Fulham.\r\n\r\nLiverpool have 31 points from 14 games with Everton five points behind and Tottenham Hotspur, who host Leicester City on Sunday, a further point back.\r\n\r\nJuergen Klopp\'s side had not won away from home in the league since September but broke that dry spell in spectacular fashion, recording their biggest-ever top flight away win with Roberto Firmino and Mohamed Salah each scoring twice.\r\n\r\nJapan\'s Takumi Minamino rewarded Juergen Kloppâ€™s decision to start him ahead of Salah by scoring after just over two minutes and Sadio Mane then made it two when he twisted and fired home form the edge of the box in the 35th.\r\n\r\nFirmino added a third just before the break, flicking home to finish off a superb Liverpool counter-attack that swept the length of the field, and Jordan Henderson added a fourth seven minutes into the second half as Palace, managed by former Liverpool boss Roy Hodgson, collapsed.\r\n\r\nFirmino got his second with a brilliant chipped effort in the 68th and Salah came on to score with a header before brilliantly curling a shot into the top corner five minutes from the end.', '30', '21 Dec, 2020', 24, 'sports2.jpg'),
(43, 'Under the mask, the next Batman will be black', 'Fans of DC Comics have been told for months that a new Batman will premiere in January. They were also teased that underneath the costume of the new caped crusader would likely be a person of colour. The identity of the new hero was revealed on Thursday when DC released a cover of the second issue of the new comic: he is Timothy Fox, one of the sons of Lucius Fox, a business associate of Bruce Wayne, the original Batman.\r\n\r\nTimothy Fox will appear as the title hero in Future State: The Next Batman, a four-issue series written by John Ridley, the screenwriter of â€œ12 Years a Slave,â€ with art by Nick Derington, Laura Braga and others. The four-issue series will arrive in comic stores in January and February and is part of a two-month event that puts DCâ€™s regular series on hold and replaces them with new ones that look to the future of the DC Universe.\r\n\r\nThe leap forward has fresh faces taking on the roles of familiar heroes: in addition to Timothy Fox as Batman, Jonathan Kent, the son of the Man of Steel, is Superman, and Yara Flor, who is from Brazil, is Wonder Woman. Some of these future characters are already having ripple effects. The new Wonder Woman, who was created by writer and artist JoÃ«lle Jones, will be getting a Wonder Girl series set in the present following the event. The character is also being developed as a series for the CW.\r\n\r\nTimothy Fox originally appeared in Batman No. 313 in 1979. He most recently appeared in October, after the Wayne fortune, which pays for Batman and all his wonderful toys, fell into the hands of Timothyâ€™s father, Lucius Fox.', '34', '21 Dec, 2020', 24, 'batman-is-black-111220-01 (1).jpg'),
(44, 'New harvest of potatoes and onions expected to push prices down in Dhaka', '\r\nPotatoes and onions have become more costlier in Dhaka, but traders say the costs of the root vegetables are expected to go down as new harvests have begun hitting the markets.\r\n\r\nOnion and potato prices have gone up by at least Tk 5 in a week in the retail markets of Mirpur and the wholesale shops of Karwan Bazar.\r\n\r\nLarge imported onions were selling at Tk 40 per kg, new onions Tk 60 and old onions Tk 65 to Tk 70 a kg at retail shops on Friday. Old potatoes were being sold at Tk 45 to 50 per kg and new potatoes Tk 60.                ', '32', '21 Dec, 2020', 24, 'weekly-bazar-181220-01.jpg'),
(45, 'US authorises Moderna COVID-19 vaccine, elderly next in line for shots', 'Moderna Inc\'s coronavirus vaccine on Friday became the second to receive emergency use authorization (EUA) from the US Food and Drug Administration, welcome news to a nation with a staggering COVID-19 death toll of over 307,000 lives lost.\r\n\r\nMillions of doses of the Moderna vaccine are expected to be added to the US rollout, which began this week with healthcare workers. Older people in long-term care facilities are next in line for vaccines, with a US Centers for Disease Control and Prevention expert panel on Sunday set to recommend what groups follow, as industries compete to have their workers given precedence.\r\n\r\nThe FDA announced the authorisation the day after the agency\'s panel of outside experts endorsed its use and a week after the FDA authorized a vaccine from Pfizer Inc and German partner BioNTech SE.\r\n\r\nThe vaccine from Pfizer and BioNTech, based on similar technology, has been put into the arms of thousands of US healthcare workers this week in a massive nationwide rollout. Moderna injections are expected to begin in coming days for adults 18 years old and up.\r\n\r\n\"With the availability of two vaccines now for the prevention of COVID-19, the FDA has taken another crucial step in the fight against this global pandemic that is causing vast numbers of hospitalizations and deaths in the United States each day,â€ FDA Commissioner Stephen M Hahn, MD, said in a statement.\r\n\r\nModerna\'s shot is expected to be used in harder-to-reach locations, such as rural hospitals. The vaccine needs to be stored and shipped frozen, but does not require the ultra-cold temperatures of the Pfizer/BioNTech shot.\r\n\r\nThe speed of vaccine development - less than a year from when the first case of the new coronavirus was found in the United States - is a stunning scientific success, although there is some hesitancy among the public.\r\n\r\n\"It is my hope that all Americans will protect themselves by getting vaccinated when the vaccine becomes available to them. That is how our country will begin to heal and move forward,\" top US infectious disease scientist Anthony Fauci said in a statement.', '35', '21 Dec, 2020', 26, 'moderna-vaccine-181220-01.jpg'),
(46, 'India crumble to record low as quicks fire Australia to victory', 'Australia crushed India by eight wickets inside three days of the first Test at Adelaide Oval on Saturday, skittling the tourists for their lowest innings score in 88 years of Test cricket and taking a 1-0 lead in the four-match series.\r\n\r\nJosh Hazlewood (5-8) and Pat Cummins (4-21) turned a tight day-night Test on its head in a devastating spell of pace bowling to open the day, ripping through the much-vaunted Indian batting line-up in less than two hours to dismiss the tourists for 36.\r\n\r\nAustralia\'s batsmen, playing without pressure, chased down the victory target of 90 runs with some ease, opener Joe Burns giving his confidence a much-needed boost with an unbeaten 51 that included the six which secured victory.\r\n\r\nIf the tourists were shellshocked, the hosts were also taken aback by a turn of events which few would have predicted when India came out to bat with a 62-run lead and nine second-innings wickets in hand.\r\n\r\n\"We were expecting a real dogfight right to the end, late day four, maybe day five in this Test,\" said Australia skipper Tim Paine.\r\n\r\n\"Again, it shows the talent we have with the ball and when our boys execute, and there\'s anything in the wicket, that\'s what can happen.\"\r\n\r\nThe margin of victory will be a hefty blow to India\'s morale as well as their hopes of repeating their maiden Test series triumph in Australia two years ago.', '30', '21 Dec, 2020', 26, 'australia-191220-02.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `role` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `username`, `password`, `role`) VALUES
(24, 'Israt', 'Jahan', 'Israt', '12345', 1),
(26, 'Nila', 'Jahan', 'Nila', '12345', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`),
  ADD UNIQUE KEY `post_id` (`post_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
