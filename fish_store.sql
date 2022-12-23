drop database if exists fish_store;
Create Database fish_store;
use fish_store;

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `customer_gender` varchar(10) NOT NULL,
  `customer_address` varchar(50) NOT NULL,
  `customer_email` varchar(50) NOT NULL,
  `customer_dob` date NOT NULL
);

ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;



INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_gender`, `customer_address`, `customer_email`, `customer_dob`) VALUES
(1, 'Dirk Titterell', 'Male', '74 Melvin Point', 'dtitterell0@yellowpages.com', '2020-10-29'),
(2, 'Dukey Diano', 'Male', '92 Sugar Alley', 'ddiano1@state.com', '2020-09-27'),
(3, 'Alex Meekins', 'Male', '577 Dovetail Park', 'ameekins2@blogs.com', '2020-11-06'),
(4, 'Cherice Jermey', 'Female', '811 Debs Street', 'cjermey3@guardian.com', '2021-05-18'),
(5, 'Ingamar Carlin', 'Male', '389 Surrey Pass', 'icarlin4@shareasale.com', '2020-08-08'),
(6, 'Pooh McCutcheon', 'Male', '7 Melby Trail', 'pmccutcheon5@salon.com', '2020-08-03'),
(7, 'Silvain Jozsa', 'Female', '19269 Maryland Hill', 'sjozsa6@omniture.com', '2020-12-30'),
(8, 'Javier Drewson', 'Female', '8 Moulton Point', 'jdrewson7@home.com', '2020-08-20'),
(9, 'Wilbur Francino', 'Female', '21840 Golden Leaf Avenue', 'wfrancino8@wunderground.com', '2020-10-06'),
(10, 'Sadie Snow', 'Female', '70 Eagle Crest Hill', 'ssnow9@github.com', '2021-04-25'),
(11, 'Sofie Carmen', 'Female', '20196 Springview Plaza', 'scarmena@gov.com', '2020-11-20'),
(12, 'Amy Grenkov', 'Male', '2263 Weeping Birch Center', 'agrenkovb@aol.com', '2020-06-06'),
(13, 'Gabriela Scarf', 'Female', '920 Bobwhite Trail', 'gscarfc@skype.com', '2021-03-12'),
(14, 'Westley Boram', 'Female', '47 Darwin Terrace', 'wboramd@sun.com', '2020-09-03'),
(15, 'Hadleigh Playfoot', 'Female', '49 6th Junction', 'hplayfoote@msu.com', '2021-04-14');



CREATE TABLE `fishermen` (
  `fisherman_id` int(11) NOT NULL,
  `fisherman_name` varchar(50) NOT NULL,
  `fisherman_gender` varchar(10) NOT NULL,
  `fisherman_address` varchar(50) NOT NULL
);

ALTER TABLE `fishermen`
  ADD PRIMARY KEY (`fisherman_id`);
ALTER TABLE `fishermen`
  MODIFY `fisherman_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;


INSERT INTO `fishermen` (`fisherman_id`, `fisherman_name`, `fisherman_gender`, `fisherman_address`) VALUES
(1, 'Clem', 'Male', '0975 Forest Dale Trail'),
(2, 'Dene', 'Male', '2 Grayhawk Parkway'),
(3, 'Lethia', 'Female', '905 Goodland Lane'),
(4, 'Tyrone', 'Male', '51745 Bowman Hill'),
(5, 'Shanda', 'Male', '848 New Castle Center'),
(6, 'Nani', 'Male', '3455 Village Green Court'),
(7, 'Dorothea', 'Male', '772 Goodland Park'),
(8, 'Chet', 'Female', '1 Merchant Street'),
(9, 'Darsie', 'Female', '31718 Toban Point'),
(10, 'Don', 'Male', '936 Lyons Plaza'),
(11, 'Tabby', 'Male', '10787 School Drive'),
(12, 'Desmond', 'Male', '8 Lien Junction'),
(13, 'Robenia', 'Female', '4 Dapin Avenue'),
(14, 'Curr', 'Female', '2 Veith Terrace'),
(15, 'Rudd', 'Male', '2 Hermina Park');


CREATE TABLE `transaction_headers` (
  `transaction_id` int(11) NOT NULL,
  `customer_id` int(11),
  `fisherman_id` int(11),
  `transaction_date` date NOT NULL,
   FOREIGN KEY (customer_id) REFERENCES customers(customer_id) on delete cascade on update cascade,
   FOREIGN KEY (fisherman_id)  REFERENCES fishermen(fisherman_id) on delete cascade on update cascade
);

ALTER TABLE `transaction_headers`
  ADD PRIMARY KEY (`transaction_id`);
ALTER TABLE `transaction_headers`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

INSERT INTO `transaction_headers` VALUES
(1, '2', '4', '2020-09-06'),
(2, '13', '15', '2020-06-05'),
(3, '7', '15', '2020-12-18'),
(4, '11', '15', '2020-12-15'),
(5, '10', '12', '2020-08-04'),
(6, '5', '5', '2021-02-19'),
(7, '6', '11', '2021-01-01'),
(8, '9', '13', '2021-04-28'),
(9, '1', '1', '2020-06-22'),
(10, '12', '9', '2020-06-13'),
(11, '5', '7', '2020-06-04'),
(12, '3', '1', '2020-07-28'),
(13, '15', '8', '2021-03-18'),
(14, '6', '1', '2020-08-22'),
(15, '3', '13', '2020-05-31');













