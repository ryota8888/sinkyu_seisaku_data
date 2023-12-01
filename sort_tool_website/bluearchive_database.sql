-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2023-12-01 12:15:43
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
  `name` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `aptitude_tb`
--

INSERT INTO `aptitude_tb` (`id`, `name`) VALUES
(1, 'S'),
(2, 'A'),
(3, 'B'),
(4, 'C'),
(5, 'D');

-- --------------------------------------------------------

--
-- テーブルの構造 `attack_tb`
--

CREATE TABLE `attack_tb` (
  `id` int(10) NOT NULL,
  `name` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `attack_tb`
--

INSERT INTO `attack_tb` (`id`, `name`) VALUES
(1, '爆発'),
(2, '貫通'),
(3, '神秘'),
(4, '振動');

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
  `age` char(6) NOT NULL,
  `birth` char(6) NOT NULL,
  `height` char(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `char_info`
--

INSERT INTO `char_info` (`id`, `l_name`, `f_name`, `name_alpha`, `school`, `role`, `position`, `town`, `outdoor`, `indoor`, `attack`, `defense`, `class`, `weapon_type`, `w_range`, `rarity`, `illustrater`, `club`, `age`, `birth`, `height`) VALUES
(1, '栗村', 'アイリ', 'kurimura_airi', 3, 2, 3, 2, 5, 2, 1, 1, 4, 4, 1000, 2, 7, 21, '15才', '01/30', '160cm'),
(2, '室笠', 'アカネ', 'murokasa_akane', 5, 1, 2, 2, 2, 5, 2, 1, 4, 3, 550, 2, 1, 31, '16才', '04/01', '164cm'),
(3, '室笠', 'アカネバニー', 'murokasa_akane_bunny', 5, 2, 3, 3, 5, 1, 3, 2, 2, 3, 1000, 3, 1, 31, '16才', '04/01', '164cm'),
(4, '鰐淵', 'アカリ', 'wanibuchi_akari', 4, 1, 2, 2, 3, 3, 1, 2, 2, 1, 650, 2, 3, 8, '17才', '12/09', '167cm'),
(5, '天雨', 'アコ', 'amau_ako', 4, 2, 3, 5, 3, 1, 3, 2, 4, 3, 1000, 3, 2, 6, '17才', '12/22', '165cm'),
(6, '一之瀬', 'アスナ', 'ichinose_asuna', 5, 1, 2, 3, 3, 3, 3, 1, 2, 1, 650, 1, 1, 31, '17才', '03/24', '167cm');

-- --------------------------------------------------------

--
-- テーブルの構造 `class_tb`
--

CREATE TABLE `class_tb` (
  `id` int(5) NOT NULL,
  `name` char(20) NOT NULL,
  `calpha` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `class_tb`
--

INSERT INTO `class_tb` (`id`, `name`, `calpha`) VALUES
(1, 'タンク', 'tanker'),
(2, 'アタッカー', 'attacker'),
(3, 'ヒーラー', 'healer'),
(4, 'サポーター', 'supporter'),
(5, 'T.サポーター', 'tactical_sp');

-- --------------------------------------------------------

--
-- テーブルの構造 `club_tb`
--

CREATE TABLE `club_tb` (
  `id` int(10) NOT NULL,
  `name` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `club_tb`
--

INSERT INTO `club_tb` (`id`, `name`) VALUES
(1, '対策委員会'),
(2, 'スクワッド'),
(3, '公安局'),
(4, '生活安全局'),
(5, '万魔殿'),
(6, '風紀委員会'),
(7, '便利屋68'),
(8, '美食研究会'),
(9, '給食部'),
(10, '救急医学部'),
(11, '温泉開発部'),
(12, '玄龍門'),
(13, '錬丹術研究会'),
(14, '梅花園'),
(15, '玄武商会'),
(16, '茶会'),
(17, '正実委員会'),
(18, 'シスタフッド'),
(19, '図書委員会'),
(20, '補習授業部'),
(21, 'スイーツ部'),
(22, '救護騎士団'),
(23, '自警団'),
(24, '陰陽部'),
(25, '百花繚乱'),
(26, 'お祭り委員会'),
(27, '忍術研究部'),
(28, '修行部'),
(29, 'セミナー'),
(30, 'ゲーム開発部'),
(31, 'C&C'),
(32, 'エンジニア部'),
(33, 'ヴェリタス'),
(34, 'トレーニング'),
(35, '特異現象部'),
(36, '赤冬事務局'),
(37, '227号'),
(38, '知識解放戦線'),
(39, '工務部'),
(40, 'RABBIT小隊'),
(41, '七囚人'),
(42, 'その他');

-- --------------------------------------------------------

--
-- テーブルの構造 `defense_tb`
--

CREATE TABLE `defense_tb` (
  `id` int(10) NOT NULL,
  `name` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `defense_tb`
--

INSERT INTO `defense_tb` (`id`, `name`) VALUES
(1, '軽装甲'),
(2, '重装甲'),
(3, '特殊装甲'),
(4, '弾力装甲');

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
  `name` char(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `position_tb`
--

INSERT INTO `position_tb` (`id`, `name`) VALUES
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
(12, 'コラボ', ''),
(13, 'その他', '');

-- --------------------------------------------------------

--
-- テーブルの構造 `weapon_type_tb`
--

CREATE TABLE `weapon_type_tb` (
  `id` int(5) NOT NULL,
  `name` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `weapon_type_tb`
--

INSERT INTO `weapon_type_tb` (`id`, `name`) VALUES
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
-- テーブルのインデックス `attack_tb`
--
ALTER TABLE `attack_tb`
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
-- テーブルのインデックス `club_tb`
--
ALTER TABLE `club_tb`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `defense_tb`
--
ALTER TABLE `defense_tb`
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
-- テーブルのインデックス `weapon_type_tb`
--
ALTER TABLE `weapon_type_tb`
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
-- テーブルの AUTO_INCREMENT `attack_tb`
--
ALTER TABLE `attack_tb`
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
-- テーブルの AUTO_INCREMENT `club_tb`
--
ALTER TABLE `club_tb`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- テーブルの AUTO_INCREMENT `defense_tb`
--
ALTER TABLE `defense_tb`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- テーブルの AUTO_INCREMENT `weapon_type_tb`
--
ALTER TABLE `weapon_type_tb`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
