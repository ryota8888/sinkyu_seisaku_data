-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2023-11-27 15:57:28
-- サーバのバージョン： 10.4.28-MariaDB
-- PHP のバージョン: 8.0.28

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
  `school_kana` char(15) NOT NULL,
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
  `illustrater` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `char_info`
--

INSERT INTO `char_info` (`id`, `l_name`, `f_name`, `name_alpha`, `school`, `school_kana`, `role`, `position`, `town`, `outdoor`, `indoor`, `attack`, `defense`, `class`, `weapon_type`, `w_range`, `rarity`, `illustrater`) VALUES
(1, '栗村', 'アイリ', 'kurimura_airi', 3, 'トリニティ', 1, 3, 2, 5, 2, 1, 1, 4, 4, 1000, 2, 0),
(2, '室笠', 'アカネ', 'murokasa_akane', 5, 'ミレニアム', 0, 2, 2, 2, 5, 2, 1, 4, 3, 550, 2, 0),
(3, '室笠', 'アカネバニー', 'murokasa_akane_bunny', 5, 'ミレニアム', 1, 3, 3, 5, 1, 3, 2, 2, 3, 1000, 3, 0),
(4, '鰐淵', 'アカリ', 'wanibuchi_akari', 4, 'ゲヘナ', 0, 2, 2, 3, 3, 1, 2, 2, 1, 650, 2, 0),
(5, '天雨', 'アコ', 'amau_ako', 4, 'ゲヘナ', 1, 3, 5, 3, 1, 3, 2, 4, 3, 1000, 3, 0),
(6, '一之瀬', 'アスナ', 'ichinose_asuna', 5, 'ミレニアム', 0, 2, 3, 3, 3, 3, 1, 2, 1, 650, 1, 0);

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `char_info`
--
ALTER TABLE `char_info`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `char_info`
--
ALTER TABLE `char_info`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
