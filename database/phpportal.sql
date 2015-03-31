-- phpMyAdmin SQL Dump
-- version 4.1.13
-- http://www.phpmyadmin.net
--
-- Hoszt: 127.0.0.1
-- Létrehozás ideje: 2015. Már 31. 11:52
-- Szerver verzió: 5.5.27
-- PHP verzió: 5.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Adatbázis: `phpportal`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(60) NOT NULL,
  `lead` varchar(200) NOT NULL,
  `text` text NOT NULL,
  `date` datetime NOT NULL,
  `tag` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `corrector_id` int(11) DEFAULT NULL,
  `publication_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `author_id` (`author_id`),
  KEY `corrector_id` (`corrector_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- A tábla adatainak kiíratása `news`
--

INSERT INTO `news` (`id`, `title`, `lead`, `text`, `date`, `tag`, `author_id`, `corrector_id`, `publication_date`) VALUES
(4, 'Kikapott és kiesett a Fehérvár', 'A Fehérvár AV19 hosszabbítás után kikapott a Vienna Capitals otthonában...', 'A Fehérvár AV19 hosszabbítás után kikapott a Vienna Capitals otthonában az osztrák jégkorongliga (EBEL) negyeddöntőjének hatodik mérkőzésén, így 4-2-es összesítéssel a bécsi csapat jutott be az elődöntőbe - írja az MTI.\r\n\r\n    \r\n        EBEL, negyeddöntő, 6.mérkőzés:\r\nVienna Capitals (osztrák) - Fehérvár AV19 2-1 (0-0, 0-0, 1-1, 1-0) - hosszabbítás után\r\n\r\ngól: Carson (58.), Foucault (79.), illetve Sarauer (54.)\r\n    Továbbjutott: a Vienna Capitals 4-2-es összesítéssel.\r\n    \r\n    A magyar csapat története során még soha nem jutott tovább az EBEL-ben a negyeddöntőből, jövő héten pedig a Magyar Kupa négyes döntőjének lesz a házigazdája.', '2015-03-30 00:00:00', 1, 1, 1, '2015-03-30 00:00:00'),
(5, 'Egységesek lesznek a gazdálkodói kérelmek áprilistól', 'Április 1-jétől 180 ezer gazdálkodó harmincféle jogcímen...', 'Április 1-jétől 180 ezer gazdálkodó harmincféle jogcímen, egyszerűsített eljárásban juthat hozzá egységes agrártámogatáshoz. Fazekas Sándor agrárminiszter a köztévében azt mondta: a támogatásoknak is köszönhető, hogy a magyar mezőgazdaság most 40 százalékkal termel többet, mint 2010-ben. Ráadásul az előállított élelmiszerek minőségibbek is: a tárcavezető szerint ezt bárki megtapasztalhatja, aki kilátogat a gazdapiacokra.\r\n\r\n\r\nÁprilis 1-jétől megnyílik a lehetőség a gazdák számára, hogy egységes agrártámogatást igényelhessenek. Mintegy 180 ezer gazdálkodó harmincféle jogcímen, egyszerűsített eljárásban juthat hozzá a munkáját segítő támogatásokhoz – jelentette ki Fazekas Sándor agrárminiszter az M1 Ma reggel című műsorában.\r\n\r\nEgy újfajta jogcíme, a „zöldítés” is megjelent, ez az agrárpolitikának a környezetkímélő vonása. Tulajdonképp azt jelenti, hogy a gazdálkodónak meg kell őrizni a zöldterületeket, diverzifikálnia kell a növénytermesztést – tette hozzá.\r\n\r\nElmondta azt is: az egységes támogatás a Mezőgazdasági és Vidékfejlesztési Hivatal (MVH) ügyfélkapuján igényelhetők, és további jogcímek is vannak: például a fiatal gazdák is igényelhetnek támogatást állattenyésztéshez, növénytermesztéshez. Fiatal gazdának számít a 40 évnél nem idősebb termelő.\r\n\r\nAz agrárminiszter kiemelte a kisgazdák támogatását is, ők az igénylői kör 30-40 százalékát adják. Rájuk nem vonatkozik a zöldítés, és a kölcsönös megfeleltetés szabályai alól is mentesülnek.', '2015-03-30 00:00:00', 3, 1, 1, '2015-03-30 00:00:00'),
(6, 'Másodfokon is pert vesztett a CIB Ingatlanlízing', 'A másodfokon eljáró Fővárosi Ítélőtábla helybenhagyta a CIB Ingatlanlízing Zrt. ellen ...', 'A másodfokon eljáró Fővárosi Ítélőtábla helybenhagyta a CIB Ingatlanlízing Zrt. ellen hozott elsőfokú ítéletet, így a kedden kihirdetett döntése szerint a pénzintézet forinthiteles szerződései tisztességtelenek.\r\nA másodfokú bíróság szerint a törvényszék megfelelően értelmezte és alkalmazta az anyagi- és eljárásjogi szabályokat, a tényállást felderítette és helyesen állapította meg, hogy a CIB Ingatlanlízing perbe hozott kikötései a törvény alá tartoznak.\r\n\r\nEnnek megfelelően az ítélőtábla megvizsgálta a pénzintézet általános szerződési feltételeinek (ászf) egyoldalú módosítást lehetővé tevő pontjait és egyetértett az elsőfokú bírósággal abban, hogy azok nem feleltek meg az átláthatóság és egyértelmű megfogalmazás kívánalmainak. Mivel a 2014. évi 38-as törvényben meghatározott elvek konjuktívan értendők, további vizsgálatra nem volt szükség, az ászf-ek tisztességtelenek és érvénytelenek – hangzott el az ítélet szóbeli indoklásában. \r\n\r\nA másodfokú bíróság szerint a törvényszék következtetése szintén helytálló abban, hogy a referencia kamatláb ellenére sem automatikus a kamat- és díjemelés, a felperes pénzügyi intézménynek lehetett ráhatása a változás mértékére és irányára.\r\n\r\nAz ítélőtábla nettó 250 ezer forint másodfokú perköltség megfizetésére kötelezte a pénzügyi szolgáltatót.', '2015-03-30 00:00:00', 3, 1, 1, '2015-03-30 00:00:00'),
(7, 'F1: Vettelnek csak mázlija van a Ferrarival? Alonso mellényú', 'A múlt vasárnapi Maláj Nagydíjon Sebastian Vettel...', 'A múlt vasárnapi Maláj Nagydíjon Sebastian Vettel a Ferrarival erőből, tiszta küzdelemben verte meg a szezonnyitón még megfoghatatlannak látszó Mercedeseket. A Merci tavaly 2014 óta tartó dominanciája során most először nem valami hiba vagy a körülmények vezettek az ezüst nyilak vereségéhez.\r\n\r\nF1: Vettelnek csak mázlija van a Ferrarival?\r\nHa Alonso előre tudta volna...\r\n\r\nA jelenleg még teljesen versenyképtelen McLaren-Hondában ülő Jenson Button örül az eredménynek, de úgy véli, Vettelnél egyszerűen beütött a mázli a csapatváltással.\r\n\r\n"Nagyon örülök, hogy nyert a Ferrari, mert azt gondoltam, hogy a Mercedes tarolni fog idén, szóval nagyon jó a Forma-1 számára, ha más csapat is képes győzni. És nem is arról volt szó, hogy őrült időjárás lett volna, vagy épp a biztonsági autó tönkre vágta a Merci versenyét, Sebastian egyszerűen gyorsabb volt, nagyon tetszett, amit csinált" - kezdte a veterán angol.\r\n\r\n"De az is biztos, hogy mázlival került ebbe a helyzetbe. Meggyőződésem, hogy ő sem tudott többet, mint Fernando (Alonso), amikor Fernando a Ferraritól való távozás mellett döntött. Ez most egyszerűen bejött Sebastiannak: Ricciardót megelőzte a csapattársa (Danyill Kvjat), volt csapattársa (Vettel) pedig le is körözte ugyanakkor. Ki gondolta volna ezt a tavalyi év végén? Néha az embernek mázlija van az ilyesmikkel" - magyarázta Button, aki 2009-ben hasonló meglepetés-sztori részese volt, amikor a sír széléről visszatámolygott Brawnnal világbajnok lett.\r\n\r\nF1: Vettelnek csak mázlija van a Ferrarival?\r\n\r\nA hétvégén szinte nem volt olyan F1-es szereplő vagy kommentátor, aki nem vont volna párhuzamot a Ferrari látványos feltámadása és Fernando Alonso új csapata, a McLaren küszködése között. Egyelőre úgy néz ki, hogy a spanyol (újra) mellényúlt. \r\n\r\n"A futam után ott ültem Sebastian mellett és az járt a fejemben, hogy vajon mit gondolhat most Fernando" - tette fel a kérdést a címvédő Lewis Hamilton is. "Ha marad, ő nyerhetett volna. Furcsa, hogyan alakulnak a dolgok."', '2015-03-30 00:00:00', 1, 1, 1, '2015-03-30 00:00:00'),
(8, 'A vagyonzárról és a jogállási törvényről is döntenek', 'Tegnap kivételes eljárásban megtárgyalták a képviselők a brókerbotrányért...', 'egnap kivételes eljárásban megtárgyalták a képviselők a brókerbotrányért felelősök magánvagyonának zárolását lehetővé tevő törvényt. Ismét a Ház elé került a köztársasági elnök által visszaküldött és már megszavazott jogállási törvény. A törvényt a megfelelő egyeztetés elmaradása miatt küldte vissza az államfő. Az utólagos egyeztetést az ellenzék eljárásjogilag és a közalkalmazottak alapilletmény-eltérítésének megszüntetése miatt is bírálta. Az egységes bérezés többeket érint negatívan a közszférában, mert fizetéscsökkenéshez vezethet . Napirend előtti felszólalások is lesznek. Kövesse percről percre!', '2015-03-30 00:00:00', 2, 1, 1, '2015-03-30 00:00:00'),
(9, 'Óriási kamu Rogán brókertörvénye', 'Jogászok szerint nyitott kapukat dönget Rogán Antal...', 'Jogászok szerint nyitott kapukat dönget Rogán Antal törvényjavaslata a brókerbotrányról. Ha valóban a külföldi vagyonmentés megakadályozása a cél, azt nem így kellene csinálni. A könyvvizsgálók is tiltakoznak.\r\n\r\n-10% mosógép, szárítógép, mosogatógép, sütő »\r\nRogán Antal és Tuzson Bence törvényjavaslatának célja, hogy a brókerbotrányban érintett cégek cégcsoportjai, valamint a vállalatok vezetői, tulajdonosai, felügyelőbizottsági tagjai és egyes könnyvizsgálói ne tudják elrejteni vagyonukat, illetve felelősséget vállaljanak az általuk okozott károkért. Javaslatuk a büntetőeljárásról és a bírósági végrehajtásról szóló törvényeket módosítaná. Az Országgyűlés hétfőtől szerdáig ülésezik, a brókerbotrány ma lesz terítéken.\r\n\r\nA Rogán-féle javaslat lényege, hogy ezentúl gyorsabban lehet magánvagyonokat zár alá venni, egyes, kiemelt pénzügyi tevékenységet végző cégeknél („csaló brókercégek”), ám ezt eddig is meg tudták tenni az ügyészek, mondták nekünk jogászok. „A zár alá vétel, vagyonelkobzás jelenleg is működő jogintézmények. Ezek ügyészi indítványra is elrendelhetők, akár már a feljelentés napjától” – mondta Dr. Székely Andrea ügyvéd a Hír24-nek.\r\n\r\nBár gyorsabb és határozottabb végrehajtás várható a jövőben, a javaslat alapvetően nyitott kapukat dönget, hiszen most is van lehetőség azonnali zár alá vételre – mondta Kocsis Zoltán a Dr. Vilmányi Adószakértő Iroda munkatársa lapunknak. A szakember szerint a hatályos törvények alapján a Quaestor-csoport többi cégének egyes vagyonelemei is zárolhatók, ha van arra megalapozott gyanú, hogy a bűncselekményből származó vagyon oda került, sőt ha a tulajdonosokhoz, akár az ő magánvagyonuk is.\r\n\r\nEgy büntetőjogász azt mondta, az igazi kérdés az, hogy a jelenleg hatályos jogszabályok alapján a Quaestor-ügyben az ügyészség miért késlekedett több mint két hétig, miért nem akadályozták meg például Tarsoly Csaba vagyonmentését, illetve a cégcsoportjának Orgován Béla nevére történő átíratását? Polt Péter legfőbb ügyész tegnap többek között úgy indokolta a nyomozóhatóság késlekedését, hogy "Aki potenciális gyanúsított, az nem hallgatható ki előzőleg tanúként, ez minden emberi jognak ellent mond".\r\n\r\nTuzson Bence Fotó: MTI/Marjai János\r\n\r\nA könyvvizsgálók tiltakoznak\r\n\r\nA javaslatban ugyanakkor új elem a felügyelő-bizottsági tagok és a könyvvizsgálók személyes vagyoni felelőssége. Ezt eddig még nem szabályozta a jog, és nagy kérdés, hogy miért így, és miért ebben a törvényjavaslatban merült fel ez először - mondták az általunk megkérdezett jogászok. A könyvvizsgálók és FB-tagok személyes vagyoni felelősségének felvetése olyan súlyú kérdés, amelyet nem a büntetőeljárási és a bírósági végrehajtásról szóló törvényben kellene módosítani - mondták.\r\n\r\nMegkérdeztük a Magyar Könyvvizsgálói Kamarát (MKK) a kérdésről, ahol azt válaszolták, hogy a könyvvizsgálók magánvagyonának zár alá vétele sértené a könyvvizsgálók alapvető jogait, és tarthatatlan eredményre vezetne. „A könyvvizsgálók választott tisztségviselők, akik függetlenül végzik a munkájukat az adott cégben, és adott esetben maguk is elszenvedői a bűncselekménynek, amit a cégvezetők vagy tulajdonosok elkövetnek” – mondta Lukács János az MKK elnöke a Hír 24-nek. Szerinte indokolatlan lenne ilyen súlyú kényszerintézkedéssel sújtani a könyvvizsgálókat puszta gyanú esetén. A könyvvizsgáló olyan, mint egy partjelző egy focimeccsen, és azért, mert a csapatok bundáztak, nem a partjelzőket kellene felősségre vonni - mondta Lukács.\r\n\r\nNemzeti Bankhoz tartoznának a könyvvizsgálók\r\nEgy másik fideszes elképzelés szerint a pénzintézeti könyvvizsgálókat az MNB ellenőrizné. Ez mintegy 60-70 könyvvizsgálót érint, a Magyar Könyvvizsgáló Kamarának 3 ezer tagja van. Az MKK nem ért egyet a javaslattal, mert ez uniós szabályokba ütközik - mondta lapunknak Lukács János MKK-elnök. Jelenlegi a közfelügyeletet a Nemzetgazdasági Minisztérium látja el a könyvvizsgálók felett.\r\n\r\nOffshore vagyonok\r\n\r\nA Rogán-javaslat egyik passzusa szerint a zár alá vétel a kapcsolt vállalkozásokra is vonatkozik. Ezt a kormány úgy kommunikálta, hogy ennek segítségével az offshore, külföldi vagyonokat is visszaszerzik. A baj az, hogy a külföldre mentett vagyonokat a jelenlegi jogszabályokkal sem lehet nemhogy visszaszerezni, de még felderíteni is, hiszen az offshore-nak az egyik általános funkciója, hogy a tulajdonos kiléte homályban marad.\r\n\r\n"A magyar hatóságoknak nagyon nehéz bizonyítani, hogy a bűncselekményből származó vagyon valóban az adott személyhez köthető-e, illetve, hogy valóban bűncselekményből származik-e a vagyon. Az eljárás kezdeti szakaszában szinte lehetetlen felderíteni és zár alá venni egy offshore cég külföldi vagyonát" – mondta Kocsis Zoltán.\r\n\r\nEgy adójogász szerint kizárt, hogy a kormány ne tudná: offshore-ba mentett vagyonokat szinte lehetetlen visszaszerezni. Szerinte innen lehet tudni, hogy a kormány kapcsolt vállalkozásokra vonatkozó javaslata nem vehető komolyan. Nem véletlen, hogy a világban teljesen máshogy küzdenek az offshore vagyonok ellen, például személyi jövedelemadó kivetésével.\r\n\r\nRogán nyitott utat az offsore lovagoknak\r\n\r\nHa a kormány valóban fel kívánja venni a küzdelmet a külföldi vagyonkimentések ellen, akkor ismét csak korábbi szabályokat kellene elővennie, nem újakat alkotnia. A Bajnai-kormány például minden korábbi kormánynál messzebbre ment az offshore vagyonok hazai adózásba bevonására, ám 2010-ben a Fidesz egyik első intézkedése az volt, hogy Rogán Antal javaslatára eltörölte ezeket a jogszabályokat.\r\n\r\nTalán már kevesen emlékeznek rá, de a Bajnai-kormány 30 százalékos forrásadóztatást vetett ki automatikusan minden olyan pénzmozgásra, amelyet magyar vállalkozás kamat, jogdíj vagy szolgáltatási díj címén alacsony adóztatásúnak nevezett államban bejegyzett cégnek fizetett. Ez egy amerikai eredetű megoldás, és azokat a pénzeket lett volna képes legalább részben megfogni, amelyet olyan országokba utalnának át a magyar társaságok, amelyekkel Magyarországnak nincs kettős adóztatást elkerülő egyezménye. lyenek például a Kajmán-szigetek, a Brit Virgin-szigetek.\r\n\r\n Fotó: Berecz Valter\r\n\r\nEz az előírás a Fidesznek köszönhetően 2011 január elsejével került ki az adórendszerből, és az adószakértők szerint nagy lazításnak számított, vagyis jelentős mértékben megkönnyítette, hogy offshore országokba menekítsék a pénzüket az adóalanyok. Rogán Antal egy másik Bajnai-féle offshore szabályt is eltörölt az SZJA-törvényben 2011 júniusában, amely szerint a magánszemélyeknek szerepeltetniük kellett az itthoni adóbevallásukban azt a ki nem osztott nyereséget is, amelyet adóparadicsomokban lévő cégekben tartottak, és ugyanúgy adózniuk kellett utána, mintha nem menekítették volna ki.\r\n\r\nRogán úgy indokolta az offshore módosítását 2011-ben, hogy az szja-törvény egyes hatályos rendelkezései "a jogalkalmazás során erőteljes jogbizonytalanságot okoznak, és ezáltal a gazdálkodó szervezetek működését (így például az ingatlanpiac fejlődését) nagy mértékben gátolják"', '2015-03-30 00:00:00', 2, 1, 1, '2015-03-30 00:00:00');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` varchar(25) NOT NULL,
  `title` varchar(60) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `pages`
--

INSERT INTO `pages` (`id`, `title`, `text`) VALUES
('bemutatkozas', '', ' <p>\r\n   Realisztikusan szemlélem az életet, két lábbal állok a földön, amíg el nem fáradok: ilyenkor leülök.Roppant eredeti vagyok: imádom a széles karimájú kalapot és hozzá a nyuszimamuszt. Értékelem azokat a ritka pillanatokat, amikor a főnököm éppen előzetes letartóztatásban ül a hűvösön. Nem bámulom állandóan az orrom hegyén ülő szemölcsöt,ezért kevesebben gondolják rólam, hogy a szemem sem áll jól!!! \r\n  </p>\r\n    '),
('gazdasagihirek', 'Gazdasági Hírek', ''),
('kapcsolat', 'Kapcsolat', ''),
('legfrissebbhirek', 'Legfrissebb Hírek', ''),
('politikaihirek', 'Politikai Hírek', ''),
('sporthirek', 'Sport Hírek', 'Amikor a Lehel kitört a karámból');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `rights`
--

CREATE TABLE IF NOT EXISTS `rights` (
  `id` tinyint(4) NOT NULL,
  `description` varchar(50) CHARACTER SET utf8 COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `tags`
--

CREATE TABLE IF NOT EXISTS `tags` (
  `id` tinyint(4) NOT NULL,
  `description` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `tags`
--

INSERT INTO `tags` (`id`, `description`) VALUES
(1, 'Sport Hírek'),
(2, 'Politikai Hírek'),
(3, 'Gazdasági Hírek');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(25) NOT NULL,
  `upass` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `rights` tinyint(4) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`id`, `uname`, `upass`, `name`, `email`, `rights`, `active`) VALUES
(1, 'admin', '$1$y52.Tp0.$hVtMfxN3W2zsspvSkBobt/', 'Daniel', 'daniel@gmail.com', 1, 1),
(2, 'Bukowski', 'Bukowski', 'Charles Bukowski', 'charlesbukowski@gmail.com', 2, 1),
(3, 'Floyd', '$1$y52.Tp0.$hVtMfxN3W2zsspvSkBobt/', 'Charles Floyd', 'charlesfloyd@gmail.com', 3, 1);

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `news_ibfk_2` FOREIGN KEY (`corrector_id`) REFERENCES `users` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
