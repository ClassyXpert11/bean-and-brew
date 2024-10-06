-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2024 at 11:02 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `babdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `bakedgoodorder`
--

CREATE TABLE `bakedgoodorder` (
  `bakedGoodOrderID` int(11) NOT NULL,
  `bakedGoodID` int(11) NOT NULL,
  `customerID` int(11) NOT NULL,
  `price` float NOT NULL,
  `estimatedTimeReady` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coffeeorder`
--

CREATE TABLE `coffeeorder` (
  `coffeeOrderID` int(11) NOT NULL,
  `customerID` int(11) NOT NULL,
  `coffeeID` int(11) NOT NULL,
  `price` float NOT NULL,
  `estimatedTimeReady` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customerID` int(11) NOT NULL,
  `firstName` varchar(80) NOT NULL,
  `lastName` varchar(80) NOT NULL,
  `email` varchar(80) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `password_text` varchar(80) NOT NULL,
  `dateOfBirth` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prebooking`
--

CREATE TABLE `prebooking` (
  `prebookingID` int(11) NOT NULL,
  `customerID` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(80) NOT NULL,
  `product_price` float NOT NULL,
  `product_image` varchar(2000) NOT NULL,
  `product_description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_price`, `product_image`, `product_description`) VALUES
(1, 'Black Coffee', 2.5, 'https://images.unsplash.com/photo-1494314671902-399b18174975?auto=format&fit=crop&q=80&w=1887&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'A classic cup of black coffee, bold and rich in flavor.'),
(2, 'Latte', 3, 'https://images.unsplash.com/photo-1561882468-9110e03e0f78?auto=format&fit=crop&q=60&w=800&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fGxhdHRlfGVufDB8fDB8fHww', 'Smooth and creamy latte with a perfect balance of espresso and steamed milk.'),
(3, 'Caramel Latte', 3.5, 'https://images.unsplash.com/photo-1599398054066-846f28917f38?auto=format&fit=crop&q=80&w=1887&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'A delightful latte with a sweet caramel twist, topped with frothy milk.'),
(4, 'Cappuccino', 3.25, 'https://images.unsplash.com/photo-1557006021-b85faa2bc5e2?auto=format&fit=crop&q=80&w=1887&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Cappuccino made with equal parts of espresso, steamed milk, and milk foam.'),
(5, 'Americano', 2.75, 'https://images.unsplash.com/photo-1532004491497-ba35c367d634?auto=format&fit=crop&q=80&w=1887&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'A strong and smooth espresso-based drink, diluted with hot water.'),
(6, 'Espresso', 2, 'https://images.unsplash.com/photo-1579992357154-faf4bde95b3d?auto=format&fit=crop&q=80&w=1887&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'A concentrated shot of bold and intense espresso.'),
(7, 'Macchiato', 2.75, 'https://images.unsplash.com/photo-1557772611-722dabe20327?auto=format&fit=crop&q=80&w=1887&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Espresso \"stained\" with a dollop of frothy milk for a balanced flavor.'),
(8, 'Mocha', 3.75, 'https://images.unsplash.com/photo-1607260550778-aa9d29444ce1?auto=format&fit=crop&q=80&w=1887&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Espresso combined with steamed milk and chocolate, topped with whipped cream.'),
(9, 'Hot Chocolate', 3.5, 'https://images.unsplash.com/photo-1542990253-0d0f5be5f0ed?auto=format&fit=crop&q=60&w=800&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDh8fGhvdCUyMGNob2NvbGF0ZXxlbnwwfHwwfHx8MA%3D%3D', 'A comforting and rich hot chocolate, perfect for chilly days.'),
(10, 'Chai Latte', 4, 'https://images.unsplash.com/photo-1578899952107-9c390f1af1b7?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fGNoYWklMjBsYXR0ZXxlbnwwfHwwfHx8MA%3D%3D', 'A spiced chai latte, combining black tea, spices, and steamed milk.'),
(11, 'Matcha Latte', 4.25, 'https://images.unsplash.com/photo-1536256263959-770b48d82b0a?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8bWF0Y2hhJTIwbGF0dGV8ZW58MHx8MHx8fDA%3D', 'A vibrant and earthy matcha latte made with high-quality green tea powder.'),
(12, 'Seasonal Brew', 3.5, 'https://images.unsplash.com/photo-1611162458324-aae1eb4129a4?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTg1fHxibGFjayUyMGNvZmZlZXxlbnwwfHwwfHx8MA%3D%3D', 'An ever-changing seasonal brew with unique flavors to suit the time of year.'),
(13, 'Svart Te', 2.25, 'https://images.unsplash.com/photo-1576092768241-dec231879fc3?auto=format&fit=crop&q=60&w=800&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fHRlYXxlbnwwfHwwfHx8MA%3D%3D', 'A comforting cup of black tea, simple and elegant.'),
(14, 'Islatte', 3.25, 'https://images.unsplash.com/photo-1517701550927-30cf4ba1dba5?auto=format&fit=crop&q=60&w=800&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8aWNlZCUyMGxhdHRlfGVufDB8fDB8fHww', 'A latte infused with a hint of vanilla, offering a delightful twist.'),
(15, 'Islatte Mocha', 4, 'https://images.unsplash.com/photo-1642647391072-6a2416f048e5?auto=format&fit=crop&q=60&w=800&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mzh8fGljZWQlMjBtb2NoYSUyMGxhdHRlfGVufDB8fDB8fHww', 'A combination of chocolate, coffee, and vanilla in a delightful mocha latte.'),
(16, 'Frapino Caramel', 4.5, 'https://images.unsplash.com/photo-1662047102608-a6f2e492411f?auto=format&fit=crop&q=60&w=800&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8ZnJhcGlubyUyMGNhcmFtZWx8ZW58MHx8MHx8fDA%3D', 'A refreshing and indulgent caramel-flavored frappuccino.'),
(17, 'Frapino Mocka', 4.25, 'https://images.unsplash.com/photo-1530373239216-42518e6b4063?auto=format&fit=crop&q=60&w=800&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8ZnJhcGlubyUyMG1vY2hhfGVufDB8fDB8fHww', 'A mocha-flavored frappuccino, perfect for those who love chocolate and coffee.'),
(18, 'Apelsinjuice', 2.75, 'https://images.unsplash.com/photo-1600271886742-f049cd451bba?auto=format&fit=crop&q=60&w=800&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NzF8fG9yYW5nZSUyMGp1aWNlfGVufDB8fDB8fHww', 'Fresh and zesty orange juice, a classic and refreshing choice.'),
(19, 'Frozen Lemonade', 3.25, 'https://images.unsplash.com/photo-1523371054106-bbf80586c38c?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fGxlbW9uYWRlJTIwd2l0aCUyMGljZXxlbnwwfHwwfHx8MA%3D%3D', 'A frozen delight with the perfect blend of sweet and tangy lemonade.'),
(20, 'Lemonad', 2.5, 'https://images.unsplash.com/photo-1621263764928-df1444c5e859?auto=format&fit=crop&q=60&w=800&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8bGVtb25hZGV8ZW58MHx8MHx8fDA%3D', 'Classic lemonade with a twist, a refreshing beverage for any occasion.'),
(21, 'California Roll Sushi Bowl', 12.99, 'https://plantoeat.s3.amazonaws.com/recipes/16687583/d99596b7acb8758e6d878ada11c36bd83c704cf4-original.jpg?1535321755', 'A delightful sushi bowl featuring California Calrose Sushi Rice, crabmeat, cucumber, carrots, nori, ginger, and avocado. Drizzled with a sriracha-mayo sauce and soy mixture. Garnished with sesame seeds.'),
(22, 'Chicken Caesar Wrap', 9.99, 'https://plantoeat.s3.amazonaws.com/recipes/16687602/ba918c2550fd60a3f56da6cc510eb24b56752f63-original.jpg?1535321822', 'A satisfying wrap with romaine lettuce, Caesar dressing, Parmesan cheese, cooked diced chicken, and croutons. Topped with fresh tomatoes and tightly wrapped for a delightful meal.'),
(23, 'Vegetarian Tacos with Avocado Cream', 11.49, 'https://plantoeat.s3.amazonaws.com/recipes/16687702/089722a277be198555dd6c9c1f08476cc3b8eab3-original.jpg?1535322539', 'Delicious whole wheat tortillas filled with roasted red pepper hummus, grape tomatoes, cucumber, bell pepper, black beans, corn, greens, sprouts, and diced avocado. Topped with a creamy avocado-lime sauce.'),
(24, 'Lemon Chicken Risotto', 13.75, 'https://plantoeat.s3.amazonaws.com/recipes/16687774/ff717e9ea9e725eb270c6f4b58d38716164bb5cf-original.jpg?1535322745', 'Creamy risotto infused with lemony flavors and made with reduced sodium chicken stock, boneless skinless chicken breasts, garlic, fresh oregano, onion, arborio rice, peas, lemon peel, and Parmesan cheese.'),
(25, 'Chicken and Broccoli Risotto', 12.5, 'https://plantoeat.s3.amazonaws.com/recipes/16687800/9bac872caee028022ce69dce2f6ec1fe57b51b3f-original.jpg?1535322905', 'Savor the blend of tender chicken, Arborio rice, dry white wine, leek, butter, Parmesan cheese, broccoli, carrot, and olive oil in this comforting risotto dish.'),
(26, 'Banana Bread Mini Muffins', 8.99, 'https://plantoeat.s3.amazonaws.com/recipes/16687848/e9ac6403eb5f10dc73302c0bd58480b307d2680c-original.jpg?1535323065', 'Indulge in these moist mini muffins made with ripe banana, egg, full-fat Greek yogurt, honey, vanilla extract, whole wheat flour, and a delightful mix of strawberries, dark chocolate chips, blueberries, and walnuts.'),
(27, 'Protein-Packed Breakfast Bars', 10.25, 'https://plantoeat.s3.amazonaws.com/recipes/16687888/b16ace53a4f663e77774571db54f16ac701ff494-original.jpg?1535323204', 'A nutritious blend of flax meal, rolled oats, quinoa, baking powder, salt, maple syrup, coconut oil, vanilla extract, ripe banana, peanut butter chocolate candy, mini chocolate chips, apple, walnuts, cinnamon, nutmeg, carrot, almond butter, and berries.'),
(28, 'Healthy No Bake Peanut Butter Pretzel Granola Bars', 9.75, 'https://plantoeat.s3.amazonaws.com/recipes/16687930/cf62d2d92c4accd37c7238f93735181d1dcfbe98-original.jpg?1535323385', 'Satisfy your cravings with these healthy no-bake peanut butter pretzel bars that are both delicious and nutritious.'),
(29, 'Teriyaki Chicken in Slow Cooker', 14.99, 'https://plantoeat.s3.amazonaws.com/recipes/16689229/996f102a3864582b550a11327cc39380b8da75c6-original.jpg?1535328708', 'Experience the simplicity and great flavor of slow-cooked teriyaki chicken made with natural sweeteners.'),
(30, 'Fiesta Chicken Crockpot', 12.5, 'https://plantoeat.s3.amazonaws.com/recipes/16689260/2b7f200e5109759150fec43af0e225647611ce23-original.jpg?1535328913', 'A delightful crockpot creation bursting with vibrant flavors. Perfect for a festive and flavorful meal.'),
(31, 'Orange Chipotle Chicken with Cilantro Rice', 13.25, 'https://plantoeat.s3.amazonaws.com/recipes/16727990/a03bff7a41182945fde5f0eff18c57db9765dd4b-original.jpg?1535642619', 'Savor the zesty and smoky notes of chipotle-infused chicken served with fragrant cilantro rice.'),
(32, 'One Pot Hamburger Stroganoff', 11.75, 'https://plantoeat.s3.amazonaws.com/recipes/16728004/6a042ff093d19a5bfbc27a0c9617f94fa2937757-original.jpg?1535642699', 'A quick and easy weeknight meal featuring well-seasoned ground beef in a creamy stroganoff sauce. No condensed soup in this hearty dish.'),
(33, 'Spicy Chicken Breasts', 10.75, 'https://plantoeat.s3.amazonaws.com/recipes/16728022/5787b645a80520dcb41951611b164ccc92a6067e-original.jpg?1535642799', 'Indulge in the bold flavors of these spicy chicken breasts. A perfect balance of heat and succulence.'),
(34, 'Cashew Shrimp Stir-Fry', 12.25, 'https://plantoeat.s3.amazonaws.com/recipes/16728055/950c003fa1f523ac1b2e0dcea2aa0c74d5176fe2-original.jpg?1535642937', 'Sweet, crunchy shrimp stir-fried with cashew nuts in a classic Chinese dish. A delightful weeknight dinner option.'),
(35, 'Honey Dijon Garlic Chicken', 13.75, 'https://plantoeat.s3.amazonaws.com/recipes/16741465/cb14c2a77dbf7875b41d1f84fc73974ffa0b5c4f-original.jpg?1535738019', 'Boneless, skinless chicken breasts baked to perfection in an intensely flavored honey, garlic, and Dijon mustard glaze.'),
(36, 'Orange Glazed Tofu', 12.5, 'https://plantoeat.s3.amazonaws.com/recipes/16741488/63b76e69f620abb981885c0ee51990451ddca821-original.jpg?1535738100', 'Delicious and easy tofu recipe featuring crispy tofu bites flavored with an orange glaze. Served over rice for a delightful family meal.'),
(37, 'Caramelized Tofu', 11.25, 'https://plantoeat.s3.amazonaws.com/recipes/16741504/91d64fad6d7a58e44ded7e732ca50b2d2d446c9c-original.jpg?1535738147', 'A savory delight, this caramelized tofu is perfect as a main course for 2-3 or as a side for 4. A scrumptious addition to your vegetarian repertoire.'),
(38, 'Garlic Herb Steak Foil Packets', 14.25, 'https://plantoeat.s3.amazonaws.com/recipes/16741523/4f4dbccde8cf19d836bedd1db7d6459fa1c9610f-original.jpg?1535738233', 'Tender beef, hearty veggies, and savory garlic-herb butter grilled to perfection in foil packets. A truly amazing meal that will delight your taste buds.'),
(39, 'Chicken Parmesan Foil Packets', 13.5, 'https://plantoeat.s3.amazonaws.com/recipes/16741530/65401f6583473d28beed9b6c4bc62cb559c642d9-original.jpg?1535738244', 'Enjoy a complete dinner in a tidy packet with these Parmesan Chicken Foil Packets. Grilled zucchini, zesty tomato sauce, and tender chicken breasts topped with melty mozzarella cheese. A summer favorite!'),
(40, 'Bacon Ranch Chicken Foil Packets', 13.75, 'https://plantoeat.s3.amazonaws.com/recipes/16741543/2723c77dddd87110bf898093050f741a8c9c167e-original.jpg?1535738282', 'These bacon ranch chicken foil packets offer a hassle-free dinner option with minimal cleanup. Chicken breasts are cooked with potatoes and ranch-flavored butter, then topped with melted cheese and bacon for a crowd-pleasing meal.');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `ratingID` int(11) NOT NULL,
  `customerID` int(11) NOT NULL,
  `rating` int(1) NOT NULL,
  `comment` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spacebooking`
--

CREATE TABLE `spacebooking` (
  `spaceBookingID` int(11) NOT NULL,
  `customerID` int(11) NOT NULL,
  `date` date NOT NULL,
  `timeSlot` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bakedgoodorder`
--
ALTER TABLE `bakedgoodorder`
  ADD PRIMARY KEY (`bakedGoodOrderID`),
  ADD KEY `bakedGoodID` (`bakedGoodID`,`customerID`),
  ADD KEY `customerID` (`customerID`),
  ADD KEY `price` (`price`);

--
-- Indexes for table `coffeeorder`
--
ALTER TABLE `coffeeorder`
  ADD PRIMARY KEY (`coffeeOrderID`),
  ADD KEY `customerID` (`customerID`,`coffeeID`),
  ADD KEY `coffeeID` (`coffeeID`),
  ADD KEY `price` (`price`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerID`);

--
-- Indexes for table `prebooking`
--
ALTER TABLE `prebooking`
  ADD PRIMARY KEY (`prebookingID`),
  ADD KEY `customerID` (`customerID`),
  ADD KEY `price` (`price`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `product_price` (`product_price`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`ratingID`),
  ADD KEY `customerID` (`customerID`);

--
-- Indexes for table `spacebooking`
--
ALTER TABLE `spacebooking`
  ADD PRIMARY KEY (`spaceBookingID`),
  ADD KEY `customerID` (`customerID`),
  ADD KEY `price` (`price`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bakedgoodorder`
--
ALTER TABLE `bakedgoodorder`
  MODIFY `bakedGoodOrderID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coffeeorder`
--
ALTER TABLE `coffeeorder`
  MODIFY `coffeeOrderID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customerID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prebooking`
--
ALTER TABLE `prebooking`
  MODIFY `prebookingID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `ratingID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spacebooking`
--
ALTER TABLE `spacebooking`
  MODIFY `spaceBookingID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bakedgoodorder`
--
ALTER TABLE `bakedgoodorder`
  ADD CONSTRAINT `bakedgoodorder_ibfk_1` FOREIGN KEY (`customerID`) REFERENCES `customer` (`customerID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bakedgoodorder_ibfk_2` FOREIGN KEY (`bakedGoodID`) REFERENCES `products` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bakedgoodorder_ibfk_3` FOREIGN KEY (`price`) REFERENCES `products` (`product_price`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `coffeeorder`
--
ALTER TABLE `coffeeorder`
  ADD CONSTRAINT `coffeeorder_ibfk_1` FOREIGN KEY (`customerID`) REFERENCES `customer` (`customerID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `coffeeorder_ibfk_2` FOREIGN KEY (`coffeeID`) REFERENCES `products` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `coffeeorder_ibfk_3` FOREIGN KEY (`price`) REFERENCES `products` (`product_price`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `prebooking`
--
ALTER TABLE `prebooking`
  ADD CONSTRAINT `prebooking_ibfk_1` FOREIGN KEY (`customerID`) REFERENCES `customer` (`customerID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `prebooking_ibfk_2` FOREIGN KEY (`price`) REFERENCES `products` (`product_price`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_ibfk_1` FOREIGN KEY (`customerID`) REFERENCES `customer` (`customerID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `spacebooking`
--
ALTER TABLE `spacebooking`
  ADD CONSTRAINT `spacebooking_ibfk_1` FOREIGN KEY (`customerID`) REFERENCES `customer` (`customerID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `spacebooking_ibfk_2` FOREIGN KEY (`price`) REFERENCES `products` (`product_price`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
