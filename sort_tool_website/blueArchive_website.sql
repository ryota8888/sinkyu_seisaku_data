-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2023-11-29 16:29:08
-- サーバのバージョン： 10.4.32-MariaDB
-- PHP のバージョン: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `bluearchive_database`
--
DROP DATABASE IF EXISTS `bluearchive_database`;
CREATE DATABASE IF NOT EXISTS `bluearchive_database` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bluearchive_database`;

-- --------------------------------------------------------

--
-- テーブルの構造 `aptitude_tb`
--

CREATE TABLE `aptitude_tb` (
  `id` int(11) NOT NULL,
  `aptitude` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `aptitude_tb`
--

INSERT INTO `aptitude_tb` (`id`, `aptitude`) VALUES
(1, 'S'),
(2, 'A'),
(3, 'B'),
(4, 'C'),
(5, 'D');

-- --------------------------------------------------------

--
-- テーブルの構造 `attribute_tb`
--

CREATE TABLE `attribute_tb` (
  `id` int(10) NOT NULL,
  `a_name` char(10) NOT NULL,
  `d_name` char(10) NOT NULL,
  `color` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `attribute_tb`
--

INSERT INTO `attribute_tb` (`id`, `a_name`, `d_name`, `color`) VALUES
(1, '爆発', '軽装甲', 'red'),
(2, '貫通', '重装甲', 'yellow'),
(3, '神秘', '特殊装甲', 'blue'),
(4, '振動', '弾力装甲', 'purple');

-- --------------------------------------------------------

--
-- テーブルの構造 `char_info`
--

CREATE TABLE `char_info` (
  `id` int(5) NOT NULL,
  `l_name` char(10) NOT NULL,
  `f_name` char(10) NOT NULL,
  `name_alpha` char(30) NOT NULL,
  `school` int(10) NOT NULL,
  `role` int(2) NOT NULL DEFAULT 0,
  `position` int(5) NOT NULL,
  `town` int(5) NOT NULL,
  `outdoor` int(5) NOT NULL,
  `indoor` int(5) NOT NULL,
  `attack` int(10) NOT NULL,
  `defense` int(10) NOT NULL,
  `class` int(5) NOT NULL,
  `weapon_type` int(5) NOT NULL,
  `w_range` int(5) DEFAULT NULL,
  `rarity` int(5) NOT NULL,
  `illustrater` int(5) NOT NULL,
  `club` int(5) NOT NULL DEFAULT 0,
  `age` int(11) NOT NULL,
  `birth` int(11) NOT NULL,
  `height` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `char_info`
--

INSERT INTO `char_info` (`id`, `l_name`, `f_name`, `name_alpha`, `school`, `role`, `position`, `town`, `outdoor`, `indoor`, `attack`, `defense`, `class`, `weapon_type`, `w_range`, `rarity`, `illustrater`, `club`, `age`, `birth`, `height`) VALUES
(1, '栗村', 'アイリ', 'kurimura_airi', 3, 2, 3, 2, 5, 2, 1, 1, 4, 4, 1000, 2, 7, 0, 0, 0, 0),
(2, '室笠', 'アカネ', 'murokasa_akane', 5, 1, 2, 2, 2, 5, 2, 1, 4, 3, 550, 2, 1, 0, 0, 0, 0),
(3, '室笠', 'アカネバニー', 'murokasa_akane_bunny', 5, 2, 3, 3, 5, 1, 3, 2, 2, 3, 1000, 3, 1, 0, 0, 0, 0),
(4, '鰐淵', 'アカリ', 'wanibuchi_akari', 4, 1, 2, 2, 3, 3, 1, 2, 2, 1, 650, 2, 3, 0, 0, 0, 0),
(5, '天雨', 'アコ', 'amau_ako', 4, 2, 3, 5, 3, 1, 3, 2, 4, 3, 1000, 3, 2, 0, 0, 0, 0),
(6, '一之瀬', 'アスナ', 'ichinose_asuna', 5, 1, 2, 3, 3, 3, 3, 1, 2, 1, 650, 1, 1, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- テーブルの構造 `class_tb`
--

CREATE TABLE `class_tb` (
  `id` int(5) NOT NULL,
  `name` char(20) NOT NULL,
  `name_alpha` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `class_tb`
--

INSERT INTO `class_tb` (`id`, `name`, `name_alpha`) VALUES
(1, 'タンク', 'tanker'),
(2, 'アタッカー', 'attacker'),
(3, 'ヒーラー', 'healer'),
(4, 'サポーター', 'supporter'),
(5, 'T.サポーター', 'tactical_sp');

-- --------------------------------------------------------

--
-- テーブルの構造 `illustrater_tb`
--

CREATE TABLE `illustrater_tb` (
  `id` int(3) NOT NULL,
  `name` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `illustrater_tb`
--

INSERT INTO `illustrater_tb` (`id`, `name`) VALUES
(1, 'Mx2j'),
(2, 'DoReMi'),
(3, '9mel'),
(4, 'Hwansang'),
(5, '7peach'),
(6, 'kokosando'),
(7, 'まきあっと');

-- --------------------------------------------------------

--
-- テーブルの構造 `position_tb`
--

CREATE TABLE `position_tb` (
  `id` int(5) NOT NULL,
  `p_name` char(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `position_tb`
--

INSERT INTO `position_tb` (`id`, `p_name`) VALUES
(1, 'FRONT'),
(2, 'MIDDLE'),
(3, 'BACK');

-- --------------------------------------------------------

--
-- テーブルの構造 `school_tb`
--

CREATE TABLE `school_tb` (
  `id` int(5) NOT NULL,
  `name` char(20) NOT NULL,
  `name_kana` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `school_tb`
--

INSERT INTO `school_tb` (`id`, `name`, `name_kana`) VALUES
(1, '百鬼夜行', 'ヒャッキヤコウ'),
(2, 'レッドウィンター', 'レッドウィンター'),
(3, 'トリニティ', 'トリニティ'),
(4, 'ゲヘナ', 'ゲヘナ'),
(5, 'ミレニアム', 'ミレニアム'),
(6, 'アリウス', 'アリウス'),
(7, 'SRT', 'エスアールティー'),
(8, '山海経', 'センガイキョウ'),
(9, 'ヴァルキューレ', 'ヴァルキューレ'),
(10, 'コラボ', 'コラボ'),
(11, 'その他', 'ソノタ');

-- --------------------------------------------------------

--
-- テーブルの構造 `wepon_type_tb`
--

CREATE TABLE `wepon_type_tb` (
  `id` int(5) NOT NULL,
  `wepon_type` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `wepon_type_tb`
--

INSERT INTO `wepon_type_tb` (`id`, `wepon_type`) VALUES
(1, 'AR'),
(2, 'SR'),
(3, 'HG'),
(4, 'SMG'),
(5, 'MG'),
(6, 'SG'),
(7, 'GL'),
(8, 'MT'),
(9, 'RG'),
(10, 'RL'),
(11, 'FT');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `aptitude_tb`
--
ALTER TABLE `aptitude_tb`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `attribute_tb`
--
ALTER TABLE `attribute_tb`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `char_info`
--
ALTER TABLE `char_info`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `class_tb`
--
ALTER TABLE `class_tb`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `illustrater_tb`
--
ALTER TABLE `illustrater_tb`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `position_tb`
--
ALTER TABLE `position_tb`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `school_tb`
--
ALTER TABLE `school_tb`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `wepon_type_tb`
--
ALTER TABLE `wepon_type_tb`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `aptitude_tb`
--
ALTER TABLE `aptitude_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- テーブルの AUTO_INCREMENT `attribute_tb`
--
ALTER TABLE `attribute_tb`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- テーブルの AUTO_INCREMENT `char_info`
--
ALTER TABLE `char_info`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- テーブルの AUTO_INCREMENT `class_tb`
--
ALTER TABLE `class_tb`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- テーブルの AUTO_INCREMENT `illustrater_tb`
--
ALTER TABLE `illustrater_tb`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- テーブルの AUTO_INCREMENT `position_tb`
--
ALTER TABLE `position_tb`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- テーブルの AUTO_INCREMENT `school_tb`
--
ALTER TABLE `school_tb`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- テーブルの AUTO_INCREMENT `wepon_type_tb`
--
ALTER TABLE `wepon_type_tb`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
