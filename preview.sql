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
-- 테이블 구조 `preview`
--

CREATE TABLE `preview` (
  `article_id` int(11) NOT NULL COMMENT '게시글 기본키',
  `article_title` varchar(50) NOT NULL COMMENT '게시글 제목',
  `preview_date` datetime NOT NULL COMMENT '일시',
  `preview_region` varchar(200) NOT NULL COMMENT '지역',
  `reg_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '작성일',
  `original_url` varchar(256) NOT NULL COMMENT '원본글 주소',
  `poster` varchar(100) NOT NULL COMMENT '영화 포스터',
  `cinema` varchar(20) NOT NULL COMMENT '영화관'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='시사회 테이블';

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `preview`
--
ALTER TABLE `preview`
  ADD PRIMARY KEY (`article_id`);

--
-- 덤프된 테이블의 AUTO_INCREMENT
--

--
-- 테이블의 AUTO_INCREMENT `preview`
--
ALTER TABLE `preview`
  MODIFY `article_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '게시글 기본키';
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
