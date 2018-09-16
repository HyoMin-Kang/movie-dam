-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- 생성 시간: 18-09-16 16:26
-- 서버 버전: 5.7.21-log
-- PHP 버전: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 데이터베이스: `miso`
--

-- --------------------------------------------------------

--
-- 테이블 구조 `article`
--

CREATE TABLE `article` (
  `article_id` int(11) NOT NULL,
  `article_writer` varchar(16) NOT NULL,
  `article_title` varchar(100) NOT NULL,
  `article_content` text NOT NULL,
  `reg_date` datetime NOT NULL,
  `article_hits` int(10) DEFAULT '0',
  `article_gets` int(10) DEFAULT '0',
  `article_file` varchar(50) DEFAULT NULL COMMENT '첨부파일',
  `category` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `article`
--

INSERT INTO `article` (`article_id`, `article_writer`, `article_title`, `article_content`, `reg_date`, `article_hits`, `article_gets`, `article_file`, `category`) VALUES
(1, 's', 'd', 'd', '2018-09-14 21:02:32', 0, 0, '', ''),
(2, 'd', 'd', 'd', '2018-09-14 22:38:36', 45, 0, '', ''),
(3, 'f', 'f', 'f', '2018-09-15 17:26:54', 1, 0, '', ''),
(4, 'd', 'd', 'd', '2018-09-15 17:47:54', 0, 0, '', 'ì¬ë´'),
(5, 'ã', 'ã', 'ãã', '2018-09-15 17:51:01', 0, 0, '', 'ìê³ í¸'),
(6, 'ㄹ', 'ㄹ', 'ㄹ', '2018-09-15 17:54:17', 2, 0, '', '예고편'),
(7, 'ㄴㅇ롸ㅣㅓㅏㅓ', 'ㅇ,후,ㅇ라ㅗ', 'ㅓㅠㅏㅓㅓㅠ', '2018-09-15 17:55:07', 1, 0, '', '포스터'),
(8, 'ff', 'fff', 'fff', '2018-09-16 00:19:52', 0, 0, '', '사담'),
(9, 'ㅇㅇ', 'ㅇㅇ', 'ㅇㅇㅇㅇ', '2018-09-16 00:37:00', 0, 0, '', '전체'),
(10, 'ㅇㅇ', 'ㅇㄹㅇㄹㅇ', 'ㄹㅇㄹㅇㄹㅇㄹ', '2018-09-16 00:42:44', 0, 0, '', '영화감상문'),
(11, 'ㅇㅇ', 'ㅇㅇ', 'ㅇㅇㅇㅇㄹㅇㄹㄹㅇㄹㅇ', '2018-09-16 00:49:16', 0, 0, '', '전체'),
(12, 'ㅇㅇ', 'ㅜㅜ', 'ㅇㅇ', '2018-09-16 23:59:24', 0, 0, 'Jellyfish.jpg', '예고편'),
(13, 'aa', 'ㅋㅋㅋㅋ', 'ㅇㄹㅇㄹㅇㄹ', '2018-09-17 00:51:42', 0, 0, 'Jellyfish2.jpg', '포스터');

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`article_id`);

--
-- 덤프된 테이블의 AUTO_INCREMENT
--

--
-- 테이블의 AUTO_INCREMENT `article`
--
ALTER TABLE `article`
  MODIFY `article_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
