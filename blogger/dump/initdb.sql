use MYSQL_DATABASE;

CREATE TABLE IF NOT EXISTS `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `content` text NOT NULL,
  `published_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10001 ;  

INSERT INTO `article`(`id`,`title`, `content`,`published_date`) VALUES
(null,'How to use Docker','In this article, you will learn how to do MySql seeding using Docker Compose.','2021-08-31'),
(null,'React 18','React 18, and what it means for the future. Our latest major version includes out-of-the-box improvements like automatic batching, new APIs like startTransition, and streaming server-side rendering with support for Suspense.','2022-08-31'),
(null,'Is React Good','To give you a gentle introduction, React is an open-source JavaScript library used for frontend development, which was developed by Facebook.','2021-08-31');
(null,'Is PHP Good','For those cases where trailing pad characters are stripped or comparisons ignore them, if a column has an index that requires unique values, inserting into the column values that differ only in number of trailing pad characters results in a duplicate-key error.','2021-08-31');