
--
-- Database: `jackiejewerly`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE IF NOT EXISTS `customers` (
  `customerID` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `customerName` varchar(20) NOT NULL,
  `customerEmail` varchar(40) NOT NULL,
  PRIMARY KEY (`customerID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customerID`, `customerName`, `customerEmail`) VALUES
(1, 'Smith, John', ' john.smith@yahoo.com'),
(2, 'Doe, Jane', ' jane.doe@yahoo.com'),
(3, 'Dirt, Joe', ' joe.dirt@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `orderInvoice` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `orderCustomer` varchar(20) NOT NULL,
  `orderProduct` varchar(30) NOT NULL,
  `orderQuantity` int(4) NOT NULL,
  PRIMARY KEY (`orderInvoice`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `productID` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `productName` varchar(30) NOT NULL,
  `productQuantity` int(3) unsigned NOT NULL,
  PRIMARY KEY (`productID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;


