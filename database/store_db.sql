-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2021 at 02:57 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `is_active`) VALUES
(2, 'Karthick N', 'makeituseful@hotmail.com', '$2y$10$HrOZCiBI9PPfD5uq7he2p.MxDIOGNxznKsVDGywY3M3cuJ5WvU702', '0');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'Poorvika Mobiles'),
(2, 'D-Mart'),
(3, 'All-in-1 Dept. Store'),
(4, 'Manoj Electronics'),
(5, 'Hatsun Dairy'),
(6, 'Fresh Bakers'),
(7, 'Chennai Silks');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `qty`) VALUES
(1, 1, '::1', 1, 1),
(2, 40, '::1', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(3, 'Pantry'),
(6, 'Home Appliances'),
(12, 'Gadgets'),
(13, 'Fashions'),
(14, 'Protect Yourself');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `trx_id` varchar(255) NOT NULL,
  `p_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(11) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_qty`, `product_desc`, `product_image`, `product_keywords`) VALUES
(24, 12, 1, ' Apple iPhone 12 Pro Max (256GB) - Pacific Blue', 120000, 2000, '-128 GB ROM\r\n-17.02 cm (6.7 inch) Super Retina XDR Display\r\n-12MP + 12MP + 12MP | 12MP Front Camera\r\n-A14 Bionic Chip with Next Generation Neural Engine Processor\r\n-Ceramic Shield | IP68 Water Resistance\r\n-All Screen OLED Display\r\n-LiDAR Scanner for Improved AR Experiences', '1620298687_71MHTD3uL4L._AC_SL1500_.jpg', 'iphone,apple,ipone12,iphone 12 pro max, 128gb'),
(29, 12, 1, 'LG Wing Aurora Gray, 8GB RAM, 128GB Storage', 79999, 2, 'LG 3D Sound Engine & Stereo Speakers | IP54 and MIL-STD 810G Certified\r\nVersatile Multi-Screen Form Factor with Swivel Mo\r\n32MP Pop-up Selfie Came\r\n64MP 13MP Ultra-Wide & 12MP Ultra-Wide Angle Rear Camera\r\n17.3cm (6.8) FHD+ OLED Main Display & 9.9cm (3.9) OLED Secondary Display', '1620296278_71QL9BeHa4L._AC_SL1500_.jpg', 'lg,lgwing,wing,winglg'),
(30, 12, 1, 'iQOO 7 5G (Storm Black, 8GB RAM, 128GB Storage)', 31999, 90, 'Qualcomm Snapdragon 870 5G Mobile Platform\r\nIntelligent Display Chip with Enhanced Frame Rate & All HDR\r\n48MP OIS Main camera with Sony IMX598 sensor\r\n66W FlashCharge with 4400mAh Battery\r\n16.82cm (6.62) 120Hz AMOLED Display with 1300 peak brightness along with 300Hz Touch Sampling Rate\r\n6000mm² Graphite Layer Full Coverage Liquid Cooling Technology', '1620296378_51OvvRTnJTS._AC_SL1200_.jpg', 'vivo,iqoo,iqoo 7'),
(31, 12, 1, 'OnePlus 9 5G (Arctic Sky, 8GB RAM, 128GB Storage)', 49999, 500, 'Rear Triple Camera Co-Developed by Hasselblad, 48 MP Main camera, 50 MP Ultra Wide Angle Camera with Free Form Lens, 2 MP Monochorme Lens. Also comes with a 16 MP Front Camera\r\nQualcomm Snapdragon 888 Processor with Adreno 660 GPU\r\n6.55 Inches Fluid AMOLED Display with 120Hz refresh rate\r\nOnePlus Oxygen OS based on Andriod 11\r\nComes with 4500 mAh Battery with 65W Wired Charging\r\nHands-Free access to Alexa: Alexa on your phone lets you make phone calls, open apps, control smart home devices, access the library of Alexa skills, and more using just your voice while on-the-go. Download the Alexa app and complete hands-free setup to get started. Just ask - and Alexa will respond instantly', '1620296489_61fy+u9uqPL._AC_SL1500_.jpg', 'oneplus 9, oneplus'),
(32, 12, 1, 'Smartwatch RED by MIUHD', 4200, 33, 'Package include: 1* Watch band only, Watch is not included.\r\ncompatible with Apple Watch SE Series 6/5/4/3/2/1 38mm/40mm 42mm/44mm\r\nPerfect Fit Size: Fits 5.71\"-8.07\" (145mm-205mm) wrist\r\nRemove and replace with other colors in seconds, with no tools required. Each premium strap comes with its own Apple Watch adapters, which makes changing out straps effortless and easy every single time. You can wear a different color every day or color coordinate with your wardrobe.\r\nONE YEAR WARRANTY. We are happy to send out a replacement band or refund if your band has any quality issues,', '1620296674_51-eGe2d8hL._AC_.jpg', 'smartwatch, fitnessband, miuhd'),
(33, 12, 1, 'JBL C100SI In-Ear Deep Bass Headphones with Mic (Black)', 760, 2000, 'JBL Signature Sound\r\nExtra Deep Bass. Troubleshooting steps : Kindly ensure 3.5mm port on Host device is clean and dust free and 3.5mm jack of the earphone is adequately inserted inside the input device port\r\nNoise Cancelling Microphone\r\nOne-Button Universal Remote with Mic\r\nQuick Launch Access to Google Assistant / Siri\r\nLightweight and Comfortable with 3 sizes of ear tips\r\nSleek, Glossy & Ergonomic design', '1620296822_61ptzNC8r8L._AC_SL1500_.jpg', 'jbl,headphones,jbl headphones'),
(34, 12, 1, 'OPPO ENCO W31 True Wireless Earphone (Black)', 4800, 300, 'Binaural Low-Latency Bluetooth Transmission: Bluetooth connection stability and ultra-low latency achieving a leading level in the industry. 2.5 hours of charging time\r\nDual-Microphone Noise Cancellation during Calls: Two built-in high sensitivity microphones in each earphone with noise reduction algorithm.\r\nIntuitive Touch Controls: Double tap on the right earphone for the next song | Double tap on the left earphone to switch music modes (Balance mode / Bass mode)|Triple tap to wake up Voice Assistant.\r\nWearing Detection: Automatically connects when the case is opened, and disconnects when you put the headphones back to the case. Music pauses when taken off, and continues to play when put on again.\r\nIP54 Dust and Water Resistance: Earphones are professionally designed and are certified IP54 dustproof and waterproof.\r\n12 Month Manufacturer Warranty', '1620296926_61bC-pT5bpL._AC_SL1500_.jpg', 'oppo enco w31,oppo,wireless,'),
(35, 3, 2, 'Nestlé CEREGROW Fortified Multigrain Cereal with Milk and Fruits, 300g Bag-In-Box Pack', 262, 5000, 'A nutrient dense junior cereal with the goodness of multigrain, milk and fruits for 2-5 year olds\r\nA rich source of Iron for regular cognitive development and 17 vitamins & minerals\r\nCountry of Origin: India\r\nFree from preservatives and flavours, especially made for your little one\r\nBag-in-Box format ensures enhanced safety, hygiene and convenience', '1620297111_81v37rha2FL._AC_SL1500_.jpg', 'nestle, cerelac'),
(36, 3, 3, 'Maggi 2 min Masala Noodles, 12 Singles, 840g', 129, 7000, 'A nutrient dense junior cereal with the goodness of multigrain, milk and fruits for 2-5 year olds\r\nA rich source of Iron for regular cognitive development and 17 vitamins & minerals\r\nCountry of Origin: India\r\nFree from preservatives and flavours, especially made for your little one\r\nBag-in-Box format ensures enhanced safety, hygiene and convenience', '1620297246_81WyWDbuqsL._AC_SL1500_.jpg', 'maggi'),
(37, 3, 2, 'Dark Fantasy Choco Fills, 300g Choco Fills flavoured (Pack of 1)', 80, 200, 'An exquisite combination of luscious chocolate filling enrobed within a perfectly baked rich cookie outer\r\nAn offer that fully epitomizes the brand promise of pure indulgence\r\nSunfeast dark fantasy choco fills is the latest and the most premium offering from the portfolio of sunfeast\r\nMaximum Shelf Life 6 Months', '1620297369_81rt1QmhZIL._AC_SL1500_.jpg', 'dark fantasy'),
(38, 3, 6, 'Black Forest Cake (1kg) (German)', 499, 10, 'Tasty with quality assured', '1620297701_black-forest-cake-mpk-682x1024.jpg', 'cake'),
(39, 3, 6, 'White forest cake (1KG)', 599, 10, 'Tasty with quality assured', '1620297914_Re-Shoot-Cake-11-B.jpg', 'cake'),
(40, 3, 6, 'Cake Piece mini (Customised flavours)', 10, 10000, 'Tasty very very and budget friendly', '1620298092_triple-chocolate-cake-4.jpg', 'cake'),
(41, 6, 4, ' Lifelong PowerPro 500 Watt 3 Jar Mixer Grinder and 1100 Watt Dry Iron Super Combo', 1799, 37, 'This Lifelong combo has 3 Jar 500Watt mixer grinder and 1100Watt Dry Iron\r\n500 Watt Powerful Mixer, this grinder can grind and blend both wet and dry ingredients with ease.\r\n1100 Watt Iron; with Non-Stick soleplate ensures that your garments do not stick to the plate even when the temperature is high.\r\nThe 3-speed control knob of the grinder helps you get the right consistency as per your requirement. The iron also has a temperature setting knob that helps you adjust its temperature as per the fabric type.\r\n1 year Brand Warranty ; For any concerns or queries contact_us on/via: 9711558877 or email at customercare@lifelongindia.com\r\nOperating noise levels between 80-90 dB; Initial burning smell is to be expected due to evaporating varnish, which is normal', '1620298349_71G3OBnz8pL._AC_SL1500_.jpg', 'mixi, iron box'),
(42, 6, 4, 'Whirlpool 200 L 4 Star Inverter Direct-Cool Single Door Refrigerator (215 ICEMAGIC PRO ROY 4S INV, Sapphire Mulia, Base Stand)', 25999, 23, 'Direct-cool refrigerator; 200 litres capacity.\r\nEnergy Rating: 4 Star\r\nNew crescent door Design\r\nIntellisense inverter technology\r\nUp to 12 hours of milk preservation during power cuts\r\nUp to 7 days of Garden freshness\r\nWarranty: 1 year on product, 10 years on compressor.', '1620298652_715j2BmGiwL._AC_SL1500_.jpg', 'fridge'),
(43, 3, 5, 'Hatsun Milk Powder (500g)', 34, 54, 'Milk powder', '1620298932_Hatsun-dairy-whitener-1kg-min.jpg', 'milk powder'),
(44, 3, 5, 'Hatsun Milk Beverages (Pack of 4) | Flavors : Pista , Kesar Badam, Gulkhan And Chocolate', 150, 5, 'Hatsun Milk Beverages (Pack of 4) | Flavors : Pista , Kesar Badam, Gulkhan And Chocolate', '1620299141_600x600.jpg', 'beverages, hatsun'),
(46, 3, 5, 'Hatsun Ghee 200ML', 43, 3, 'Ghee pure 100%', '1620299273_60000374_1-hatsun-cow-ghee.jpg', 'ghee, hatsun'),
(47, 6, 4, 'OnePlus 138.8 cm (55 inches) Q1 Series 4K Certified Android QLED TV 55Q1IN Pro (Black) | with Sliding Soundbar', 99999, 1, 'OnePlus 138.8 cm (55 inches) Q1 Series 4K Certified Android QLED TV 55Q1IN Pro (Black) | with Sliding Soundbar', '1620299481_71GYLokH21L._AC_SL1500_.jpg', 'tv'),
(50, 13, 7, 'Kids Wear Fashion ( Party Dress)', 679, 55, 'Kids dress', '1620299912_kids-wear-for-boys-250x250.jpg', 'dress, kids wear'),
(51, 13, 7, 'Casual wear for girls', 499, 21, 'Girls  dress', '1620300011_red dress.jpg', 'dress, girls wear, chennai silks'),
(53, 14, 3, 'Customised Masks (Pack of 6)', 89, 23, 'N95 also included', '1620300570_shutterstock_1674774844.jpg', 'masks,mask'),
(56, 14, 3, 'Hand Sanitizer Big (Pack of 2) | Lifebuoy', 150, 233, 'Sanitizer', '1620300814_Lifebuoy-Sanitizers-240-mL-Pack-SDL026503899-1-1ff03.jpg', 'sanitizer'),
(59, 12, 1, 'Make it Useful (1$ Voucher) | Free ', 0, 10, 'A sub would be awsome', '1620301109_Make it useful Logozoom.png', 'MIUHD');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(2, 'Karthick', 'N', 'karthickdk.in@gmail.com', 'ece8241c89d5ee109551cc46619c734a', '8526666345', 'Loyola Institute of Technology', 'chennai');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `fk_product_cat` (`product_cat`),
  ADD KEY `fk_product_brand` (`product_brand`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_product_brand` FOREIGN KEY (`product_brand`) REFERENCES `brands` (`brand_id`),
  ADD CONSTRAINT `fk_product_cat` FOREIGN KEY (`product_cat`) REFERENCES `categories` (`cat_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
