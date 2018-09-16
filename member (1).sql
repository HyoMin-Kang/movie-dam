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
-- 테이블 구조 `member`
--

CREATE TABLE `member` (
  `mem_id` int(11) NOT NULL COMMENT '회원기본키',
  `mem_status` int(1) NOT NULL COMMENT '회원상태',
  `mem_userid` varchar(15) NOT NULL COMMENT '회원아이디',
  `mem_pwd` varchar(20) NOT NULL COMMENT '회원비밀번호',
  `mem_email` varchar(30) NOT NULL COMMENT '회원이메일',
  `mem_name` varchar(10) NOT NULL COMMENT '회원이름',
  `mem_birth` varchar(8) NOT NULL COMMENT '회원생년월일',
  `mem_gender` int(1) NOT NULL COMMENT '회원성별',
  `mem_nickname` varchar(20) NOT NULL COMMENT '회원닉네임',
  `mem_postcode` char(5) DEFAULT NULL COMMENT '회원 우편번호',
  `mem_address` varchar(100) DEFAULT NULL COMMENT '회원 주소',
  `join_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '회원가입일',
  `mem_type` int(1) NOT NULL COMMENT '회원구분'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='회원테이블';

--
-- 테이블의 덤프 데이터 `member`
--

INSERT INTO `member` (`mem_id`, `mem_status`, `mem_userid`, `mem_pwd`, `mem_email`, `mem_name`, `mem_birth`, `mem_gender`, `mem_nickname`, `mem_postcode`, `mem_address`, `join_date`, `mem_type`) VALUES
(1, 0, 'aa', '1234', 'asd@asd.asd', 'asd', '20001212', 1, 'asdf', '34672', '대전 동구 판암동 497-3', '2018-09-10 18:08:52', 0),
(2, 0, 'gg', '1234', 'asd@asd.asd', '하이', '19980813', 1, 'gg', '44257', '울산 북구 아랫율동1길 1 (양정동)', '2018-09-13 20:28:31', 0),
(3, 0, 'bb', '1234', 'aaa@aaa.aaa', 'ㅁㄴㅇㄹ', '19990609', 0, 'ㅎㅎㅎ', '06313', '서울 강남구 양재대로 333 (개포동)', '2018-09-13 20:29:51', 0),
(4, 0, 'aass', '1234', 'aaa@aaa.aaa', 'fgfsdf', '20000414', 0, 'gfdsf', '06027', '서울 강남구 압구정로 102 (신사동, 형지제2빌딩)', '2018-09-13 22:32:38', 0),
(5, 0, 'admin', 'misoadmin', 'hy5oo@naver.com', '관리자', '19980224', 1, '관리자', '06027', '서울 강남구 압구정로 102 (신사동, 형지제2빌딩)', '2018-09-15 22:25:00', 1);

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`mem_id`);

--
-- 덤프된 테이블의 AUTO_INCREMENT
--

--
-- 테이블의 AUTO_INCREMENT `member`
--
ALTER TABLE `member`
  MODIFY `mem_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '회원기본키', AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;