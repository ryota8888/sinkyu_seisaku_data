-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2023-12-08 14:28:01
-- サーバのバージョン： 10.4.32-MariaDB
-- PHP のバージョン: 8.0.30

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
  `role` int(2) NOT NULL,
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
  `club` int(5) NOT NULL,
  `age` char(10) NOT NULL,
  `birth` char(10) NOT NULL,
  `height` char(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `char_info`
--

INSERT INTO `char_info` (`id`, `l_name`, `f_name`, `name_alpha`, `school`, `role`, `position`, `town`, `outdoor`, `indoor`, `attack`, `defense`, `class`, `weapon_type`, `w_range`, `rarity`, `illustrater`, `club`, `age`, `birth`, `height`) VALUES
(1, '栗村', 'アイリ', 'kurimura_airi', 4, 2, 3, 2, 5, 2, 1, 1, 4, 4, 1000, 2, 7, 21, '15才', '01/30', '160cm'),
(2, '室笠', 'アカネ', 'murokasa_akane', 6, 1, 2, 2, 2, 5, 2, 1, 4, 3, 550, 2, 1, 31, '16才', '04/01', '164cm'),
(3, '室笠', 'アカネバニー', 'murokasa_akane_bunny', 6, 2, 3, 3, 5, 1, 3, 2, 2, 3, 1000, 3, 1, 31, '16才', '04/01', '164cm'),
(4, '鰐淵', 'アカリ', 'wanibuchi_akari', 5, 1, 2, 2, 3, 3, 1, 2, 2, 1, 650, 2, 3, 8, '17才', '12/09', '167cm'),
(5, '天雨', 'アコ', 'amau_ako', 5, 2, 3, 5, 3, 1, 3, 2, 4, 3, 1000, 3, 2, 6, '17才', '12/22', '165cm'),
(6, '一之瀬', 'アスナ', 'ichinose_asuna', 6, 1, 2, 3, 3, 3, 3, 1, 2, 1, 650, 1, 1, 31, '17才', '03/24', '167cm'),
(7, '白洲', 'アズサ', 'shirasu_azusa', 4, 1, 2, 3, 5, 1, 1, 2, 2, 1, 650, 3, 8, 20, '16才', '12/26', '149cm'),
(8, '白洲', 'アズサ(夏)', 'shirasu_azusa_summer', 4, 1, 2, 4, 4, 1, 3, 1, 2, 1, 650, 3, 8, 20, '16才', '12/26', '149cm'),
(9, '秤', 'アツコ', 'hakari_atuko', 7, 1, 1, 3, 5, 1, 1, 3, 1, 4, 350, 3, 3, 2, '15才', '01/20', '158cm'),
(10, '奥空', 'アヤネ', 'okusora_ayane', 1, 2, 3, 5, 2, 2, 2, 1, 3, 3, 1000, 2, 4, 1, '15才', '11/12', '153cm'),
(11, '奥空', 'アヤネ(夏)', 'okusora_ayane_summer', 1, 2, 3, 4, 2, 3, 2, 1, 5, 3, 1000, 1, 5, 1, '15才', '11/12', '153cm'),
(12, '一之瀬', 'アスナバニー', 'ichinose_asuna_bunny', 6, 1, 2, 5, 3, 1, 3, 1, 4, 1, 650, 3, 1, 31, '17才', '03/24', '167cm'),
(13, '天童', 'アリス', 'tendo_arisu', 6, 1, 3, 3, 5, 1, 3, 3, 2, 9, 850, 3, 2, 30, 'ーー', '03/25', '152cm'),
(14, '天童', 'アリス', 'tendo_arisu_maid', 6, 1, 3, 1, 3, 5, 3, 1, 2, 9, 850, 3, 2, 30, 'ーー', '03/25', '152cm'),
(15, '陸八魔', 'アル', 'rikuhachima_aru', 5, 1, 3, 1, 3, 5, 1, 1, 2, 2, 750, 3, 2, 7, '16才', '03/12', '160cm'),
(16, '陸八魔', 'アル(正月)', 'rikuhachima_aru_newyear', 5, 1, 3, 5, 3, 1, 2, 3, 2, 2, 750, 3, 2, 7, '16才', '03/12', '160cm'),
(17, '銀鏡', 'イオリ', 'shiromi_iori', 5, 1, 3, 4, 4, 1, 2, 2, 2, 2, 650, 3, 1, 6, '16才', '11/08', '157cm'),
(18, '銀鏡', 'イオリ(夏)', 'shiromi_iori_summer', 5, 1, 3, 3, 1, 5, 1, 3, 2, 2, 750, 3, 1, 6, '16才', '11/08', '157cm'),
(19, '久田', 'イズナ', 'kuda_izuna', 2, 1, 1, 1, 3, 5, 3, 1, 2, 4, 450, 3, 9, 27, '15才', '12/16', '155cm'),
(20, '久田', 'イズナ', 'kuda_izuna_summer', 2, 1, 1, 5, 3, 1, 3, 3, 2, 4, 450, 3, 9, 27, '15才', '12/16', '155cm'),
(21, '獅子堂', 'イズミ', 'shishido_izumi', 5, 1, 3, 1, 5, 3, 1, 1, 2, 5, 750, 3, 1, 8, '16才', '05/11', '161cm'),
(22, '獅子堂', 'イズミ', 'shishido_izumi_summer', 5, 1, 3, 3, 2, 4, 1, 1, 4, 5, 750, 1, 1, 8, '16才', '05/11', '161cm'),
(23, '仲正', 'イチカ', 'nakamasa_ichika', 4, 1, 2, 1, 3, 5, 4, 2, 2, 1, 650, 3, 5, 17, '16才', '11/11', '163cm'),
(24, '棗', 'イロハ', 'natume_iroha', 5, 2, 3, 5, 3, 1, 3, 2, 5, 3, 1000, 3, 2, 5, '16才', '11/16', '151cm'),
(25, '古関', 'ウイ', 'kozeki_ui', 4, 1, 3, 3, 1, 5, 1, 1, 4, 2, 750, 3, 10, 19, '17才', '04/23', '165cm'),
(26, '古関', 'ウイ', 'kozeki_ui_summer', 4, 1, 3, 3, 5, 1, 2, 4, 4, 2, 750, 3, 10, 19, '17才', '04/23', '165cm'),
(27, '白石', 'ウタハ', 'shiraishi_utaha', 6, 2, 3, 2, 5, 2, 2, 2, 2, 4, 1000, 2, 11, 32, '17才', '11/13', '162cm'),
(28, '白石', 'ウタハ(応援)', 'shiraishi_utaha_ouendan', 6, 1, 1, 5, 3, 1, 3, 3, 2, 4, 450, 3, 12, 32, '17才', '11/13', '162cm'),
(29, '和泉元', 'エイミ', 'izumimoto_eimi', 6, 1, 1, 1, 3, 5, 1, 1, 1, 6, 350, 3, 13, 35, '15才', '05/01', '167cm'),
(30, '和泉元', 'エイミ(冬)', 'izumimoto_eimi_winter', 6, 2, 3, 5, 1, 3, 3, 3, 4, 6, 1000, 3, 13, 35, '15才', '05/01', '167cm'),
(35, '勇美', 'カエデ', 'isami_kaede', 2, 2, 3, 1, 5, 3, 1, 3, 4, 3, 1000, 3, 6, 28, '15才', '07/09', '142cm'),
(36, '鬼怒川', 'カスミ', 'kinugawa_kasumi', 5, 1, 2, 1, 3, 5, 4, 2, 2, 3, 550, 3, 1, 11, '16才', '05/24', '148cm'),
(37, '杏山', 'カズサ', 'kyoyama_kazusa', 4, 1, 3, 1, 5, 3, 2, 2, 2, 5, 750, 3, 1, 21, '15才', '08/05', '155cm'),
(38, '桑上', 'カホ', 'kuwakami_kaho', 2, 1, 2, 3, 1, 5, 3, 2, 2, 1, 650, 3, 5, 24, '17才', '10/09', '173cm'),
(39, '鬼方', 'カヨコ', 'onikata_kayoko', 5, 1, 2, 2, 5, 2, 1, 2, 4, 3, 550, 2, 2, 7, '18才', '03/17', '157cm'),
(40, '鬼方', 'カヨコ', 'onikata_kayoko_newyear', 5, 1, 2, 3, 5, 1, 3, 3, 4, 3, 550, 3, 2, 7, '18才', '03/17', '157cm'),
(41, '角楯', 'カリン', 'kakudate_karin', 6, 2, 3, 5, 1, 3, 2, 2, 2, 2, 1000, 3, 1, 31, '16才', '02/02', '170cm'),
(42, '角楯', 'カリン', 'kakudate_karin_bunny', 6, 1, 3, 5, 3, 1, 3, 2, 2, 2, 750, 3, 1, 31, '16才', '02/02', '170cm'),
(43, '尾刃', 'カンナ', 'ogata_kanna', 10, 2, 3, 1, 5, 3, 2, 2, 2, 3, 1000, 3, 6, 3, '17才', '09/07', '166cm'),
(44, '桐生', 'キキョウ', 'kiryu_kikyo', 2, 1, 3, 1, 3, 5, 4, 2, 4, 2, 750, 3, 1, 25, '16才', '08/08', '160cm'),
(45, '中務', 'キリノ', 'nakatukasa_kirino', 10, 1, 2, 5, 2, 2, 1, 3, 4, 3, 550, 2, 2, 4, '15才', '10/22', '161cm'),
(46, '春原', 'ココナ', 'sunohara_kokona', 9, 1, 2, 1, 3, 5, 2, 3, 3, 1, 650, 3, 14, 14, '11才', '06/01', '139cm'),
(47, '音瀬', 'コタマ', 'otose_kotama', 6, 2, 3, 2, 4, 3, 1, 1, 4, 3, 1000, 1, 15, 33, '17才', '01/05', '158cm'),
(48, '豊見', 'コトリ', 'toyomi_kotori', 6, 1, 3, 3, 3, 3, 2, 1, 4, 5, 750, 1, 16, 32, '15才', '12/31', '151cm'),
(49, '豊見', 'コトリ', 'toyomi_kotori_ouendan', 6, 1, 3, 5, 3, 1, 1, 3, 2, 5, 750, 3, 17, 32, '15才', '12/31', '151cm'),
(50, '下江', 'コハル', 'shimoe_koharu', 4, 1, 3, 5, 1, 3, 1, 2, 3, 2, 750, 3, 2, 20, '15才', '04/16', '148cm'),
(51, '下江', 'コハル', 'shimoe_koharu_summer', 4, 1, 3, 3, 3, 3, 3, 2, 2, 2, 750, 1, 2, 20, '15才', '04/16', '148cm'),
(52, '黒崎', 'コユキ', 'kurosaki_koyuki', 6, 1, 3, 1, 5, 3, 3, 2, 2, 5, 750, 3, 17, 29, '15才', '02/14', '149cm'),
(53, '錠前', 'サオリ', 'jomae_saori', 7, 1, 2, 3, 5, 1, 1, 3, 2, 1, 650, 3, 3, 2, '17才', '09/03', '167cm'),
(54, '空井', 'サキ', 'sorai_saki', 8, 2, 3, 1, 5, 3, 2, 3, 2, 5, 1000, 3, 18, 40, '15才', '04/09', '161cm'),
(55, '空井', 'サキ', 'sorai_saki_summer', 8, 1, 3, 5, 3, 1, 1, 2, 4, 5, 750, 3, 18, 40, '15才', '04/09', '161cm'),
(56, '歌住', 'サクラコ', 'utazumi_sakurako', 4, 1, 2, 5, 1, 3, 3, 3, 2, 1, 650, 3, 1, 18, '17才', '10/04', '160cm'),
(58, '薬子', 'サヤ', 'yakushi_saya', 9, 2, 3, 3, 5, 1, 1, 2, 2, 3, 1000, 3, 20, 13, '16才', '01/03', '149cm'),
(59, '薬子', 'サヤ', 'yakushi_saya_shihuku', 9, 2, 3, 5, 1, 3, 2, 3, 2, 3, 1000, 3, 20, 13, '16才', '01/03', '149cm'),
(60, '間宵', 'シグレ', 'mayoi_shigure', 3, 1, 2, 5, 1, 3, 1, 2, 2, 7, 650, 3, 20, 37, '16才', '01/22', '156cm'),
(61, '間宵', 'シグレ', 'mayoi_shigure_onsen', 3, 2, 3, 3, 5, 1, 2, 3, 3, 7, 1000, 3, 20, 37, '16才', '01/22', '156cm'),
(62, '河和', 'シズコ', 'kawawa_shizuko', 2, 2, 3, 2, 2, 3, 3, 3, 4, 6, 1000, 2, 19, 26, '16才', '07/07', '153cm'),
(63, '河和', 'シズコ', 'kawawa_shizuko_summer', 2, 2, 3, 3, 3, 3, 3, 2, 4, 6, 1000, 1, 19, 26, '16才', '07/07', '153cm'),
(64, '円堂', 'シミコ', 'endo_shimiko', 4, 2, 3, 4, 2, 3, 1, 1, 4, 1, 1000, 1, 21, 19, '15才', '11/30', '157cm'),
(65, '春原', 'シュン', 'sunohara_syun', 9, 1, 3, 1, 3, 5, 1, 1, 2, 2, 750, 3, 3, 14, '秘密です♡', '02/05', '174cm'),
(66, '春原', 'シュン', 'sunohara_syun_yang', 9, 1, 3, 1, 5, 3, 1, 1, 2, 2, 750, 3, 3, 14, '秘密です！', '02/05', '未測定'),
(67, '砂狼', 'シロコ', 'sunaokami_shiroko', 1, 1, 2, 1, 3, 5, 1, 1, 2, 1, 650, 3, 4, 1, '16才', '05/16', '156cm'),
(68, '砂狼', 'シロコ', 'sunaokami_shiroko_riding', 1, 1, 2, 1, 3, 5, 3, 2, 2, 1, 650, 3, 1, 1, '16才', '05/16', '156cm'),
(69, '砂狼', 'シロコ', 'sunaokami_shiroko_summer', 1, 2, 3, 3, 1, 5, 3, 1, 2, 1, 1000, 3, 1, 1, '16才', '05/16', '156cm'),
(70, '牛牧', 'ジュリ', 'ushimaki_juri', 5, 2, 3, 4, 3, 2, 1, 1, 4, 6, 1000, 1, 22, 9, '15才', '10/20', '170cm'),
(71, '赤司', 'ジュンコ', 'akashi_junko', 5, 1, 2, 3, 2, 3, 2, 1, 2, 1, 650, 2, 2, 8, '15才', '12/27', '149cm'),
(72, '赤司', 'ジュンコ', 'akashi_junko_newyear', 5, 1, 2, 3, 3, 3, 3, 2, 2, 1, 650, 1, 2, 8, '15才', '12/27', '149cm'),
(73, '守月', 'スズミ', 'morizuki_suzumi', 4, 1, 2, 3, 3, 3, 1, 2, 4, 1, 650, 1, 23, 23, '16才', '08/31', '162cm'),
(74, '乙花', 'スミレ', 'otohana_sumire', 6, 1, 1, 3, 5, 1, 2, 3, 2, 6, 450, 3, 24, 34, '16才', '08/20', '167cm'),
(75, '氷室', 'セナ', 'himuro_sena', 5, 2, 3, 3, 1, 5, 3, 1, 5, 7, 1000, 3, 25, 10, '17才', '04/07', '155cm'),
(76, '黒見', 'セリカ', 'kuromi_serika', 1, 1, 2, 2, 5, 2, 1, 1, 2, 1, 650, 2, 4, 1, '15才', '06/25', '153cm'),
(77, '黒見', 'セリカ', 'kuromi_serika_newyear', 1, 2, 3, 4, 4, 1, 2, 3, 4, 1, 1000, 3, 18, 1, '15才', '06/25', '153cm'),
(78, '鷲見', 'セリナ', 'sumi_serina', 4, 2, 3, 2, 4, 3, 3, 1, 3, 1, 1000, 1, 26, 22, '16才', '01/06', '156cm'),
(79, '鷲見', 'セリナ', 'sumi_serina_xmas', 4, 1, 2, 5, 1, 3, 2, 3, 4, 1, 650, 3, 10, 22, '16才', '01/06', '156cm'),
(80, '連河', 'チェリノ', 'renkawa_cherino', 3, 1, 2, 3, 1, 5, 2, 1, 2, 3, 550, 3, 4, 36, '？？？', '10/27', '128cm'),
(81, '連河', 'チェリノ', 'renkawa_cherino_onsen', 3, 2, 3, 1, 3, 5, 1, 2, 5, 3, 1000, 3, 6, 36, '？？？', '10/27', '128cm'),
(82, '和楽', 'チセ', 'waraku_chise', 2, 1, 2, 2, 5, 2, 3, 2, 2, 7, 650, 2, 4, 24, '16才', '07/13', '159cm'),
(83, '和楽', 'チセ', 'waraku_chise_summer', 2, 1, 2, 3, 1, 5, 3, 1, 4, 7, 650, 3, 10, 24, '16才', '07/13', '159cm'),
(84, '火宮', 'チナツ', 'hinomiya_chinatu', 5, 2, 3, 3, 3, 3, 2, 1, 3, 3, 1000, 1, 1, 6, '15才', '08/22', '159cm'),
(85, '火宮', 'チナツ', 'hinomiya_chinatu_onsen', 5, 1, 2, 5, 3, 1, 3, 1, 4, 3, 650, 3, 1, 6, '15才', '08/22', '159cm'),
(86, '各務', 'チヒロ', 'kagami_chihiro', 6, 2, 3, 1, 5, 3, 2, 2, 2, 1, 1000, 3, 27, 33, '17才', '04/26', '160cm'),
(87, '大野', 'ツクヨ', 'oono_tukuyo', 2, 1, 1, 3, 5, 1, 3, 1, 1, 4, 350, 3, 28, 27, '15才', '04/05', '180cm'),
(88, '春日', 'ツバキ', 'kasuga_tubaki', 2, 1, 1, 2, 2, 5, 2, 3, 1, 4, 350, 2, 1, 28, '16才', '02/03', '162cm'),
(89, '剣先', 'ツルギ', 'kenzaki_turugi', 4, 1, 1, 5, 3, 1, 2, 2, 2, 6, 450, 3, 1, 17, '17才', '06/24', '162cm'),
(90, '剣先', 'ツルギ', 'kenzaki_turugi_summer', 4, 1, 1, 3, 4, 2, 3, 3, 2, 6, 450, 1, 1, 17, '17才', '06/24', '162cm'),
(91, '飛鳥馬', 'トキ', 'asuma_toki', 6, 1, 2, 1, 5, 3, 1, 4, 2, 1, 650, 3, 2, 31, '16才', '08/16', '165cm'),
(92, '飛鳥馬', 'トキ', 'asuma_toki_bunny', 6, 1, 2, 3, 1, 5, 1, 1, 2, 1, 650, 3, 2, 31, '16才', '08/16', '165cm'),
(93, '佐城', 'トモエ', 'sashiro_tomoe', 3, 1, 3, 4, 3, 2, 2, 3, 4, 2, 750, 1, 29, 36, '17才', '11/10', '165cm'),
(94, '桐藤', 'ナギサ', 'kirihuji_nagisa', 4, 2, 3, 5, 3, 1, 1, 2, 4, 3, 1000, 3, 2, 16, '17才', '07/04', '160cm'),
(95, '柚鳥', 'ナツ', 'yutori_natu', 4, 1, 1, 5, 3, 1, 3, 2, 1, 4, 350, 3, 6, 21, '15才', '12/04', '152cm'),
(96, '美甘', 'ネル', 'mikamo_neru', 6, 1, 1, 5, 1, 3, 2, 1, 2, 4, 450, 3, 1, 31, '17才', '08/17', '146cm'),
(97, '美甘', 'ネル', 'mikamo_neru_bunny', 6, 1, 1, 3, 1, 5, 1, 2, 1, 4, 450, 3, 1, 31, '17才', '08/17', '146cm'),
(99, '生塩', 'ノア', 'ushio_noa', 6, 1, 2, 5, 3, 1, 3, 3, 4, 3, 550, 3, 2, 29, '16才', '04/13', '161cm'),
(100, '天見', 'ノドカ', 'amami_nodoka', 3, 2, 3, 3, 3, 3, 1, 2, 4, 4, 1000, 1, 30, 37, '16才', '02/20', '147cm'),
(101, '天見', 'ノドカ', 'amami_nodoka_onsen', 3, 2, 3, 3, 5, 1, 1, 3, 3, 4, 1000, 3, 3, 37, '16才', '02/20', '147cm'),
(102, '十六夜', 'ノノミ', 'izayoi_nonomi', 1, 1, 3, 2, 2, 5, 2, 1, 2, 5, 750, 2, 3, 1, '16才', '09/01', '160cm'),
(103, '十六夜', 'ノノミ', 'izayoi_nonomi_summer', 1, 1, 3, 1, 5, 3, 1, 3, 2, 5, 750, 3, 3, 1, '16才', '09/01', '160cm'),
(104, '羽川', 'ハスミ', 'hanekawa_hasumi', 4, 1, 3, 3, 2, 3, 2, 2, 2, 2, 750, 2, 1, 17, '17才', '12/12', '179cm'),
(105, '羽川', 'ハスミ(体)', 'hanekawa_hasumi_taisohuku', 4, 1, 3, 3, 4, 2, 3, 3, 2, 2, 850, 1, 1, 17, '17才', '12/12', '179cm'),
(106, '朝顔', 'ハナエ', 'asagao_hanae', 4, 2, 3, 2, 5, 2, 1, 2, 3, 1, 1000, 2, 40, 22, '15才', '05/12', '150cm'),
(107, '朝顔', 'ハナエ', 'asagao_hanae_xmas', 4, 2, 3, 3, 5, 1, 3, 3, 3, 1, 1000, 3, 6, 22, '15才', '05/12', '150cm'),
(108, '浦和', 'ハナコ', 'urawa_hanako', 4, 2, 3, 2, 5, 2, 2, 3, 3, 1, 1000, 2, 4, 20, '16才', '01/03', '161cm'),
(109, '浦和', 'ハナコ(夏)', 'urawa_hanako_summer', 4, 1, 2, 1, 2, 5, 4, 2, 2, 1, 650, 3, 1, 20, '16才', '01/03', '161cm'),
(110, '伊草', 'ハルカ', 'igusa_haruka', 5, 1, 1, 4, 3, 2, 1, 1, 1, 6, 350, 1, 2, 7, '15才', '05/13', '157cm'),
(111, '伊草', 'ハルカ', 'igusa_haruka_newyear', 5, 2, 3, 4, 1, 4, 1, 1, 4, 6, 1000, 3, 2, 7, '15才', '05/13', '157cm'),
(112, '黒舘', 'ハルナ', 'kurodate_haruna', 5, 1, 3, 1, 5, 3, 3, 2, 2, 2, 750, 3, 19, 8, '17才', '03/01', '163cm'),
(113, '黒舘', 'ハルナ', 'kurodate_haruna_newyear', 5, 1, 3, 5, 1, 3, 1, 1, 2, 2, 750, 3, 19, 8, '17才', '03/01', '163cm'),
(114, '黒舘', 'ハルナ', 'kurodate_haruna_taisohuku', 5, 2, 3, 1, 3, 5, 4, 2, 3, 2, 1000, 3, 19, 8, '17才', '03/01', '163cm'),
(115, '小鈎', 'ハレ', 'omagari_hare', 6, 2, 3, 2, 3, 3, 1, 1, 4, 1, 1000, 2, 3, 33, '16才', '04/19', '153cm'),
(116, '空崎', 'ヒナ', 'sorasaki_hina', 5, 1, 3, 1, 4, 4, 1, 2, 2, 5, 750, 3, 2, 6, '17才', '02/19', '142cm'),
(117, '空崎', 'ヒナ', 'sorasaki_hina_summer', 5, 1, 3, 3, 1, 5, 1, 2, 2, 5, 750, 3, 2, 6, '17才', '02/19', '142cm'),
(118, '若葉', 'ヒナタ', 'wakaba_hinata', 4, 1, 2, 5, 1, 3, 3, 2, 2, 3, 650, 3, 40, 18, '17才', '05/17', '166cm'),
(119, '若葉', 'ヒナタ', 'wakaba_hinata_summer', 4, 2, 3, 5, 1, 3, 1, 1, 2, 3, 1000, 3, 6, 18, '17才', '05/17', '166cm'),
(120, '猫塚', 'ヒビキ', 'nekozuka_hibiki', 6, 2, 3, 1, 3, 3, 1, 2, 2, 8, 1000, 3, 20, 32, '15才', '04/02', '154cm'),
(121, '猫塚', 'ヒビキ', 'nekozuka_hibiki_ouendan', 6, 1, 3, 3, 4, 2, 1, 1, 2, 8, 850, 1, 20, 32, '15才', '04/02', '154cm'),
(122, '阿慈谷', 'ヒフミ', 'ajitani_hihumi', 4, 1, 2, 5, 1, 3, 2, 1, 4, 1, 650, 3, 4, 20, '16才', '11/27', '158cm'),
(123, '阿慈谷', 'ヒフミ', 'ajitani_hihumi_summer', 4, 2, 3, 5, 3, 1, 2, 2, 5, 1, 1000, 3, 18, 20, '16才', '11/27', '158cm'),
(124, '明星', 'ヒマリ', 'akeboshi_himari', 6, 2, 3, 1, 3, 5, 2, 1, 4, 3, 1000, 3, 17, 35, '17才', '12/10', '162cm'),
(125, '槌永', 'ヒヨリ', 'tuchinaga_hiyori', 7, 2, 3, 3, 5, 1, 1, 1, 4, 2, 1000, 3, 3, 2, '16才', '01/08', '155cm'),
(126, '朝比奈', 'フィーナ', 'asahina_fina', 2, 1, 3, 2, 3, 4, 2, 1, 2, 5, 750, 1, 41, 26, '17才', '11/03', '165cm'),
(127, '愛清', 'フウカ', 'aikiyo_huka', 5, 2, 3, 2, 2, 4, 1, 2, 3, 4, 1000, 2, 42, 9, '16才', '04/30', '159cm'),
(128, '愛清', 'フウカ', 'aikiyo_huka_newyear', 5, 2, 3, 3, 5, 1, 2, 3, 4, 4, 1000, 3, 5, 9, '16才', '04/30', '159cm'),
(129, '合歓垣', 'フブキ', 'nemugaki_hubuki', 10, 1, 3, 2, 3, 4, 2, 2, 2, 2, 750, 1, 20, 4, '15才', '10/21', '148cm'),
(130, '小鳥遊', 'ホシノ', 'takanashi_hoshino', 1, 1, 1, 5, 1, 3, 2, 2, 1, 6, 350, 3, 3, 1, '17才', '01/02', '145cm'),
(131, '小鳥遊', 'ホシノ', 'takanashi_hoshino_summer', 1, 1, 1, 1, 2, 5, 1, 3, 4, 6, 450, 3, 3, 1, '17才', '01/02', '145cm'),
(132, '小塗', 'マキ', 'konuri_maki', 6, 1, 3, 4, 1, 4, 2, 1, 2, 5, 750, 3, 3, 33, '15才', '08/01', '149cm'),
(133, '静山', 'マシロ', 'shizuyama_mashiro', 4, 2, 3, 3, 1, 5, 1, 2, 2, 2, 1000, 3, 13, 17, '15才', '06/05', '155cm'),
(134, '静山', 'マシロ', 'shizuyama_mashiro_summer', 4, 2, 3, 3, 1, 5, 3, 1, 2, 2, 1000, 3, 13, 17, '15才', '06/05', '155cm'),
(135, '池倉', 'マリナ', 'ikekura_marina', 3, 1, 1, 5, 3, 1, 2, 1, 1, 4, 350, 3, 1, 36, '16才', '11/04', '166cm'),
(136, '伊落', 'マリー', 'iochi_mari', 4, 2, 3, 5, 2, 2, 3, 3, 4, 3, 1000, 2, 2, 18, '15才', '09/12', '151cm'),
(137, '伊落', 'マリー', 'iochi_mari_taisohuku', 4, 1, 2, 3, 5, 1, 3, 3, 3, 3, 550, 3, 10, 18, '15才', '09/12', '151cm'),
(138, '聖園', 'ミカ', 'misono_mika', 4, 1, 1, 5, 2, 1, 2, 1, 2, 4, 450, 3, 18, 16, '17才', '05/08', '157cm'),
(139, '戒野', 'ミサキ', 'imashino_misaki', 7, 1, 3, 3, 5, 1, 1, 3, 2, 10, 850, 3, 3, 2, '16才', '01/13', '163cm'),
(140, '千鳥', 'ミチル', 'chidori_michiru', 2, 1, 1, 3, 3, 3, 3, 1, 2, 6, 450, 1, 14, 27, '17才', '02/22', '153cm'),
(141, '才羽', 'ミドリ', 'saiba_midori', 6, 1, 3, 3, 1, 5, 2, 1, 2, 2, 750, 3, 43, 30, '15才', '12/08', '143cm'),
(142, '近衛', 'ミナ', 'konoe_mina', 9, 1, 2, 5, 3, 1, 1, 2, 4, 3, 550, 3, 17, 12, '16才', '09/09', '166cm'),
(143, '蒼森', 'ミネ', 'aomori_mine', 4, 1, 1, 3, 1, 5, 1, 1, 1, 6, 350, 3, 27, 22, '17才', '11/23', '168cm'),
(144, '安守', 'ミノリ', 'yasumori_minori', 3, 2, 3, 5, 3, 1, 1, 3, 2, 1, 1000, 3, 5, 39, '17才', '107/14', '158cm'),
(146, '水羽', 'ミモリ', 'mizuha_mimori', 2, 1, 2, 1, 5, 3, 3, 1, 4, 3, 550, 3, 44, 28, '16才', '03/15', '156cm'),
(147, '水羽', 'ミモリ', 'mizuha_mimori_summer', 2, 2, 3, 3, 5, 1, 3, 3, 4, 3, 1000, 3, 44, 28, '16才', '03/15', '156cm'),
(148, '月雪', 'ミヤコ', 'tukiyuki_miyako', 8, 1, 1, 1, 5, 3, 2, 2, 1, 4, 350, 3, 18, 40, '15才', '01/07', '156cm'),
(149, '月雪', 'ミヤコ', 'tukiyuki_miyako_summer', 8, 1, 1, 5, 3, 1, 1, 2, 1, 4, 350, 3, 5, 40, '15才', '01/07', '156cm'),
(150, '霞沢', 'ミユ', 'kasumizawa_miyu', 8, 1, 3, 1, 3, 5, 2, 1, 4, 2, 750, 3, 18, 40, '15才', '07/12', '149cm'),
(151, '霞沢', 'ミユ', 'kasumizawa_miyu_summer', 8, 2, 3, 4, 3, 2, 1, 1, 2, 2, 1000, 1, 18, 40, '15才', '07/12', '149cm'),
(152, '浅黄', 'ムツキ', 'asagi_mutuki', 5, 1, 3, 2, 2, 5, 1, 1, 2, 5, 750, 2, 2, 7, '16才', '07/29', '144cm'),
(153, '浅黄', 'ムツキ', 'asagi_mutuki_newyear', 5, 1, 3, 5, 1, 3, 3, 2, 2, 5, 750, 3, 2, 7, '16才', '07/29', '144cm'),
(154, '下倉', 'メグ', 'shimokura_megu', 5, 1, 1, 5, 1, 3, 1, 3, 2, 11, 450, 3, 8, 11, '17才', '04/25', '164cm'),
(155, '姫木', 'メル', 'himeki_meru', 3, 1, 2, 3, 1, 5, 2, 1, 2, 3, 550, 3, 45, 38, '16才', '12/21', '137cm'),
(156, '風倉', 'モエ', 'kazekura_moe', 8, 2, 3, 5, 3, 1, 2, 1, 2, 3, 1000, 3, 1, 40, '15才', '09/13', '163cm'),
(157, '秋泉', 'モミジ', 'akiizumi_momiji', 3, 1, 3, 2, 2, 5, 4, 2, 2, 10, 850, 2, 43, 38, '15才', '08/07', '135cm'),
(158, '才羽', 'モモイ', 'saiba_momoi', 6, 1, 2, 2, 2, 5, 2, 1, 2, 1, 650, 2, 43, 30, '15才', '12/08', '143cm'),
(159, '早瀬', 'ユウカ', 'hayase_yuuka', 6, 1, 1, 3, 3, 2, 1, 2, 1, 4, 350, 2, 4, 29, '16才', '03/14', '156cm'),
(160, '早瀬', 'ユウカ', 'hayase_yuuka_taisohuku', 6, 1, 1, 3, 5, 1, 3, 3, 1, 4, 450, 3, 18, 29, '16才', '03/14', '156cm'),
(161, '勘解由小路', 'ユカリ', 'kadenokoji_yukari', 2, 1, 3, 1, 3, 5, 4, 2, 2, 2, 750, 3, 1, 25, '15才', '06/16', '155cm'),
(162, '花岡', 'ユズ', 'hanaoka_yuzu', 6, 1, 2, 1, 3, 5, 2, 3, 2, 7, 650, 3, 18, 30, '16才', '08/12', '150cm'),
(163, '花岡', 'ユズ', 'hanaoka_yuzu_maid', 6, 2, 3, 3, 4, 2, 1, 4, 2, 7, 1000, 1, 18, 30, '16才', '08/12', '150cm'),
(164, '伊原木', 'ヨシミ', 'ibaragi_yoshimi', 4, 2, 3, 3, 3, 3, 2, 2, 2, 4, 1000, 1, 1, 21, '15才', '08/29', '146cm'),
(165, '朱城', 'ルミ', 'akeshiro_rumi', 9, 1, 1, 4, 4, 1, 1, 2, 3, 4, 450, 3, 46, 15, '17才', '03/05', '168cm'),
(166, '宇沢', 'レイサ', 'uzawa_reisa', 4, 1, 1, 5, 3, 1, 2, 2, 1, 6, 350, 3, 6, 23, '15才', '05/31', '153cm'),
(167, '不破', 'レンゲ', 'huwa_renge', 2, 1, 3, 1, 3, 5, 4, 2, 2, 2, 750, 3, 1, 25, '16才', '07/23', '157cm'),
(168, '狐坂', 'ワカモ', 'kosaka_wakamo', 2, 1, 3, 2, 5, 1, 3, 1, 2, 2, 750, 3, 8, 41, '18才', '04/03', '161cm'),
(169, '狐坂', 'ワカモ(夏)', 'kosaka_wakamo_summer', 2, 1, 3, 1, 5, 3, 2, 2, 2, 2, 750, 3, 8, 41, '18才', '04/03', '161cm'),
(170, '佐天', '涙子', 'saten_ruiko', 11, 2, 3, 4, 2, 3, 2, 3, 2, 4, 1000, 1, 20, 42, '12才', '03/10(仮)', '160cm'),
(171, '初音', 'ミク', 'hatune_miku', 11, 2, 3, 1, 5, 3, 1, 1, 4, 7, 1000, 3, 18, 42, '16才', '08/31', '158cm'),
(172, '御坂', '美琴', 'misaka_mikoto', 11, 1, 2, 5, 1, 3, 2, 2, 2, 1, 650, 3, 20, 42, '14才', '05/02', '161cm'),
(173, '食蜂', '操祈', 'shokuho_misaki', 11, 1, 2, 1, 4, 4, 1, 2, 4, 3, 550, 3, 20, 42, '14才', '■■■■', '■■■■');

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
(31, 'Ｃ&Ｃ'),
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
(7, 'まきあっと'),
(8, 'NAMYO'),
(9, 'はねこと'),
(10, 'CHILD'),
(11, 'やまかわ'),
(12, 'Paruru'),
(13, 'ポップキュン');

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
(1, 'アビドス', 'アビドス'),
(2, '百鬼夜行', 'ヒャッキヤコウ'),
(3, 'レッドウィンター', 'レッドウィンター'),
(4, 'トリニティ', 'トリニティ'),
(5, 'ゲヘナ', 'ゲヘナ'),
(6, 'ミレニアム', 'ミレニアム'),
(7, 'アリウス', 'アリウス'),
(8, 'SRT', 'エスアールティー'),
(9, '山海経', 'センガイキョウ'),
(10, 'ヴァルキューレ', 'ヴァルキューレ'),
(11, 'コラボ', ''),
(12, 'その他', '');

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
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;

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
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- テーブルの AUTO_INCREMENT `position_tb`
--
ALTER TABLE `position_tb`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- テーブルの AUTO_INCREMENT `school_tb`
--
ALTER TABLE `school_tb`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- テーブルの AUTO_INCREMENT `weapon_type_tb`
--
ALTER TABLE `weapon_type_tb`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
