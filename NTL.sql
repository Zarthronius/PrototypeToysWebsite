-- --------------------------------------------------------
--
--  Create table structure for table `NTL_category`
--

DROP TABLE IF EXISTS `NTL_category`;
CREATE TABLE IF NOT EXISTS `NTL_category` (
  `catID` varchar(6) NOT NULL DEFAULT '',
  `catDesc` varchar(255) DEFAULT NULL,
  PRIMARY KEY  (`catID`)
); 

--
-- Insert data for table `NTL_category`
--

INSERT INTO `NTL_category` (`catID`, `catDesc`) VALUES
('c1', 'Model Trains & Railway Sets'),
('c2', 'Games'),
('c3', 'Arts & Crafts'),
('c4', 'Characters & Brands'),
('c5', 'Figures & Playsets'),
('c6', 'Home Accessories'),
('c7', 'Die-Cast & Toy Vehicles'),
('c8', 'Model Building Kits'),
('c9', 'Collectible Figures & Memorabilia'),
('c10', 'Fancy Dress'),
('c11', 'Slot Cars, Race Tracks & Accessories'),
('c12', 'Musical Toy Instruments'),
('c13', 'Trading Cards & Accessories'),
('c14', 'Puppets & Puppet Theatres'),
('c15', 'Pretend Play');

-- --------------------------------------------------------
--
-- Create table structure for table `NTL_manufacturer`
--

DROP TABLE IF EXISTS `NTL_manufacturer`;
CREATE TABLE IF NOT EXISTS `NTL_manufacturer` (
  `manID` varchar(6) NOT NULL DEFAULT '',
  `manName` varchar(255) DEFAULT NULL,
  PRIMARY KEY  (`manID`)
);

--
-- Insert data for table `NTL_manufacturer`
--

INSERT INTO `NTL_manufacturer` (`manID`, `manName`) VALUES
('m1', 'Alfa Romeo'),
('m2', 'Arcane Wonders'),
('m3', 'Bachmann'),
('m4', 'Bburago'),
('m5', 'Blue Frog Toys'),
('m6', 'Brimtoy'),
('m7', 'Carrera'),
('m8', 'Cartamundi'),
('m9', 'Character Options'),
('m10', 'Cheatwell Games'),
('m11', 'Classix'),
('m12', 'Comic Maker'),
('m13', 'Corgi'),
('m14', 'DC Collectibles'),
('m15', 'Deckboosters'),
('m16', 'Disney'),
('m17', 'Frozen'),
('m18', 'FunKo'),
('m19', 'FunkyBuys'),
('m20', 'Games Workshop'),
('m21', 'Gibsons Games'),
('m22', 'Greater Than Games'),
('m23', 'Guaranteed4Less'),
('m24', 'Hasbro'),
('m25', 'Hornby'),
('m26', 'Hot Wheels'),
('m27', 'Kaiyodo'),
('m28', 'Kato'),
('m29', 'King Horse'),
('m30', 'Learning Curve'),
('m31', 'Legion Supplies'),
('m32', 'LEGO'),
('m33', 'Lion Games & Gifts Europe'),
('m34', 'Manhattan Toy'),
('m35', 'Marvel'),
('m36', 'Masters'),
('m37', 'Match Attax'),
('m38', 'Mattel'),
('m39', 'Moshi Monsters'),
('m40', 'Motion Sand'),
('m41', 'Muppets'),
('m42', 'Nickelodeon'),
('m43', 'Oxford Diecast'),
('m44', 'Pictionary'),
('m45', 'Playing Cards'),
('m46', 'Playmobil'),
('m47', 'Preiser'),
('m48', 'Rockets Toys'),
('m49', 'Scalextric'),
('m50', 'Schleich'),
('m51', 'Silkcraft'),
('m52', 'Slammer'),
('m53', 'Small Foot'),
('m54', 'Snoopy'),
('m55', 'Spider-Man'),
('m56', 'Spin Master'),
('m57', 'Star Cutouts Ltd'),
('m58', 'Star Wars'),
('m59', 'Tagamoto'),
('m60', 'Takara Tomy'),
('m61', 'Take N Play'),
('m62', 'TALLON INTERNATIONAL'),
('m63', 'Tapball'),
('m64', 'Teenage Mutant Ninja Turtles'),
('m65', 'The Avengers'),
('m66', 'The Hulk'),
('m67', 'The Puppet Company'),
('m68', 'Thomas & Friends'),
('m69', 'Tobar'),
('m70', 'Top Trumps'),
('m71', 'Trade Mark Collections'),
('m72', 'Transformers'),
('m73', 'Trefl'),
('m74', 'Ultra Pro'),
('m75', 'Universal Hobbies'),
('m76', 'Upper Deck'),
('m77', 'US Playing Card Co.'),
('m78', 'Vigid Imaginations'),
('m79', 'Winning Moves'),
('m80', 'Yu-Gi-Oh');

-- --------------------------------------------------------
--
-- Create table structure for table `NTL_toys`
--

DROP TABLE IF EXISTS `NTL_toys`;
CREATE TABLE IF NOT EXISTS `NTL_toys` (
  `toyID` int(11) NOT NULL,
  `toyName` varchar(255) DEFAULT NULL,
  `description` text,
  `manID` varchar(6) DEFAULT NULL,
  `catID` varchar(6) DEFAULT NULL,
  `toyPrice` decimal(4,2) DEFAULT NULL,
  PRIMARY KEY  (`toyID`)
); 

--
-- Insert data for table `NTL_toys`
--

INSERT INTO `NTL_toys` (`toyID`, `toyName`, `description`, `manID`, `catID`, `toyPrice`) VALUES
(1, 'FunkyBuys Large Christmas Holiday Express Festive Train Set (SI-TY1017) Toy Light / Sounds / Battery Operated & Smoke', 'Size Name: Large FunkyBuys Large Christmas Holiday Express Festive Train Set (SI-TY1017) Toy Light / Sounds / Battery Operated & Smoke', 'm19', 'c1', '16.99'),
(2, 'HORNBY Coach R4410A BR Hawksworth Corridor 3rd', 'Hornby 00 Gauge BR Hawksworth 3rd Class W 2107 W # R4410A', 'm25', 'c1', '39.99'),
(3, 'Hornby 00 Gauge 0-4-0 Gildenlow Salt Co. Steam Locomotive Model', 'Product Description Hornby RailRoad 0-4-0 Gildenlow Salt Co 00 gauge steam locomotive model. Safety warning: This product is not suitable for children under 3 years because of small parts which could present a choking hazard. Some components have functional sharp edges. Handle with care. Only use this product with the recommended transformer. Made in China. Box Contains 1x Steam Locomotive Model', 'm25', 'c1', '32.19'),
(4, 'Hornby 00 Gauge 230mm BR Bogie Passenger Brake Coach Model (Red)', 'Product Description Hornby BR bogie passenger brake coach has pristine finish. Livery: BR red livery. Entered Service: 1930. Period: 1950. 230mm coach model length. The truly fascinating and varied range of Hornby coaches offers something for most enthusiasts modelling the various regions and periods of the British rail network. Box Contains 1x Red Bogie Passenger Brake', 'm25', 'c1', '24.99'),
(5, 'Kato (USA) 176-1308 F3B Denver & Rio Grande Western', 'Suitable for the following scale(s): N Scale', 'm28', 'c1', '99.99'),
(6, 'Bachmann 37-662 14 Ton Tank Wagon Pease & Partners Red', 'Suitable for the following scale(s): OO Scale', 'm3', 'c1', '9.60'),
(7, 'Hornby 00 Gauge 253mm Weathered Paviland Grange Steam Locomotive Train Model', 'Product Description Hornby Weathered DCC Ready 00 Gauge Paviland Grange steam locomotive train model. Its features		: Sprung buffers, sliding cab roof hatch, NEM couplings, tender detail. Class: grange, designer: C.B. collett, entered service: 1936, number built: 80, purpose: mixed traffic, wheel configuration: 4-6-0, length: 253mm, motor: 5 pole skew wound. loco drive, DCC ready, livery: BR (late), finish: heavily weathered Box Contains 1x Train Model', 'm25', 'c1', '99.99'),
(8, 'Kumoyuni 74-0 Shonan Color (Model Train)', 'Japanese toys', 'm28', 'c1', '17.08'),
(9, 'Bachmann 31-588 Freightliner Class 70 005 Powerhaul Diesel Weathered', 'Suitable for the following scale(s): OO Scale', 'm3', 'c1', '96.05'),
(10, 'Preiser 30495 Horse Drawn Wedding Coach (Closed)', 'Suitable for the following scale(s): HO Scale', 'm47', 'c1', '27.55'),
(11, 'Preiser 30414 Horse Drawn Liquid Manure Wagon', 'Suitable for the following scale(s): HO Scale', 'm47', 'c1', '24.50'),
(12, 'Bachmann Class A2 60534 Irish Elegance BR Lined Green Early Emblem', 'Suitable for the following scale(s): OO Scale', 'm3', 'c1', '99.99'),
(13, '4 Player Shut The Box', 'An enormously fun four player version of Shut The Box. Now you can get the whole family involved in your favourite dice game.Beautifully presented in a Pine wood box with green felt flooring, featuring four rows of numbers with black printed numbers. A relatively simple but engrossing game, Shut The Box is usually just a single row of numbers shared amongst all players. This is a premium version of the game in an extended format that we haven"t come across anywhere else. Includes 2 dice. Approx. dimensions: 29 x 29 x 4.5cmProduct Ref: 00H473', 'm36', 'c2', '24.63'),
(14, 'Rockets Toys Rainbow Towers', 'Product Description Match the colours to complete a tower! The first to complete a tower by matching the colours wins the game. Rainbow Towers is entertaining and educational, helping children with colour recognition and manipulation. Simply throw the correct colours on the die to build a tower using the easy-to-handle rainbow beads.Contents:24 Beads (4 each in 6 colours)4 Towers2 Colour cards1 Coloured die1 Plastic baseRules leaflet Box Contains 4 wooden towers and 24 coloured beads.', 'm48', 'c2', '4.99'),
(15, 'Memory Match', 'Product Description A memory game but with a difference! Collect the items that go together such as a bucket and spade or a sock and a shoe. An ideal way for children to improve their memory and vocabulary skills. Also teaches children items by association. A fun game which will have them learning vital skills too. Box Contains 48 cards , rules leaflet', 'm48', 'c2', '4.79'),
(16, 'Peruvian Dice Game. The original Liar''s dice game from Peru - 6 player', 'This ancient South American game is a quick, exciting game of guesswork, bluff and luck that can be played anywhere by anybody. No board, no setting up and no complicated rules. The game is also known as Cacho, Dudo or Cachito "The second most addictive thing to come out of South America!" - Stephen Fry. Contains 6 dice cups, 30 dice, collection bag and full instructions.', 'm6', 'c2', '10.99'),
(17, 'Coloured Ice Cream Play Sand Set For Kids - 1 Pound (450 Gram) Colour Play Sand Box 3 Moulds - Pink Sculpting Magic Super Fun Sand Kit', 'Make your own Play Sand Ice Cream with this Superset. Use the three moulds and bags of Play Sand to make your pretend frozen treats. This stuff isn''t like your normal sand either - it''s super-squishy, sticks together and very easy to mould. Have a blast with Play Sand! A great playset for ages three and up,. What''s in the box? 3x bags of Play Sand 3 x moulds', 'm52', 'c3', '10.95'),
(18, 'Motion Sand Safari Playset', 'Have endless hours of fun with this deluxe playtray playset, creating brilliant sand shapes or create your own sculptures. Motion Sand is the squeezable sand where you can FEEL the fun! Pack it, pull it, shape it and love it, Motion Sand is so incredible you can''t put it down. It''s kinetic - meaning it sticks to itself and not to you! It''s easy to shape and mould and flows through your fingers like a slow-moving liquid, but leaves them completely dry. Kinetic Sand stimulates children''s creative skills allowing them to create anything they can imagine. It never dries out and is gluten free. This soft and stretchy sand easily cleans up while delivering non-stop fun! It''s squeezable sand you can''t put down. The deluxe playtray playset includes Motions Sand, 10 animal moulds and play scene tray. For ages 3 years and over. Motion Sand is a registered trade mark of ProActive Distribution.', 'm40', 'c3', '6.99'),
(19, 'Disney Princess Play Sand Set for Kids - 1lb (450g) Pink Play Sand Box with Accesoires: 3 Moulds + Disney Princesses - Pink Sculpting Magic Super Fun Sand Kit', 'Ever made a bright pink castle out of sand? Give it a go with the Disney Princess Play Sand Set! The set includes three moulds and 450g of sand for making a big pink castle. Once completed, add the colourful jewels and bring it to life. The Disney Princess Play Sand Set also comes with four character stands from the hit Disney movie - Cinderella, Ariel, Belle and Rapunzel. Set them up around your newly built castle and create a royal Disney scene! A great gift for Disney fans aged three and up. What''s in the box? 3 x moulds 4 x character stands Jewels 450g of sand', 'm52', 'c4', '14.89'),
(20, 'Lanyard With Kermit the Frog Dangle - The Muppets ID Holder', 'This bright and fun Muppets lanyard features a PVC dangle of Kermit the Frog! The Muppets lanyard includes a ID holder so you can wear it all around. Measures about 6-inches tall x 4 1/4-inches wide x 1/4-inch long.', 'm41', 'c5', '9.71'),
(21, 'Tobar 1:24 Scale Ferrari 458 Italia Kit', 'Product Description Maisto 1:24 Ferrari 458 Italia Die-Cast Kit The Maisto line of Assembly Line die-cast model kits reaches another plateau with the addition of Ferrari cars! Very few of us will ever get to own a Ferrari and even less will actually get to make one. Well with Maistos fantastic die cast assembly line you get to do both! Everything you need is supplied all in one box. No glue and paint is required and you even get a screwdriver to put this together. Highly Detailed Opening Parts Detailed Rolling Wheels Pre-Painted Metal Body Easy Assembly Screw Driver Included Bonus Custom Wheels Included 35 piece model kit to build a 1:24 scale diecast Ferrari 458 Italia. The finished model is extremely detailed inside and out, with a faithfully recreated chassis and a visible engine and detailed interior features. The pieces fit together with ease, either snapping together by hand or with a little bit of help from the screwdriver included in the kit. Diecast car model kit. Builds into a Ferrari 458 Italia. 1:24 scale model. Easy to assemble. Electrostatic paint coating. Red or yellow colours. Tampo print details. Highly detailed interior and exterior. Colour of vehicle may vary from image shown. ', 'm69', 'c7', '16.18'),
(22, 'Batman 1966 Tv Series Batboat 1:50 Scale Diecast Model', 'based on the 1966 tv series hotwheels diecast model 1.50 scale 8+', 'm26', 'c7', '35.99'),
(23, 'Disney Pixar BDW82 Cars Jessica Giampetrol & Nate Stanchion 2-Pack 1:55 Diecast Car Vehicle', 'Disney/Pixar Cars Collector Die-cast 2 Pack Collection: All kids'' favorite characters from Disney/Pixar Cars are rolling in and these two-packs double the fun! Each set includes two characters that share a key scene in the film. Kids will love reenacting favorite movie moments or imagining new adventures-"and scene"! Each sold separately, collect all your favorite Cars characters!', 'm38', 'c7', '7.99'),
(24, 'Ford Capri 3.0S - 1982 British Saloon Car Champion', 'Capris dominated the British Saloon Car Championship BSCC in the late 1970s but by 1981 were starting to look outdated and outclassed by the cleverly homologated TWR built Rover SD1 V8 However Vince Woodman led one last Capri hurrah during the 1982 season winning four races outright in his Neil Brown engined CC Developments prepared car and battling all year with works Rover driver Jeff Allam Woodman looked to set to steal once last championship for the Capri and led the last round of the series at Silverstone until Gordon Spice punted him over the chicane leaving Allam victorious in Class A by 3 point', 'm13', 'c7', '33.95'),
(25, 'Lucario Pokemon Pocket Monster Collection Action Figure', 'Lucario Pokemon Pocket Monster Collection Takara Tomy Action Figure!', 'm60', 'c4 ', '4.23'),
(26, 'Marvel Avengers Super Hero Mashers Spiderman Classic Figure', 'Product Description Make your own hero mash-up with this customizable Spider-Man figure!. He looks just like the web-slinging superhero. But Spider-Man would be even more powerful if he had a Captain America arm or a Hawkeye head. All his parts are removable so you can swap parts from other Super Hero Mashers figures (sold separately). Create the ultimate Avenger and customize your superhero adventures with your Spider-Man figure. Box Contains 1 x Includes figure', 'm24', 'c4 ', '15.99'),
(27, 'Star Wars Basic Figure Force Unleashed Imperial Jumptrooper', 'Star Wars Basic Figure Force Unleashed Imperial Jumptrooper', 'm24', 'c4 ', '16.52'),
(28, 'Warhammer 40,000 Eldar Farseer (1 figure, plastic, 2013)', 'The Farseer is a HQ choice for Eldar. A master of the psychic powers this HQ can sway the tide of battle with a meer thought. This multi-part plastic kit contains 10 components with which to make an Eldar Farseer armed with Singing Spear. Supplied new and sealed in box, unassembled and unpainted.', 'm20', 'c8', '11.45'),
(29, 'Nickelodeon Teenage Mutant Ninja Turtles: Mega Colouring Book', 'Join your favourite pizza-lovin'' ninja heroes as they shell out their own brand of justice in this awesome colouring adventures! Over 100 pages', 'm42', 'c5', '2.79'),
(30, 'Playmobil 5446 Unicorn Carriage with Butterfly Fairy', 'Product Description The Playmobil unicorn carriage with butterfly fairy features a unicorn pulling the two-wheeled carriage taking the butterfly fairy with staff on her travels. Box Contains 1 x Playmobil unicorn carriage1 x Butterfly fairy', 'm46', 'c5', '7.99'),
(31, 'Godzilla Revoltech SciFi Super Poseable Action Figure #004 Baragon', 'Referred to as the category of "monster Underground" familiar, roots this Baragon. Or place, such as the venerable monster. There the number of stars toys monster, but rarely is the "movable monster joints move freely really". With that said molding of "creatures of flesh and blood", because there was unnatural of the dividing line of the movable part, a gap of joint called ... worried about "destiny". However, this figure has to bear that in appreciation as the "Real Figure" enough. I think I see from the image, better had you play to take the hand and can feel it. Exhibitions and work of the Natural History Museum in the world, familiar with your chocolate Q Â· Dyno Tales and candy chocolate eggs, guru of animal molding, was in charge of the molding Shinobu Matsumura said. Do it become Kakkoyoku how creators of the world''s best animal-dinosaur figurines, make a fictional monster. Instead of adding arbitrary arrangement, form of appearance is not an exaggeration to say that do not sculptor that while faithfully reproduces the monster movie, can do it to more than him ... to inject a sense of life.', 'm27', 'c5', '33.34'),
(32, 'King Horse Beautiful personalized fashion tattoo sticker tattoo sticker sexy totem waterproof', 'Our temporary tattoos are certified by F.D.A, EN71, ASTM, safe and non-toxic. It''s high quality with fashion designs that are fake, but look real on the skin, they are 100% waterproof and can last up to 7 days. Easy on easy off, they can be removed with baby oil or rubbing alcohol. Product Dimensions : 8.07" x 3.94" Inches Weight : 0.18 ounces/pcs', 'm29', 'c10 ', '1.99'),
(33, 'Marvel''s Avengers Color Tattoo Sheets [ 4 Per Package]', 'Have an Avengers super hero birthday party! Each contains 4 sheets.', 'm65', 'c10 ', '5.99'),
(34, 'Scalextric 1:32 Scale Lancia Delta S4 Slot Car', 'Product Description Scalextric C3490 1:32 Scale Lancia Delta S4 Slot Car Box Contains 1 Slot Car', 'm49', 'c11', '26.29'),
(35, 'Automoblox C9-P Sports Car (Pink)', 'Product Description A reinvention of a classic wooden toy car for the iPod age, Automoblox is a fusion of heirloom craftsmanship and contemporary styling, transformed into a mix-and-match design system that allows children to create their own unique car styles; offering opportunity for creative, developmental fun! In addition to being modern, classic toy cars, Automoblox is a high-quality building system that will delight and inspire children whilst fostering the development of important skills and learning foundations. Starting with a stylish wooden body made from German beech wood, kids add wheels, windows and unique customising details. Each car in the series has its own unique VIN number, just like a real car! All Automoblox cars can mix and match with others in the series to create your very own unique ride! Made of solid wood with real rubber tires, these cars roll like greased lightning! This pink sportscar is the full size model at 16.5cm long and 11.5cm wide; featuring venom alloy rims, low profile pink tyres, and pink visor. All cars feature a patented Automoblox connector system that enables the rapid interchange of parts; perfect for on-the-go car design. Automoblox are design-led classics that will be enjoyed by car enthusiasts, young and old! Suitable age - 3 years +', 'm34', 'c11', '26.61'),
(36, 'CARRERA 20061191 GO!!! - Cars - Porsche RS Spyder', 'Scale: 1:43', 'm7', 'c11', '22.11'),
(37, 'Hexbug Tagamoto Enforcer Road Set', 'From the creators of HEXBUG micro robotic creatures, Tagamoto motorized vehicles read and react to codes you place on the road, with sounds, movement and lights. Tagamoto motorized vehicles read and react to codes with lights, sounds and movement, making each driving experience different. Tagamoto gives kids the power to essentially engineer their own play environment, control where their vehicles go, and most importantly, how they interact within that environment a?? stopping at stop signs or toll booths, revving engines, drag racing, or pulling into a parking lot at the end of the day. Includes two collectible lights & sounds vehicles (one racer and one police car), more than 30 bar-codes, and more than 65 easy to connect pieces a?? three straight tracks, three four-way intersections, eight curve tracks, two cul-de-sacs, two three-way tee bases, two road closed pieces, eight street lights, two double overhead road signs, four single overhead street signs, six road cones, six road barrels, 12 street signs, two parking diverters, one parking lot, one stop sign, one toll booth, and two flip down diverters.', 'm59', 'c11', '39.99'),
(38, 'Pirate Salty - Thomas Take N Play', 'Sail the High Seas with Pirate Salty', 'm61', 'c11', '9.02'),
(39, 'Inflatable Pluto Disney Character Children''s Toy', 'This is a Winnie the Pooh Disney character which inflates to a size of 50 cm. The product is a great children''s toy with eye catching colours and graphics. Children will adore having life size characters of their favourite Disney TV, film stars and superheroes. This product is brilliant for indoor and outdoor use. - The product comes packaged with a size of 16 cm x 23 cm - All inflatable''s have a safety valve to ensure the product does not deflate - Ideal for parties, children''s present, decoration, party and Christmas bag filler - Suitable for children 3 +', 'm63', 'c4', '2.99'),
(40, 'LARGE FUN INFLATABLE LARGE GUITAR BLOW UP FANCY DRESS PARTY MUSICAL INSTRUMENT (Gold)', 'Colour Name:Gold GREAT WAY TO LIVEN UP A PARTY 81cm - 106cm LONG CHOOSE YOUR COLOUR BRILLIANT FOR ANY CELEBRATION HOLIDAYS CHRISTMAS BIRTHDAY PARTIES', 'm23', 'c12', '1.78'),
(41, 'Oxford Diecast Land Rover Freelander Mauritius Blue 76FRE003', 'The 2013 specification of the Land Rover Freelander 2 SD4 HSE, a high performance two or four wheel drive car from Land Rover .This two door Freelander is in an appealing Firenze Red , the model comes with a black chassis, silver wheels, matt black interior and seating and matt black steering wheel. Registered XXXXX, the Freelander 2 SD4 HSE lettering is masked silver across the back, as well as the Land Rover badge, while the front features the Land Rover lettering across the front of the bonnet above the detailed radiator grille. Shown here in Mauritius Blue.', 'm43', 'c7', '6.79'),
(42, 'Tobar 1:32 Scale "Ferrari Race and Play F10 Wrist Racers" Car', 'Product Description Bburago Ferrari Race and Play F10 IR Wrist Racer Take the wheel of a powerful Ferrari sports car with this unique "Wrist Racer". The wrist unit straps around much like a watch and the car is controlled by an authentic, mini Ferrari steering wheel. Box Contains 1 x m69 B18-41211 1:32 Ferrari Race & Play F10 Wrist Racers', 'm69', 'c7', '19.50'),
(43, 'Universal Hobbies Fahr D180H 1:16', 'Fahr D180H 1:16', 'm75', 'c7', '35.42'),
(44, 'Oxford Diecast Austin FX4 Black Taxi 76FX4001', 'Over 75,000 FX4''s were manufactured since it was released in 1958 and production ran for nearly 40 years. The Austin FX4 became a very familiar sight on the streets of London.', 'm43', 'c7', '6.25'),
(45, 'Bburago 1:18 Scale Plus Porsche GTS RS 4.0 Model Car (White)', 'Highly detailed model of the Porsche 911 GT3 RS 4.0 in 1:18 scale. The doors, boot and bonnet all open, revealing a stunning amount of detail of the interior and exterior of this beautiful diecast sports car reproduction. The GT3 RS 4.0 is the final evolution of the 997 series and features a 4.0 litre engine capable of 365 bhp. Suitable for age 3+. Perfect for model collectors and Porsche fans.', 'm4', 'c7', '26.65'),
(46, 'classix morris minor 4 door saloon beige car 1.76 scale diecast model', 'Classix by Pocketbond - Morris Minor 4 Door Saloon in Beige 1:76 Scale - Suitable for OO Gauge Model Railways. CLASSIX - Detailed and faithful diecast scale models with plastic parts intended for collectors of 14 years and above. PLEASE NOTE THAT THIS ITEM IS NOT INTENDED TO BE A TOY, THIS ITEM IS FOR COLLECTORS. MINIMUM AGE RECOMMENDED 14.', 'm11', 'c7', '4.99'),
(47, 'Alfa Romeo P3, No.2, 1935, Model Car, Ready-made, Rio 1:43', 'Our car models are in scale and true to the original models for adult collectors, not toys for children!', 'm1', 'c7', '57.29'),
(48, 'Ultra Pro DECKBOX POK Pokemon C60 Card Game (Red and White)', 'Product Description DECKBOX POK Red and White Pokemon C60 Box Contains 1x DECKBOX POK Red and White Pokemon C60', 'm74', 'c2', '5.29'),
(49, 'Mattel Skip Bo', 'Skip-Bo a game where each player is dealt a stockpile of cards and then attempts to win by playing all these cards on building piles in numerical sequence 1 through 12, Includes: 144 number cards and 18 Skip-Bo Jokers. For 2 - 6 Spieler.Ab 7 Jahren.', 'm38 ', 'c2', '10.50'),
(50, 'Sentinels of The Multiverse Silver Gulch Card Game', 'Product Description Sentinels of the Multiverse Silver Gulch Box Contains 1x Sentinels of the Multiverse Silver Gulch', 'm22', 'c2', '7.32'),
(51, 'Top Trumps James Bond Card Game', 'Style Name:James-Bond Product Description The names Bond, James Bond. This pack needs no introduction, its simply the Best of Bond. Villains, Henchman all the Bonds and a few glamorous women thrown in for good measure, it''s the greatest adventure ever, so pay attention 007. Suitable for ages 3 years + Safety Information: Warning. Not suitable for Children under 3 years. Manufacturer''s Description The names Bond, James Bond. This pack needs no introduction, its simply the Best of Bond. Villains, Henchman all the Bonds and a few glamorous women thrown in for good measure, its the greatest adventure ever, so pay attention 007. See all Product Description', 'm79', 'c13', '3.93'),
(52, 'Pairs on Wheels - Family Fun Playing Cards', 'Product Description Woodand toys offer this Pairs on Wheels Card Game. The game is played with 40 cards: there are 20 identical pairs. The game can be played by 2 or more players. Can also be used for the card game ''Snap''. From 4 yrs. 2 or more players. Cars piuctures include Fire Engine, Bus, Train, Motorbike, Tractor, Lorry, Digger, Truck, Van, etc. Manufacturer''s Description Woodandtoys offer this Pairs on Wheels Card Game. The game is played with 40 cards: there are 20 identical pairs. The game can be played by 2 or more players. Can also be used for the card game ''Snap''. From 4 yrs. 2 or more players. Cars piuctures include Fire Engine, Bus, Train, Motorbike, Tractor, Lorry, Digger, Truck, Van, etc.', 'm69', 'c2', '1.95'),
(53, 'Uno H20 Waterproof Clear Cards', 'Product Description One of America''s favorite family games is now waterproof! UNO H20 features all new clear, plastic cards and a portable, waterproof carrying case. The special "downpour rule" rains cards on all the players. Manufacturer''s Description UNO - H20 Edition features clear plastic waterproof playing cards that will keep you playing for years to come! This special edition of America''s #1 card game includes the special Downpour Card and rule for unique game play. Be the first player to score 500 points and you are the winner!', 'm38', 'c2', '11.11'),
(54, 'Cheatwelll Games Chattabox', 'Product Description This quick-witted word game is a riot of fun! It''s a helter-skelter race in which you must get rid of your cards by calling out answers to teasing topics. Once the topic has been announced you''ll have to think quickly, calling examples that start with the letters on your cards Try not to panic and do your best to keep the momentum going whilst playing out the cards in your hand - but don''t delay - pause too long or fail to play your cards and you''ll pick up a penalty!', 'm10', 'c2', '6.70'),
(55, 'Monopoly Deal Card Game (US Version)', 'Get a handy way to play the classic property-trading game! be the first collect 3 full property sets of different colors, and you''ll win the monopoly deal card game. You''ll pick up cards when it''s your turn and play action cards to charge players rent, steal their cards or demand money for your birthday. Build up property sets, gather piles of money and keep wheeling and dealing until you''re the monopoly deal winner! monopoly and all related characters are trademarks of Hasbro.', 'm24', 'c4 ', '4.75'),
(56, 'Top Trumps Cats', 'They come in all sizes and tempers but we dearly love our mysterious feline friends. Discover the most famous varieties of cats and see how the fiercest compares to the cuddliest and most mischievous. A furry deck full of surprising cat facts; find out all about your favourite kittens in this special Top Trumps pack! Suitable for ages 3 years + Safety Information: Warning. Not suitable for Children under 3 years.', 'm70', 'c2', '3.20'),
(57, 'Top Deck - Very High Quality Playing Cards - Linen Finish - Varnished', 'This is a high quality set of traditional playing cards with the standard 52 cards plus 2 Jokers. The cards come in a choice of blue or red and have a linen finish and a varnished surface for extra durability. A quality deck of cards for all those fun family games - Top Trumps , snap etc and those who take their poker and bridge nights a little more seriously. This deck of cards is suitable for the following games:- Stud Poker,Stud Horse Poker,Oxford Stud, High Chicago,Low,Chicago,FollowQueentheQueen,Countdown, Billabong,Shanghai,Guts,FiveO,Chinese,Kuhn,Draw, Community card.', 'm45', 'c2', '3.99'),
(58, 'Mini Top Trumps - England Football Stars', 'Celebrate England''s past and present with this Mini edition of England Stars Top Trumps! Featuring stars from the current squad like Sturridge and Lampard alongside heroes from England''s illustrious past such as David Beckham or Gary Lineker, this Top Trumps pack is an absolute must for all England fans!', 'm70', 'c2', '1.99'),
(59, 'YuGiOh : DUEA-EN000 1st Ed Dragon Horn Hunter Super Rare Card - ( Duelist Alliance Yu-Gi-Oh! Single Card )', 'All Deckboosters single cards are brand new in mint condition taken straight from the pack and are supplied in a professional storage/presentation case providing an ideal gift for both the Yu-G-Oh! player and collector.', 'm15', 'c2', '5.95'),
(60, 'Redakai - Conquer The Kairu - X-Reader Starter Pack', 'Redakai - Conquer The Kairu - X-Reader Starter Pack', 'm56', 'c2', '9.95'),
(61, 'Lion Games & Gifts Europe 11.5 g Ultimate Value 1000 Chip (Yellow)', 'Colour Name:yellow Â |Â  Style Name:Value 1000 Product Description Lion Games & Gifts Europe offers the ultimate ABS chip suitable for card and casino games. Box Contains 25 x Chips', 'm33', 'c2', '1.46'),
(62, 'Tripack of Happy Families Childrens Playing Cards from Disney Pixar Cars 2 Toy Story', 'Tripack of Disney favourites including Buzz Lightyear, Woody, Bugs Life, The Invincibles and many more. 3 decks of Happy families from Cars 2, Toy Story & Pixar', 'm8', 'c4', '8.99'),
(63, 'Piatnik plastic playing cards - double deck', 'Product Description Traditional design playing cards Geometric back design, four indices Double pack of 52 cards and two jokers, plastic case Standard bridge size 89mm x 58mm 100% plastic playing cards - washable and long lasting. Ideal for regular use Manufacturer''s Description 100% plastic playing cards - washable and long lasting. Ideal for regular use See all Product Description', 'm21', 'c2', '16.99'),
(64, 'Yu-Gi-Oh Crossed Souls Booster Display Card Game (Pack of 24)', 'Product Description Crossed Souls unlocks new Deck-building opportunities like never before for the Yu-Gi-Oh! TRADING CARD GAME. This 100-card set introduces the Zefra monsters, a new monster omni-theme that crosses over five different Deck types!Each Zefra monster is tied in to a popular monster group from recent sets, making them either Zefra/Shaddoll, Zefra/''tellarknight, Zefra/Yang Zing, Zefra/Nekroz, or Zefra/Ritual Beast. Duelists with any of these Decks can add their new Zefra monsters to spice the Deck up, OR build a Deck entirely of Zefra monsters, tying all five together!While their cross-theme potential and monster effects vary, all Zefra monsters can take advantage of the new, powerful Zefra Spell & Trap Cards in Crossed Souls, magnifying the power boost that Zefra monsters give to any Deck that includes them. At the same time, a pure Zefra Deck (or a Deck with appropriate Zefra splash) can now gain increased access to Shaddoll, ''tellarknight, Yang Zing, Nekroz, and Ritual Beast cards!Zefra monsters open up unprecedented crossover Deck-building avenues, but Crossed Souls also arms Duelists with new non-Zefra cards for their Burning Abyss, Madolche, Infernoid, U.A., Yosenju, and other Decks.Fans of the Yu-Gi-Oh! anime and TV series will also be treated to a slew of new cards from the newest generation of the series - Yu-Gi-Oh! ARC-V. Box Contains 24 x Booster Packs', 'm80', 'c2', '49.93'),
(65, 'Comic Maker Minnie Mouse Magazine Maker', 'Product Description This fantastic kit has everything you need to make your own fun and lively magazine featuring the beautiful and much-loved Minnie Mouse. Think up stories, adventures and antics for Minnie and her friends, then bring them to life in glorious colour! There are lots of great stickers of Minnie in cute poses and outfits; speech and thought bubbles for your words and cool graphics to add real design style! Then, for more prettiness and sparkle use the glitter pens and the ribbon to bind your magazine altogether, ready to share with your friendsâ‚¬Â¦ and Minnie! Contains 1 Minnie Mouse magazine cover, 12 Minnie Mouse magazine sheets, 12 sticker sheets, 2 glitter pens, 1 fine line black pen, 2 stampers, 1 ink pad, 1 ribbon and an instructions and ideas sheet. For ages 7+ Box Contains Contains 1 Minnie Mouse magazine cover, 12 Minnie Mouse magazine sheets, 12 sticker sheets, 2 glitter pens, 1 fine line black pen, 2 stampers, 1 ink pad, 1 ribbon and an instructions and ideas sheet', 'm12', 'c3', '10.98'),
(66, 'Arcane Wonders "Sheriff of Nottingham" Board Game', 'Product Description Sheriff of Nottingham Box Contains 1x Sheriff of Nottingham', 'm2', 'c2', '23.81'),
(67, 'Top Trumps - Smash Hits Pop Stars', 'Top Trumps cards', 'm79', 'c2', '6.94'),
(68, 'Top Cards Disney Frozen Whot!', 'The classic card game Whot! gets a Frozen makeover! In Whot! Players have to match the shapes or numbers to get rid of their cards. Play with up to six people for fast-paced fun. Be prepared though it''s going to get hectic! This special edition features brilliant designs and characters from the hit Disney film. A great card game for ages eight and up.', 'm70', 'c4', '7.20'),
(69, 'm51 Silk Painting: Cardmaking Kit - Makes 5 Lovely Cards- Animal', 'Sc Â silk painting: cardmaking kit - makes 5 lovely cards Â  Â silk painting kitanimal packcontains 5 printed silk outlines, 5 cards, 5 envelopes, 5 x10ml bottles of silkpaint, pallet and bruhe designs in this pack are dolphins, fish, bears, butterflies and catssee my ebay shop for other kitsplease pay for your goods within 2 days of the finish of the auctiPayment can be by paypal, cheque or postal ordlease look at my other items as i give shipping discounGoods are usually shipped within 24 hours of the payment being receivf goods are faulty or damaged i will send a replacement or refundm51 ltd is a small family business specialising in silk and silk painting supplies', 'm51', 'c3', '15.99'),
(70, 'Top Trumps Penguins', 'Penguins are joining the Top Trumps range, and that''s cool because under their cuddly and clumsy appearance, Penguins are actually amazingly strong animals with astonishing abilities! Learn all about your favourite birds and discover how they''re loosely related to Puffins, Auks and Guillemots. ...But are they? Snow way! Suitable for ages 3 years + Safety Information: Warning. Not suitable for Children under 3 years.', 'm70', 'c2', '3.94'),
(71, 'Top Trumps: MULTIPLE SELECTION CHOOSE YOUR FAVOURITE TRUMP (MONSTERS UNIVERSITY)', 'Colour Name:MONSTERS UNIVERSITY Top Trumps was the undisputed winner of the Loaded World Cup of Games and we can''t argue with that. For grown-up males of a certain age, Top Trumps were the playground game of choice. Now they''re making a grand comeback with all-new subjects, still using the ''one-upmanship'' method of play. Choose a statistic on your top card which you think will beat those on other top cards - simple, and very addictive. There are lots of different flavours to choose from, across three different ranges covering the World of Top Trumps.', 'm35', 'c2', '3.75'),
(72, 'Disney Rummy Tiles', 'Product Description Play with Buzz, Woody, Lightning McQueen, Remy, Nemo and all their friends! Disney Rummy contains two ways to play! The "Discovery" game helps children learn the basics whilst the "Family" game gives you all the fun of classic rummy! Make a run of numbers of the same colour, or a set of the same number but different colours! Watch out: when it''s your turn, if you cannot place a tile you''ll have to take another one out of the bag! First to get rid of all their tiles is the winner! Box Contains 52 Tiles 4 Tile-Holders 1 Set of Rules', 'm16', 'c4', '14.49'),
(73, 'Disney Apples to Apples Card Game', 'Disney Apples to Apples - The Game of Goofy Comparisons. Now the whole family can experience the award-winning fun of APPLES to APPLES as they never have before, with the magic of Disney and some wonderful new twists. For the first time, Red Apple cards come to life with pictures from Disney theme parks, movies and Disney Channel shows. The special card holder makes it easy to pass Green Apple cards around the table. Just Comes complete with 360 cards and a card holder. For 4 to 8 players.', 'm38', 'c4', '19.99'),
(74, 'Star Wars original trilogy playing cards (1 sealed pack)', 'Star Wars original trilogy playing cards (1 sealed pack)', 'm8', 'c4 ', '5.68'),
(75, 'Hasbro Card Game - Cranium Cards', 'The card game that gives everyone a chance to shine! Get ready to act, draw, describe and spell backwards in this exciting laugh-out-loud card game where you supply the answers. You never know what you`ll do next with Cranium Cards!', 'm24', 'c4 ', '12.99'),
(76, 'Star Realms: FLIP Box, Includes MERCENARY GARRISON Promo Card -Holds an entire Set!', 'The Star Realms Flip Box is a double deck box with promo card, Mercenary Garrison.', 'm31', 'c2', '11.99'),
(77, 'JUMBO PACK KIDS SNAP CARDS 13CM X 9CM APPROX 36 GREAT CARDS', 'Tallon Games Children''s Jumbo Picture Snap Cards 36 Cards Suitable for 3 years + Great fun for all the family 12.5cm x 8.5cm approx', 'm62', 'c2', '1.86'),
(78, 'Legendary Villains: Fear Itself', 'Please note this game is an expansion pack only and requires the original Marvel Legendary Deck Building Game in order to play. Play through the Fear itself storyline within Legendary! First small box expansion to the highly successful Legendary Villains A Marvel Deck Building Card Game! 6 new Allies! 1 new Adversary group! 1 new Commander! 3 new Plots! Players can work both with and against other players to defeat The Mighty while laying waste to planet Earth! The game will feature six playable characters from the Worthy; Kuurth, Mul, Skirn, Nerkkod, Greithoth and Skadi! Use The Worthy to defeat Iron Man in his Uru Enchanted Armour as he leads the forces of The Mighty to defend Earth! Comes with 100 playable cards and features original art!', 'm76', 'c2', '16.08'),
(79, 'Disney Frozen 2-In-1 Happy Families & Action Game Playing Cards', 'Frozen 2 In 1 Happy Families Playing Cards - Disney - Cartamundi. Great Pack Of Cards To Play With Your Friends And Family. 2 In 1. Detailed Rules Are Included Within The Pack. Style And Colour May Vary. Ages 3+', 'm8', 'c4', '2.85'),
(80, 'Trefl Disney Planes Playing Cards', 'Product Description Iif you are a fan of Disney Planes, then this will be the perfect pack of cards for you. This is a great pack of 55 playing cards featuring Disney Planes. Learn a variety of different games to play with your family and friends. This pack of card would make a great children''s gift. Box Contains 1 x Pack of 55 cards', 'm73', 'c4', '1.73'),
(81, 'Pictionary Card Game', 'Product Description The addictive fun of the original Pictionary - no drawing required! The deck comes with simple images on picture cards. Combine cards or use them as props as you race to act out answers. Earn five points and your team is a picture-perfect winner! The best of both Pictionary and charades in one laugh-out-loud game Use pictures from the deck to act out clues Perfect party game, at home or on the road Two teams make for fast-moving fun Box Contains 1 x 1 x pictionary card game', 'm44', 'c2', '6.99'),
(82, 'Frozen Top Trumps Card Game', 'Style Name:Frozen Top Trumps Product Description Who is the most magical character in Frozen? Find out with this classic Top Trumps card game that features all your favourite characters from Disney Frozen! Box Contains 30 x cards; 1 x instruction card; 1 x promo card.', 'm17', 'c4', '2.70'),
(83, 'Star Cutouts Cut Out of Stormtrooper', 'Product Description The Cardboard Cut out of Stormtrooper measures 183cm tall and is sure to add wow factor to any home, office, event or party! Great for collectors and gifts. All cut outs are designed to be free standing and are erected within seconds. All life size standees fold down for easy storage and delivery. Box Contains Life sized cut-out of Stormtrooper', 'm57', 'c5', '29.99'),
(84, '4 Dragon Plastic Toys', 'Set of 4 Dragon Plastic Toys Each dragon toy measures between 17cm to 20cm long depending on the design. 4 different designs - exclusive to Blue Frog Toys Ltd. CE approved an suitable for ages 3 years +', 'm5', 'c5', '4.99'),
(85, 'Star Wars - POTF - Holo Card - Emperor''s Royal Guard - with Force Pike', 'Star Wars - POTF - Holo Card - Emperor''s Royal Guard - with Force Pike', 'm58', 'c4 ', '16.99'),
(86, 'Star Wars The Black Series Action Figure - Anakin Skywalker #03', '* Figure stands approximately 3.75" tall * Detailed figure equipped with lightsaber * Officially licensed * Brand new', 'm58', 'c4 ', '13.41'),
(87, 'Snoopy and Woodstock figure - Snowsled Snoopy and Woodstock vintage item by Schleich', 'This is a fantastic Snoopy figure made by Schleich. It is a vintage collectable item and is roughly 6cm tall.', 'm54', 'c5', '4.99'),
(88, 'Batman Arkham City Mr. Hammer & Harley Quinn Action Figure 2 Pack', 'Batman Arkham City Mr. Hammer & Harley Quinn Action Figure 2 Pack', 'm14', 'c5', '33.99'),
(89, 'Star Wars Movie Heroes Yoda', 'This fierce Yoda figure is rendered in careful detail to look just like the characters in the Star Wars: Revenge of the Sith movie! He comes with weapons for all the Star Wars adventures you can come up with, and a battle base so that he can look awesome in your collection. Re-enact your favorite Star Wars battles or create brand new ones with this cool YODA figure! Figure comes with weapon accessories, Galactic Battle Game card, battle base and die.', 'm58', 'c4 ', '12.95'),
(90, 'Trefl Movie Revenge Of The Fallen Exclusive Bruticus Maximus Combaticons', 'Trefl Revenge of the Fallen Combiner: Bruticus Maximus', 'm72', 'c4 ', '99.99'),
(91, 'Moshi Monsters Series 7 Moshling - ROARY SCRAWL', 'Moshi Monsters Series 7 Moshling. Brand New.', 'm39', 'c5', '2.95'),
(92, 'Star Wars: Wicket', 'Product Description Star WarsÂ is an AmericanÂ epicÂ space operaÂ franchise centered on aÂ film seriesÂ created byÂ George Lucas. The franchise depicts a galaxy described as "far, far away" in the distant past, and portraysÂ JediÂ as a representation of good, in conflict with theÂ Sith, their evil counterpart. Their weapon of choice, theÂ lightsaber, is commonly recognized in popular culture. The franchise''s storylines contain many themes, with influences fromÂ philosophy and religion. Box Contains POP! Bobble: Star Wars: Wicket', 'm58', 'c4 ', '11.98'),
(93, 'Moshi Monsters Series 4 - Scarlet O''Haira #The Puppet Company Moshling Figure', 'Moshi Monsters Series 4 - Scarlet O''Haira #The Puppet Company Moshling Figure', 'm78', 'c5', '1.85'),
(94, 'Star Wars general grievous bobble head', 'Star Wars, General Grievous, bobble head, figure', 'm18', 'c4 ', '11.58'),
(95, 'Star Wars: R2-D2', 'Product Description Star Wars is an American epic space opera franchise centered on a film series created by George Lucas. The film series, consisting of two trilogies, has spawned an extensive media franchise called the Expanded Universe including books, television series, computer and video games, and comic books. These supplements to the franchise resulted in significant development of the series ''fictional universe, keeping the franchise active in the 16-year interim between the two film trilogies. The franchise depicts a galaxy described as far, far away in the distant past, and it commonly portrays Jedi as a representation of good, in conflict with the Sith, their evil counterpart. Their weapon of choice, the lightsaber, is commonly recognized in popular culture. The franchise''s storylines contain many themes, with strong influences from philosophy and religion. Box Contains 1 x Star Wars R2-D2 Pop! Vinyl Bobble Head', 'm58', 'c4 ', '7.99'),
(96, 'LEGO Teenage Mutant Ninja Turtles 79100: Kraang Lab Escape', 'Product Description Give the villains the slip with a hot slice of turtle power. The Kraang has Michelangelo locked tight in a laser-shield prison inside his lab. Use Michelangelo''s leftover pizza to turn a sticky situation into a slick escape. Slide the pizza through the prison bars to make the Foot Soldier slip and fall. Then activate the explosion function on Michelangelo''s cage to escape. Once he''s free, battle The Kraang in his awesome mech walker with dual laser flick missiles. Be ready for a wild ride through the city sewers when The Kraang detaches the mech walker''s legs to create a flying escape pod. Don''t let him get away. Box Contains 1 x prison1 x mech walker1 x Michelangelo minifigure1 x Foot Soldier minifigure1 x The Kraang4 x weapons', 'm32', 'c5', '40.99'),
(97, 'Star Wars 30th Anniversary Collection #19 - Jawa & LIN Droid', 'Bands of Jawas scavenge Tatooine for discarded droids and machinery to repair and resell.', 'm24', 'c4 ', '31.20'),
(98, 'The Amazing Spider-Man WEB BATTLERS Green Goblin figure', 'Spider man is the web-slinging hero you''ve always admired, but it''s not a Spider man adventure without a nemesis: Green Goblin. This Bashin'' Bomb GREEN GOBLIN figure looks just like the web-slinging crime-fighter''s archenemy, but he has something your Spider man figure (sold separately) may not be ready for: his bomb. When you squeeze his legs, he unleashes a smashing bomb attack.', 'm55', 'c4 ', '7.99'),
(99, 'Schleich Dragon Knight with Sword', 'Product Description The dragon knights, with the dragon rider as their leader and their armour reminding us of dragon skin, are a new and highly attractive group of knights destined for boys. Box Contains 1 x Schleich Dragon knight with sword', 'm50', 'c5', '5.99'),
(100, 'Star Wars Galactic Heroes Commando Droid and Count Dooku', 'The skys the limit for battle excitement with these two stylized figures! Based on characters from the out-of-this-world saga, your chunky Count Dooku and Commando Droid figures are ready to light up the skies with their lightsaber and blaster. These two are ready for action in their battle poses ?and just raring to fight for the fate of the universe!', 'm58', 'c4 ', '14.75'),
(101, 'Teenage Mutant Ninja Turtles Movie Action Figure Foot Soldier', 'Product Description New York City crime rates are on the rise and innocent civilians tremble in fear. But there''s a force fighting back, vigilantes among us ready to protect the city. Are they the heroes we expect them to be? And are they powerful enough to take down the masked warrior everyone fears...the Shredder? This figure is the scariest and most detailed ever, with multiple points of articulation. This version of Shredder replicates exactly the character in the movie. This version of Foot Soldier comes with padded knees, a belt and a gun case, as well as all his characteristic weapons. Suitable for ages 4 and above. Box Contains Contents: Foot Soldier figure, a gun case, weapons.', 'm64', 'c5', '17.99'),
(102, 'Marvel Avengers Iron Man Flip Up Gauntlet', 'Product Description Gear up just like your favorite armored Avenger with the Flip & Fire Gauntlet toy. This gauntlet attaches to your wrist so you can break out the heavy artillery with a flick of your wrist, just like Iron Man does. The gauntlet''s dual rocket launchers fire darts up to 25 feet so the foes of justice can''t get out of range. Tighten the strap on your arm for a stable shot, then head out for a fierce firefight with all of your Iron Man enemies To avoid injury: use only darts designed for this product. Do not modify darts or bow Box Contains Includes gauntlet and 2 darts', 'm35', 'c4 ', '11.11'),
(103, 'Marvel Super Hero Mashers - Hulk Figure', 'Now you can make m66 even more Incredible thanks to Marvel''s Super Hero Mashers! This fully customisable figure has removable parts which you can swap in and out with other Super Hero Mashers (sold separately). Mix ''n match them up for insane combinations and totally unique characters! Hulk looks great on his own but wouldn''t he look even more powerful with Thor''s head and mighty hammer? With Superhero Mashers you can be as creative as you like! The green giant also comes with Smash Missile Launcher for even more fun. Kids aged four and up will love this 18cm tall figure.', 'm66', 'c4 ', '12.99'),
(104, 'Star Wars Talking Stormtrooper Figure With 22 Phrases', 'The Empire''s forces have tracked you down! This Star Wars Talking Stormtrooper figure is fully articulated, boasts a flashing blaster pistol with sound effects and features an abundance of film phrases. Age 3+', 'm58', 'c4 ', '35.99'),
(105, 'Doctor Who 5" Action Figure - Slitheen and the Space Pig', 'Doctor who twin figure pack,very rare and long out of production', 'm9', 'c5', '21.99'),
(106, 'Teenage Mutant Ninja Turtles Sewer Gas Station T-Machines Play Set', 'Product Description Leo, Donnie, Raph and Mikey are mutant turtles who have been trained in the art of ninjutsu by their rat sensei, Master Splinter. Emerging from their sewer lair, the reptile brothers confront the world of New York City, facing villains more dangerous and pizza more delicious than anything they could have imagined! Help the turtles battle with Shredder, the Kraang and loads of super-powerful mutants, and learn your Ninja skills today! Turtle Power! Shredder and the Kraang are developing weapons that allow them to quickly take over the streets of NYC! They''ve developed a series of hi-tech vehicles that travel the streets, sewers and even buildings at super speeds with awesome battling capabilities. But Donnie''s been in his garage 24/7 and has salvaged every useable piece of metal found in the sewers and on the surface. He''s now ready to unleash his top secret project known as T-Machines so the Turtles can get to the scene fast and battle-ready. He''s even developed the T-Machines to look and function based on the personalities and fighting skills of his brothers and cohorts. Now you can explore the Turtles world with the T-Machines Sewer Gas Station playset! This playset has 2 levels of play, the rooftop and the gas station. When you''re at the station level, fill up with fuel and visit the garage to get a tune up, then take the rooftop lift to the 2nd level of your adventure. Use the rooftop runway and ramp to fire your T-Machines into action, tear up the roof top and crash through the Kraang battle billboard. When your done use the hidden escape ramp for a quick getaway! Playset also includes an exclusive Mikey T-Rawket vehicle. Compatible with all T-Machines vehicles. Suitable for ages 3 and above. Contents: 1 Sewer Gas Station playset, 1 Mikey T-Rawket vehicle. Box Contains 1 x Sewer Gas Station Play Set 1 x Mikey T-Rawket vehicle.', 'm64', 'c5', '18.46'),
(107, 'Star Wars - POTJ - incl. Jedi Force File - Sabe (Queen''s Decoy) - with Pistol', 'Star Wars Power of the Jedi Sabe Queen''s Decoy', 'm58', 'c4 ', '10.00'),
(108, 'Star Wars: Chewbacca', 'Product Description Star WarsÂ is an AmericanÂ epicÂ space operafranchise centered on aÂ film seriesÂ created by George Lucas. The franchise depicts a galaxy described as "far, far away" in the distant past, and portraysÂ JediÂ as a representation of good, in conflict with theÂ Sith, their evil counterpart. Their weapon of choice, theÂ lightsaber, is commonly recognized in popular culture. The franchise''s storylines contain many themes, with influences fromÂ philosophy and religion. Box Contains Wacky Wobbler: Star Wars: Chewbacca', 'm58', 'c4 ', '12.98'),
(109, 'Disney Frozen Sing A Long Elsa Doll', 'It''s fun to sing Frozen''s Let it Go but it''s even better when you''ve got Elsa by your side! The little Disney Princess knows all the words to the famous song and will happily sing the whole lot to you. Just press her brooch and Â put the microphone to her lips to hear her beautiful voice. However, you can join in at any time! Take the mic away and Elsa will give you the stage to sing Let it Go. Then switch it back to the famous Frozen princess and she will continue where you left off. With both of you belting out the Frozen classic, any listeners are bound to get goose bumps! Sing Along Elsa is ideal for little crooners aged three and up. Please note: RequiresÂ Â 3 x AAA batteries (included) plus 2 x AAA batteries (included).', 'm16', 'c4', '45.96'),
(110, 'Star Wars 7" Unleashed AOTC Darth Tyranus', 'Star Wars 7" Unleashed AOTC Darth Tyranus', 'm24', 'c4 ', '67.22'),
(111, 'Schleich Clumsy Smurf Figure', 'Product Description Suitable from 3 Years + Safety Information: Warning. Not suitable for Children under 3 years. Box Contains 1 Figure', 'm50', 'c5', '3.99');
INSERT INTO `NTL_toys` (`toyID`, `toyName`, `description`, `manID`, `catID`, `toyPrice`) VALUES
(112, 'Thomas & Friends Take-n-Play Gator Engine', 'Product Description Thomas & Friends Take-n-Play Gator is a durable die-cast engine. Perfect for Take-n-Play Portable Fold-Out Playsets (sold separately and subject to availability). Ages 3+ Box Contains Take-n-Play Gator', 'm68', 'c7', '4.99'),
(113, 'Wooden Train Set & Railway Freight Depot', 'Product Description 140 pieces incl. signal box. Invaluable accessory for all railway fans for extending our railway systems. New options lead to a higher demand for our bestseller train sets! Box Contains 1 x Small Foot company 1934', 'm53', 'c7', '77.44'),
(114, 'Wooden Thomas & Friends: Edward the Blue Engine', 'Product Description Edward is an older blue engine and is exteremely kind to everyone he comes across; even those who are rude and impatient. This Edward engine has been made from real wood and comes with a coal tender carriage. The carriage, and other Thomas Wooden Railway engines, can be connected together using a strong magnetic coupling system found on the front and back of the engines. This Edward engine has a printed name on the chassis and includes a character card which outlines Edward''s personality and role within Sodor. The Thomas & Friends Wooden Railway - Edward the Blue Engine is a great way to encourage roleplay. Edward the Blue Engine is an older engine. Kind and patient with Thomas and the other younger engines, Edward is a Really Useful Engine. This Edward is made out of real wood and arrives complete with his own coal truck. He has a three-dimensional face and is linked to his own coal truck with a very strong magnetic coupling. Over the years (and these Thomas trains will have years of play value) these solid wooden trains will prove to be a great investment as they stand the test of time. Edward will work happily on the Thomas & Friends Wooden Railway Sets and all other major brand wooden train sets. Suitable for children aged 2 to 6 years --Victoria Mackenzie', 'm30', 'c4 ', '9.99'),
(115, 'The Puppet Company - Finger Puppets - Dog', 'Great Finger Puppet from The Puppet Company''s huge collection of over 150 finger puppets!', 'm67', 'c14', '3.50'),
(116, 'Trademark Collections Disney Princess Sleeping Beauty Aurora Handbag', 'Product Description A lovely heart shaped handbag. Zipped making it easy for little hands to add or remove items. Useful size for a child to carry when shopping. Pink with character picture on the front . Trade Mark Collections Ltd are the leading supplier to UK retailers of licensed children''s and student bags,umbrellas and related accessories. Box Contains 1 x Handbag', 'm71', 'c15', '4.99'),
(117, 'Trademark Collections DPRIN004036 Disney Princess Purse', 'Product Description An ideal first purse for your little one, Pink in design and Illistrated with three Disney princesses, Zip fastening pocket and popper fold out section for cards etc. Trade Mark Collections Ltd are the leading supplier to UK retailers of licensed children''s and student bags,umbrellas and related accessories. Box Contains 1 x purse', 'm16', 'c15', '5.95');

-- --------------------------------------------------------
--
-- Create table structure for table `NTL_special_offers`
--

DROP TABLE IF EXISTS `NTL_special_offers`;
CREATE TABLE IF NOT EXISTS `NTL_special_offers` (
  `toyID` int(11) NOT NULL,
  `toyName` varchar(255) DEFAULT NULL,
  `description` text,
  `manID` varchar(6) DEFAULT NULL,
  `catID` varchar(6) DEFAULT NULL,
  `toyPrice` decimal(4,2) DEFAULT NULL,
  PRIMARY KEY  (`toyID`)
); 

--
-- Insert data for table `NTL_special_offers`
--

INSERT INTO `NTL_special_offers` (`toyID`, `toyName`, `description`, `manID`, `catID`, `toyPrice`) VALUES
(1, 'HORNBY Coach R4410A BR Hawksworth Corridor 3rd', 'Hornby 00 Gauge BR Hawksworth 3rd Class W 2107 W # R4410A', 'm25', 'c1', '19.99'),
(2, 'Bachmann 37-662 14 Ton Tank Wagon Pease & Partners Red', 'Suitable for the following scale(s): OO Scale', 'm3', 'c1', '5.60'),
(3, '4 Player Shut The Box', 'An enormously fun four player version of Shut The Box. Now you can get the whole family involved in your favourite dice game.Beautifully presented in a Pine wood box with green felt flooring, featuring four rows of numbers with black printed numbers. A relatively simple but engrossing game, Shut The Box is usually just a single row of numbers shared amongst all players. This is a premium version of the game in an extended format that we haven"t come across anywhere else. Includes 2 dice. Approx. dimensions: 29 x 29 x 4.5cmProduct Ref: 00H473', 'm36', 'c2', '24.63'),
(4, 'Rockets Toys Rainbow Towers', 'Product Description Match the colours to complete a tower! The first to complete a tower by matching the colours wins the game. Rainbow Towers is entertaining and educational, helping children with colour recognition and manipulation. Simply throw the correct colours on the die to build a tower using the easy-to-handle rainbow beads.Contents:24 Beads (4 each in 6 colours)4 Towers2 Colour cards1 Coloured die1 Plastic baseRules leaflet Box Contains 4 wooden towers and 24 coloured beads.', 'm48', 'c2', '3.99'),
(5, 'Coloured Ice Cream Play Sand Set For Kids - 1 Pound (450 Gram) Colour Play Sand Box 3 Moulds - Pink Sculpting Magic Super Fun Sand Kit', 'Make your own Play Sand Ice Cream with this Superset. Use the three moulds and bags of Play Sand to make your pretend frozen treats. This stuff isn''t like your normal sand either - it''s super-squishy, sticks together and very easy to mould. Have a blast with Play Sand! A great playset for ages three and up,. What''s in the box? 3x bags of Play Sand 3 x moulds', 'm52', 'c3', '7.95'),
(6, 'Motion Sand Safari Playset', 'Have endless hours of fun with this deluxe playtray playset, creating brilliant sand shapes or create your own sculptures. Motion Sand is the squeezable sand where you can FEEL the fun! Pack it, pull it, shape it and love it, Motion Sand is so incredible you can''t put it down. It''s kinetic - meaning it sticks to itself and not to you! It''s easy to shape and mould and flows through your fingers like a slow-moving liquid, but leaves them completely dry. Kinetic Sand stimulates children''s creative skills allowing them to create anything they can imagine. It never dries out and is gluten free. This soft and stretchy sand easily cleans up while delivering non-stop fun! It''s squeezable sand you can''t put down. The deluxe playtray playset includes Motions Sand, 10 animal moulds and play scene tray. For ages 3 years and over. Motion Sand is a registered trade mark of ProActive Distribution.', 'm40', 'c3', '6.99'),
(7, 'Tobar 1:24 Scale Ferrari 458 Italia Kit', 'Product Description Maisto 1:24 Ferrari 458 Italia Die-Cast Kit The Maisto line of Assembly Line die-cast model kits reaches another plateau with the addition of Ferrari cars! Very few of us will ever get to own a Ferrari and even less will actually get to make one. Well with Maistos fantastic die cast assembly line you get to do both! Everything you need is supplied all in one box. No glue and paint is required and you even get a screwdriver to put this together. Highly Detailed Opening Parts Detailed Rolling Wheels Pre-Painted Metal Body Easy Assembly Screw Driver Included Bonus Custom Wheels Included 35 piece model kit to build a 1:24 scale diecast Ferrari 458 Italia. The finished model is extremely detailed inside and out, with a faithfully recreated chassis and a visible engine and detailed interior features. The pieces fit together with ease, either snapping together by hand or with a little bit of help from the screwdriver included in the kit. Diecast car model kit. Builds into a Ferrari 458 Italia. 1:24 scale model. Easy to assemble. Electrostatic paint coating. Red or yellow colours. Tampo print details. Highly detailed interior and exterior. Colour of vehicle may vary from image shown. ', 'm69', 'c7', '11.18'),
(8, 'Disney Pixar BDW82 Cars Jessica Giampetrol & Nate Stanchion 2-Pack 1:55 Diecast Car Vehicle', 'Disney/Pixar Cars Collector Die-cast 2 Pack Collection: All kids'' favorite characters from Disney/Pixar Cars are rolling in and these two-packs double the fun! Each set includes two characters that share a key scene in the film. Kids will love reenacting favorite movie moments or imagining new adventures-"and scene"! Each sold separately, collect all your favorite Cars characters!', 'm38', 'c7', '7.99'),
(9, 'Playmobil 5446 Unicorn Carriage with Butterfly Fairy', 'Product Description The Playmobil unicorn carriage with butterfly fairy features a unicorn pulling the two-wheeled carriage taking the butterfly fairy with staff on her travels. Box Contains 1 x Playmobil unicorn carriage1 x Butterfly fairy', 'm46', 'c5', '7.99'),
(10, 'Scalextric 1:32 Scale Lancia Delta S4 Slot Car', 'Product Description Scalextric C3490 1:32 Scale Lancia Delta S4 Slot Car Box Contains 1 Slot Car', 'm49', 'c11', '26.29'),
(11, 'Automoblox C9-P Sports Car (Pink)', 'Product Description A reinvention of a classic wooden toy car for the iPod age, Automoblox is a fusion of heirloom craftsmanship and contemporary styling, transformed into a mix-and-match design system that allows children to create their own unique car styles; offering opportunity for creative, developmental fun! In addition to being modern, classic toy cars, Automoblox is a high-quality building system that will delight and inspire children whilst fostering the development of important skills and learning foundations. Starting with a stylish wooden body made from German beech wood, kids add wheels, windows and unique customising details. Each car in the series has its own unique VIN number, just like a real car! All Automoblox cars can mix and match with others in the series to create your very own unique ride! Made of solid wood with real rubber tires, these cars roll like greased lightning! This pink sportscar is the full size model at 16.5cm long and 11.5cm wide; featuring venom alloy rims, low profile pink tyres, and pink visor. All cars feature a patented Automoblox connector system that enables the rapid interchange of parts; perfect for on-the-go car design. Automoblox are design-led classics that will be enjoyed by car enthusiasts, young and old! Suitable age - 3 years +', 'm34', 'c11', '26.61'),
(12, 'Top Trumps Penguins', 'Penguins are joining the Top Trumps range, and that''s cool because under their cuddly and clumsy appearance, Penguins are actually amazingly strong animals with astonishing abilities! Learn all about your favourite birds and discover how they''re loosely related to Puffins, Auks and Guillemots. ...But are they? Snow way! Suitable for ages 3 years + Safety Information: Warning. Not suitable for Children under 3 years.', 'm70', 'c2', '1.94'),
(13, 'Disney Frozen 2-In-1 Happy Families & Action Game Playing Cards', 'Frozen 2 In 1 Happy Families Playing Cards - Disney - Cartamundi. Great Pack Of Cards To Play With Your Friends And Family. 2 In 1. Detailed Rules Are Included Within The Pack. Style And Colour May Vary. Ages 3+', 'm8', 'c4', '1.85'),
(14, 'Star Wars Movie Heroes Yoda', 'This fierce Yoda figure is rendered in careful detail to look just like the characters in the Star Wars: Revenge of the Sith movie! He comes with weapons for all the Star Wars adventures you can come up with, and a battle base so that he can look awesome in your collection. Re-enact your favorite Star Wars battles or create brand new ones with this cool YODA figure! Figure comes with weapon accessories, Galactic Battle Game card, battle base and die.', 'm58', 'c4 ', '7.95'),
(15, 'Marvel Avengers Iron Man Flip Up Gauntlet', 'Product Description Gear up just like your favorite armored Avenger with the Flip & Fire Gauntlet toy. This gauntlet attaches to your wrist so you can break out the heavy artillery with a flick of your wrist, just like Iron Man does. The gauntlet''s dual rocket launchers fire darts up to 25 feet so the foes of justice can''t get out of range. Tighten the strap on your arm for a stable shot, then head out for a fierce firefight with all of your Iron Man enemies To avoid injury: use only darts designed for this product. Do not modify darts or bow Box Contains Includes gauntlet and 2 darts', 'm35', 'c4 ', '4.11'),
(16, 'Thomas & Friends Take-n-Play Gator Engine', 'Product Description Thomas & Friends Take-n-Play Gator is a durable die-cast engine. Perfect for Take-n-Play Portable Fold-Out Playsets (sold separately and subject to availability). Ages 3+ Box Contains Take-n-Play Gator', 'm68', 'c7', '3.99'),
(17, 'Wooden Train Set & Railway Freight Depot', 'Product Description 140 pieces incl. signal box. Invaluable accessory for all railway fans for extending our railway systems. New options lead to a higher demand for our bestseller train sets! Box Contains 1 x Small Foot company 1934', 'm53', 'c7', '50.44'),
(18, 'Trademark Collections Disney Princess Sleeping Beauty Aurora Handbag', 'Product Description A lovely heart shaped handbag. Zipped making it easy for little hands to add or remove items. Useful size for a child to carry when shopping. Pink with character picture on the front . Trade Mark Collections Ltd are the leading supplier to UK retailers of licensed children''s and student bags,umbrellas and related accessories. Box Contains 1 x Handbag', 'm71', 'c15', '3.99');

-- --------------------------------------------------------
--
-- Create table structure for table `NTL_users`
--

DROP TABLE IF EXISTS `NTL_users`;
CREATE TABLE IF NOT EXISTS `NTL_users` (
  `userID` int(11) NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `passwordHash` varchar(255) NOT NULL,
  PRIMARY KEY (`userID`),
  UNIQUE KEY `username` (`username`)
);

--
-- Insert data for table `NTL_users`
--

INSERT INTO `NTL_users` (`userID`, `firstname`, `surname`, `username`, `passwordHash`) VALUES
(1, 'Julie', 'Smith', 'julie2234', '$2y$10$241VguAQ6fD12z38.FQ/bul3NU8yYoIXPQSbeN6lU5nSlyJsLVjgG'),
(2, 'Mark', 'Jones', 'mark3235', '$2y$10$zbGZjS/gjvWLUjdlhKihx.rMzqaZ7ZSCGj3Maakb7Uxz43327Ag8.');




























