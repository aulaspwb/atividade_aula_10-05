

--
-- Database: `bootstrapJSP`
--


CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `firstname` varchar(10) NOT NULL,
  `lastname` varchar(12) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



INSERT INTO `login` (`id`, `firstname`, `lastname`, `email`, `password`) VALUES
(23, 'Rameda', 'lixo', 'rameda@gmail.com', '123'),
(51, 'Ademar', 'Alves', 'ademaralves@gmail.com', 'r@m3d4'),
(52, 'Ademar', 'Alves', 'ademaralves@gmail.com', 'r@m3d4'),
(53, 'kaka', 'kaka', 'kaka@gmail.com', 'r@m3d4');


ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
