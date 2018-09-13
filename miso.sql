-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- 생성 시간: 18-09-13 15:47
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
-- 테이블 구조 `board`
--

CREATE TABLE `board` (
  `num` int(11) NOT NULL,
  `writer` varchar(10) NOT NULL,
  `email` varchar(30) DEFAULT NULL,
  `subject` varchar(50) NOT NULL,
  `passwd` varchar(12) NOT NULL,
  `reg_date` datetime NOT NULL,
  `readcount` int(11) DEFAULT '0',
  `ref` int(11) NOT NULL,
  `re_step` smallint(6) NOT NULL,
  `re_level` smallint(6) NOT NULL,
  `content` text NOT NULL,
  `ip` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `comment`
--

CREATE TABLE `comment` (
  `num` int(20) NOT NULL,
  `id` varchar(50) NOT NULL,
  `content` varchar(400) NOT NULL,
  `reg` datetime DEFAULT NULL,
  `ref` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `comment`
--

INSERT INTO `comment` (`num`, `id`, `content`, `reg`, `ref`) VALUES
(11, 'hong', '저는 168에 53인데 m으로 했더니 길이도 그렇고 아주 잘 맞아요~~!!', '2018-06-22 00:20:07', 8),
(12, 'hong', '이뻐요 !!!!!!^^', '2018-06-22 01:06:17', 9),
(13, 'hong', '이뻐요 ㅎ', '2018-06-22 01:10:34', 10),
(14, 'ahn', '조아요', '2018-06-22 10:24:19', 9),
(15, 'ahn', '이뻐요!', '2018-06-22 10:25:51', 12),
(16, 'hong', '안녕', '2018-06-22 10:57:50', 12),
(17, 'hong', '안녕? 난 영신이야', '2018-06-27 19:59:29', 13),
(18, 'hong', 'dddd', '2018-09-08 12:38:20', 8),
(19, 'null', 'd', '2018-09-09 02:22:02', 17),
(20, 'null', 'ㅎㅎ', '2018-09-09 02:27:23', 17),
(21, 'null', 'ㄱ', '2018-09-09 02:29:02', 17),
(22, 'null', 'ㄹ', '2018-09-09 02:32:01', 17),
(23, 'null', 'ㄹ', '2018-09-09 02:32:05', 17),
(24, 'null', 'ㄹ', '2018-09-09 02:32:08', 17),
(25, 'null', 'ㄱ', '2018-09-09 02:36:12', 17);

-- --------------------------------------------------------

--
-- 테이블 구조 `follow`
--

CREATE TABLE `follow` (
  `fol_id` int(11) NOT NULL COMMENT '팔로우 기본키',
  `mem_id` int(11) NOT NULL COMMENT '팔로우 하는 사람',
  `target_mem_id` int(11) NOT NULL COMMENT '팔로우 당하는 사람',
  `fol_datetime` datetime NOT NULL COMMENT '팔로우 한 날짜'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='팔로우테이블';

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
(4, 0, 'aass', '1234', 'aaa@aaa.aaa', 'fgfsdf', '20000414', 0, 'gfdsf', '06027', '서울 강남구 압구정로 102 (신사동, 형지제2빌딩)', '2018-09-13 22:32:38', 0);

-- --------------------------------------------------------

--
-- 테이블 구조 `message`
--

CREATE TABLE `message` (
  `msg_id` int(11) NOT NULL COMMENT '메시지 기본키',
  `msg_content` varchar(200) NOT NULL COMMENT '메시지 내용',
  `msg_type` int(1) NOT NULL COMMENT '메시지 구분',
  `send_mem_id` int(11) NOT NULL COMMENT '보낸 회원 아이디',
  `recv_mem_id` int(11) NOT NULL COMMENT '받는 회원 아이디',
  `msg_datetime` datetime NOT NULL COMMENT '메시지 보낸 날짜',
  `msg_read_datetime` datetime NOT NULL COMMENT '메시지 읽은 날짜',
  `related_msg_id` int(11) NOT NULL COMMENT '관련 메시지'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='메시지 테이블';

-- --------------------------------------------------------

--
-- 테이블 구조 `movielike`
--

CREATE TABLE `movielike` (
  `movie_like_id` int(11) NOT NULL COMMENT '좋아요 기본키',
  `movieCd` varchar(8) NOT NULL COMMENT '좋아요 한 영화',
  `mem_id` int(11) NOT NULL COMMENT '좋아요 한 회원'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='영화 좋아요 테이블';

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `board`
--
ALTER TABLE `board`
  ADD PRIMARY KEY (`num`);

--
-- 테이블의 인덱스 `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`num`);

--
-- 테이블의 인덱스 `follow`
--
ALTER TABLE `follow`
  ADD PRIMARY KEY (`fol_id`);

--
-- 테이블의 인덱스 `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`mem_id`);

--
-- 테이블의 인덱스 `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`msg_id`);

--
-- 테이블의 인덱스 `movielike`
--
ALTER TABLE `movielike`
  ADD PRIMARY KEY (`movie_like_id`);

--
-- 덤프된 테이블의 AUTO_INCREMENT
--

--
-- 테이블의 AUTO_INCREMENT `board`
--
ALTER TABLE `board`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `comment`
--
ALTER TABLE `comment`
  MODIFY `num` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- 테이블의 AUTO_INCREMENT `follow`
--
ALTER TABLE `follow`
  MODIFY `fol_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '팔로우 기본키';

--
-- 테이블의 AUTO_INCREMENT `member`
--
ALTER TABLE `member`
  MODIFY `mem_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '회원기본키', AUTO_INCREMENT=5;

--
-- 테이블의 AUTO_INCREMENT `message`
--
ALTER TABLE `message`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '메시지 기본키';

--
-- 테이블의 AUTO_INCREMENT `movielike`
--
ALTER TABLE `movielike`
  MODIFY `movie_like_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '좋아요 기본키';
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
