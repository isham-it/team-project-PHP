-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 30 juil. 2021 à 13:44
-- Version du serveur : 10.4.19-MariaDB
-- Version de PHP : 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `movies`
--

-- --------------------------------------------------------

--
-- Structure de la table `directors`
--

CREATE TABLE `directors` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `nationality` enum('USA','Luxembourg','France','Italy','UK','Australia','Russ','Slovak') DEFAULT NULL,
  `year_birth` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `directors`
--

INSERT INTO `directors` (`id`, `name`, `nationality`, `year_birth`) VALUES
(1, 'David Finch', 'USA', '1950'),
(2, 'George Lucas', 'USA', '1960'),
(3, 'Ford Copolla', 'Italy', '1939'),
(4, 'Steven Spieleberg', 'USA', '1975'),
(5, 'Christopher Nolan', 'USA', '1970'),
(6, 'Martin Scorsese', 'Italy', '1946'),
(7, 'Robert Zemeckis', 'USA', '1951'),
(8, 'Mel Smith', 'UK', '1952'),
(9, 'Todd Phillips', 'USA', '1970'),
(10, 'Joseph Wright', 'UK', '1972'),
(11, 'Garry Kent Masciarelli', 'USA', '1934');

-- --------------------------------------------------------

--
-- Structure de la table `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `category` enum('Action','Science-Fiction','Comedy','Romance','Thriller','Drama') NOT NULL,
  `title` varchar(500) NOT NULL,
  `views` int(11) DEFAULT NULL,
  `director_id` int(11) DEFAULT NULL,
  `actors` varchar(5000) NOT NULL,
  `poster` varchar(500) DEFAULT NULL,
  `year_of_release` varchar(40) NOT NULL,
  `synopsis` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `movies`
--

INSERT INTO `movies` (`id`, `category`, `title`, `views`, `director_id`, `actors`, `poster`, `year_of_release`, `synopsis`) VALUES
(2, 'Science-Fiction', 'Star Wars la menace fantome', 431234123, 2, 'Liam Neeson, Ewan McGregor, Natalie Portman, Jake Lloyd, Ian McDiarmid', 'https://upload.wikimedia.org/wikipedia/en/4/40/Star_Wars_Phantom_Menace_poster.jpg', '2000', 'Avant de devenir un célèbre chevalier Jedi, et bien avant de se révéler l\'âme la plus noire de la galaxie, Anakin Skywalker est un jeune esclave sur la planète Tatooine. La Force est déjà puissante en lui et il est un remarquable pilote de Podracer. Le maître Jedi Qui-Gon Jinn le découvre et entrevoit alors son immense potentiel. Pendant ce temps, l\'armée de droïdes de l\'insatiable Fédération du Commerce a envahi Naboo dans le cadre d\'un plan secret des Sith visant à accroître leur pouvoir.'),
(4, 'Science-Fiction', 'Star Wars l\'attaque des clones', 42345234, 2, 'Ewan McGregor, Natalie Portman, Hayden Christensen, Christopher Lee, Samuel L. Jackson', 'https://cdn1.booknode.com/book_cover/741/star_wars_episode_ii_la_guerre_des_clones-741000-264-432.jpg', '2003', 'Depuis le blocus de la planète Naboo, la République, gouvernée par le Chancelier Palpatine, connaît une crise. Un groupe de dissidents, mené par le sombre Jedi comte Dooku, manifeste son mécontentement. Le Sénat et la population intergalactique se montrent pour leur part inquiets. Certains sénateurs demandent à ce que la République soit dotée d\'une armée pour empêcher que la situation ne se détériore. Padmé Amidala, devenue sénatrice, est menacée par les séparatistes et échappe à un attentat.'),
(5, 'Action', 'Batman Begins', 44444444, 5, 'Christian Bale, Michael Caine, Liam Neeson, Katie Holmes, Gary Oldman, Morgan Freeman', 'https://www.ecranlarge.com/uploads/image/001/164/batman-begins-affiche-1164841.jpg', '2005', 'Comment un homme seul peut-il changer le monde ? Telle est la question qui hante Bruce Wayne depuis cette nuit tragique où ses parents furent abattus sous ses yeux, dans une ruelle de Gotham City. Torturé par un profond sentiment de colère et de culpabilité, le jeune héritier de cette richissime famille fuit Gotham pour un long et discret voyage à travers le monde. Le but de ses pérégrinations : sublimer sa soif de vengeance en trouvant de nouveaux moyens de lutter contre l\'injustice.'),
(9, 'Science-Fiction', 'Star Wars la revanche des siths', 123, 2, 'Ewan McGregor, Natalie Portman, Hayden Christensen, Ian McDiarmid, Samuel L. Jackson', 'https://robsagenius.files.wordpress.com/2016/07/ep3-poster25.jpg', '2004', 'La Guerre des Clones fait rage. Une franche hostilité oppose désormais le Chancelier Palpatine au Conseil Jedi. Anakin Skywalker, jeune Chevalier Jedi pris entre deux feux, hésite sur la conduite à tenir. Séduit par la promesse d\'un pouvoir sans précédent, tenté par le côté obscur de la Force, il prête allégeance au maléfique Darth Sidious et devient Dark Vador.Les Seigneurs Sith s\'unissent alors pour préparer leur revanche, qui commence par l\'extermination des Jedi.'),
(13, 'Action', 'Indiana Jones Les Aventuries de l\'arches perdu', 234923, 1, 'Harrison Ford, Karen Allen, Paul Freeman, Ronald Lacey, John Rhys-Davies', 'https://upload.wikimedia.org/wikipedia/en/8/8c/Indiana_Jones_and_the_Last_Crusade.png', '1990', 'Professeur d\'archéologie, Indiana Jones parcourt le monde à la recherche de trésors. Son rival, le Français René Belloq, travaille pour les nazis qui rêvent de retrouver l\'Arche d\'alliance contenant les Tables de la Loi. Or, feu le professeur Ravenwood, père de Marion, l\'ex-petite amie d\'Indiana Jones, détenait une médaille permettant de localiser l\'arche. Jones part sur les traces de Marion au Népal.'),
(17, 'Drama', 'The Godfather', 5603569, 3, 'Marlon Brando, Al Pacino, James Caan, Richard S. Castellano, Robert Duvall', 'https://fr.web.img4.acsta.net/medias/nmedia/18/35/57/73/18660716.jpg', '1979', 'En 1945, à New York, les Corleone sont une des 5 familles de la mafia. Don Vito Corleone, `parrain\' de cette famille, marie sa fille à un bookmaker. Sollozzo, `parrain\' de la famille Tattaglia, propose à Don Vito une association dans le trafic de drogue, mais celui-ci refuse. Sonny, un de ses fils, y est quant à lui favorable. Afin de traiter avec Sonny, Sollozzo tente de faire tuer Don Vito, mais celui-ci en réchappe.'),
(18, 'Action', 'Batman The Dark Knight', 66666666, 5, 'Christian Bale, Michael Caine, Heath Ledger, Gary Oldman, Aaron Eckhart, Maggie Gyllenhaal, Morgan Freeman', 'https://m.media-amazon.com/images/I/91KkWf50SoL._SL1500_.jpg', '2008', 'Batman est plus que jamais déterminé à éradiquer le crime organisé qui sème la terreur en ville. Epaulé par le lieutenant Jim Gordon et par le procureur de Gotham City, Harvey Dent, Batman voit son champ d\'action s\'élargir. La collaboration des trois hommes s\'avère très efficace et ne tarde pas à porter ses fruits jusqu\'à ce qu\'un criminel redoutable vienne plonger la ville de Gotham City dans le chaos.'),
(19, 'Thriller', 'Les Affranchis', 4659832, 6, 'Ray Liotta, Robert De Niro, Joe Pesci', 'https://www.ecranlarge.com/media/cache/1600x1200/uploads/image/001/194/v4c6wmvqulsjhmyjhnj72itfghm-758.jpg', '1976', 'Dans les années 1950, à Brooklyn, le jeune Henry Hill a l\'occasion de réaliser son rêve : devenir gangster lorsqu\'un caïd local l\'intègre à son équipe. C\'est alors qu\'il rencontre James et Tommy, 2 truands d\'une rare brutalité. Impressionné, Henry s\'associe avec eux pour débuter un trafic très lucratif. Lorsqu\'il séduit la ravissante Karen, le jeune mafieux s\'imagine que plus rien ni personne ne pourra jamais lui résister.'),
(20, 'Action', 'Batman The Dark Knight Rises', 45612354, 5, 'Christian Bale, Michael Caine, Gary Oldman, Anne Hathaway, Tom Hardy, Marion Cotillard, Joseph Gordon-Levitt, Morgan Freeman', 'https://upload.wikimedia.org/wikipedia/en/8/83/Dark_knight_rises_poster.jpg', '2012', 'Il y a huit ans, Batman a disparu dans la nuit : lui qui était un héros est alors devenu un fugitif. L\'arrivée d\'une féline et fourbe cambrioleuse au mystérieux dessein chamboule l\'ordre établi. Bien plus dangereuse encore est l\'apparition de Bane, terroriste masqué dont l\'impitoyable projet pour Gotham pousse Bruce à sortir de l\'exil qu\'il s\'est imposé. Mais bien qu\'il reprenne cape et masque, Batman pourrait ne pas être un adversaire à la taille de Bane...'),
(21, 'Science-Fiction', 'Back to the future', 14561456, 7, 'Michael J. Fox, Christopher Lloyd, Lea Thompson, Crispin Glover, Thomas F. Wilson', 'https://upload.wikimedia.org/wikipedia/en/thumb/d/d2/Back_to_the_Future.jpg/220px-Back_to_the_Future.jpg', '1985', 'Le jeune Marty McFly mène une existence anonyme, auprès de sa petite amie Jennifer, seulement troublée par sa famille en crise et un proviseur qui serait ravi de l\'expulser du lycée. Ami de l\'excentrique professeur Emmett Brown, il l\'accompagne tester sa nouvelle expérience : le voyage dans le temps via une DeLorean modifiée. La démonstration tourne mal : des trafiquants d\'armes débarquent et assassinent le scientifique.'),
(22, 'Science-Fiction', 'Back to the future part 2', 123456123, 7, 'Michael J. Fox, Christopher Lloyd, Thomas F. Wilson, Lea Thompson', 'https://upload.wikimedia.org/wikipedia/en/thumb/c/c2/Back_to_the_Future_Part_II.jpg/220px-Back_to_the_Future_Part_II.jpg', '1989', '1985, Marty Mac Fly a regagné la paisible bourgade de Hill Valley, après son voyage mouvementé à travers le temps. Il savoure la quiétude avec sa petite amie Jennifer, lorsque Doc Brown l\'invite expressément à l\'accompagner dans sa vrombissante De Lorean, pour un nouveau périple dans le futur, en 2015. Son fils, Marty Jr, est en danger, il est tombé sous l\'emprise de Griff Tannen. Il doit l\'empêcher de commettre un hold-up.'),
(23, 'Science-Fiction', 'Back to the future part 3', 32216548, 7, 'Elisabeth Shue, Michael J. Fox, Christopher Lloyd, Mary Steenburgen, Thomas F. Wilson', 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQ0e_ADfN4dX3FOTb_Ta079aZ4_qAfYza2uUBKIdAr3H7VwR4aq', '1990', 'Après son voyage mouvementé entre passé, présent et futur, Marty McFly apprend par une lettre vieille de cent ans que son vieil ami Emmett Doc Brown se serait crashé en 1880 au volant de sa DeLorean, restant ainsi prisonnier du far-west, sous la menace de Buford Molosse Tannen qui s\'est juré de le tuer. Il n\'a que cinq jours pour retrouver Doc et le ramener vivant vers le présent...'),
(24, 'Comedy', 'MR BEAN', 2569854, 8, 'Rowan Atkinson, Peter MacNicol, John Mills, Pamela Reed', 'https://image.tmdb.org/t/p/w500/p7cOer13QaQCNhleGdEFfZlCQUk.jpg', '1997', 'Le richissime général Newton a fait don à la Galerie Grierson de cinquante millions de dollars pour rapatrier aux Etats-Unis le chef-d\'uvre de la peinture américaine.'),
(34, 'Drama', 'God father 2', 154685, 3, 'Al Pacino, Robert Duvall, Diane Keaton, Robert De Niro, Talia Shire, Morgana King, John Cazale, Mariana Hill, Lee Strasberg', 'https://m.media-amazon.com/images/M/MV5BMWMwMGQzZTItY2JlNC00OWZiLWIyMDctNDk2ZDQ2YjRjMWQ0XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg', '1974', 'Depuis la mort de Don Vito Corleone, son fils Michael règne sur la famille. Amené à négocier avec la mafia juive, il perd alors le soutien d\'un de ses lieutenants, Frankie Pentageli. Echappant de justesse à un attentat, Michael tente de retrouver le coupable, soupçonnant Hyman Roth, le chef de la mafia juive.'),
(35, 'Science-Fiction', 'Jurassic Park', 456321312, 4, 'Sam Neill, Laura Dern, Jeff Goldblum, Richard Attenborough, Bob Peck', 'https://fr.web.img4.acsta.net/pictures/20/07/21/16/53/1319265.jpg', '1993', 'John Parker Hammond, le PDG de la puissante compagnie nommée InGen, parvient à donner vie à des dinosaures grâce à la génétique et décide de les utiliser dans le cadre d’un parc d\'attractions qu’il compte ouvrir sur une île au large du Costa Rica.  Avant l\'ouverture, il fait visiter le parc à un groupe d\'experts pour obtenir leur aval. Pendant la visite, une tempête éclate et un informaticien corrompu par une entreprise rivale en profite pour couper les systèmes de sécurité afin de voler des embryons de dinosaures. En l\'absence de tout système de sécurité pendant plusieurs heures, les dinosaures s\'échappent sans mal, et le cauchemar des visiteurs commence.'),
(36, 'Science-Fiction', 'Jurassic Park le monde perdu', 487896, 4, 'Jeff Goldblum, Julianne Moore, Pete Postlethwaite, Vince Vaughn', 'https://upload.wikimedia.org/wikipedia/en/c/cc/The_Lost_World_%E2%80%93_Jurassic_Park_poster.jpg', '1997', 'Quatre ans après le terrible fiasco de son Jurassic Park, le milliardaire John Hammond rappelle le Dr Ian Malcolm pour l\'informer de son nouveau projet. Sur une île déserte, voisine du parc, vivent en liberté des centaines de dinosaures de toutes tailles et de toutes espèces. Ce sont des descendants des animaux clonés en laboratoire. D\'abord réticent, Ian se décide à rejoindre le docteur quand il apprend que sa fiancée fait partie de l\'expédition scientifique.'),
(37, 'Science-Fiction', 'Jurassic Park 3', 1234567, 4, 'Sam Neill, William H. Macy, Téa Leoni, Alessandro Nivola, Laura Dern', 'https://images-na.ssl-images-amazon.com/images/S/pv-target-images/ae62a944445113d40cf69b7b5503558a522ab618c5e0d83381eb0ceb0939c1e4._RI_V_TTW_.jpg', '2001', 'Quatre ans ont passé depuis l\'incident de San Diego qui plaça la société InGen au bord de la faillite et provoqua son rachat par le milliardaire indien Simon Masrani. Les dinosaures de John Hammond vivent désormais en totale liberté sur Isla Sorna. Le paléontologue Alan Grant, rescapé de Jurassic Park, fait la connaissance d\'un couple, Paul et Amanda Kirby, qui lui propose de financer ses recherches contre un survol de l\'île. D’abord réticent, Grant finit par accepter et prend les airs avec son jeune assistant, Billy Brennan. Mais le paléontologue ne tarde pas à découvrir que le couple a menti : les Kirby ont l\'intention de se poser sur Sorna afin d\'y rechercher Erik, leur fils de 12 ans disparu quelques semaines plus tôt. L’expédition tourne vite au cauchemar avec la première attaque d’un grand prédateur, le Spinosaurus. Le groupe rejoint précipitamment l’avion mais, manquant l\'envol, l\'appareil s\'écrase au cœur de la jungle, laissant ses passagers au milieu des dinosaures.'),
(38, 'Comedy', 'Very Bad Trip', 45646546, 9, 'Bradley Cooper, Ed Helms, Zach Galifianakis, Heather Graham, Justin Bartha', 'https://www.telerama.fr/sites/tr_master/files/4cb0ac81-34fd-4784-be7b-77432c4dd11c_2.jpg', '2009', 'Trois jeunes hommes cherchent un ami qui a disparu au cours d\'une super fête à Las Vegas. Le trio doit tenter de se souvenir de toutes les mauvaises décisions prises la veille afin de retrouver leur ami et le ramener à temps pour son mariage prévu à Los Angeles.'),
(39, 'Comedy', 'Very Bad Trip 2', 65787546, 9, 'Bradley Cooper, Ed Helms, Zach Galifianakis, Justin Bartha', 'https://www.affichescinema.fr/1827-large_default/very-bad-trip-2.jpg', '2011', 'Phil, Stu, Alan et Doug s\'offrent un voyage exotique en Thaïlande, à l\'occasion du mariage de Stu. Après l\'inoubliable soirée d\'enterrement de sa vie de garçon à Las Vegas, Stu ne veut rien laisser au hasard et opte pour un brunch léger, sans risque, avant la cérémonie. Mais les choses ne se passent pas toujours comme prévu. Ce qui s\'est passé à Las Vegas est imaginable à Las Vegas, mais ce qui se passe à Bangkok dépasse l\'imagination...'),
(40, 'Romance', 'Pride & Prejudice', 487896, 10, 'Keira Knightley, Matthew Macfadyen', 'https://fr.web.img6.acsta.net/medias/nmedia/18/35/99/80/18461215.jpg', '2005', 'La campagne anglaise à la fin du XVIIIe siècle. Mrs. Bennet et son mari sont ravis d\'apprendre qu\'un jeune homme fortuné - et célibataire - vient de s\'installer dans le manoir voisin. Désargentés, les Bennet se font fort de marier l\'une de leurs cinq filles au nouvel arrivant... Ce dernier ne tarde pas à s\'éprendre de la belle Jane, l\'aînée de la famille, lors d\'un bal de campagne.'),
(41, 'Comedy', 'Very Bad Trip 3', 5486984, 9, 'Bradley Cooper, Ed Helms, Zach Galifianakis, Ken Jeong, Heather Graham', 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRKq-MtmOGjSck0GdlT2QkGg9je_GpxfbAV7tq_VmfGX6DxiLKa', '2013', 'Cela fait deux ans maintenant que Phil, Stu, Alan et Doug sont revenus de Thaïlande. Tout le monde a bien négocié le retour mais Alan, qui a cessé de prendre ses médicaments, peine à trouver son équilibre. Et la perte de son père, terrassé par une soudaine crise cardiaque, n\'arrange rien à son état. Sa soeur demande alors à ses amis Phil, Stu et Doug de le convaincre de suivre une thérapie en Arizona.');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` int(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `email`, `password`) VALUES
(1, 'simon', 0, 'simon@gmail.com', '1234'),
(2, 'david', 0, 'david@gmail.com', '4321');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `directors`
--
ALTER TABLE `directors`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `director_id` (`director_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `directors`
--
ALTER TABLE `directors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `movies`
--
ALTER TABLE `movies`
  ADD CONSTRAINT `movies_ibfk_1` FOREIGN KEY (`director_id`) REFERENCES `directors` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;