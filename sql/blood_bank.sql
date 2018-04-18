SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";
CREATE TABLE `blood` (
  `blood_id` int(11) NOT NULL,
  `blood` varchar(255) NOT NULL,
  `detail` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='data of all available blood group';

INSERT INTO `blood` (`blood_id`, `blood`, `detail`, `status`) VALUES
(1, 'A+', '', 1),
(2, 'A-', '', 1),
(3, 'B+', '', 1),
(4, 'B-', '', 1),
(5, 'AB+', '', 1),
(6, 'AB-', '', 1),
(7, 'O+', '', 1),
(8, 'O-', '', 1);

CREATE TABLE `hospital` (
  `hospital_id` int(11) NOT NULL,
  `hospital_name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `datetime` datetime NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='store the details of hospital data';

CREATE TABLE `request` (
  `request_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `hospital_id` int(11) NOT NULL,
  `blood_id` int(11) NOT NULL,
  `volume` int(11) NOT NULL COMMENT 'in ml',
  `datetime` datetime NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='request detail by user to the hospital';

CREATE TABLE `stock` (
  `stock_id` int(11) NOT NULL,
  `hospital_id` int(11) NOT NULL,
  `blood_id` int(11) NOT NULL,
  `volume` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='blood stock available in the hospital';

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `blood_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `datetime` datetime NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='all data of reciever';

ALTER TABLE `blood`
  ADD PRIMARY KEY (`blood_id`);

ALTER TABLE `hospital`
  ADD PRIMARY KEY (`hospital_id`);

ALTER TABLE `request`
  ADD PRIMARY KEY (`request_id`);

ALTER TABLE `stock`
  ADD PRIMARY KEY (`stock_id`);

ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

ALTER TABLE `blood`
  MODIFY `blood_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

ALTER TABLE `hospital`
  MODIFY `hospital_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `request`
  MODIFY `request_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `stock`
  MODIFY `stock_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;
