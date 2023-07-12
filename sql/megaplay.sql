-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 03, 2020 at 09:49 AM
-- Server version: 5.7.29
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `megaplay_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `admob`
--

CREATE TABLE `admob` (
  `id` int(11) NOT NULL,
  `banner` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `interstitial` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('Active','Disabled') COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admob`
--

INSERT INTO `admob` (`id`, `banner`, `interstitial`, `status`) VALUES
(1, 'ca-app-pub-1737152255173320/2704221941', 'ca-app-pub-1737152255173320/6451895268', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category` varchar(200) NOT NULL,
  `status` enum('Show','Hide') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category`, `status`) VALUES
(1, 'PUNJABI MOVIES', 'Show'),
(2, 'BOLLYWOOD MOVIES', 'Show'),
(3, 'HOLLYWOOD MOVIES', 'Hide'),
(4, 'SOUTH MOVIES', 'Show'),
(5, 'PUNJABI MUSIC', 'Show'),
(6, 'HINDI MUSIC', 'Show'),
(7, 'WEB SERIES', 'Show'),
(8, 'TV SHOWS', 'Hide');

-- --------------------------------------------------------

--
-- Table structure for table `channels`
--

CREATE TABLE `channels` (
  `id` int(11) NOT NULL,
  `channel_name` varchar(200) NOT NULL,
  `channel_logo` text NOT NULL,
  `status` enum('Show','Hide') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `channels`
--

INSERT INTO `channels` (`id`, `channel_name`, `channel_logo`, `status`) VALUES
(1, 'Goldmines Telefilms', 'https://megaplay.in/admin/images/channels/1.png', 'Show'),
(2, 'T-Series', 'https://megaplay.in/admin/images/channels/2.png', 'Show'),
(3, 'Lokdhun Punjabi ', 'https://megaplay.in/admin/images/channels/3.png', 'Show'),
(4, 'Yellow Music', 'https://megaplay.in/admin/images/channels/4.png', 'Show'),
(5, 'VehliJantaRecords', 'https://megaplay.in/admin/images/channels/5.png', 'Show'),
(6, 'Rhythm Boyz', 'https://megaplay.in/admin/images/channels/6.png', 'Show'),
(7, 'Geet MP3', 'https://megaplay.in/admin/images/channels/7.png', 'Show'),
(8, 'T-Series Apna Punjab', 'https://megaplay.in/admin/images/channels/8.png', 'Show'),
(9, 'Speed Records', 'https://megaplay.in/admin/images/channels/9.png', 'Show'),
(10, 'Jass Records', 'https://megaplay.in/admin/images/channels/10.png', 'Show'),
(11, 'White Hill Music', 'https://megaplay.in/admin/images/channels/11.png', 'Show'),
(12, 'Nupur Audio', 'https://megaplay.in/admin/images/channels/12.png', 'Show'),
(13, 'Desi Music Factory', 'https://megaplay.in/admin/images/channels/13.png', 'Show'),
(14, 'Rehaan Records', 'https://megaplay.in/admin/images/channels/14.png', 'Show'),
(15, 'Bamb Beats', 'https://megaplay.in/admin/images/channels/15.png', 'Show'),
(16, 'YRF', 'https://megaplay.in/admin/images/channels/16.png', 'Show'),
(17, 'Single Track Studios', 'https://megaplay.in/admin/images/channels/17.png', 'Show'),
(18, 'SagaHits', 'https://megaplay.in/admin/images/channels/18.png', 'Show'),
(19, 'Shemaroo', 'https://megaplay.in/admin/images/channels/19.png', 'Show'),
(20, 'Action Movies Digiplex ', 'https://megaplay.in/admin/images/channels/20.png', 'Show'),
(21, 'Pen Multiplex ', 'https://megaplay.in/admin/images/channels/21.png', 'Show'),
(22, 'Venus Movies', 'https://megaplay.in/admin/images/channels/22.png', 'Show'),
(23, 'Dishoom Films', 'https://megaplay.in/admin/images/channels/23.png', 'Show'),
(24, 'Others', 'https://megaplay.in/admin/images/channels/24.png', 'Hide'),
(25, 'JATT SAUDA', 'https://megaplay.in/admin/images/channels/25.png', 'Show'),
(26, 'NEW MOVIES 2020', 'https://megaplay.in/admin/images/channels/26.png', 'Show'),
(27, 'Sidhu Moose Wala', 'https://megaplay.in/admin/images/channels/27.png', 'Show'),
(28, 'Gringo Entertainments', 'https://yt3.ggpht.com/a/AATXAJzv_Ct3cvT0EcUl3dwZtjtwOx-hBwbZya3cZQ=s288-c-k-c0xffffffff-no-rj-mo', 'Show'),
(29, ' Humble Music ', 'https://yt3.ggpht.com/a/AATXAJxJOFBSDzvaahInEGmjdyrAXayj7M8llcNJ7w=s288-c-k-c0xffffffff-no-rj-mo', 'Show'),
(30, 'Babbu Maan', 'https://megaplay.in/admin/images/channels/30.png', 'Show');

-- --------------------------------------------------------

--
-- Table structure for table `fcm`
--

CREATE TABLE `fcm` (
  `deviceId` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `token` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fcm`
--

INSERT INTO `fcm` (`deviceId`, `token`) VALUES
('00a53070ab34fd29', 'csuSu6GOTM6WVH96GjSPq8:APA91bFY5OxIBDsHL5bV6HI88LjYtXAlgTAULl1tHy5tuf9QvY936n4kwa40cFyG6gbbs405jDx3hvhBu1mARN5y9NPxF8Syz-f7USsdzdNWxPOmFD6kh7-QIafgN8w80BUnl9LKahDt'),
('03d52b59b0315256', 'e88atjoBTdeWpFPzW4FquB:APA91bEJClgpIaFzgT_1sAjmegDiIbvM8Axpo32bpPGocAbdbrPdP80zz17sHbyPLmhQsF3mhEwX4Xblhas-M_JEZnpZMm3oWVlnQH25HBybpQSA1u8O_PNXET_3VnNuy2Vcu5GC-xE0'),
('06a912845ac98e78', 'eUJQN2hWQem4i1JQ9ZiaeK:APA91bFrJJp9R2mUjoSKzZhvHZEA40JSBDmHGGQOQw9ClFXgcZfg_DDLOhv0FTovcmhRmU8fpY3aHN9UUdpHisbpeJO00vwJ4UC2sax8ajThlk0FipU9JVtP5rBmU3cLVlfZQd8eqznq'),
('09190e5aeee0f9fd', 'dd22tGZzRVqwc23LCApYTA:APA91bGQgJBQyGskIYZd4lJWBHrqdTHyR89USUQDuM5kVBiIFWFZvOg0KdtH3KlAs9kkyW21yQUxfA5JN6c6Q32axOtxxuLTRH3ch3nC1HqvffKl0rLREucBfyyBAm6YrcJsqbjWbCsZ'),
('0bf729eef73e6798', 'eaTUiU5ISLWuth9aPeJjzK:APA91bFAb-Ecz9x2ALR8uie8T8KPTw0gQFueLT9tEH9w0M36efQt_U1Lg0nripuYxm7Kld9212tn5_h2CrNKn77oy0Kcs4CeIksEjU7OBAH9s5FYo9gEu9_idgdnYmrbC25Vqx2Sya_m'),
('0da2e3b4fec9b8f8', 'f-2JGqGQT6mL8y3xRWQNWR:APA91bFm5tx6CEuAN37kjyuNnN1ps655eJul_hEb-3ZJRIMKbEBWS55--FfVMnMK44UGCGsKWwHS2xxtDC7rIRFFN5-J6iV9_atzL_ASz8m4yAQQQOwsJQSN-DFbjVQiV3j6GuiV7D2u'),
('0e83bb99fb0b9447', 'dpyq5uqZT7-jL_gFtaqSLA:APA91bHc833sel4AwSWuI6WEXV62m0EGirZX_RvvR2WGSNONDcXEJS_Mzu7lxFI4lBkgWoEwffBdeWq9sDS0ADIhtJdir9oC_tkaSurA_JWQC4gTyv79yZ_cQ31jEIF8MKZIbFKp0BDD'),
('144d029cb875b710', 'fjQMppWSR6KnQTucc94Yv5:APA91bEfY7T33Mq3KoC-gfoiXi2GXHaQ4w2Y6D27wL52x1wM2tmmuvyAPQC8zoTjDoGIGnvhQRu6S1qcQp7kSgdY9OR7R6lIIaJu_pbFt_gNS0E4Bx5ciitWVDRn92htt61FhnEqkJve'),
('159ab823c23a36ba', 'cEGB433rS6GlgpWzkPjxts:APA91bHr-yZTUz9pIJZiolx6pkN5qiW4B8mTjIqH0yKZcGP3C5gOK8s1VSNfWg02J4zOIBa2ulI3dNSk4cRBLw-ABxrY0NuI-FF_I9QpzfHjBhWPI_grdd0CGbQAlm0IMFYYoaxcFRkV'),
('190ccd890796abca', 'dfLWidV7Q82iP4FhA7QQbL:APA91bEFLte2W8HV4xlbw2OT8V9eUlk6X5geyqVfOBq4JWB741vl2e_KXqVpmT9e__A62gqKrpMMkzZtsxm2QawVO_9nd855bk2nwuOTCEq3L2wOAIEoldNyIZBa7qmGuLeN0A1ijze4'),
('237bd16e7c873cb9', 'cPQaNa-9SAqKRNorMbyLJX:APA91bEUuZljWBbBcPzAy50KlnDxepTOKXOTviyS7grtH9apBDgG7SjzhZ2JjfR8jFleqIoGLdHtAXsaWWSAuDQzRUnl5mg-MmnyLjDZAnnfhY-VXT5fC00Y2e5zvCXOdhDKuj9YwCJZ'),
('262bc10e7b61d9ef', 'dQYYlRTCR3anC2nrrFloWz:APA91bEbFSVbdSpp-7yNcbNxmikCwhvYtTO7XBRUm0Hhvx4scM2rAUUTaBoBSoA3F1uqN3LcfZ-CMYhznP0XKzrw4E-tOcpQLDUNyAVS8p2a4-r-XwjTG3BbVwzoYz-wDWYc4p7GQ1fV'),
('26c83df12f443e46', 'eQbg7oQ4TGe6n0cyCMt2bX:APA91bHoHKxFm5JdYlJK-AW7Xps9MmJwsJ3kQfrWLq2FjTkXC7Ee8IKtSOnr1fbQAgmT79kE-wtIFBYyhV3TZ5pUbBu1LhGeGQqt-BooB-WRGnFV8vytLkkLtexEZan6VEFlbGHhwB5W'),
('283abb04feadc2b0', 'fuLWh1HBREafrfLROnnI8a:APA91bEVJBV6mZuYxtnIVu9tskGA9tJf5DHHoartT66epaVHxjhjb5LYwD0z5uiZbjHA_F_2StqV539CCw5bG6yDXKJ4LTRJTY0CCHfuHAksLh0hWAW4uwp-6ubVEJXwkplHDNQzMXPF'),
('28e14344cb03f40f', 'dK8kueuSQn-qiQnKPe7Vb5:APA91bEQ45TtWq_ZsEWM9_z19C9_OWJBx_oNmpA1dlyIjudlVb-ZTy2GB73i9yM5nng-2Ec_F9XU7YN6oiI4EDvgoj-eEPrRlntXKH6DivLKFbUiSEdNyGT5FLZ4WKhaK3NTA0W2AVGC'),
('29f65179d286940b', 'eQAojxEDR96PAlm3-BzpwQ:APA91bFu3nKhqFXtqQ3RZEs6GxdqglwEUIinqBGYCn3HgYocSHFjhp9_rBt9GzlslJHJXJ-OLsCnBmaAjyEgRFIKLzBVLfpW2pPp2qYGow2RRD92FFQIPSbxgKAm3q9mgjq7AzBarljB'),
('2a267bd4a43613d8', 'etGQcVbsSt22qijJ4jBu30:APA91bFGVsZLRmsj-lQ9aE4IGrt2K8eSXyVY0R4HKBJ_XArS8yNIQ0x1GPMxU0lvIubwow_NYvTHtbzYmE3FBmWsnYSXJpZ7CzcqZ7beIi2Q_Ty6Rtsxa3BJTe5LgaViKgbV5eOWkdXY'),
('31f45239c8cc4a0f', 'ejN5affATeO9AaYbN33wVY:APA91bGtzptEaIcYPZ_1uc-n2QNH0b51e1hVWajvrUJAK50-wvq96IqIkInAVGsFPP-2PVuU-nDWfCjesOzpKmNUnI3qtpVyaoXT2OQoiGfzbJ-w9iEJbxhtlXFHhatJihBs-scpruw7'),
('32717d55ed861337', 'cFNbC2sOSfO2fCC7wiMxln:APA91bE4RvidxTwBaThljG2WapMAsfXV8Nr-s-Sil8nfNZf9bw0G2VYBAm5JHPoxK0TNhbqsKWAXdYSRB0Ho0zQN-IA7lGGMrqaTsM7QBPOqLLi0eRbVWagcfO_FjW8kNvfpM1q2wCvo'),
('328aeccfdbf34c5b', 'cBoJXQxXQQ-k6t-iX_NDn0:APA91bHNxCUHOVAVvYByCCMCR95zsUGBNkrnL16o5BtRhGOkQdDOeZpvYuNUyZLAzPuqqL-_gf2Mt6ceNUTOK23eW9nPEdIu0k6I0kbef2DfYMOolGmCcytOv2dqYXn5wH92yqTl4MGt'),
('332b3c75d2b137f4', 'c1xTEYUmTSGmZ33D29fwYT:APA91bGQLG9_BRUz2Lz0D2B4mNFUHcIj90mvv_jPCU6jMZFypuujiE3C9AIXYPgNexPfOki2N1XkmbNm_rIeMorM9K4z9Q9qAyffo6JINaOorZQit4d9RG7tinoEvPSqFe07TwEiu6aZ'),
('33bac0b7969d9b45', 'c5baYxpOQqqcFrEWPOA3Dv:APA91bH4ZuF-rAnPoPd93cc7rNkHweJwEjlFGceElJyD4vyZB_fa6X4uyANrMt4iIwNmD-oLorL5JjXPYz8z6mY4lJ_fvvRxF83D1W2wjGeIwx2guElBtNRAZspRc5jx9MYUktrPKcJz'),
('33e0a11e62924543', 'd7lRbKC6Sdm5U_Vp8fV90D:APA91bExLPBGSxIiigdxMXqGJUsLtOsYr45tByEbboEGYjozc2Ba30nnha4pKl6VbcwqJEldwGHW9GT6VTpLUCUMp-OS2_2AH8zwyFvwNWOp5AjYQt6IPr64Ad6vOodobGSXz6OqX1TU'),
('37d4f4f595e744bd', 'f5tBevMWQme7w9KC5oBfVh:APA91bE607zafCUtpNvxnyop5KCvFVuZ3dShpUBiXItBE_y_sYTJVOoENQ3m3MSmBMQu5779RJImEuhR8jAuddq8f0eg5Q8ruvvNR9VVv8ndtN9U4n50_qRmxzUINSpmbKOMnAbTy3tT'),
('3815dc60effc2652', 'e9NT3aB8Q9euXSJPnPW-Wv:APA91bEhdGrdfrt0o2qZ2wLYZwqpEj4dhcW8uXl45pykhVIOYP3Bvq7I27QkLvcNsow8WtR2xVO9ZJNHT0tbBLgAI7XWAHDd1LxBBO3ZZbq5Oxgli0qEJUPs4LlFU7T-lDdjizvtGaDJ'),
('3a98f258a774f346', 'eE0fpgn9TZKtlG41bTqIID:APA91bGZC33FH9ILr-fjESuoXjjY4SDOLfizVIq4ptszxP2_m0ob-BGHqYRz_8RWhit6YOR95zkmXb3Mos1a1w6-r6e7oDz7puQMv98swnYLYuk__jX-XT7uCTwNl64G5OGIMFW8wU4e'),
('3bc73d5e3c7b13b7', 'chrXnm9ASgim5I9ndaFJ6o:APA91bHxO5AFsKzr1Ptm0SFlXrzMnDY9kjdYIOacf4Z2ELKFq0jWSBecIUwYQWnXQv11gzKGoySMsKLtA7kuTVz1je5hZVIgOYlhnH2S0csbFQ2FR2m1O0R5CvLAHN9C1lN8_eNpbmLf'),
('3c6823c97901cb47', 'czBFuPezT6allmQ79tj9rH:APA91bExs-YTYYww-fLPSQqoLj0MSHfpGdYjoKOaCrHVWUoZaSO26nlSg9iB7Xt1R7sT7PXUEWhzsicDkcZ42n3oZ4_dI9wyY42eIGAxunEgwA0IDSO0-37g0RTfaocr1DW1NDG7QF70'),
('3df75add0e8254d4', 'efGXd63BQnqJGmJEpGgNgl:APA91bHa_zVTAcZVeCbJCaO3NFNybERfr6vHHsdN7cOnc8mBthLv97stpJ7AoisITf-eM11sSi-Z1WsnE9tlyp7NsYhekKhGaTlSnh6agSiWMOozFE6m3uYsIZCir4HgBzNRDZ1xLvEJ'),
('3f7f00d9b7c26901', 'fTZI9zneQ6yaZWphwdW4gX:APA91bH3R07Ph8x4o3iCnjE6ka5RsPq54uSt-W0CqDT4abXTKnvpeoiymAleZhMeBCzGNEBtgmqlyeP5xO5bse5lmeWqj7lwuHJVX_VeVxD3HorNL6cIUFQuBHDjollyPyONGbrEJPsD'),
('3fb0c5cfca471b00', 'fssDkOUvRDGo0VcK5P2ugP:APA91bEG9NTyrATULUOfcTuTtbmuCY9PXGD70BP-ZyM6pL5HLcPMpi9dgGd5nyIqA5hSlB528nqanhnIyJJGe2A8JPA1ODQ8yNOxFL4f707Sc_GGYYiglNeTcXww7loiwn9YwjzqnlVl'),
('400f3052ac5cc2d3', 'f2hSz13rR_u2FwOc2Xt8pD:APA91bE3rD5ERHfqZjg1Za6vE5U8BvM1Nyi7gzgbb4q-8vORIfawT4rXj2-j23ZWaA9slJGPlrBVGr9FE9beiEdjzzXh2IqVt6D5HD0oJuh5XoMw4ko9sUW4rkqA0RbXF2ollzzu3elW'),
('45906471e00c0ce4', 'fLxzHDQoRVqPEw-o5E5pD8:APA91bGNQaIGeXZJYd7uMqSxdwLsg8LwCZ2ml_vJ4e4hk9f4H-O74yK4sKMb9MWgkW73knmVM4TNNFvhO24cz3nfPeI1gsbMDsSDZO_2BQcxSg3CXABNaJyh5LsTEUUzdYVxbnqb2ppH'),
('45ec9e001d21c849', 'c5Du9bxcQyaKCiCQKWVyhp:APA91bFnzubJBjciTnV2izWVBOVfW5EYx6NPOJ1axo_sYOSH_QyB_evwVhieGRVcimj0IB18dYVtiQijuNrh7JbG1hx2AZjBbH-CpQOA9W2RwQeDMgy_aKto8UGFcS892S5wWZh-PNAA'),
('473f6555d977aada', 'f0hMjagNR_qyvAz4uEYidN:APA91bHS9EN5e6CiQCfhZ2VJFoR5uVCvkF8iqnY9PbNG55r4N9FzD9LxBWfY-RKpRXzEdrhbBFd6yEUkP3mtoTlY0fJIBFVgQw7Uda9Fym24AwNxYcLqRQaZ3nuthIbuSxX9n9YmCKQd'),
('487e9991c92cdc20', 'cAnCp2FNQ8a02SzCdGGUop:APA91bF6T3OclZ4sYlMJSJ_aOcNvPq9JEVl8JSHLY4Db4gN3JNmW9_nGObrRohcBi9vIr13WjUHypgp5ve7SyEKHo0u8GGB1VTIucxAhKOShgElgmNDhuh4uUAVa8HZ85uxGGXGKk96Z'),
('488f104c19771b7f', 'eaedUn8rTVOAXXCWdezgN4:APA91bGP-sMqCij74kc5cUa-gUq3BQ43LbfNoEOdEdf2aSTiBxeaL5Xiiq9DjuU579whpyE8LlolaFOEBy_RaRqWO_OfHKTD0hzUkH0ZdntBIQp97rK4TzmVZUIXCQG6LsqbvjdRMcdW'),
('4a1c910e07d586f6', 'ftT9UU0fRdKELPHciZ2VcB:APA91bF-Skyy7NlOebg-hsM0mk7FgdzJje2mpFkX4MrJc0Ci_sOLMii6HuJliDsXeRidyvK376AIvbWFFjdDwxp7WXBUoPpDnS5GfW9EfFyMKY4Hf5lMGbaI4iQ56qlgTzZbnhIts3VO'),
('4ad630a71851e31e', 'e5344BQlRaaE8HwqqBem53:APA91bFru-7ogk1UJH96qy4Vufw71tp6-QTtrsZWsgdZHCOuZjmfQN7eqYtmb_EL4ioph4Ozo2dXNfleuBpdQvF5-CKTb9ldieU49o4FxItSizXH0KiA6z8pooAZMV_R3U67GQ-YoDeV'),
('4b5c27a7c817b017', 'fV8hUohKT8CVzNVdpvnJjr:APA91bGoKIEc-jxP9adtgGZx-hpJoxmE2PmYuQbcHm6zomLV1Gaogo9LaMlJPcu-WlfmNT6--FRNB95OiPlKAsBCyyHmEeL8pFiUTvLmda5JfQiMnKK9PxeFAJzKnRxwVE9noNjE9V3u'),
('4c0b97bda4c21a7', 'fRSSMWeERDqjgXBRU_IJlv:APA91bHZLvBCCxCI8rLcc2wayTzv3710jD7eW_hdnglIK8PmfyfU3O2FI03h9yClu39RF4sxms5YHKjvnaqaLNVAT1tDOP2lXOeyBTQUUhwYGddR0rxjgeMed-Pur8HYv5cSVb6TI5KW'),
('4d511320f67e6a27', 'eycIfCNV6fA:APA91bF3F-mnyr8hxvsZj9HHaESanVAo7sjcikAKS0USHl9oRIrEDb3PTM8l4dCHT1C79XHV8EY95C5eZw19crHoDAoCEupiDATQbTzabAAe-egRhDpVv7y7tH7EOvL5pneQdB4HAD68'),
('4ffb244e44db7f52', 'cUdw3pOoR8m9rFoypN_v8P:APA91bGc4U1ho-Zo18qlvVWcNhi8E1TVQ0pLjucGibwnJuv7DYq433vUf0ux2eoDQSOw2U3hhxHDwrUyRpTwWUxHZWNk_fzcXaXMReZufK0LOG8l6ACY-Db5ExUDbpiNpre7DX--mGXZ'),
('522457d5ffa12b6c', 'db99MhAjS26ZoVENKA4CEd:APA91bGANtyUQIBMlgqP0mlH-7-qs_oOiciO0wfsqxrA5sAjmpQHIP-sYSIsnaaKJSalzOxIyyUoSNMV1xsNrQ_gGl00bZPZtXEI0WFbMZRink-hjax7izxVwIEpwfQm8NnVlcfBSggT'),
('53778eb65a026640', 'fbAAodXOTwev4Dw4qi9IDI:APA91bGW7NMpTTY9V3E76aOx5uWuDwwSmxHQXlJR0zkq92xuwPvoqrZH6UCSMT194VoPB9Wtao7VDV1jUMermwVybHT_wGFFKtzf5WRU3ZyEAEcsV2hqPMGqodtAr2OiDeHO9Upx1gqW'),
('5720cd27a3dfb6f4', 'dDfjKV6JRrqPfvZsqCl9Aq:APA91bHGgHSZlbv1yvRfIXAwJ1CgbVp9HXFkkrajlcf9F61G3H01hpt-GwIZczyaKKOBMqKnEWd5_3BDX2Phbo3hsggn88aFcF1r79QfHiabBff2Bmn91d0Hy3lERThN4FfAhZEc8oh2'),
('5724661ef92c157b', 'eK6MokVQTw2VOGFnunz-CN:APA91bHGhLWR5zAAVf5m_t-UGFp1eGEFGtidUIznOBODSxSvWJ18xMR0wozx6jrjwmXax8kfc5bpq3FaPpKYBq1PXT2niS9N23fny9rTxnDM3PWiKH3WGnC1CG4mXTBU6HyyBEX9SpKf'),
('59ec4083ec7ab130', 'ch8X1K_8S5SD8BjU8Pkb26:APA91bGFymvsszjtinAEjRp5nFDkWHYq_rDHnuK7ssuzEnGrNka8DjNbeZuAPtqXyiW6NwjT2flVoc5VkLXpPSnA61U1P_-D3CGfH8l1VjAR0vqKVLwOTXW2N_6iOffUbFIcfaXXDNfE'),
('5a5723b62d3fb8ee', 'enWJvaAnSEKakbJX7AQRx4:APA91bF5qqqZHn9AOoZqeqLcfn5sRis0sXu1c5DWvP77rEDH5JouTyyj1lR_FglBLY1DUe6IMpPUhkLGhmWXtgAk3TXkosaM9Ewo-57VjQXVWCV4as4ubJifbpB7GBuYs9CMvFwlPNOe'),
('5cf03018c51c5a31', 'exsSGm0MSzyH0oOmSGoeQ2:APA91bHhKKRTLWVwGm2MtOuVo0uUATw3LI0xTEAzWfB5-0yJBymChcWKMSEQdfr1nUB1zl2m027Shygpbl8Vbw7oNL_92HCyEP0TGO_YnJqi1RatAaFJ2OMnYT_DddA-8v4WqkbHoMNN'),
('5ec52bdda64ab299', 'dd13I4ZAQkml69L_s5CTDn:APA91bEYIHR2utlevnrQsewiFBD-MLaJ3q0t73DqApqgBOy93EqaEETdnx1LnR-mCCLB9gMVi78c13TELrWppmuwhFNBXh_ADTeOlyD3VKuD_UYYJRNlqk9zvPLygnd3gf14lAwyNfjM'),
('61d39f63ca8b2179', 'd6kBTT7qTaOXU6e4Z6galu:APA91bHQP4ZvzvHPc0rDP-Q43JaZrl6VIaCjKaGCbhmkw2ED04mAKQr3EoLmJyNfa-jnVeJPe-Vm2om_mn8b1ZyFiIWR3lQAetqzVrQoJhOAT1Zrg0m3JL-EApdfziQzIM-U4OIXsCOt'),
('62bbab11d777c6d5', 'eyWK1UtlRsq_n_gimJEA-K:APA91bF4mccOS77X11kQ6HoAvSUu1RpKFsCiRwN744BmIj6de2HMSzC5AYSirQte_2ki0MH40wq-ZS2dbyz3iK8IigMYegIXe1qePmFg_5r7fotqTVDwOGHFKh1LsbMmb30OmEH_AcYz'),
('63a7739f943a927a', 'cbZUxz2GRcuZD-sLo8Fv4n:APA91bFV9ASg9gZq8dnoNemnT1RuRsWIcIcA39TjLgsBXa6yM61dsYrB7QHA9JymyllkMvf0Dp8Ep4Si26EeJU08aH_sGUswekziMC5-MkwyMc2HKoKSVDjgbcBJvaCbkMh0hOLg7tBA'),
('67b9476ba8562861', 'fHJ5h7tJQeSvt_EBmLw3oJ:APA91bGUhyTxV_KaTA_oPAcrOTERQCiB--Qa0Y_FBlRcAZFpLmOCWuv_5Ige6_8E-KeY0_YXishBqlJTRgR7AgSIHScXsZcGah0wMI7rBzV4oVKA6kCoNFgCvNqBfQU39t-97CKwV35r'),
('68d4d1c8d12a7730', 'cy9A5x17SYypha2RVInEVU:APA91bHNbz0EmtyGbnRsYze5xQ7UppsMQdOc6z0N6-5LlymOwzBYaBMnhH6s-NxPBMWlA-ZdjELeVYOaGdWlhvCFe_Mgv7LFsyOPMaOW_RlHUyVSSaO3mNlVhHhPRc0ZnqwvEgZWxU37'),
('697796eed52ed8ee', 'cIBwiZypQweMvrzSv6U8KW:APA91bF5ZNHlxsHAcVHlLt6hCUPc5aDxnN1-9Jn-rOByUja7RLh6gvHZnWaUEticYY1Att9-k1a2GzOqEGL1uSQy03iZjaDxDyJ9cgQ4vc5snPXIi27qwnbh9UW9d_Aybd3KFuxn1A_9'),
('7053be8dc066e7e4', 'eqqo3T_pTg6xfQaA5_yUKC:APA91bHCSgD8eek9Q6q7FLsZ5-8ZDzqMZArFJPJsSdEopMx9GpNtJljFDHkqDKQmwpOEaJqUZR8VTb4DNuI8zkrgo0xjDk6E2GMtY8JV5NGTeww3gkCBaJwdlgFbYWF_uYlbgf9QhV7C'),
('712f0ca0a43dc812', 'dU7ib9YBTkujhs-ty2Gm5K:APA91bF_ouKqmhlUoQo5AZmpxv501Ig_OC3yXGy70EEIZde1phL_9O-ZuG_N7gq583CgnfVhBJ8gkwZL01l-2qnUVbKIhXHNIPFgFeaG56p3coXUyR_DWG_VrlTVZL7sFlThLuhVQhXa'),
('77fa267b6db6509f', 'cUS-8LqaTSG5aaDTD5GMj0:APA91bGZ45EO-JpErmXDfR3ee8o37yPxGqosWXO6GIkHqg_npif1EquxCqW-YzhAwMDkCRpqJEQ3yXGncScB7a_HQXvy6rjwf2UxqsE_O_DMU1CH9wzXTk2gXGElXqG6X5DAuwvKSRjr'),
('794daf81500180fa', 'cxzQbx41T1OHT6j2_xj8eI:APA91bHrqGZrjJs4qVxKTwA9au16p9J2fieshxpPMyDwfLwx2qFddAehMgAO16L91q27IBlFI2yVmGmzjBZ4lxRCdErQCcPYcvdduOvfkpYl9UIPKJ0AbSyJhKp7JjPG3I1pVsfm4sER'),
('7c58c658955ef6c2', 'eY0IIh9FRwWQ7s-i73rhC2:APA91bGblZA3siLMZb0CHKr6T98mt_B4vf5sJupDso2cx14bGvPA4EtxL6i-8GjsKDmLHj2bGXSZne5X_v8kYEe-CHUQFTqElefRrYwArPk8vMv4kP1sO-tExYA1VUMQdYcZAi-BxRaP'),
('7c635e8327afa017', 'euxt4j-5Th6s5zbi8lKBev:APA91bEvxS3oj6r718KBqUd1nJ0MSzg9otigTFGqzU-yr7V9C4G9VPa3aYHMXGMXrmp8cZAs6d08d5D_ZsJnaR9nElqy-aanncS21yovQltnKebTiBdVh9TS-Qf_4102L5MJeUZSxnsP'),
('7c838be6217bea0c', 'cxbJjOs0SVmQUhm5G9xM4s:APA91bEd0LJggSI6FPCiET_bdUIEScERlBBrJMVbuQtcJszIPplNaL8hLXkSXvW3dNyFHb3-MURkhjKLFlK1oIrkwtmWGie2DopQjK3K05X81wNrU2BuZE8AwT0TXDALD6SlL-mA6rDS'),
('7ce75d41042461b0', 'eQ_1dzAxQlCZmYEpOwdzR8:APA91bHgWebyhP5p_GY2ZvK5XSmGa-aXfO8kuWTeXmFBkKcLl5gTzix80sL75gRQkiQr98oEhxf6vrqYlt6-_OstF1jQiYj6FnAOqHdFTc3vNcdtKemQXcyhvaCHhVRt2Xtm1RH93hJu'),
('7f2bedc5eaec3ea5', 'cHgpXXlfYcM:APA91bGTkNEoPQX146FtI-e_AmG3H8DoiEoovlGD67yb5RxESaGcLaewAWKqWslVMfNcYxaoV_AW8RlMi4CmGc6RAipfqn11kiIhE2PTpdbJEvGZiHiMlsGCpoTeEw2I4OglZkDBglm_'),
('80c732ffaaa80098', 'd0zoh5cnQOSnwk4Qigm9Zw:APA91bFZYZ0VJ5U480wbllAvpqXU5HQMxSqX5g9N2iDgJagWwGyiVHlKR28xYivIVeeGc5NKwvFRbE6miKHr6A64lLpGzWmCSMmfBgflZmjy6iTYCjbbNJTL3i8jp7STHtYzdGxUPuBh'),
('80f6a0d8f0effcab', 'e25JuHWKR2ayARSk8Bg_Xk:APA91bFqvfwNzCVDhwCjiMMQA8pVZGFpYLNMf0VcJQYV6hKtru77pEyGWRhVZ7ERXnTgFdMTbGLpnhVVflmHYaKrv4vivRGwrJjUYantyYriqXZ0E_j7MKhhisUnDTtgekC1nQ75shHM'),
('86f95dfd1ba1e020', 'eqp6wApnRbOqQQLBqesd-q:APA91bHtEybOiN_dIsLqEyGy--CLp39glCaZzFzGhbI87o3CPnkneGHD9ToJp2L7B5O8Q1oPHqiPudAfVZah2rNSwB8Uml8sEbwVdHABUa5uEJavasVnYY8AlkIXwRfQdskLdHGXOzTF'),
('877c23cdd826c0e2', 'evok1Kq5QECm8eIPs0_1hj:APA91bGugDTGWOINSRq2rr_GHM-XfJ6jWUqA23NIqcU3D1WPzTFxCx9juWrsCid2nxKwcOs5uGg2OpgPQj9XA74ZHTVsTYxJ459MP5jf7ecYw6VppRFX_q3S2cObt2wM1q-DtvocqjEp'),
('89c877807897cfe6', 'fxYl8IIdQIKkWmjdovAO71:APA91bEK21l2QUpRGFTKQiRV3P0dStvyuH0rNuv0ugarY8tjBpX0condRO2DDdZL6rHo1AaQkbDh4nIc4fZpODDEc-jyhtIMgWtmF7DyWcyR9iSzdort7KbhAsj9coEhP4ZHjcc6hvj1'),
('8fbd1c8286274278', 'fkrwJ_xbSuSMpTJCJi_ReT:APA91bGrK_iiISEfncsANpXKXbgm2HXuylkft6ksG_0KLD1YPD21Ufp33gjL6R8qgQGH8_9OtDsiCHmQFxP00aY8P4FcpEUqrZ6F6Dq7_2ucisL_GnxsWqW46XHcIGZVrSxo5xNZBoIz'),
('913722b73e4fd9b1', 'de7rIC2xRX63-XYRcXlBly:APA91bGjOuooRoY1w8Ix4khNQjUM-lFNWEzpDVe9Nnp6BNiCHZiW89xahSHPiNKo1Bg9JZAl2IEjAMWhMqD6kMPQJ_9zp7-SogS-lOtJuel1sW_7bqiOAW7v9LLhYLPqrLceMk5nnSUU'),
('93e8b74b11584ae9', 'd_LdDfEdTlKn1u9WXofhbG:APA91bGAOqI5jHfzauH-tFcZoagayUfWVM9t3ucAZ_BEkrgeZGW09DWxtAvHgzmJg3A342bZCSxkaayj09uOXqQBTSEHn4p1URA9NmsvHVb0NHVTx-zz2pbsA7cQhDX6meydaYakxdJn'),
('941a70342f455bc5', 'f3B2RoqqTQSzyJnVxvQnl4:APA91bGetPxJ1haxQjdI9Hg_y9raJPEncLxl4xJiF2TuRGeHN_3SZHVFdS9tvn8oe4LKkG--aySe6m-D23_4uF4gik8W-o78sednjxOsHCq-mFEIM9cFBJQ8EGqUieL9phLF_wVM3n31'),
('95bb8af43123130e', 'evSshTN1SgaLR9TsazHACS:APA91bGBPaDjh5cnYQuvqTpPGQ_JSvD3ARWr0-0higDCg6n7M5Nh6TkU-egmwPTTG5UhW4f3klkMnpm8O7xLnjFJBK_v1NUPbM7fnPQYFF2_HoZf5L42aypZacLMwMFqmMXd-cpQ0q83'),
('96ff8b2fb8edf554', 'fnStN6AESlu3hD0ly_9P20:APA91bHjgwD5v77ov3QkAtFUvK-1Po9z5H8y17OuOtaJwOoFIf_sImceDeLQTPxBKNeV10p8QqL4ZU8QED-IIocZ1YsUj1oowlpOh-fHYDh927u7qsYABb4JIlimso3z1qSfRzwqHVIf'),
('978435ca45fbe135', 'epoPxIzfQc6sI2kzWPSXrL:APA91bHlab3CD0ceHumJH1vzYzwaex8OaM6BzC-8vFLoW8w_Wef_a9vEl9SaXe3axyvMLQZPtDOGXxXbXsmvtMMyUK5UC4hS1E2Nr198AEiZJyZ-pzvhzkyGkTfd8hP9kZ5sU00ikn3j'),
('9feb1138796e5831', 'dxYwXAhATsCWxU1JwQiVXK:APA91bFhpN6G0ivDPo_Cp4wOHYlO94TySipG7L2WgjbwfjoWhJFSR_JVEZoMjmZgPxEYJPulooum-Skuivi_eUF22DmTtr6K77Wo1Nycx4zLUaW1yKmAjwg24u-S2Und-0rIk5uxc8Yk'),
('a129deee02c0a506', 'frKwVO-DRKSEDgFxDGg8_7:APA91bFWR9Qvmt8EP-1dbuFXZK87uN4V-g-C4h-c87T6Mk5ZLNNVeSWmFl1-oGsXzEDNpAoRVhrozICmSMr9kuXD-7ytC3LWrmLFeo5zCQSzswBWL-r7J55abHDS0DkdEeNPShsE-APP'),
('a4df0f2cba8cc770', 'dD6oY2X9RsORFYi6MIIARQ:APA91bECE3xkm2AM-TuYM84C1NNnATWlT_6cNbc7DakA6Km2vtNp0w7Jhj71baO_HBC44PtokWVq7a1xMtFcG3gUixyP8cw7P039lf8jXXrFGT_GUQsJ0cRn2ZfYUR9ykCoXvQP79hiI'),
('a630bcceef846030', 'eYMmpPzbQleCHfV-8_Rhde:APA91bE9rWPHCQz9eRWW033yW1UUQkhQhGx2-9Lnjz8wmPhXMiGoqGLvCXAvC-uKUvpJT-cn174Yh-EAFrGTKZKb1iFXhHD4EuTE_jycc4Cv5IU0wHMSA1nPJRsBvx-f0EYZqz_hspEA'),
('a9ed6e0c8bdc576b', 'cqvagtQyQ5KFMh2dVv3o7s:APA91bFEMgPxRBl574kYZ-XIpTr8nNXelw3IyLv4vMDfAzn3wSfXQx7U7srMKL9vPuK6gdQ5qrbcpTg1KG90122Dkl7ux1ILOcDdI7szS2n6SIIz31WPWBOS7UvhRQ1ygD9BvWHTMLpw'),
('ab7508b040d3879f', 'fh-Ol4xcRuKsrVYfMez3Ri:APA91bHYr-vNaD_P_sO2Nh1PLqT9H6hiL1ApfwyV2RQqid7YQupUZGFwaP7QTnzTRvRuuQgN6VvrmzOozIlgS5Q1q_gSx_6VlRQjsFCW0yscbRQIthyq-j0gudMFystAxcCUH9Jdrwf-'),
('acb109c708b2ed1a', 'dWmKsZuZRQ6zYZ9w5AtKWs:APA91bGd2BUihF0mUm3mvuzaD6aDyekowByvzuCO6RXKEADPOzGyed6BoNopHsIyv-GMkCJ0caD1Dq1Ya0J-SXYXUzLJJncLPjvI26zcGHLXEuVewzYtUKfSz_mwqQRffMm1DQGswyoz'),
('ad690a4e6389f114', 'dlkG6fiFSXyp80LE5phNWX:APA91bFXvXLv5QNHvZ3QbLc_TDcagOgfO4RGMOML2kCli43aFM-zl5fW5go1Pk_RQmz9QOdX1z5p-R3Q7_rvMkCR06O5eDhL_uRmuqmalV1KiGZfuB4-z5Z8qewS6NZB7QTsLVHKFFGe'),
('aebd60f4df8aa427', 'eYeQySqDQhmUvuGHeK3lkA:APA91bGo8_gPm7UMD6FWsRk0zW6MqvGxK4VXO1gf_dzVYcEpHav_GdxismjI_zbQQUpNW6EBfcDQPIQce90OXTEuTQMK7EJ8dynzYDBcIUaz2BW8L4fj20wGC5O9H0IM5x20Optol4fd'),
('af8f95b0c262874a', 'dL2r80gXQya_GLMsN7znV1:APA91bFuhLfpMGhU5bBiHMIV47QDqIlOurmlNgtVPTeb6PZsudnqsEyqTyJdVKPKyhaOIJfPxk8OCJgvd-jBz2S0G2h0fg3LBjX2Ek-ME-hm2YOG_CySoJdk-s1jQa1zLv30zJHv6BfA'),
('b00db64325711626', 'drtAD-9RTm-PUUSqr4DU8v:APA91bH2FBP9KEVvYwaTqYqo5sygIiIs6OzJnidNm2hUTpb6hXOkjq9ezlYjVJuFAnpSS2RHFcaXmKquDWYhREvUYKmqI4aFfwqMKCalf2x5g4CQnuvrjyvEvzHNqFJIwhnUosx6A4-3'),
('b1b606f3b77129a2', 'eujvcEJRR-efklxDS8Udcd:APA91bGt3v7EUczZNXYMfOUIhT-qvK623QqqITZcfL26YJQ3QBgESS5ZNqsLNAEOertVNFId7ucefKLBJpIIte65Bb82bOEvrbNwGYRPyfu3Mh6SwrrvUA9zsFckkecA1r31bKLTXcwy'),
('b34df9b893a69580', 'cZ4vjIOLS8SCTFMbkNjohd:APA91bHauJGbnytSIxhX55_oKMSaY5UqI1GbqL4Mex44YRsFpp-JolkmJMyB06ycx9Go2m82NEwerDAIFK6uDhPfIQvubr6Yb07jk2SlVatvgApfZcjjw0BKjkx1zmsgp01LfdyS3VaH'),
('b3b6c4301a63480f', 'f6zo9zUXRiWKebXuWu-9jq:APA91bHfKumUZT4W7qnhbsWaiXHq6jewaY1mZQ5jyeS4Hrf1h3t54Q6tQwF5dXbIvWbOslNIHBOJ3oZPeiGYH3JK7K8KeKafOTSDyAGUfWu-tc04P1IZBZOokmQwWr6sDdR0P7_ryROd'),
('ba110e1dfde04a7f', 'e3Sd6Nc1Sa2GMg1CDo62XI:APA91bG5mmcMqryGZkErVCxU83mB5yhT6A1fTE_0rqHriuSdKtF286AeMQMmlOhbWvYXaott6P779n1-1vjalYG9oeCrPCYoE9yZt5HlXrhwPy62LqPxEIU9--v_vRGHfgkSdekcSLCw'),
('bb522a78064d7bb', 'fABWWfm_RJ-DydCNBglNbm:APA91bGQCFYNJrBWh8ewKOCIqZiEczQ5HC-BFEfkBQ7eJABFdqDzhwXw2vnIvsVN8V2bENasHNk4-6irJNhiy7_sWUsceneO-gIzGvagOhlYQUrp2RDijBPmSvUci7nXf0ey_1RlHgPy'),
('bbf0dea39fb03978', 'eMQDfC4cQmqPKdf-YM0eai:APA91bH1heVeMjlzFTjpawfpX1yNWM77HMDgH77uQITG_jhsDDZPoss9vPsZSx9OWI5SSm1tuossyw478Xu5veXv82Xb53nY8i-tkqA5ciLBoPPZbbz0KhA7AGsviO8wJRLHYn9X04s9'),
('bc142b69130ec433', 'dZdul-0nReyl45vlIHppxG:APA91bHeAaMimVUsIU86OQPtInjwERNssAW6EavG-s01qhe3s_IR8y5QPipau07i0avS7bOwdlk-_tXZHg6cjCO068HIogTs65gk1HWVHiTFr2iYheqgY6VNblUFynjzSSYN6fdugN7x'),
('c2949ed782e459f0', 'fAxgKwrlQI-oerjWH51rY5:APA91bEQ9EDoGPJBQ-ycxrBca05ZozkIN092e9xKoLswFqBf3HGPPrFCKA44gz4bG4t66wBQvNn3C1vkIYAH4LbybebrhRuaimW688ujI0kKOSNc5iz-sqLwEbAIiktbwixgG5ehvDhu'),
('c442b908447ba35a', 'fKyiV0mEQGS2IuF5xD6iWx:APA91bGtyDFEJ9TzD5QOMeZovS97HKvab6glSc5UyPh9pNe9LXsWxUZCSqJW8jDObHM4SzKUker-AZocjmQps44cm1GrU_lQ8BZv_8OTDyLQaVujVgqT3ZyuFpgzO1GHJwjBx0EjvyBZ'),
('ca89afa9d7cb93df', 'epCTR54kSKyPqsOiFawQk0:APA91bHZW-K466-xt4MnvtZ13jyfzRavTrjGfjYIiwz23_FELr-TTMNPCTDAWpVJHk2tP018LVhzVQkPY0RuhRWF1Ejd4LtOvXE1n25Y78pMkO_fq0MJBQ-BIY2Thd6noMdfjyRLGXEb'),
('cc4dfb73bcfd4bf4', 'e08iw8fwR46YKB56EGpKyQ:APA91bFddkk66wADozeBnW8mnFBr3j4xSGlzylErMD2twkFAc3ZI-XCOguzwUos2idI45M3_9Dnavt9jRzTbUTH7UbkS6kY6SAO2XYUS7WYAMAVYxQOZBKnPjWC-J3CFh9oW4x6Y-C_m'),
('cfe45eef537aed45', 'duBpBv4RSOGOUIMB2FntoR:APA91bHdn2HS6vPgB55YFr_9ZMnv5A9JK_QU6aFhQY9fsYluY-TWcTPX_G3nJw4ZCuzpo_PUu0hr8AJ494kxMLfp3a-p1s6Rm_-vXReVJBa9hLw8aYqLbr-V5HmBr3OA8gnt4rkz_orP'),
('d2b319e219e69125', 'dA6psdHAQjKiYBXOuU5ZZz:APA91bFDreUMWNcl07OX3lmbpMeQx96r73_Y7FKl0AARFouTnkPihcaytqf94epfBZat3OohghRa_JzP_vb5UMHC9LyPe_7ARX0oIVKwqUhEAhYbvF93FwZQhpBu63YIxAQg_ax9yb_a'),
('d35daf092ca8a845', 'cAyDB6HjQ-i3jB04YucjR_:APA91bEbePUwcrsA1_xhpe6Al56KscR60l2m3ZDIiyGzsZ9SzNTsXiMtnKkTmDBu1EFPsGngIeL_YbrfXfCR_S4kdH0JFyeHrzotgCPn2V2H_6Mi5_fkA9pbbhkFI3tvM0LNyPaXqLK1'),
('d60c8fac0644b369', 'fC7H5Ls_T-e3GXMtnbzTFp:APA91bGN47eAchqyCWs8WSeZkYYeosPEkx67kksScXVvAV-FAj3pzlUM-fRXjnxtOlOiMazAEmhhUbBXcYdKul1r9AJ-hQlaz2VAfBF6OaQV_HwqHX5eMNGif6TX9tbd_Z1vhiMcrib7'),
('da47a9d024a91fce', 'cd8JX38fQMyxr493PzTHxm:APA91bHbCOd6ax121Bu9ktDl3JjSg7sODA4Yaek7ebvLpbA5Mhj2znHsRNtGmfOW1Bn17XSuC8XjyPgG1hynKPmnHDpG1BRppivPnc9gtxdBJ-oS8mTR37nF_9cE0XdPdH9l3hUZtrqn'),
('de38819f9d5b7a3c', 'esG-xvPGQtCrsPK5b4_GH7:APA91bGEBZRTdabynK2CL7HtBlsDjKPDOu3JE9T9kAqlnnLWqIIfYi-mYXWuDWLK7lxdZ1whzXbkLKeOo9jrRrheiKMvfR9lv1PnZw1ZW5sHFrVM1nf4iIXQeEd5M54TVgn38mC9HxsR'),
('dfbda24dc19372d', 'diia_wF3SLSlghzj3TYYPM:APA91bF7Val7u36rPi9dLCKku0frW48mWR19N0lR9X46IpxNjJSf6i8O-I5l7mlBbfZJc_oBt9EpMTkTcFU3hfxpBtcHA5nTvgJav1Xa7h480V9PaV64dGZ0GrWETbUsVgiGNvz7hqW6'),
('e7d9267aaebd6a8f', 'cdxSMG2eSyqq-RUxf4LDne:APA91bGpQb5cUljgrvt2WwSYym-OoHnmHP8IJdyHWCwGruBGqqm2YVvr0kRwr_7-srfoKyuIN6YTjRokja3ZZNMBdVmo3Xs2uDaLC7lqS1wfuB9-Oy8PM5nSMlONbPrN89jaz4TABdhE'),
('e7f3771677127912', 'c5G23ayIR2aQa26kMe4Bmx:APA91bEjmnbH7brHkuqav7jHiCotZXyAtZyogflXkaoYNMKJibEOnnLwwJ1lflnT9g48LJlhOcXxxqVg1iEmPB7uxTzRRlCpbSPqit2IK_HBHomiFJKpiCVFQ9QkAB6OwVqxtXHZhcDh'),
('e81a627ac729fbd4', 'dN_cwy2bQaC11gS-D6zIMN:APA91bG_5tHZInrxogwBgpiqaInx-YaIUn5zsaeX_Shsfk3mNJIR4YihOQeXDIjFkptMBq4PwKh6ZzmRmUXYbXMtCYOfip8piF_kRiHg-_y24l7CUc5a8CjQ3bOzbiQloTZHGrqNyP3-'),
('e83e5dabfc816275', 'fbKsNjvTQ3uyfhn3q57Ett:APA91bG0zawdNxogC42Gne89Evx9MiT08RnleDjJ_oA0cajo_crGgnopUtkSV2CqHIk1OUKsKRv_OzhEHIQg_0jEUlG2xCnG3wvlPngTN0PU3ZjKGgUwEyp6_rGcZOxbKyVcND0uQWOz'),
('e9cf6767f82c09b3', 'fmV5CnrGRAesdx01jfKqj2:APA91bHbLsm-GdzqB0TG8GexcPVIJZiZn9m_vsiqW9Dt1FyorbclklZ3SehFstUdiFyF98zdJ-recfsLG4IkvSM-nfIybbp15FsJdizd6mfTlDqZspv9-FabAYVkRjZKDwxww3klp8Y8'),
('ed0647528e074354', 'ct7HolnWTZuon6q_20r1GA:APA91bF0DML17rTvRlV7MZGr9oyEb076Zk8IYBs6DCLTCOIGMq40qpT6dPe1qEXnuUg-Ln9EBd7XRGtvnO4gVZiMUbjTzhPueYf0UqLdtU15-asCfNYlX8MxUwUV1zyK43tAjF2kIoyn'),
('edb90d73cbb251be', 'eFrZbUrPQpajJIn-hgkh57:APA91bHnvPeQSHMJRrX0ZphVBSVIR0CGqDtVWJLw9E-04ogn4x6lEY9-rEJdI7Q_r1At-xTus3eHLAqONPsHzrH4Xc1NpIBM9zvEn9GyET3uN9Ko59u3SHod_AjjAdmDBdD2oOI5OeRU'),
('ef1706e7ee32635d', 'dX48L0jkTkiWzEF3NxwNiH:APA91bHJFrcynFedTrtS4IJyuOhX6_vY6SFYN1hnEAik8NkWWX426nTeN42F5SIWaw5TizugjjhWG3MJtN8zlb1dob_Kko3ExmrNKyWiSInFUUY9krXcjUm1As4wnb-b3FhTWG8Kf3Ti'),
('efefbebe33196d16', 'dnuoNucLTqCUqiBk_r3dK7:APA91bGTfcDJhnNJKeWTflfR80MiUsBr2MAYl_-dM5uuT7CbsN9i6rLsuZBGz3flcZvZeVsz2UvuS_i15edbfb8WiOrrOVFoHlf-M4MfixBOQ8P4-NgSgaf1ZJRdLnTg7h-VMr2fGgPv'),
('f085991520c7e576', 'c0c2k0lpR4SMteEtqMxzo4:APA91bHPG5sPUS1srubSAXOK4SWt8VLP2oBndq3Igwoli481Bz3ILZkSvXHp7PUS9gwu5tsUAIUpRGC7OmE_5404NMZJNeGRnIchR1yt7wsMkeZHirQ0CpCBTuzsiWXIB9__cZ6tkQ0w'),
('f3effd5285c52419', 'dFtSb6SSQBaJgYhiF2bao4:APA91bG9MwwAY3ijYXmm9WASX8FctzqxwpTPWFb9V3izfwPR8mHYmfNgZPv4GZj_pknUj2k-nhUpAUOVWIHtKe1GSu_FUeL3ImD7w1LWHZGHUQDZY_NVlGn1X4dDU_lsbIqVugswgnT6'),
('f7bd69fc0809ad15', 'enskm7syTQ2wGvjT32ZzXz:APA91bEqR_fQPmkWXu-gMsWfvfxrvIzyAciGBqq2skFmGvYEbIx4sD_HCi_EvZ-FW-p8GAXuq_9mgdDT2bxPRT-LOS0kea8dZhgPUghdl6iUEDxJwyi-amhOGuVTStUI7jG0src_1XLW'),
('f92b63d6094a58b9', 'cg5xyDw3TkGydhI-4BFQeq:APA91bHF2n_3kkM0bH4EngJ7lptp2zFao8KgQ0sA0X_pwpbC6k6mMI6Lbe0JtJqKsZKKFIuQ8b5ZgLFx5ggkD5p2niAcIenInpDY7Tqye35Rq3qhlFfDqmMaiYv7vJrC52tcBpihFTa5'),
('fbc84bebdeb726cb', 'fnfRkPfIQmu-FZz13ZbhOl:APA91bESmLpqynY5ASuceYpKIvIiIqETAL48yzAdgB1XCLBvPBiR57NBkxRDAmyq62i0mX81E31YUfzx2-hjO82zH6G_ZGFTLGHV3NW5rCXYg8bM0Zz_ndx9dqRKnCu1gosmuuboS47f'),
('fddfc1bf410fa73', 'eObjoCLeQO-GvonInPq8g4:APA91bFs-wP1eA4WpV0oJzvcfJXmBD0UOmqgPJl7xfTQ8AvWGQgddzdP1hXxrlUI_2igugylVMt5hP_AzjmlS4Pql_5jMIhj98mOw8WIDUz4onbXPUHRN1Jv1QI14vW_oVYGRuw5gO55'),
('fe0c9ca904c49b97', 'fEqT08RBSaCzNz6WtuNuYV:APA91bHKzxwTQ5csJ1Z1MpENjUTHQJS3yGhhGISzj_jPGkln8m1Fgt1v221rKZ4ueEj6Tnkbb1y6ljRglaqbts4vm9jyaLUZVqOWO9nVQz4QLNwkO7nRUKKSmUrZiMMtA4ZtJe5Lkcao'),
('fe0e9996d093699a', 'f0cpyIa8QCeWhdUM2XUVGp:APA91bGqK4j8e79KutRrNmPFsJz_cknMc2pzjahj3KvEkqBe_NzDkfSRA8dGGE1DSOfl3WHnFw_iQZYRYKy-vd5ExVz86nMRIAzBq5Ja9Qvwzdcxddj9RE5TxL8Lz6c-IeUYpHYyDi6B');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `quality` varchar(200) NOT NULL,
  `language` varchar(200) NOT NULL,
  `channel` varchar(200) NOT NULL,
  `category` varchar(200) NOT NULL,
  `img_link` text NOT NULL,
  `d_link` text NOT NULL,
  `date` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `title`, `description`, `quality`, `language`, `channel`, `category`, `img_link`, `d_link`, `date`) VALUES
(1, 'iSmart Shankar full movie (2020)', 'Movie Stars - Ram Pothineni, Nidhi Agerwal, Nabha Natesh', '720p', 'Hindi,Telugu', 'Goldmines Telefilms', 'SOUTH MOVIES', 'https://megaplay.in/admin/images/movies/1.png', 'https://www.youtube.com/watch?v=Gtx1pPeKJsA', '29-02-2020'),
(2, 'High Rated Gabru Official Song', 'Singer - Guru RandhawaLabel - T-Series', '1080p', 'Punjabi', 'T-Series', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/2.png', 'https://www.youtube.com/watch?v=hjWf8A0YNSE', '29-02-2020'),
(3, 'Mere Liye Tum Kaafi Ho Audio', 'Singer - Shubh Mangal Zyada Saavdhan | Ayushman Khurana,Jeetu | Tanishk - Vayu', '1080p', 'Hindi', 'T-Series', 'HINDI MUSIC', 'https://megaplay.in/admin/images/movies/3.png', 'https://www.youtube.com/watch?v=ZLe5ECcpU4s', '29-02-2020'),
(4, 'Malang (Title Track)', 'Singers & Stars - Aditya Roy Kapur, Disha Patani, Anil K, Kunal K | Ved S | Mohit S', '1080p', 'Hindi', 'T-Series', 'HINDI MUSIC', 'https://megaplay.in/admin/images/movies/4.png', 'https://www.youtube.com/watch?v=KBIq11mNB0I', '29-02-2020'),
(5, 'Saroor (Full Video)', 'Singer & Stars - Ammy Virk | Sargun Mehta | Binnu Dhillon.', '1080p', 'Punjabi', 'Speed Records', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/5.png', 'https://www.youtube.com/watch?v=LRTN3ejKdAI', '29-02-2020'),
(6, 'Subaah Jatt Da :  Amrit Maan Ft Gurlej Akhtar', 'Subaah Jatt Da (Official Video) Amrit Maan Ft Gurlej Akhtar | Gur Sidhu | Latest Punjabi Songs 2020', '1080p', 'Punjabi', 'Bamb Beats', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/6.png', 'https://youtu.be/9PuKaoPfH5k', '29-02-2020'),
(15, 'Collar Bone :  Amrit Maan ft Himanshi Khurana ', 'Collar Bone (Full Video) Amrit Maan ft Himanshi Khurana | Tru Makers | Latest Punjabi Song 2018', '1080p', 'Punjabi', 'Bamb Beats', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/15.png', 'https://youtu.be/cwFUSXZ0uxs', '29-02-2020'),
(16, 'Moviestar - Simran Dhillon ft Amrit Maan', 'Moviestar - Simran Dhillon ft Amrit Maan | Latest Punjabi Song 2018', '1080p', 'Punjabi', 'Bamb Beats', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/16.png', 'https://youtu.be/zjfiRy1MNog', '29-02-2020'),
(17, 'Difference | Amrit Maan ft Sonia Maan ', 'Difference | Amrit Maan ft Sonia Maan | Latest Punjabi Songs 2018 | Bamb Beats', '1080p', 'Punjabi', 'Bamb Beats', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/17.png', 'https://youtu.be/vg0ZfeszGrU', '29-02-2020'),
(18, 'Trending Nakhra :  Amrit Maan ft. Ginni Kapoor', 'Trending Nakhra (Full Video) | Amrit Maan ft. Ginni Kapoor | Intense || Latest Songs 2018', '1080p', 'Punjabi', 'Bamb Beats', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/18.png', 'https://youtu.be/nqzIQh2D_Es', '29-02-2020'),
(19, 'Nit Nit :  Jasleen Royal ', 'Nit Nit (Full Song) | Jasleen Royal | New Punjabi Song 2020 | White Hill Music', '1080p', 'Punjabi', 'Bamb Beats', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/19.png', 'https://youtu.be/7YbfDiCC-qk', '29-02-2020'),
(20, 'PHULKARI : Baani Sandhu ft Dilpreet Dhillon', 'PHULKARI (Official Video) Baani Sandhu ft Dilpreet Dhillon, Western Penduz | New Punjabi Song 2020', '1080p', 'Punjabi', 'Bamb Beats', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/20.png', 'https://youtu.be/3axp5Yjmf9A', '29-02-2020'),
(21, 'Aida Hi Sohni : Rohanpreet Singh ft. Mahira Sharma', 'Aida Hi Sohni (Full Song) | Rohanpreet Singh ft. Mahira Sharma | New Song 2020 | White Hill Music', '1080p', 'Punjabi', 'Bamb Beats', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/21.png', 'https://youtu.be/jI8_2ykKIM8', '29-02-2020'),
(22, 'R NAIT : Galat Bande', 'R NAIT : Galat Bande (Official Song) | G Skillz | New Punjabi Song 2020 | White Hill Music', '1080p', 'Punjabi', 'Bamb Beats', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/22.png', 'https://youtu.be/1GwBa7iiiro', '29-02-2020'),
(23, 'SHOPPING  - Maninder Buttar', 'SHOPPING Punjabi Song - Maninder Buttar | New Punjabi Song 2020 | Latest Punjabi Love Songs', '1080p', 'Punjabi', 'Bamb Beats', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/23.png', 'https://youtu.be/KdzqY-FZi10', '29-02-2020'),
(24, 'Shut Your Mouth : Singga', 'Shut Your Mouth (Full Song) Singga | The Kidd | New Punjabi Song 2020 | White Hill Music', '1080p', 'Punjabi', 'Bamb Beats', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/24.png', 'https://youtu.be/8MMlHgf1M0A', '29-02-2020'),
(26, 'Chandigarh Amritsar chandigarh // 2019', 'Director: Karaan Guliani (as Karaan Gulian)Stars: Dilpreet Dhillon, Gippy Grewal, Sargun Mehta ', '480p', 'Punjabi', 'Others', 'PUNJABI MOVIES', 'https://megaplay.in/admin/images/movies/26.png', 'https://youtu.be/kpKXFPTLQzI', '29-02-2020'),
(27, 'Bhajjo Veero Ve || 2019', 'Bhajjo Veero Ve (Full Movie) | Amberdeep Singh | Simi Chahal | Rhythm Boyz', '1080p', 'Punjabi', 'Rhythm Boyz', 'PUNJABI MOVIES', 'https://megaplay.in/admin/images/movies/27.png', 'https://youtu.be/Bur31Ybqdco', '29-02-2020'),
(28, 'Ashke || 2018', 'Ashke Full Movie (HD) | Amrinder Gill | Sanjeeda Shaikh | Rhythm Boyz', '1080p', 'Punjabi', 'Rhythm Boyz', 'PUNJABI MOVIES', 'https://megaplay.in/admin/images/movies/28.png', 'https://youtu.be/ZEeQ7XpBPUQ', '29-02-2020'),
(29, 'Love Punjab || 2018', 'Love Punjab Full Movie (HD) | Amrinder Gill | Sargun Mehta | Superhit Punjabi Movies', '1080p', 'Punjabi', 'Rhythm Boyz', 'PUNJABI MOVIES', 'https://megaplay.in/admin/images/movies/29.png', 'https://youtu.be/V828p_HJcGc', '29-02-2020'),
(30, 'Daana Paani || 2018', 'Daana Paani Full Movie (HD) | Jimmy Sheirgill | Simi Chahal | Superhit Punjabi Movies', '1080p', 'Punjabi', 'Rhythm Boyz', 'PUNJABI MOVIES', 'https://megaplay.in/admin/images/movies/30.png', 'https://youtu.be/wbZBZtDa3Ik', '29-02-2020'),
(31, 'Angrej || 2015', 'Angrej Full Movie (HD) | Amrinder Gill | Aditi Sharma | Sargun Mehta|Superhit Punjabi Movies', '1080p', 'Punjabi', 'Rhythm Boyz', 'PUNJABI MOVIES', 'https://megaplay.in/admin/images/movies/31.png', 'https://youtu.be/A2vcDRAdf5I', '29-02-2020'),
(32, 'Golak Bugni Bank Te Batua || 2018', 'Golak Bugni Bank Te Batua Full Movie (HD) | Harish Verma | Simi Chahal | Superhit Punjabi Movies', '1080p', 'Punjabi', 'Rhythm Boyz', 'PUNJABI MOVIES', 'https://megaplay.in/admin/images/movies/32.png', 'https://youtu.be/l7E0kTvARsA', '29-02-2020'),
(33, 'BAMBUKAT 2016', 'Ammy Virk and Binnu Dhillon Latest Punjabi Movies BAMBUKAT 2018', '1080p', 'Punjabi', 'Others', 'PUNJABI MOVIES', 'https://megaplay.in/admin/images/movies/33.png', 'https://youtu.be/ub_U3mkfV8A', '29-02-2020'),
(34, 'Surkhi Bindi || 2019', 'Surkhi Bindi full movie // new punjabi movies 2019 gurnam bhullar ', '1080p', 'Punjabi', 'Others', 'PUNJABI MOVIES', 'https://megaplay.in/admin/images/movies/34.png', 'https://youtu.be/Ah0yIXMxHz0', '29-02-2020'),
(35, 'à¨¸à¨—à¨¨à¨¾à¨‚ à¨¦à¨¾ à¨¹à¨¾à¨° à¨ªà¨¿à¨† à¨®à¨¹à¨¿à¨—à¨¾', 'à¨¸à¨—à¨¨à¨¾à¨‚ à¨¦à¨¾ à¨¹à¨¾à¨° à¨ªà¨¿à¨† à¨®à¨¹à¨¿à¨—à¨¾ latest Punjabi video ll Jatt sauda new video', '1080p', 'Punjabi', 'JATT SAUDA', 'WEB SERIES', 'https://megaplay.in/admin/images/movies/35.png', 'https://youtu.be/1_CwoRKVq6w', '01-03-2020'),
(36, 'Bachpan vala jeona morh', 'Bachpan vala jeona morh à¨†à¨ªà¨£à¨¾ à¨¬à¨šà¨ªà¨¨ à¨¯à¨¾à¨¦ à¨…à¨¾ à¨œà¨¾à¨µà©‡à¨—à¨¾ à¨‡à©±à¨• à¨µà¨¾à¨° à¨œà¨°à©‚à¨° à¨¦à©‡à¨–à©‹ new Punjabi video Jatt sauda', '1080p', 'Punjabi', 'JATT SAUDA', 'WEB SERIES', 'https://megaplay.in/admin/images/movies/36.png', 'https://youtu.be/Zsmbnt_CJpA', '01-03-2020'),
(37, 'à¨‡à¨¹ à¨¨à©€ à¨¸à©à¨§à¨° à¨¦à©‡ à¨¸à¨¾à¨²à¨¾ à¨¹à©‹à¨‡à¨† à¨ªà©à¨°à©‹à¨¹à¨£à¨¿à¨† à¨¤à©‹à¨‚ à¨ªà©à¨°à©‡à¨¸à¨¾à¨¨', 'à¨‡à¨¹ à¨¨à©€ à¨¸à©à¨§à¨° à¨¦à©‡ à¨¸à¨¾à¨²à¨¾ à¨¹à©‹à¨‡à¨† à¨ªà©à¨°à©‹à¨¹à¨£à¨¿à¨† à¨¤à©‹à¨‚ à¨ªà©à¨°à©‡à¨¸à¨¾à¨¨ latest Punjabi comedy video Jatt sauda new video', '1080p', 'Punjabi', 'JATT SAUDA', 'WEB SERIES', 'https://megaplay.in/admin/images/movies/37.png', 'https://youtu.be/g0zsUkBCVpE', '01-03-2020'),
(38, 'à¨–à©œà©€ à¨«à¨¸à¨² à¨¹à©‹à¨ˆ à¨¬à¨°à¨¬à¨¾à¨¦ ', 'à¨–à©œà©€ à¨«à¨¸à¨² à¨¹à©‹à¨ˆ à¨¬à¨°à¨¬à¨¾à¨¦ ,à¨ªà©±à¨•à©€ à¨«à¨¼à¨¸à¨² à¨¤à©‡ à¨¹à©‹à¨ˆ à¨—à©œà©‡ à¨®à¨¾à¨°à©€ latest Punjabi video jattsauda', '1080p', 'Punjabi', 'JATT SAUDA', 'WEB SERIES', 'https://megaplay.in/admin/images/movies/38.png', 'https://youtu.be/PeJKheNnHFc', '01-03-2020'),
(39, 'à¨²à¨¾à¨ˆ à¨²à©±à¨— à¨¬à©°à¨¦à¨¿à¨† à¨¦à¨¾ à¨˜à¨¾à¨Ÿà¨¾ à¨¨à©€ à¨¤à©à¨¸à©€ à¨†à¨ª à¨¹à©€ à¨¦à©‡à¨– à¨²à¨µà©‹', 'à¨²à¨¾à¨ˆ à¨²à©±à¨— à¨¬à©°à¨¦à¨¿à¨† à¨¦à¨¾ à¨˜à¨¾à¨Ÿà¨¾ à¨¨à©€ à¨¤à©à¨¸à©€ à¨†à¨ª à¨¹à©€ à¨¦à©‡à¨– à¨²à¨µà©‹ latest Punjabi comedy video jattsauda', '1080p', 'Punjabi', 'JATT SAUDA', 'WEB SERIES', 'https://megaplay.in/admin/images/movies/39.png', 'https://youtu.be/EG0ynGllfQQ', '01-03-2020'),
(40, 'à¨¦à©à¨¨à©€à¨† à¨¤à©‡ à¨²à¨¾à¨ˆ à¨²à©±à¨— à¨¬à©°à¨¦à¨¿à¨† à¨¦à¨¾ à¨˜à¨¾à¨Ÿà¨¾ à¨¨à©€ à¨¤à©à¨¸à©€ à¨†à¨ª à¨¹à©€ à¨¦à©‡à¨– à¨²à¨µà©‹', 'à¨¦à©à¨¨à©€à¨† à¨¤à©‡ à¨²à¨¾à¨ˆ à¨²à©±à¨— à¨¬à©°à¨¦à¨¿à¨† à¨¦à¨¾ à¨˜à¨¾à¨Ÿà¨¾ à¨¨à©€ à¨¤à©à¨¸à©€ à¨†à¨ª à¨¹à©€ à¨¦à©‡à¨– à¨²à¨µà©‹ latest Punjabi comedy video jattsauda', '1080p', 'Punjabi', 'JATT SAUDA', 'WEB SERIES', 'https://megaplay.in/admin/images/movies/40.png', 'https://youtu.be/k60PRUFH2oo', '01-03-2020'),
(41, 'à¨…à©±à¨–à¨¾à¨‚ à¨µà¨¿à©±à¨šà©‹ à¨¹à©°à¨à©‚ à¨¨à©€ à¨°à©à¨•à©‡ à¨—à¨°à©€à¨¬ à¨¦à©€ à¨µà¨«à¨¼à¨¾à¨¦à¨°à©€ à¨¦à©‡à¨–à¨•à©‡', 'à¨…à©±à¨–à¨¾à¨‚ à¨µà¨¿à©±à¨šà©‹ à¨¹à©°à¨à©‚ à¨¨à©€ à¨°à©à¨•à©‡ à¨—à¨°à©€à¨¬ à¨¦à©€ à¨µà¨«à¨¼à¨¾à¨¦à¨°à©€ à¨¦à©‡à¨–à¨•à©‡ l latest Punjabi video#jattsauda', '1080p', 'Punjabi', 'JATT SAUDA', 'WEB SERIES', 'https://megaplay.in/admin/images/movies/41.png', 'https://youtu.be/eUEgKiU_t1E', '01-03-2020'),
(42, 'Part 4 à¨¤à¨ªà¨¾ à¨®à¨¾à¨°à¨¿à¨† à¨¸à¨¾à¨°à¨¾ à¨Ÿà©±à¨¬à¨° à¨ªà©à¨°à©Œà¨¹à¨£à©‡ à¨¨à©‡', 'Part 4 à¨¤à¨ªà¨¾ à¨®à¨¾à¨°à¨¿à¨† à¨¸à¨¾à¨°à¨¾ à¨Ÿà©±à¨¬à¨° à¨ªà©à¨°à©Œà¨¹à¨£à©‡ à¨¨à©‡ ll à¨°à©±à¨¬à¨¾ à¨à¨¹à©‹ à¨¹à¨¿à¨œà¨¾ à¨ªà©à¨°à©‹à¨¹à¨£à¨¾ à¨•à¨¿à¨¸à©‡ à¨¨à©‚à©° à¨¨à¨¾ à¨¦à©‡à¨®à©€ ll#jattsauda', '1080p', 'Punjabi', 'JATT SAUDA', 'WEB SERIES', 'https://megaplay.in/admin/images/movies/42.png', 'https://youtu.be/uaaDXD71KKQ', '01-03-2020'),
(43, 'Part 3 à¨¤à¨ªà¨¾ à¨®à¨¾à¨°à¨¿à¨† à¨¸à¨¾à¨°à¨¾ à¨Ÿà©±à¨¬à¨° à¨ªà©à¨°à©Œà¨¹à¨£à©‡ à¨¨à©‡', 'Part 3 à¨¤à¨ªà¨¾ à¨®à¨¾à¨°à¨¿à¨† à¨¸à¨¾à¨°à¨¾ à¨Ÿà©±à¨¬à¨° à¨ªà©à¨°à©Œà¨¹à¨£à©‡ à¨¨à©‡ ll à¨°à©±à¨¬à¨¾ à¨à¨¹à©‹ à¨¹à¨¿à¨œà¨¾ à¨ªà©à¨°à©‹à¨¹à¨£à¨¾ à¨•à¨¿à¨¸à©‡ à¨¨à©‚à©° à¨¨à¨¾ à¨¦à©‡à¨®à©€ ll#jattsauda', '1080p', 'Punjabi', 'JATT SAUDA', 'WEB SERIES', 'https://megaplay.in/admin/images/movies/43.png', 'https://youtu.be/8aZnF6qwp4s', '01-03-2020'),
(44, 'Part 2 à¨¤à¨ªà¨¾ à¨®à¨¾à¨°à¨¿à¨† à¨¸à¨¾à¨°à¨¾ à¨Ÿà©±à¨¬à¨° à¨ªà©à¨°à©Œà¨¹à¨£à©‡ à¨¨à©‡ ', 'Part 2 à¨¤à¨ªà¨¾ à¨®à¨¾à¨°à¨¿à¨† à¨¸à¨¾à¨°à¨¾ à¨Ÿà©±à¨¬à¨° à¨ªà©à¨°à©Œà¨¹à¨£à©‡ à¨¨à©‡ ll à¨°à©±à¨¬à¨¾ à¨à¨¹à©‹ à¨¹à¨¿à¨œà¨¾ à¨ªà©à¨°à©‹à¨¹à¨£à¨¾ à¨•à¨¿à¨¸à©‡ à¨¨à©‚à©° à¨¨à¨¾ à¨¦à©‡à¨®à©€ ll#jattsauda', '1080p', 'Punjabi', 'JATT SAUDA', 'WEB SERIES', 'https://megaplay.in/admin/images/movies/44.png', 'https://youtu.be/WL1Ze41PHMA', '01-03-2020'),
(45, 'à¨®à¨¾à©œà©€ à¨¹à©‹à¨ˆ à¨›à©œà¨¿à¨†à¨‚ à¨¨à¨¾à¨²', 'à¨®à¨¾à©œà©€ à¨¹à©‹à¨ˆ à¨›à©œà¨¿à¨†à¨‚ à¨¨à¨¾à¨² latest Punjabi video #jattsauda', '1080p', 'Punjabi', 'JATT SAUDA', 'WEB SERIES', 'https://megaplay.in/admin/images/movies/45.png', 'https://youtu.be/6yKJqpT8_Zc', '01-03-2020'),
(46, 'Kasar- masar (à¨•à¨¸à¨° - à¨®à¨¸à¨°', 'Kasar- masar (à¨•à¨¸à¨° - à¨®à¨¸à¨°) latest Punjabi video jattsauda jattsauda new video', '1080p', 'Punjabi', 'JATT SAUDA', 'WEB SERIES', 'https://megaplay.in/admin/images/movies/46.png', 'https://youtu.be/fOayG6dR-h8', '01-03-2020'),
(47, 'à¨¤à¨ªà¨¾ à¨®à¨¾à¨°à¨¿à¨† à¨¸à¨¾à¨°à¨¾ à¨Ÿà©±à¨¬à¨° à¨ªà©à¨°à©Œà¨¹à¨£à©‡ à¨¨à©‡', 'à¨¤à¨ªà¨¾ à¨®à¨¾à¨°à¨¿à¨† à¨¸à¨¾à¨°à¨¾ à¨Ÿà©±à¨¬à¨° à¨ªà©à¨°à©Œà¨¹à¨£à©‡ à¨¨à©‡ ll à¨°à©±à¨¬à¨¾ à¨à¨¹à©‹ à¨¹à¨¿à¨œà¨¾ à¨ªà©à¨°à©‹à¨¹à¨£à¨¾ à¨•à¨¿à¨¸à©‡ à¨¨à©‚à©° à¨¨à¨¾ à¨¦à©‡à¨®à©€ ll', '1080p', 'Punjabi', 'JATT SAUDA', 'WEB SERIES', 'https://megaplay.in/admin/images/movies/47.png', 'https://youtu.be/XaYryTPUS5E', '01-03-2020'),
(48, 'à¨•à¨¿à¨¸à©‡ à¨¦à¨¾ à¨¹à©±à¨• à¨¨à¨¾ à¨°à©±à¨–à©‹ ', 'à¨•à¨¿à¨¸à©‡ à¨¦à¨¾ à¨¹à©±à¨• à¨¨à¨¾ à¨°à©±à¨–à©‹ , à¨—à¨°à©€à¨¬à¨¾à¨‚ à¨¨à¨¾à¨² à¨ à©±à¨—à©€ à¨®à¨¾à¨°à¨¨ à¨µà¨¾à¨²à©‡ à¨¦à¨¾ à¨¦à©‡à¨–à©‹ à¨•à¨¿ à¨¹à¨¾à¨² à¨¹à©‹à¨‡à¨† ll à¨°à©±à¨¬ à¨¸à©±à¨­ à¨¦à©‡à¨–à¨¦à¨¾ ðŸ™', '1080p', 'Punjabi', 'JATT SAUDA', 'WEB SERIES', 'https://megaplay.in/admin/images/movies/48.png', 'https://youtu.be/tva7EGV92cs', '01-03-2020'),
(49, 'Gareeb di haddbeeti', 'Gareeb di haddbeeti ll latest Punjabi emotional video', '1080p', 'Punjabi', 'JATT SAUDA', 'WEB SERIES', 'https://megaplay.in/admin/images/movies/49.png', 'https://youtu.be/Uk5FsKKWcIs', '01-03-2020'),
(50, 'à¨²à©à¨Ÿà©‡à¨°à¨¿à¨†à¨‚ à¨¨à©‡ à¨•à¨°à¨¤à¨¾ à¨˜à¨° à¨¬à¨°à¨¬à¨¾à¨¦', 'à¨²à©à¨Ÿà©‡à¨°à¨¿à¨†à¨‚ à¨¨à©‡ à¨•à¨°à¨¤à¨¾ à¨˜à¨° à¨¬à¨°à¨¬à¨¾à¨¦ ll à¨‡à©±à¨• à¨ªà©à©±à¨¤ à¨¤à©‹à¨‚ à¨–à©‹à¨²à©à¨¹à©€ à¨‰à¨¸à¨¦à©€ à¨®à¨¾à¨‚ latest Punjabi video', '1080p', 'Punjabi', 'JATT SAUDA', 'WEB SERIES', 'https://megaplay.in/admin/images/movies/50.png', 'https://youtu.be/4NtCzHn-cv4', '01-03-2020'),
(51, 'à¨…à©±à¨œ à¨•à©±à¨² à¨¤à¨¾à¨‚ à¨…à¨¾ à¨¹à¨¾à¨²', 'à¨…à©±à¨œ à¨•à©±à¨² à¨¤à¨¾à¨‚ à¨…à¨¾ à¨¹à¨¾à¨² à¨¹à©à©°à¨¦à¨¾ à¨®à¨¾à¨‚ à¨ªà¨¿à¨“ à¨¦à¨¾ à¨¸à¨°à¨® à¨†à¨‰à¨£à©€ à¨šà¨¾à¨¹à©€à¨¦à©€ à¨…à¨¾ à¨à¨¹à©‹ à¨œà¨¿à¨¹à©‡ à¨²à©‹à¨•à¨¾à¨‚ à¨¨à©‚à©° Jatt sauda', '1080p', 'Punjabi', 'JATT SAUDA', 'WEB SERIES', 'https://megaplay.in/admin/images/movies/51.png', 'https://youtu.be/96t5uDHMbj4', '01-03-2020'),
(52, 'à¨…à¨®à¨²à©€ à¨¨à©‡ à¨¨à¨®à¨¾ à¨¹à©€ à¨œà©±à¨¬ à¨–à©œà¨¾ à¨•à¨°à¨¤à¨¾ ', 'à¨à¨¥à©‡ à¨¤à¨¾à¨‚ à¨•à©à©±à¨ à¨¹à©‹à¨° à¨¹à©€ à¨­à¨¾à¨£à¨¾ à¨µà¨°à¨¤ à¨—à¨¿à¨† à¨µà¨¾à¨¢à©€ à¨•à¨°à¨¦à©‡ à¨•à¨°à¨¦à©‡ ll à¨…à¨®à¨²à©€ à¨¨à©‡ à¨¨à¨®à¨¾ à¨¹à©€ à¨œà©±à¨¬ à¨–à©œà¨¾ à¨•à¨°à¨¤à¨¾ ', '1080p', 'Punjabi', 'JATT SAUDA', 'WEB SERIES', 'https://megaplay.in/admin/images/movies/52.png', 'https://youtu.be/licbIkMFoa4', '01-03-2020'),
(53, 'à¨œà©‡à¨¹à©œà©‡ à¨²à©‹à¨• à¨•à¨¹à¨¿à©°à¨¦à©‡ à¨°à¨¹à¨¿à©°à¨¦à©‡ à¨¨à©‡', 'à¨œà©‡à¨¹à©œà©‡ à¨²à©‹à¨• à¨•à¨¹à¨¿à©°à¨¦à©‡ à¨°à¨¹à¨¿à©°à¨¦à©‡ à¨¨à©‡ à¨¸à¨¾à¨¡à¨¾ à¨®à©à©°à¨¡à¨¾ à¨¤à¨¾à¨‚ à¨•à©°à¨® à¨¨à©€ à¨•à¨°à¨¦à¨¾ à¨“à¨¹ à¨‡à¨¸ à¨µà©€à¨¡à©€à¨‰ à¨¨à©‚à©° à¨œà¨°à©‚à¨° à¨¦à©‡à¨–à¨£ Punjabi latest video', '1080p', 'Punjabi', 'JATT SAUDA', 'WEB SERIES', 'https://megaplay.in/admin/images/movies/53.png', 'https://youtu.be/HDUVzMZZL4A', '01-03-2020'),
(54, 'à¨œà¨¿à¨¸ à¨˜à¨° à¨®à¨¾à¨‚ à¨¨à¨¹à©€à¨‚', 'à¨œà¨¿à¨¸ à¨˜à¨° à¨®à¨¾à¨‚ à¨¨à¨¹à©€à¨‚ à¨‰à¨¹ à¨‡à¨¸ à¨µà©€à¨¡à©€à¨‰ à¨¨à©‚à©° à¨œà¨°à©‚à¨° à¨¦à©‡à¨–à¨£ l à¨®à¨¾à¨‚ à¨¦à©€ à¨¥à¨¾à¨‚ à¨•à©‹à¨ˆ à¨¨à¨¹à©€à¨‚ à¨²à©ˆ à¨¸à¨•à¨¦à¨¾ heart touching video', '1080p', 'Punjabi', 'JATT SAUDA', 'WEB SERIES', 'https://megaplay.in/admin/images/movies/54.png', 'https://youtu.be/zumyi91i99Q', '01-03-2020'),
(55, 'à¨¹à©±à¨¦ à¨¹à©‹à¨ˆ à¨ªà¨ˆ à¨…à¨¾', 'à¨¹à©±à¨¦ à¨¹à©‹à¨ˆ à¨ªà¨ˆ à¨…à¨¾ ll à¨à¨¹à©‹ à¨œà¨¹à©‡ à¨²à©‹à¨•à¨¾à¨‚ à¨¨à©‡ à¨‡à¨¨à¨¸à¨¾à¨¨à©€à¨…à¨¤ à¨¨à©‚à©° à¨¸à¨°à¨®à¨¸à¨¾à¨° à¨•à©€à¨¤à¨¾ à¨¹à©‹à¨‡à¨† ll latest heart touching video', '1080p', 'Punjabi', 'JATT SAUDA', 'WEB SERIES', 'https://megaplay.in/admin/images/movies/55.png', 'https://youtu.be/XDZalTbCvbY', '01-03-2020'),
(56, 'à¨˜à¨° à¨¦à¨¿à¨† à¨¦à©€ à¨®à¨°à¨œà©€ à¨¤à©‹à¨‚ à¨¬à¨¿à¨¨à¨¾à¨‚ à¨•à¨°à¨µà¨¾à¨‡à¨† à¨µà¨¿à¨†à¨¹', 'à¨˜à¨° à¨¦à¨¿à¨† à¨¦à©€ à¨®à¨°à¨œà©€ à¨¤à©‹à¨‚ à¨¬à¨¿à¨¨à¨¾à¨‚ à¨•à¨°à¨µà¨¾à¨‡à¨† à¨µà¨¿à¨†à¨¹ à¨˜à©±à¨Ÿ à¨¹à©€ à¨°à¨¾à¨¸ à¨†à¨‰à¨‚à¨¦à¨¾ l à¨•à©à©±à¨ à¨…à¨œà¨¿à¨¹à¨¾ à¨¹à©€ à¨¹à©‹à¨‡à¨† à¨‡à¨¸ à¨ªà¨°à¨¿à¨µà¨¾à¨° à¨¨à¨¾à¨²', '1080p', 'Punjabi', 'JATT SAUDA', 'WEB SERIES', 'https://megaplay.in/admin/images/movies/56.png', 'https://youtu.be/sahWC8DsJF4', '01-03-2020'),
(57, 'à¨®à¨¿à©°à¨Ÿ à¨®à¨¿à©°à¨Ÿ à¨¬à¨¾à¨…à¨¦ à¨²à©±à¨—à©‡ à¨œà©±à¨«à©‡', 'à¨®à¨¿à©°à¨Ÿ à¨®à¨¿à©°à¨Ÿ à¨¬à¨¾à¨…à¨¦ à¨²à©±à¨—à©‡ à¨œà©±à¨«à©‡ ll à¨˜à¨° à¨¦à©‡ à¨•à¨¾à¨Ÿà©‹ à¨•à¨²à©‡à¨¸à¨¼ à¨¤à©‹à¨‚ à¨¤à©°à¨— à¨¹à©‹à¨‡à¨† à¨Ÿà©±à¨¬à¨° latest Punjabi video', '1080p', 'Punjabi', 'JATT SAUDA', 'WEB SERIES', 'https://megaplay.in/admin/images/movies/57.png', 'https://youtu.be/V3JAGZPAwII', '01-03-2020'),
(58, 'à¨¹à©à¨£ à¨¤à¨¾à¨‚ à¨˜à¨° à¨˜à¨° à¨†à¨¹à©€ à¨¹à¨¾à¨² à¨†', 'à¨¹à©à¨£ à¨¤à¨¾à¨‚ à¨˜à¨° à¨˜à¨° à¨†à¨¹à©€ à¨¹à¨¾à¨² à¨† ll à¨•à¨¿ à¨¬à¨£à©‚ à¨¦à©à¨¨à©€à¨† à¨¦à¨¾ , à¨°à©±à¨¬ à¨¹à©€ à¨œà¨¾à¨£à¨¦à¨¾', '1080p', 'Punjabi', 'JATT SAUDA', 'WEB SERIES', 'https://megaplay.in/admin/images/movies/58.png', 'https://youtu.be/3NGHvoPY5L4', '01-03-2020'),
(59, 'à¨¨à¨¸à¨¼à¨¾ à¨¤à¨¾ à¨ªà©€à¨¡à©€à¨† à¨–à¨¤à¨® à¨•à¨° à¨¦à¨¿à©°à¨¦à¨¾', 'à¨¨à¨¸à¨¼à¨¾ à¨¤à¨¾ à¨ªà©€à¨¡à©€à¨† à¨–à¨¤à¨® à¨•à¨° à¨¦à¨¿à©°à¨¦à¨¾ ,à¨¸à¨°à¨¾à¨¬ à¨¦à©€ à¨µà¨²à©ˆà¨• à¨¨à©‡ à¨ªà©±à¨Ÿ à¨¤à¨¾à¨‚ à¨˜à¨° ll à¨œà©‡ à¨•à©‹à¨ˆ à¨¹à©‹à¨° à¨¨à©€ à¨°à©±à¨¬ à¨¤à¨¾à¨‚ à¨¦à©‡à¨–à¨¦à¨¾', '1080p', 'Punjabi', 'JATT SAUDA', 'WEB SERIES', 'https://megaplay.in/admin/images/movies/59.png', 'https://youtu.be/5Q5rwExgZmA', '01-03-2020'),
(60, 'Part -2 à¨œà©±à¨Ÿà¨¾à¨‚ à¨¨à¨¾à¨² à¨¹à©‹ à¨—à¨¿à¨† à¨¸à¨°à©‡à¨†à¨® à¨§à©±à¨•à¨¾', 'Part -2 à¨œà©±à¨Ÿà¨¾à¨‚ à¨¨à¨¾à¨² à¨¹à©‹ à¨—à¨¿à¨† à¨¸à¨°à©‡à¨†à¨® à¨§à©±à¨•à¨¾ l à¨•à©‹à¨ˆ à¨®à©à©±à¨² à¨¨à¨¹à©€à¨‚ à¨ªà©ˆà¨‚à¨¦à¨¾ à¨•à©€à¨¤à©‡ à¨–à¨°à¨šà©‡ à¨¦à¨¾ l', '1080p', 'Punjabi', 'JATT SAUDA', 'WEB SERIES', 'https://megaplay.in/admin/images/movies/60.png', 'https://youtu.be/XWlUH28uXNM', '01-03-2020'),
(61, 'IK SANDHU HUNDA SI ', 'ik sandu hunda si  || new punjabi movies 2020  latest punjabi movie  gippy grewal', '1080p', 'Punjabi', 'NEW MOVIES 2020', 'PUNJABI MOVIES', 'https://megaplay.in/admin/images/movies/61.png', 'https://drive.google.com/file/d/1Cd8ldnk7fenv_C9lWgYZRjwO5BjZQeed/view  https://drive.google.com/file/d/1Cd8ldnk7fenv_C9lWgYZRjwO5BjZQeed/view   https://drive.google.com/file/d/1Cd8ldnk7fenv_C9lWgYZRjwO5BjZQeed/view   https://drive.google.com/file/d/1Cd8ldnk7fenv_C9lWgYZRjwO5BjZQeed/view', '01-03-2020'),
(62, 'PAGALPANTI || 2019', 'new bollywood comedy movies 2020 full movie in hindi | Full Action Hindi Dubbed Movie | Latest 2020', '1080p', 'Hindi', 'Others', 'BOLLYWOOD MOVIES', 'https://megaplay.in/admin/images/movies/62.png', 'https://youtu.be/BBaOzdaZC7A', '01-03-2020'),
(63, 'Baadshah pehlwaan', 'baadshah pehlwaan movie Director: S Krishna\r\nWriters: D.S. Kannan, S Krishna | \r\nStars: Sudeep, Sunil Shetty, Aakanksha Singh ', '1080p', 'Hindi', 'NEW MOVIES 2020', 'BOLLYWOOD MOVIES', 'https://megaplay.in/admin/images/movies/63.png', 'https://youtu.be/FKi7FMLId1Y', '01-03-2020'),
(65, 'Wake up Sid ', '2020 New Released Full Hindi Dubbed Movie || New south indian movies dubbed in hindi 2020 full', '1080p', 'Hindi', 'Others', 'BOLLYWOOD MOVIES', 'https://megaplay.in/admin/images/movies/65.png', 'https://youtu.be/Zu3ZO8fgunE', '01-03-2020'),
(66, 'Good Newwz (2019)', 'Good News (Full Movies) | Akshay kumar full movies | New Punjabi Movie | Bollywood latest movie', '1080p', 'Hindi', 'NEW MOVIES 2020', 'BOLLYWOOD MOVIES', 'https://megaplay.in/admin/images/movies/66.png', 'https://youtu.be/rx4yCreagOo', '01-03-2020'),
(67, 'Once Upon a Time in Mumbai Dobaara! (2013)', 'Once Upon a Time in Mumbai Dobaara! (2013)   New Hindi Movies 2019 | new hindi movies 2019| bollywood movies 2019 | DFM TV , The Real Fun', '1080p', 'Hindi', 'Others', 'BOLLYWOOD MOVIES', 'https://megaplay.in/admin/images/movies/67.png', 'https://youtu.be/Mr0s2LbOTOU', '01-03-2020'),
(68, 'Commando 2', 'New South Movie 2019 Hindi Dubbed Full | Commando 2 | Hindi Dubbed Movies 2019', '720p', 'Hindi', 'NEW MOVIES 2020', 'BOLLYWOOD MOVIES', 'https://megaplay.in/admin/images/movies/68.png', 'https://youtu.be/aXT-lQC8z90', '01-03-2020'),
(69, 'Firangi 2017', 'Firangi Full Hd Movies |Kapil Sharma Comedy Movies |New Bollywood Movies 2019 latest movies', '1080p', 'Hindi', 'Others', 'BOLLYWOOD MOVIES', 'https://megaplay.in/admin/images/movies/69.png', 'https://youtu.be/VaXLUhJQ_58', '01-03-2020'),
(70, 'RAW-ROMEO AKBAR WALTER 2019', '\r\nRAW-ROMEO AKBAR WALTER FULL MOVIE HINDI HD 720P (2019) ||JOHN ABRAHAM ||JACKIE', '1080p', 'Hindi', 'NEW MOVIES 2020', 'BOLLYWOOD MOVIES', 'https://megaplay.in/admin/images/movies/70.png', 'https://youtu.be/K9kJ8o7cRFY', '01-03-2020'),
(71, 'Mirzya 2016', 'New Bollywood Action Movies 2019 - Hindi New Movies | New Full Movie | Bollywood Movies', '1080p', 'Hindi', 'Others', 'BOLLYWOOD MOVIES', 'https://megaplay.in/admin/images/movies/71.png', 'https://youtu.be/X7PQSAoodMk', '01-03-2020'),
(72, 'Bahubali: The Beginning 2015', 'Bahubali: The Beginning (Hindi Dubbed) Full Movie 2015', '1080p', 'Hindi', 'Others', 'BOLLYWOOD MOVIES', 'https://megaplay.in/admin/images/movies/72.png', 'https://youtu.be/gOTlduAE1uU', '01-03-2020'),
(73, 'BAAHUBALI 2 || 2017', 'BAAHUBALI 2 :THE CONCLUSION FULL MOVIE HINDI (2017)HD 720P-PRABHAS,ANUSHKA SHETTY,RANA DUGGUBATTI', '720p', 'Hindi', 'Others', 'BOLLYWOOD MOVIES', 'https://megaplay.in/admin/images/movies/73.png', 'https://youtu.be/ekvd_XhCyL4', '01-03-2020'),
(74, 'Laavaan Phere : Roshan Prince', 'Laavaan Phere Full Movie | Roshan Prince | Rubina Bajwa | Latest Punjabi Movie', '1080p', 'Punjabi', 'T-Series Apna Punjab', 'PUNJABI MOVIES', 'https://megaplay.in/admin/images/movies/74.png', 'https://youtu.be/3ZJC0umGxmo', '01-03-2020'),
(75, 'Jora 10 numbaria', 'Jora 10 numbaria  new punjabi movie  latest punjabi movie', '1080p', 'Punjabi', 'Others', 'PUNJABI MOVIES', 'https://megaplay.in/admin/images/movies/75.png', 'https://youtu.be/5Tn6m2A6Cek', '01-03-2020'),
(76, 'Laiye Je Yaarian : Amrinder Gill', 'Laiye Je Yaarian : Amrinder Gill new punjabi movie latest punjabi movie 2019 2020 ', '1080p', 'Punjabi', 'NEW MOVIES 2020', 'PUNJABI MOVIES', 'https://megaplay.in/admin/images/movies/76.png', 'https://youtu.be/CN3PKBgg6v8', '01-03-2020'),
(77, 'Doorbeen : Ninja', 'Doorbeen | Full Movie | Ninja | Wamiqa Gabbi | Jass Bajwa | Jasmin Bajwa | Yellow Music', '1080p', 'Punjabi', 'Yellow Music', 'PUNJABI MOVIES', 'https://megaplay.in/admin/images/movies/77.png', 'https://youtu.be/o1V4vJ1kvt8', '01-03-2020'),
(78, 'Jaddi sardar || 2019', '\r\nJaddi Sardar | Full Movie | Sippy Gill, Dilpreet Dhillon | Latest Punjabi Movie 2019 | Yellow Music', '1080p', 'Punjabi', 'Yellow Music', 'PUNJABI MOVIES', 'https://megaplay.in/admin/images/movies/78.png', 'https://youtu.be/-4Ia1CScqCI', '01-03-2020'),
(79, 'Lukan Michi || 2019', '\r\nLukan Michi | Full Movie | Preet Harpal, Mandy Takhar | Latest Punjabi Movie 2019 | Yellow Music', '1080p', 'Punjabi', 'Yellow Music', 'PUNJABI MOVIES', 'https://megaplay.in/admin/images/movies/79.png', 'https://youtu.be/cm_YVd0WcAg', '01-03-2020'),
(80, 'Saadi Marzi || 2019', 'Saadi Marzi | Full Movie | Anirudh, Harby, Neena, Yograj | Latest Punjabi Movies | Yellow Music', '1080p', 'Punjabi', 'Yellow Music', 'PUNJABI MOVIES', 'https://megaplay.in/admin/images/movies/80.png', 'https://youtu.be/0RQ8rQf9Fu8', '01-03-2020'),
(81, 'Kirdar - E - Sardar || 2018', 'Kirdar - E - Sardar | Full Movie | Latest Punjabi Movies 2018 | Nav Bajwa, Neha Pawar | Yellow Music', '1080p', 'Punjabi', 'Yellow Music', 'PUNJABI MOVIES', 'https://megaplay.in/admin/images/movies/81.png', 'https://youtu.be/RApUttTRu34', '01-03-2020'),
(82, 'Gangster Vs State ', 'Gangster Vs State | Full Movie | Mantej Maan, Sunakshi Sharma | Latest Punjabi Movies | Yellow Music', '1080p', 'Punjabi', 'Yellow Music', 'PUNJABI MOVIES', 'https://megaplay.in/admin/images/movies/82.png', 'https://youtu.be/gOJWexc3DJ0', '01-03-2020'),
(83, 'Dhol Ratti || 2019', 'Dhol Ratti | Full Movie | Lakha Lakhwinder Singh, Pooja Thakur, Arsh Chawla | Latest Punjabi Movie', '1080p', 'Punjabi', 'Yellow Music', 'PUNJABI MOVIES', 'https://megaplay.in/admin/images/movies/83.png', 'https://youtu.be/uNYkBCU4B8k', '01-03-2020'),
(84, 'Ishq Na Hove Rabba || 2018', 'Ishq Na Hove Rabba | Full Movie | Latest Punjabi Comedy Movies | Navjeet | Youngveer', '1080p', 'Punjabi', 'Yellow Music', 'PUNJABI MOVIES', 'https://megaplay.in/admin/images/movies/84.png', 'https://youtu.be/K2xS-1D8Mdc', '01-03-2020'),
(85, 'Punjab Singh || 2018', 'Punjab Singh | New Punjabi Full Movie with Subtitles | Gurjind Maan, Sarthi K, Anita Devgan', '1080p', 'Punjabi', 'Yellow Music', 'PUNJABI MOVIES', 'https://megaplay.in/admin/images/movies/85.png', 'https://youtu.be/fDxyImNzI1E', '01-03-2020'),
(86, 'Jagga Jiunda E || 2018', 'Jagga Jiunda E | Full Movie | Daljeet K, Kainaat A, Yograj S, Karamjit A, Gurpreet G, Jackie S', '1080p', 'Punjabi', 'Yellow Music', 'PUNJABI MOVIES', 'https://megaplay.in/admin/images/movies/86.png', 'https://youtu.be/Zx2NNP2fWsk', '01-03-2020'),
(87, 'JATT vs IELTS  2018', 'JATT vs IELTS | Full Movie | Latest Comedy Punjabi Movies 2018 | Yellow Movies', '1080p', 'Punjabi', 'Yellow Music', 'PUNJABI MOVIES', 'https://megaplay.in/admin/images/movies/87.png', 'https://youtu.be/SYjz2c4bC1c', '01-03-2020'),
(88, 'Dangar Doctor Jelly || 2018', 'Dangar Doctor Jelly | Full Movie | New Punjabi Comedy | Ravinder Grewal, Geet Gambhir, Sara Gurpal', '1080p', 'Punjabi', 'Yellow Music', 'PUNJABI MOVIES', 'https://megaplay.in/admin/images/movies/88.png', 'https://youtu.be/hgOyLeo3ijY', '01-03-2020'),
(89, 'Sardar Mallu Singh || 2018', 'Sardar Mallu Singh | New Punjabi Movie | Latest Punjabi Comedy Action Movies | Yellow Movies', '1080p', 'Punjabi', 'Yellow Music', 'PUNJABI MOVIES', 'https://megaplay.in/admin/images/movies/89.png', 'https://youtu.be/62XACsZSAa8', '01-03-2020'),
(90, 'Kabaddi Once Again || 2018', 'Kabaddi Once Again | Full Punjabi Movie | Latest Punjabi Movies | Yellow Movies', '1080p', 'Punjabi', 'Yellow Music', 'PUNJABI MOVIES', 'https://megaplay.in/admin/images/movies/90.png', 'https://youtu.be/TIjmhr4GRTs', '01-03-2020'),
(91, 'KRAZZY TABBAR || 2017', 'KRAZZY TABBAR | New Punjabi Movie 2017 | Harish Verma, Priyanka Mehta, Yograj Singh | Yellow Movies', '1080p', 'Punjabi', 'Yellow Music', 'PUNJABI MOVIES', 'https://megaplay.in/admin/images/movies/91.png', 'https://youtu.be/q849TUnJRO0', '01-03-2020'),
(92, 'GREAT SARDAAR || 2017', 'GREAT SARDAAR | DILPREET DHILLON, YOGRAJ SINGH | Latest Punjabi Movies 2017 | Yellow Movies', '1080p', 'Punjabi', 'Yellow Music', 'PUNJABI MOVIES', 'https://megaplay.in/admin/images/movies/92.png', 'https://youtu.be/qSdQ-Rxn6iA', '01-03-2020'),
(93, 'Yaar Annmulle || 2017', 'Superhit Punjabi Movie: YAAR ANMULLE in HINDI | Full Movie | Latest Bollywood Movies 2017', '1080p', 'Punjabi', 'Yellow Music', 'PUNJABI MOVIES', 'https://megaplay.in/admin/images/movies/93.png', 'https://youtu.be/MvDEGrZAK3Q', '01-03-2020'),
(94, 'Pata Nahi Rabb Kehdeyan Rangan Ch Raazi', 'Neeru Bajwa | Pata Nahi Rabb Kehdeyan Rangan Ch Raazi | New Punjabi Full Movie HD', '1080p', 'Punjabi', 'Yellow Music', 'PUNJABI MOVIES', 'https://megaplay.in/admin/images/movies/94.png', 'https://youtu.be/9hn4z4CLZoc', '01-03-2020'),
(95, 'YAAR ANNMULLE 2 || 2017', 'Yaar Annmulle | Punjabi Full Movies HD 2017 | Arya Babbar, Yuvraj Hans', '1080p', 'Punjabi', 'Yellow Music', 'PUNJABI MOVIES', 'https://megaplay.in/admin/images/movies/95.png', 'https://youtu.be/bcmXrnzUFj8', '01-03-2020'),
(96, 'Thug life 2018', 'Thug Life Full Movie 2018 HD | Harish Verma, Jass Bajwa, Rajiv Thakur, Ihana | Punjabi Moviez', '1080p', 'Punjabi', 'Others', 'PUNJABI MOVIES', 'https://megaplay.in/admin/images/movies/96.png', 'https://youtu.be/xg4oaLTQ0ek', '01-03-2020'),
(97, 'Carry On Jatta 2012', 'Carry On Jatta [2012].720p.DVDRip.x264.Punjabi Movie Latest Most Popular Comedy | Lol', '1080p', 'Punjabi', 'Others', 'PUNJABI MOVIES', 'https://megaplay.in/admin/images/movies/97.png', 'https://youtu.be/bYI9ut-hH9w', '01-03-2020'),
(98, 'Aate di Chiri 2019', 'Aate di Chiri â€¢AMRIT MAANâ€¢ New Punjabi Movie 2019', '1080p', 'Punjabi', 'Others', 'PUNJABI MOVIES', 'https://megaplay.in/admin/images/movies/98.png', 'https://youtu.be/dch6LzdPRrI', '01-03-2020'),
(99, 'Qismat 2018', 'Qismat Full Punjabi Movie || Ammy Virk â— Sargun Mehta â— New Punjabi Movie 2019', '1080p', 'Punjabi', 'Others', 'PUNJABI MOVIES', 'https://megaplay.in/admin/images/movies/99.png', 'https://youtu.be/A3w6LK5M2hc', '01-03-2020'),
(100, 'KURMAIYAN 2019', 'KURMAIYAN - New Punjabi Movie ( Full HD) | Harjit Harman | Japji Khaira | Latest Punjabi Movies 2019', '1080p', 'Punjabi', 'Lokdhun Punjabi ', 'PUNJABI MOVIES', 'https://megaplay.in/admin/images/movies/100.png', 'https://youtu.be/NM0_a_uCvIM', '01-03-2020'),
(101, 'Titanic : Latest Punjabi Movie 2019', 'New Punjabi Movie - Titanic || Raj Singh Jhinger || Kamal Khangura || Latest Punjabi Movie 2019', '1080p', 'Punjabi', 'Lokdhun Punjabi ', 'PUNJABI MOVIES', 'https://megaplay.in/admin/images/movies/101.png', 'https://youtu.be/_lR01p_CV5w', '01-03-2020'),
(102, 'ROCKY MENTAL || 2017', 'ROCKY MENTAL (Full Movie) - Parmish Verma || Punjabi Film || New Punjabi Movie 2017', '1080p', 'Punjabi', 'Lokdhun Punjabi ', 'PUNJABI MOVIES', 'https://megaplay.in/admin/images/movies/102.png', 'https://youtu.be/pOLlaRDyII4', '01-03-2020'),
(103, 'Police In Pollywood : Bhagwant Mann', 'Police In Pollywood ( Full Movie ) | Bhagwant Mann | Punjabi Film | New Punjabi Movies 2017', '1080p', 'Punjabi', 'Lokdhun Punjabi ', 'PUNJABI MOVIES', 'https://megaplay.in/admin/images/movies/103.png', 'https://youtu.be/tVufUI50p7A', '01-03-2020'),
(104, 'Sargi 2017', 'Sargi (Full Movie) - Jassi Gill, Babbal Rai, Rubina Bajwa | Punjabi Film | Latest Punjabi Movie', '1080p', 'Punjabi', 'Lokdhun Punjabi ', 'PUNJABI MOVIES', 'https://megaplay.in/admin/images/movies/104.png', 'https://youtu.be/leDCen-4UxI', '01-03-2020'),
(105, 'Mr & Mrs 420 : Binnu Dhillon, Jassie Gill ', 'Mr & Mrs 420 ( Full Movies ) Binnu Dhillon, Jassie Gill - Latest Punjabi Film - New Punjabi Movie', '1080p', 'Punjabi', 'Lokdhun Punjabi ', 'PUNJABI MOVIES', 'https://megaplay.in/admin/images/movies/105.png', 'https://youtu.be/32op7Zznjh4', '01-03-2020'),
(106, 'RUPINDER GANDHI 2', 'RUPINDER GANDHI 2 : (FULL FILM) | New Punjabi Film | Latest Punjabi Movies', '1080p', 'Punjabi', 'Lokdhun Punjabi ', 'PUNJABI MOVIES', 'https://megaplay.in/admin/images/movies/106.png', 'https://youtu.be/gddcUtzsKgg', '01-03-2020'),
(107, 'Goreyan Nu Daffa Karo 2014', 'Superhit Punjabi Film - Goreyan Nu Daffa Karo , Amrinder Gill || Punjabi Movies || Punjabi Films', '1080p', 'Punjabi', 'Lokdhun Punjabi ', 'PUNJABI MOVIES', 'https://megaplay.in/admin/images/movies/107.png', 'https://youtu.be/fsO_INKi4Xo', '01-03-2020'),
(108, 'Main Teri Tu Mera 2019', 'Main Teri Tu Mera (FULL MOVIE) - Roshan Prince, Mankirt Aulakh | Latest Punjabi Movie 2019', '1080p', 'Punjabi', 'Lokdhun Punjabi ', 'PUNJABI MOVIES', 'https://megaplay.in/admin/images/movies/108.png', 'https://youtu.be/YTqKanX75nM', '01-03-2020'),
(109, 'SAGGI PHULL 2018', 'SAGGI PHULL ( Full Film ) | New Punjabi Movie | Latest Punjabi Film 2018 | Lokdhun Punjabi', '1080p', 'Punjabi', 'Lokdhun Punjabi ', 'PUNJABI MOVIES', 'https://megaplay.in/admin/images/movies/109.png', 'https://youtu.be/HTHCcQ4t3lc', '01-03-2020'),
(110, 'Dulla Bhatti  2017', 'Dulla Bhatti || Full Punjabi Movie || Binnu Dhillon || Latest Punjabi Movies 2017 - Lokdhun', '1080p', 'Punjabi', 'Lokdhun Punjabi ', 'PUNJABI MOVIES', 'https://megaplay.in/admin/images/movies/110.png', 'https://youtu.be/wNnmz_cbipY', '01-03-2020'),
(111, 'saak 2020', 'Saak Full Movie (2020) New Punjabi Movies 2020 Full Movie', '1080p', 'Punjabi', 'Lokdhun Punjabi ', 'PUNJABI MOVIES', 'https://megaplay.in/admin/images/movies/111.png', 'https://youtu.be/DulXf3zHrq4', '01-03-2020'),
(112, 'Lyrical: Kya Karte The Saajna', 'Lyrical: Kya Karte The Saajna | Shubh Mangal Zyada Saavdhan |Ayushmann K,Jeetu | Tanishk B', '1080p', 'Hindi', 'T-Series', 'HINDI MUSIC', 'https://megaplay.in/admin/images/movies/112.png', 'https://youtu.be/noLRGKL-d7U', '01-03-2020'),
(113, 'Ho Ja Mast Malang Tu Full Video', 'Ho Ja Mast Malang Tu Full Video | MALANG | Aditya Roy Kapur, Disha Patani, Anil Kapoor, Kunal Kemmu', '1080p', 'Hindi', 'T-Series', 'HINDI MUSIC', 'https://megaplay.in/admin/images/movies/113.png', 'https://youtu.be/Ho_PJ7lXz4A', '01-03-2020'),
(114, 'Lyrical: Raakh | Shubh Mangal Zyada Saavdhan ', 'Lyrical: Raakh | Shubh Mangal Zyada Saavdhan | Ayushmann K, Jeetu | Arijit Singh | Tanishk - Vayu', '1080p', 'Hindi', 'T-Series', 'HINDI MUSIC', 'https://megaplay.in/admin/images/movies/114.png', 'https://youtu.be/A3i0pxSAsTk', '01-03-2020'),
(115, 'BHANKAS Audio | Baaghi 3 ', 'BHANKAS Audio | Baaghi 3 | Tiger S, Shraddha K | Bappi Lahiri,Dev Negi,Jonita G|Tanishk B', '1080p', 'Hindi', 'T-Series', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/115.png', 'https://youtu.be/fADiXnnX_3o', '01-03-2020'),
(116, 'Full Audio: Ek Zindagi | Angrezi Medium', 'Full Audio: Ek Zindagi | Angrezi Medium | Irrfan, Radhika M,| Tanishkaa, Sachin-Jigar', '1080p', 'Hindi', 'T-Series', 'HINDI MUSIC', 'https://megaplay.in/admin/images/movies/116.png', 'https://youtu.be/QcoovnTTDjI', '01-03-2020'),
(117, 'Lyrical: Mile Sur | Street Dancer 3D |', 'Lyrical: Mile Sur | Street Dancer 3D | Varun, Shraddha, Prabhu D|Navraj H, Shalmali, Sachin Jigar', '1080p', 'Hindi', 'T-Series', 'HINDI MUSIC', 'https://megaplay.in/admin/images/movies/117.png', 'https://youtu.be/C68hOojkX5M', '01-03-2020'),
(118, 'Humraah Full Audio | Malang', 'Humraah Full Audio | Malang | Aditya R K, Disha P Anil K Kunal K | Sachet T | Mohit S | Fusion P', '1080p', 'Hindi', 'T-Series', 'HINDI MUSIC', 'https://megaplay.in/admin/images/movies/118.png', 'https://youtu.be/kpIGZGu30ws', '01-03-2020'),
(119, 'Full Audio: Dancing In The Sun | THAPPAD ', 'Full Audio: Dancing In The Sun | THAPPAD | Taapsee Pannu | Sharvi Yadav | Anurag Saikia', '1080p', 'Hindi', 'T-Series', 'HINDI MUSIC', 'https://megaplay.in/admin/images/movies/119.png', 'https://youtu.be/5dyVUGpBwTY', '01-03-2020'),
(120, 'Full Audio: Hayo Rabba | THAPPAD |', 'Full Audio: Hayo Rabba | THAPPAD | Taapsee Pannu | Suvarna Tiwari | Anurag Saikia | Movie In Cinemas', '1080p', 'Hindi', 'T-Series', 'HINDI MUSIC', 'https://megaplay.in/admin/images/movies/120.png', 'https://youtu.be/KPrV5h7S5zU', '01-03-2020'),
(121, 'Full Album: THAPPAD | Taapsee Pannu |', 'Full Album: THAPPAD | Taapsee Pannu | Anurag Saikia | Movie In Cinemas Now | Audio Jukebox', '1080p', 'Hindi', 'T-Series', 'HINDI MUSIC', 'https://megaplay.in/admin/images/movies/121.png', 'https://youtu.be/N33qrZIoVKk', '01-03-2020'),
(122, 'Thappad (2020)', 'Actors: Dia Mirza, Kumud Mishra, Pavail Gulati, Ram Kapoor, Ratna Pathak, Taapsee Pannu, Tanvi Azmi', '480p', 'Hindi', 'NEW MOVIES 2020', 'BOLLYWOOD MOVIES', 'https://megaplay.in/admin/images/movies/122.png', 'https://drive.google.com/uc?id=14FXAsJkEQjtplHXDhxTht-54i8iKPJq7https://drive.google.com/uc?id=14FXAsJkEQjtplHXDhxTht-54i8iKPJq7https://drive.google.com/uc?id=14FXAsJkEQjtplHXDhxTht-54i8iKPJq7', '02-03-2020'),
(123, 'Bhangra Paa Le (2020)', 'Actors: Jayati Bhatia, Parmeet Sethi, Rukshar Dhillon, Samir Soni, Sheeba Chaddha, Shriya Pilgaonkar, Sunny Kaushal', '720p', 'Hindi', 'NEW MOVIES 2020', 'BOLLYWOOD MOVIES', 'https://megaplay.in/admin/images/movies/123.png', 'https://drive.google.com/uc?id=1wCBlfFFFZR9bEzmOp4lroq0knbG3Wk0yhttps://drive.google.com/uc?id=1wCBlfFFFZR9bEzmOp4lroq0knbG3Wk0yhttps://drive.google.com/uc?id=1wCBlfFFFZR9bEzmOp4lroq0knbG3Wk0y', '02-03-2020'),
(124, 'Jai Mummy Di 2020', 'Actors: Poonam Dhillon, Sonnalli Seygall, Sunny Singh Nijjar, Supriya Pathak', '720p', 'Hindi', 'NEW MOVIES 2020', 'BOLLYWOOD MOVIES', 'https://megaplay.in/admin/images/movies/124.png', 'https://drive.google.com/uc?id=1zjIqf5czLuzb9ljY37Ls0RzCVIPEfHFthttps://drive.google.com/uc?id=1zjIqf5czLuzb9ljY37Ls0RzCVIPEfHFthttps://drive.google.com/uc?id=1zjIqf5czLuzb9ljY37Ls0RzCVIPEfHFt', '02-03-2020'),
(125, 'Panga 2020', 'Actors: Deepak Agarwal, Jassie Gill, Kangana Ranaut, Neena Gupta, Rajesh Tailang, Richa Chadha, Yagya Bhasin', '720p', 'Hindi', 'NEW MOVIES 2020', 'BOLLYWOOD MOVIES', 'https://megaplay.in/admin/images/movies/125.png', 'https://drive.google.com/uc?id=1XXQETnenvigmgKI2-mFUPtR5xhcu6408https://drive.google.com/uc?id=1XXQETnenvigmgKI2-mFUPtR5xhcu6408https://drive.google.com/uc?id=1XXQETnenvigmgKI2-mFUPtR5xhcu6408', '02-03-2020'),
(126, 'STREET BOY : Gopi Waraich', 'STREET BOY (Official Video) Gopi Waraich | New Punjabi Songs 2020 | Latest Punjabi Songs 2020', '1080p', 'Punjabi', 'VehliJantaRecords', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/126.png', 'https://youtu.be/al8c-juGew8', '02-03-2020'),
(127, 'RDX : Tarsem Jassar ', 'RDX (Official Audio) Tarsem Jassar | Vehli Janta Records | New Punjabi Songs 2020', '1080p', 'Punjabi', 'VehliJantaRecords', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/127.png', 'https://youtu.be/UsxyJiE6DU4', '02-03-2020'),
(128, 'BABA NANAK JI OFFICIAL SONG', 'BABA NANAK JI OFFICIAL SONG | HARIHAR SINGH & GURPREET KAUR | BAWA GULZAR | \r\n', '1080p', 'Punjabi', 'VehliJantaRecords', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/128.png', 'https://youtu.be/LDAIz0IilIQ', '02-03-2020'),
(129, 'SAMEBLOOD : Gopi Waraich ', 'SAMEBLOOD (Official Video) Gopi Waraich | Vehli Janta Records | New Punjabi Songs 2020', '1080p', 'Punjabi', 'VehliJantaRecords', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/129.png', 'https://youtu.be/i8FWnBkPku4', '02-03-2020'),
(130, 'GEDI : Kulbir Jhinjer ft Tarsem Jassar', 'GEDI (Official Video) Kulbir Jhinjer ft Tarsem Jassar | New Song 2019 | Vehli Janta Records', '1080p', 'Punjabi', 'VehliJantaRecords', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/130.png', 'https://youtu.be/6uTM5ecVOxY', '02-03-2020'),
(131, 'Time : Davinder Dhillon', 'Time (Official Video) Davinder Dhillon | New Punjabi Songs 2019 | Vehli Janta Records', '1080p', 'Punjabi', 'VehliJantaRecords', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/131.png', 'https://youtu.be/_poDj700Bcw', '02-03-2020'),
(132, 'YAARAN NAL CHILL : Kulbir Jhinjer ft Tarsem Jassar', 'YAARAN NAL CHILL (Official Video) Kulbir Jhinjer | Tarsem Jassar | New Punjabi Songs 2019', '1080p', 'Punjabi', 'VehliJantaRecords', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/132.png', 'https://youtu.be/TgnFWcG2km8', '02-03-2020'),
(133, 'STOP IT : Jagdish Dhaliwal ft Sherry Kahlon ', 'STOP IT (Official Video) Jagdish Dhaliwal ft Sherry Kahlon | New Punjabi Songs 2019', '1080p', 'Punjabi', 'VehliJantaRecords', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/133.png', 'https://youtu.be/RU8-1bb6BFY', '02-03-2020'),
(135, 'TERA TERA : Tarsem Jassar', 'TERA TERA (Official Video) Tarsem Jassar | Western Penduz | New Punjabi Songs 2019', '1080p', 'Punjabi', 'VehliJantaRecords', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/135.png', 'https://youtu.be/Qm-PWmkYwy4', '02-03-2020'),
(136, 'EYES ON YOU : Tarsem Jassar', 'EYES ON YOU (Official Video) Tarsem Jassar | New Punjabi Songs 2019 | Vehli Janta Records', '1080p', 'Punjabi', 'VehliJantaRecords', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/136.png', 'https://youtu.be/cYO-91z70Ng', '02-03-2020'),
(137, 'Ladki Kamaal Ae : Dr. J', 'Ladki Kamaal Ae : Dr. J (Official Song) Latest Punjabi Songs | Geet MP3', '1080p', 'Punjabi', 'Geet MP3', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/137.png', 'https://youtu.be/B_j8A-nlJhk', '02-03-2020'),
(138, 'Just Friend : Remmy & Shipra Goyal', 'Just Friend : Remmy & Shipra Goyal (Official Video) Latest Punjabi Songs 2020 | Geet MP3', '1080p', 'Punjabi', 'Geet MP3', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/138.png', 'https://youtu.be/JsEbkQzftFA', '02-03-2020'),
(139, 'Dushman 40 : Harf Cheema & Gurlej Akhtar', 'Dushman 40 : Harf Cheema & Gurlej Akhtar (Full Song) Deep Jandu | Latest Punjabi Song | Geet MP3', '1080p', 'Punjabi', 'Geet MP3', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/139.png', 'https://youtu.be/XCiPnOapxNc', '02-03-2020'),
(140, 'Hitler : GURI ', 'Hitler : GURI (Reloaded Song) Jayy Randhawa | Deep Jandu | Shooter ', '1080p', 'Punjabi', 'Geet MP3', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/140.png', 'https://youtu.be/OhgCfPc5xCk', '02-03-2020'),
(141, 'Gal Sun : Jass Manak', 'Gal Sun : Jass Manak (Full Song) Jayy Randhawa | Rajat Nagpal | Shooter', '1080p', 'Punjabi', 'Geet MP3', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/141.png', 'https://youtu.be/QaJhvr-Z5Ng', '02-03-2020'),
(142, 'Shopping : Jass Manak', 'Shopping : Jass Manak (Official Song) Latest Punjabi Songs 2020 | GK DIGITAL | Geet MP3', '1080p', 'Punjabi', 'Geet MP3', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/142.png', 'https://youtu.be/J2TsJsT80dI', '02-03-2020'),
(143, 'MAA : Veet Baljit & Jayy Randhawa', 'MAA : Veet Baljit (Full Song) Jayy Randhawa | Deep Jandu | ', '1080p', 'Punjabi', 'Geet MP3', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/143.png', 'https://youtu.be/KvJ2lOB-Zqw', '02-03-2020'),
(144, 'Shad Dena Tenu : Satbir Aujla', 'Shad Dena Tenu : Satbir Aujla (Full Song) Latest Punjabi Songs 2020 | Geet MP3', '1080p', 'Punjabi', 'Geet MP3', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/144.png', 'https://youtu.be/83AwtI654OU', '02-03-2020'),
(145, 'Shoot Da Order : Jass Manak, Jagpal Sandhu ', 'Shoot Da Order : Jass Manak, Jagpal Sandhu (Full Song) Jayy Randhawa | Deep Jandu | Shooter |', '1080p', 'Punjabi', 'Geet MP3', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/145.png', 'https://youtu.be/XBVL9mJeae8', '02-03-2020'),
(146, 'Tere Laare : Chetan & Kulwinder Billa', 'Tere Laare : Chetan & Kulwinder Billa (Full Video) Latest Songs | Sad Songs 2020 | Geet MP3', '1080p', 'Punjabi', 'Geet MP3', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/146.png', 'https://youtu.be/LMYqa6U_RiA', '02-03-2020'),
(147, 'Rabb Da Radio 2 : Tarsem Jassar', 'Rabb Da Radio 2 (Full Movie) - Tarsem Jassar, Simi Chahal | New Punjabi Movie | Latest Punjabi Film', '720p', 'Punjabi', 'VehliJantaRecords', 'PUNJABI MOVIES', 'https://megaplay.in/admin/images/movies/147.png', 'https://youtu.be/I2rq9-0GfRU', '02-03-2020'),
(148, 'Mera Jee : Prabh Gill', 'Mera Jee (Official Video) | Prabh Gill | Yaar Anmulle Returns | 27th March | New Punjabi Song 2020', '1080p', 'Punjabi', 'Speed Records', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/148.png', 'https://youtu.be/Yh1_JLw9CMg', '02-03-2020'),
(149, 'Rooh Mahiya (Official Video)', 'Rooh Mahiya (Official Video) | Saanj | Praabh Neear (PNM) | Preet Bodal | Latest Punjabi Songs 2020', '1080p', 'Punjabi', 'Speed Records', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/149.png', 'https://youtu.be/R9gD40kUADA', '02-03-2020'),
(150, 'Teri Khaamiyan : Akhil ', 'Teri Khaamiyan (Full Audio) | Akhil | Crossblade Live | Gurnazar | Latest Punjabi Songs 2020', '1080p', 'Punjabi', 'Speed Records', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/150.png', 'https://youtu.be/HUbEBJsyFYg', '02-03-2020'),
(151, 'Birthday Wish : Jaz Dhami ', 'Birthday Wish | Jaz Dhami | Birthday Special | Latest Punjabi Song 2020', '1080p', 'Punjabi', 'Speed Records', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/151.png', 'https://youtu.be/5MBUiY3GpjU', '02-03-2020'),
(152, 'Red Eyes : Karan Aujla Ft Gurlej Akhtar', 'Red Eyes (Official Video) | Karan Aujla Ft Gurlej Akhtar | Proof | Jeona & Jogi | Latest Songs 2020', '1080p', 'Punjabi', 'Speed Records', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/152.png', 'https://youtu.be/wRYCqpaV1iY', '02-03-2020'),
(153, 'Oscar : Singga', 'Oscar (Official Video) | Singga | Harish Verma | Yuvraaj Hans | Prabh Gill | New Punjabi Song 2020', '1080p', 'Punjabi', 'Speed Records', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/153.png', 'https://youtu.be/JgDToo8PeEE', '02-03-2020'),
(154, 'Dil Vi Nai Lagda : Nachhatar Gill', 'Dil Vi Nai Lagda (Full Video) | Nachhatar Gill | Dev Kharoud | Anchal Singh | New Punjabi Songs 2020', '1080p', 'Punjabi', 'Speed Records', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/154.png', 'https://youtu.be/mVSob7qVWGI', '02-03-2020'),
(155, 'The King : Amrit Maan', 'The King (Lyrical) | Amrit Maan | Intense | Latest Punjabi Songs 2020 | Speed Records', '1080p', 'Punjabi', 'Speed Records', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/155.png', 'https://youtu.be/vDYwKy4I7EQ', '02-03-2020'),
(156, 'Qubool : Sufna | Ammy Virk', 'Qubool A (Lyrical) | Sufna | Ammy Virk | Tania | Hashmat Sultana | B Praak | Jaani | New Song 2020', '1080p', 'Punjabi', 'Speed Records', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/156.png', 'https://youtu.be/Jx4Cl7ts6VE', '02-03-2020'),
(157, 'Feeling : Bulli Badshah | Harjaspreet Singh', 'Feeling | (4K Video) | Bulli Badshah | Harjaspreet Singh | New Punjabi Song 2020 | Jass Records', '1080p', 'Punjabi', 'Jass Records', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/157.png', 'https://youtu.be/3SMNtj1hBqc', '02-03-2020'),
(158, 'My Self ELLDE FAZILKA ', 'My Self ELLDE FAZILKA | (Full HD) | Ellde Fazilka | Tru Bande | Pejimia | New Punjabi Songs 2020', '1080p', 'Punjabi', 'Jass Records', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/158.png', 'https://youtu.be/f4_KWgRCGR0', '02-03-2020'),
(159, 'Landlord : Raja Yankee', 'Landlord | (Full HD) | Raja Yankee | New Punjabi Songs 2020 | Jass Records', '1080p', 'Punjabi', 'Jass Records', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/159.png', 'https://youtu.be/nTf-wAOrOzo', '02-03-2020'),
(160, 'Foot Step : Prince Zaildar Ft Afsana Khan', 'Foot Step | (Full HD) | Prince Zaildar Ft Afsana Khan | New Punjabi Songs 2020 | Jass Records', '1080p', 'Punjabi', 'Jass Records', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/160.png', 'https://youtu.be/PRo31BtxM30', '02-03-2020'),
(161, 'Deedar 2 : Jassi Bains Ft. Twinkle Kapoor', 'Deedar 2 | (Full HD) | Jassi Bains Ft. Twinkle Kapoor | New Punjabi Songs 2020 | Jass Records', '1080p', 'Punjabi', 'Jass Records', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/161.png', 'https://youtu.be/Dd9-STVyiAA', '02-03-2020'),
(162, 'Chobbar : Deep Prince', 'Chobbar | (Full HD) | Deep Prince | Latest Punjabi Songs 2020 | Jass Records', '1080p', 'Punjabi', 'Jass Records', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/162.png', 'https://youtu.be/qEk-PN0tSgc', '02-03-2020'),
(163, 'Criminal : Deep Sekhon Ft. Game Boy', 'Criminal | (Full HD) | Deep Sekhon Ft. Game Boy | New Punjabi Songs 2020 | Jass Records', '1080p', 'Punjabi', 'Jass Records', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/163.png', 'https://youtu.be/q1PEYBByzQA', '02-03-2020'),
(164, 'Ban Neck : Hunter D', 'Ban Neck | (Full HD) | Hunter D | New Punjabi Songs 2020 | Jass Records', '1080p', 'Punjabi', 'Jass Records', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/164.png', 'https://youtu.be/iItqr44zPi8', '02-03-2020'),
(165, 'Mossberg : Neet Ft. Rajia Sultan', 'Mossberg | (Full HD) | Neet Ft. Rajia Sultan | New Punjabi Songs 2020 | Jass Records', '1080p', 'Punjabi', 'Jass Records', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/165.png', 'https://youtu.be/RolryEYMEMU', '02-03-2020'),
(166, 'Proud : Peshi Kubbe', 'Proud | (Full HD) | Peshi Kubbe | New Punjabi Songs 2020 | Jass Records', '1080p', 'Punjabi', 'Jass Records', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/166.png', 'https://youtu.be/jUHb73TeIbk', '02-03-2020'),
(167, 'Teri Hoi Na : Preet Sukh | Cheetah', 'Teri Hoi Na (Full Song) | Preet Sukh | Cheetah | New Punjabi Sad Song 2020 | White Hill Music', '1080p', 'Punjabi', 'White Hill Music', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/167.png', 'https://youtu.be/wgMqtXRyZOE', '02-03-2020'),
(168, 'Nit Nit : Jasleen Royal', 'Nit Nit (Full Song) | Jasleen Royal | New Punjabi Song 2020 | White Hill Music', '1080p', 'Punjabi', 'White Hill Music', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/168.png', 'https://youtu.be/7YbfDiCC-qk', '02-03-2020'),
(169, 'Zaroori Nahi : Naro ', 'Zaroori Nahi (Official Video) Naro | New Punjabi Song 2020 | White Hill Music', '1080p', 'Punjabi', 'White Hill Music', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/169.png', 'https://youtu.be/ANlzTQ6M8fE', '02-03-2020'),
(170, '7 Pegg : Pawanjit Pavy', '7 Pegg (Full Song) Pawanjit Pavy | New Song 2020 | White Hill Music', '1080p', 'Punjabi', 'White Hill Music', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/170.png', 'https://youtu.be/OFVVGLywIuA', '02-03-2020'),
(171, 'PHULKARI : Baani Sandhu ft Dilpreet Dhillon', 'PHULKARI (Official Video) Baani Sandhu ft Dilpreet Dhillon, Western Penduz | New Punjabi Song 2020\r\n', '1080p', 'Punjabi', 'White Hill Music', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/171.png', 'https://youtu.be/3axp5Yjmf9A', '02-03-2020'),
(172, 'Mahiya Ve : DS Chauhan', 'Mahiya Ve (Full Song) | DS Chauhan | New Song 2020 | White Hill Music', '1080p', 'Punjabi', 'White Hill Music', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/172.png', 'https://youtu.be/loPxsrwq4bw', '02-03-2020'),
(173, 'Aida Hi Sohni : Rohanpreet Singh ft. Mahira Sharma', 'Aida Hi Sohni (Full Song) | Rohanpreet Singh ft. Mahira Sharma | New Song 2020 | White Hill Music', '1080p', 'Punjabi', 'White Hill Music', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/173.png', 'https://youtu.be/jI8_2ykKIM8', '02-03-2020'),
(174, 'Desire : Rahul Sharma', 'Desire (Full Song) | Rahul Sharma | Akanksha Sareen | New Song 2020 | White Hill Music', '1080p', 'Punjabi', 'White Hill Music', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/174.png', 'https://youtu.be/0YIYy3Dl6hQ', '02-03-2020'),
(175, 'Aadat : Sultan Singh ft. Nisha Guragain', 'Aadat (Full Song) Sultan Singh ft. Nisha Guragain | New Song 2020 | White Hill Music', '1080p', 'Punjabi', 'White Hill Music', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/175.png', 'https://youtu.be/pnXMCGUsuvc', '02-03-2020'),
(176, 'Zulfa : Guru Gill', 'Zulfa (Full Song) | Guru Gill | New Song 2020 | White Hill Music', '1080p', 'Punjabi', 'White Hill Music', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/176.png', 'https://youtu.be/3CtGsyN42O4', '02-03-2020'),
(177, 'Charche : Maud ft. Afsana Khan', 'Charche (Full Song) Maud feat. Afsana Khan | Latest Punjabi Songs 2020 | New Punjabi Song 2020', '1080p', 'Punjabi', 'Nupur Audio', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/177.png', 'https://youtu.be/6U5Sl3_zGec', '02-03-2020');
INSERT INTO `movies` (`id`, `title`, `description`, `quality`, `language`, `channel`, `category`, `img_link`, `d_link`, `date`) VALUES
(178, ' Dil Mutiyar Da : Singga', 'Singga : Dil Mutiyar Da (Official Video) | Latest Punjabi Songs 2020 | New Punjabi Song 2020', '1080p', 'Punjabi', 'Nupur Audio', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/178.png', 'https://youtu.be/-ZP8hPwNo2g', '02-03-2020'),
(179, 'DIAMOND : D Hans', 'DIAMOND : D Hans (Official Video) | D Sanz | Deepa Patran | Latest Punjabi Songs 2020', '1080p', 'Punjabi', 'Nupur Audio', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/179.png', 'https://youtu.be/qCCe6uc-1lY', '02-03-2020'),
(180, 'SHARABAN  : Joban Ghumman', 'SHARABAN (Full Video) New Punjabi Songs 2020 : Joban Ghumman | Preet Mansa | Jassi Bros', '1080p', 'Punjabi', 'Nupur Audio', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/180.png', 'https://youtu.be/2MpSOIjQirk', '02-03-2020'),
(181, 'Ekam Bawa : BUGGA BUGGA', 'Ekam Bawa : BUGGA BUGGA (Full Song) Latest Punjabi Songs 2020 | New Punjabi Song 2020', '1080p', 'Punjabi', 'Nupur Audio', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/181.png', 'https://youtu.be/4YkBXO78jzY', '02-03-2020'),
(182, 'All I Need : Deep Dhaliwal, Neetu B', 'All I Need (Full Song) : Deep Dhaliwal, Neetu B | Young Army | Lally M | Latest Punjabi Songs 2020', '1080p', 'Punjabi', 'Nupur Audio', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/182.png', 'https://youtu.be/ZzKWjBWYxik', '02-03-2020'),
(183, 'GUNDAY : Jass Bajwa feat. Karan Aujla', 'GUNDAY - Jass Bajwa feat. Karan Aujla & Deep Jandu (Lyrical) | New Punjabi Song 2020', '1080p', 'Punjabi', 'Nupur Audio', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/183.png', 'https://youtu.be/X1DLBve9kvg', '02-03-2020'),
(184, 'BLACKLIST : Rav Khalouria', 'BLACKLIST Full Song : Rav Khalouria | J Jind | Mandy | New Punjabi Songs 2020 | Nupur Audio', '1080p', 'Punjabi', 'Nupur Audio', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/184.png', 'https://youtu.be/4STDjhg1nYo', '02-03-2020'),
(185, 'SINGGA : Khauf', 'SINGGA : Khauf (Official Video) | Harvir gill | Desi Crew | New Punjabi Songs 2019', '1080p', 'Punjabi', 'Nupur Audio', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/185.png', 'https://youtu.be/15ocuvUzJUs', '02-03-2020'),
(186, 'Karan Aujla : Little Bit', 'Karan Aujla : Little Bit (Official Video) Jass Bajwa | Deep Jandu | Latest Punjabi Songs 2020', '1080p', 'Punjabi', 'Nupur Audio', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/186.png', 'https://youtu.be/yNR9W-7kwqw', '02-03-2020'),
(187, 'Ammy Virk : Fukriyaan', 'Ammy Virk : Fukriyaan (Official Video) | Latest Punjabi Songs 2019 | Nupur Audio', '1080p', 'Punjabi', 'Nupur Audio', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/187.png', 'https://youtu.be/pSq8qyu5IVU', '02-03-2020'),
(188, 'Qaafir : B Praak,Jaani & Karandeep', 'Qaafir Full Song - B Praak Jaani & Karandeep | Latest Punjabi Songs 2019', '1080p', 'Punjabi', 'Nupur Audio', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/188.png', 'https://youtu.be/ed8nH__W7BM', '02-03-2020'),
(189, 'Uda Adda  2019 : Tarsem Jassar', 'Uda Aida Full Movie 2019 | Tarsem Jassar | Neeru Bajwa', '1080p', 'Punjabi', 'Others', 'PUNJABI MOVIES', 'https://megaplay.in/admin/images/movies/189.png', 'https://youtu.be/Su_YQl6O-C0', '02-03-2020'),
(190, 'Singh vs Kaur 2013', 'Singh vs Kaur | Full Movie | Latest Punjabi Movie | Super Hit Punjabi Film gippy grewal', '1080p', 'Punjabi', 'Lokdhun Punjabi ', 'PUNJABI MOVIES', 'https://megaplay.in/admin/images/movies/190.png', 'https://youtu.be/oKRps5Fwr80', '02-03-2020'),
(191, 'Kaptaan 2016 : Gippy Grewal', 'Captaan Gippy Grewal Punjabi full movie 2016', '1080p', 'Punjabi', 'Others', 'PUNJABI MOVIES', 'https://megaplay.in/admin/images/movies/191.png', 'https://youtu.be/N8QQDEpnXYM', '02-03-2020'),
(192, 'Jatt James Bond : Gippy Grewal', 'New Punjabi Movies in Hindi 2017 - Jatt James Bond - New Released Hindi Movie | Gippy Grewal', '1080p', 'Punjabi', 'Others', 'PUNJABI MOVIES', 'https://megaplay.in/admin/images/movies/192.png', 'https://youtu.be/A6s47ha4yhk', '02-03-2020'),
(193, 'JATT AND JULIET || 2018', 'Jatt & Juliet | Full Movie | Diljit Dosanjh | Neeru Bajwa | New Punjabi Movie 2018 | Speed Records', '1080p', 'Punjabi', 'Speed Records', 'PUNJABI MOVIES', 'https://megaplay.in/admin/images/movies/193.png', 'https://youtu.be/140_a0fWOQk', '02-03-2020'),
(194, 'JATT AND JULIET 2 || 2018', 'Jatt & Juliet 2 Full Movie |  Movies 2019 Full Movie | Diljit Dosanjh | punjabi Movies', '1080p', 'Punjabi', 'Others', 'PUNJABI MOVIES', 'https://megaplay.in/admin/images/movies/194.png', 'https://youtu.be/exKgMhFWkpQ', '02-03-2020'),
(195, 'Nikka Zaildar : Ammy Virk, Sonam Bajwa ', 'Nikka Zaildar (Full Movie) - Ammy Virk, Sonam Bajwa | New Punjabi Film | Latest Punjabi Movie', '1080p', 'Punjabi', 'Lokdhun Punjabi ', 'PUNJABI MOVIES', 'https://megaplay.in/admin/images/movies/195.png', 'https://youtu.be/4oO0zV5ANNI', '02-03-2020'),
(196, 'Nikka Zaildar 2 : Ammy Virk, Sonam Bajwa', 'Nikka Zaildar 2 (Full Movie)HD - Ammy Virk, Sonam Bajwa, Wamiqa Gabbi, Latest Punjabi Movie 2018', '1080p', 'Punjabi', 'Others', 'PUNJABI MOVIES', 'https://megaplay.in/admin/images/movies/196.png', 'https://youtu.be/ChtFlbUn_yE', '02-03-2020'),
(197, 'Laung Laachi || 2019', 'Laung Laachi Full Movie | Ammy Virk | Neeru Bajwa | Amberdeep Singh | Latest Punjabi Movie', '1080p', 'Punjabi', 'T-Series Apna Punjab', 'PUNJABI MOVIES', 'https://megaplay.in/admin/images/movies/197.png', 'https://youtu.be/AtvngeXhu8E', '02-03-2020'),
(198, 'Ardaas (Full Movie) à¨…à¨°à¨¦à¨¾à¨¸ 2019', 'Ardaas (Full Movie) à¨…à¨°à¨¦à¨¾à¨¸ | Gurpreet Ghuggi, Ammy Virk, Gippy Grewal | Latest Punjabi Movie 2019', '1080p', 'Punjabi', 'Lokdhun Punjabi ', 'PUNJABI MOVIES', 'https://megaplay.in/admin/images/movies/198.png', 'https://youtu.be/UBzbGK6xBpw', '02-03-2020'),
(199, 'Kaka ji son of royal sardaar 2019', 'Kaka Ji New Full Movie Dev Kharoud Punjabi movie 2019\r\n\r\n', '1080p', 'Punjabi', 'Others', 'PUNJABI MOVIES', 'https://megaplay.in/admin/images/movies/199.png', 'https://youtu.be/JTSBkOjsmbo', '02-03-2020'),
(200, 'Guddiyan Patole || 2019', 'Gudiya Patola | Guranm Bhullar | New Latest Punjabi movie 2020 | Full in HD', '1080p', 'Punjabi', 'Others', 'PUNJABI MOVIES', 'https://megaplay.in/admin/images/movies/200.png', 'https://youtu.be/YoalwMQ1Xho', '02-03-2020'),
(201, 'Surkhi Bindi || 2019', 'Surkhi Bindi full movie new punjabi movie 2019 latest punjabi movie 2020', '1080p', 'Punjabi', 'Others', 'PUNJABI MOVIES', 'https://megaplay.in/admin/images/movies/201.png', 'https://youtu.be/Ah0yIXMxHz0', '02-03-2020'),
(203, 'DAILY DAILY - Neha Kakkar ft. Riyaz Aly', 'DAILY DAILY - Neha Kakkar ft. Riyaz Aly & Avneet Kaur | Rajat Nagpal | Vicky Sandhu | Anshul Garg', '1080p', 'Punjabi', 'Desi Music Factory', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/203.png', 'https://youtu.be/hTVsUtVQLB8', '03-03-2020'),
(204, 'GOA BEACH : Tony Kakkar & Neha Kakkar', 'GOA BEACH - Tony Kakkar & Neha Kakkar | Aditya Narayan | Kat | Anshul Garg | Latest Hindi Song 2020', '1080p', 'Hindi', 'Desi Music Factory', 'HINDI MUSIC', 'https://megaplay.in/admin/images/movies/204.png', 'https://youtu.be/n5WnMJ0J6qA', '03-03-2020'),
(205, 'Viah Nai Karauna : Preetinder  | Mr. Faisu', 'Viah Nai Karauna - Preetinder | Mr. Faisu & Ankita Sharma | Babbu | MixSingh | LATEST PUNJABI SONG', '1080p', 'Punjabi', 'Desi Music Factory', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/205.png', 'https://youtu.be/qo8_A5dh4Ng', '03-03-2020'),
(206, 'SUPERSTAR : Riyaz Aly & Anushka Sen', 'SUPERSTAR - Riyaz Aly & Anushka Sen | Neha Kakkar | Vibhor Parashar | Sarmad | Raghav | Gaana', '1080p', 'Hindi', 'Desi Music Factory', 'HINDI MUSIC', 'https://megaplay.in/admin/images/movies/206.png', 'https://youtu.be/IuL-IN2mkbo', '03-03-2020'),
(207, 'MOVE ON : Inder Chahal ft. Rajat Nagpal', 'MOVE ON - Inder Chahal ft. Rajat Nagpal | Rana | Latest Punjabi Songs 2019', '1080p', 'Punjabi', 'Desi Music Factory', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/207.png', 'https://youtu.be/ljT__YYDhXI', '03-03-2020'),
(208, 'Sorry Song : Neha Kakkar', 'Sorry Song - Neha Kakkar & Maninder Buttar | Babbu | MixSingh | Latest Punjabi Song 2019', '1080p', 'Punjabi', 'Desi Music Factory', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/208.png', 'https://youtu.be/NNJzHK7PGm8', '03-03-2020'),
(209, 'Pahadan : Rajat Nagpal | Riyaz Aly', 'Pahadan - Rajat Nagpal | Riyaz Aly | Avneet Kaur | Gurnazar | Latest Punjabi Song 2019', '1080p', 'Punjabi', 'Desi Music Factory', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/209.png', 'https://youtu.be/NZLUYfXS0qU', '03-03-2020'),
(210, 'PUCHDA HI NAHIN : Neha Kakkar', 'PUCHDA HI NAHIN - Neha Kakkar | Rohit Khandelwal | Babbu | Maninder B | MixSingh | Latest Song 2019', '1080p', 'Punjabi', 'Desi Music Factory', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/210.png', 'https://youtu.be/xtgC88yFXeM', '03-03-2020'),
(211, 'GAL KARKE : Anushka Sen', 'GAL KARKE - Asees Kaur | Siddharth Nigam | Anushka Sen | Gaana Originals | Latest Punjabi Song 2019', '1080p', 'Punjabi', 'Desi Music Factory', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/211.png', 'https://youtu.be/TvbrANCt5ss', '03-03-2020'),
(212, 'Mehfil : Amninder Bugga', 'Mehfil (Full Video) Amninder Bugga | Music | Ballie Singh | Latest Punjabi Songs 2020\r\n', '1080p', 'Punjabi', 'Rehaan Records', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/212.png', 'https://youtu.be/itn3FK7fX1E', '03-03-2020'),
(213, 'Jhanjar : Karan Aujla ', 'Jhanjar (Full Video) Karan Aujla | Desi Crew | Latest Punjabi Songs 2020\r\n', '1080p', 'Punjabi', 'Rehaan Records', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/213.png', 'https://youtu.be/ZnGMxARIxoY', '03-03-2020'),
(214, 'Leave it : Harmeet Aulakh', 'Leave it (Full Video) Harmeet Aulakh | Himanshi Khurana | Gurlez Akhtar | Latest Punjabi Songs 2020', '1080p', 'Punjabi', 'Rehaan Records', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/214.png', 'https://youtu.be/ApK5-CTcHEM', '03-03-2020'),
(215, 'Chitta Kurta : Karan Aujla', 'Chitta Kurta (Full video) Karan Aujla feat. Gurlez Akhtar | Deep jandu | Punjabi Songs 2019', '1080p', 'Punjabi', 'Rehaan Records', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/215.png', 'https://youtu.be/o9PY6NsB3_E', '03-03-2020'),
(216, 'Demands : Kawal Bhullar', 'Demands (Full Video) Kawal Bhullar feat. Karan Aujla I Latest Punjabi Songs 2019', '1080p', 'Punjabi', 'Rehaan Records', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/216.png', 'https://youtu.be/7z2rHuOSwLg', '03-03-2020'),
(217, 'HINT : Karan Aujla', 'HINT (Full Video) Karan Aujla | Rupan Bal | Jay Trak | Latest Punjabi Songs 2019', '1080p', 'Punjabi', 'Rehaan Records', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/217.png', 'https://youtu.be/cHwQowOzAf0', '03-03-2020'),
(218, 'Tu Mera : Geet Sandhu', 'Tu Mera (Full Video) Geet Sandhu I Zeffrozzer I Latest Punjabi Songs 2019', '1080p', 'Punjabi', 'Rehaan Records', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/218.png', 'https://youtu.be/34oZM9HPBcc', '03-03-2020'),
(219, 'Game Over : Jassi Banipal', 'Game Over (Full Video) Jassi Banipal | Latest Punjabi Songs 2019', '1080p', 'Punjabi', 'Rehaan Records', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/219.png', 'https://youtu.be/QVavGlv3FpU', '03-03-2020'),
(220, '2 AM : Karan Aujla', '2 AM (Full Video) Karan Aujla | Roach Killa | Rupan Bal | Latest Punjabi Songs 2019', '1080p', 'Punjabi', 'Rehaan Records', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/220.png', 'https://youtu.be/lfaahdnXAws', '03-03-2020'),
(221, 'Koi Chakkar Nai : Karan Aujla', 'Koi Chakkar Nai (Full Video) Karan Aujla | Deep Jandu | Latest Punjabi Songs 2019', '1080p', 'Punjabi', 'Rehaan Records', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/221.png', 'https://youtu.be/_76pP5ENzd8', '03-03-2020'),
(222, 'Pink Pink Addiyaan : Jigar Ft Amrit Maan', 'Pink Pink Addiyaan (Official Video) Jigar Ft Amrit Maan | Narinder Batth | Desi Crew | Punjabi Songs', '1080p', 'Punjabi', 'Bamb Beats', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/222.png', 'https://youtu.be/JaY_pPBVKss', '03-03-2020'),
(224, 'Iko Ik Chaa : Arsh Maini', 'Iko Ik Chaa (Official Video) Arsh Maini | Swalina | Latest Punjabi Songs 2020\r\n', '1080p', 'Punjabi', 'Bamb Beats', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/224.png', 'https://youtu.be/_u5RhF9Br8o', '03-03-2020'),
(225, 'AAKAD : Amrit Maan', 'AAKAD (Official Video) Amrit Maan Ft Ginni Kapoor | Desi Crew | Latest Punjabi Songs 2019 | Gaana', '1080p', 'Punjabi', 'Bamb Beats', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/225.png', 'https://youtu.be/uN0LSQbGdQk', '03-03-2020'),
(226, 'Gun Label : Jigar Ft Gurlej Akhtar', 'Gun Label (Full Video) Jigar Ft Gurlej Akhtar | Ginni Kapoor | Desi Crew | Latest Punjabi Songs 2019\r\n', '1080p', 'Punjabi', 'Bamb Beats', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/226.png', 'https://youtu.be/rcITxCqYY0M', '03-03-2020'),
(227, 'Master Piece : Jigar Ft Gurlej Akhtar', 'Master Piece : Jigar Ft Gurlej Akhtar (Full Video) | Desi Crew | Kaptaan | Latest Punjabi Songs 2019\r\n', '1080p', 'Punjabi', 'Bamb Beats', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/227.png', 'https://youtu.be/aBwz8kxQZKE', '03-03-2020'),
(228, 'Pinda Aale : We Dont Keep Calm', 'Pinda Aale : We Dont Keep Calm | Simu Dhillon | Amrit Maan | Mix Singh | Latest Punjabi Songs 2019', '1080p', 'Punjabi', 'Bamb Beats', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/228.png', 'https://youtu.be/3Dg-X_kqDoY', '03-03-2020'),
(229, 'Mere Wargi : Shree Brar Ft Raavi Bal', 'Mere Wargi (Official Video) Shree Brar Ft Raavi Bal | Bamb Beats | New Punjabi Songs 2019', '1080p', 'Punjabi', 'Bamb Beats', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/229.png', 'https://youtu.be/V7B1JimJNzs', '03-03-2020'),
(230, 'Dil Da Kora : Sajjan Adeeb Ft Raavi Bal', 'Dil Da Kora (Wangaan Da Naap) Sajjan Adeeb Ft Raavi Bal | Bamb Beats | New Punjabi Songs 2019', '1080p', 'Punjabi', 'Bamb Beats', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/230.png', 'https://youtu.be/6VuptHwG0tc', '03-03-2020'),
(231, 'Pasand Teri : Anmol Gagan Maan', 'Pasand Teri (Official Video) | Anmol Gagan Maan Ft Garry Atwal | Latest Punjabi Songs 2019', '1080p', 'Punjabi', 'Bamb Beats', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/231.png', 'https://youtu.be/mm_MZFzDA9c', '03-03-2020'),
(232, 'Khauff : Jigar | Amrit Maan', 'Khauff | Jigar | Amrit Maan | Desi Crew | Shehnaz Gill | Bamb Beats', '1080p', 'Punjabi', 'Bamb Beats', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/232.png', 'https://youtu.be/5TyxBqJXU80', '03-03-2020'),
(233, 'Gal Sunle : Param Singh', 'Gal Sunle | Param Singh | Kamal Kahlon | Official Song | New Punjabi Song 2020 | à¨—à©±à¨² à¨¸à©à¨¨à¨²à©ˆ', '1080p', 'Punjabi', 'YRF', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/233.png', 'https://youtu.be/OjvyjACePfk', '03-03-2020'),
(234, 'Shagufta Dili : Satinder Sartaaj', 'Shagufta Dili | Satinder Sartaaj | Sufi Love Song | New Punjabi Song 2019 | Official Music Video', '1080p', 'Punjabi', 'YRF', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/234.png', 'https://youtu.be/VSOiSYxAkmY', '03-03-2020'),
(235, 'Dil Vich Thaan | Prabh Gill', 'Dil Vich Thaan | Prabh Gill | New Punjabi Song 2020 | Official Music Video', '1080p', 'Punjabi', 'YRF', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/235.png', 'https://youtu.be/F491KFJ7aAw', '03-03-2020'),
(236, 'Stranger Song | Diljit Dosanjh', 'Stranger Song | Diljit Dosanjh | Simar Kaur | Alfaaz | Roopi Gill | New Punjabi Song 2020', '1080p', 'Punjabi', 'YRF', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/236.png', 'https://youtu.be/bbOalPurETg', '03-03-2020'),
(238, 'Munda India Ton : Khan Bhaini', 'New Punjabi Songs 2020 | Khan Bhaini | Munda India Ton Lyrical Video | Latest Punjabi Songs 2019\r\n', '1080p', 'Punjabi', 'Single Track Studios', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/238.png', 'https://youtu.be/DmMZj_PDhS4', '03-03-2020'),
(239, 'Golmaal - Fun Unlimited (2006)', 'Golmaal - Fun Unlimited (2006)(HD+Eng Subs) Ajay Devgan, Arshad Warsi, Rimi Sen - Best Comedy Movie', '1080p', 'Hindi', 'Shemaroo', 'BOLLYWOOD MOVIES', 'https://megaplay.in/admin/images/movies/239.png', 'https://youtu.be/SodVhwB6Sz8', '03-03-2020'),
(240, 'Agneepath 2012', 'Agneepath 2012 Hindi Full Movie HD 720p Original', '1080p', 'Hindi', 'Others', 'BOLLYWOOD MOVIES', 'https://megaplay.in/admin/images/movies/240.png', 'https://youtu.be/MIz3n0IdrBU', '03-03-2020'),
(241, 'PK 2014 : Aamir Khan', '\"PK\" Movie 2014 FULL HD 1080p| Aamir Khan , Anushka Sharma', '1080p', 'Hindi', 'Others', 'BOLLYWOOD MOVIES', 'https://megaplay.in/admin/images/movies/241.png', 'https://youtu.be/86gbyP4YjIw', '03-03-2020'),
(242, 'Commando 3 ', 'Full Movie Hd | Latest Bollywood Movie 2020 | New Hindi Dubbed Movies 2020', '1080p', 'Hindi', 'NEW MOVIES 2020', 'BOLLYWOOD MOVIES', 'https://megaplay.in/admin/images/movies/242.png', 'https://youtu.be/e1ux5Qsznqk', '03-03-2020'),
(243, 'Jodha Akbar | Hrithik Roshan ', 'Jodha Akbar | Hrithik Roshan Latest Hindi Movies | HD', '1080p', 'Hindi', 'Others', 'BOLLYWOOD MOVIES', 'https://megaplay.in/admin/images/movies/243.png', 'https://youtu.be/ePEVqAN7cWQ\r\n', '03-03-2020'),
(244, 'The Body FULL Hindi MOVIE', 'The Body FULL Hindi MOVIE 720p', '720p', 'Hindi', 'NEW MOVIES 2020', 'BOLLYWOOD MOVIES', 'https://megaplay.in/admin/images/movies/244.png', 'https://youtu.be/G0neLVqlUNo', '03-03-2020'),
(245, '2 CHEENE | KHAN BHAINI |', '2 CHEENE | KHAN BHAINI | New Punjabi Songs 2020 | Official Video | Latest Punjabi song | Ditto Music', '1080p', 'Punjabi', 'Single Track Studios', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/245.png', 'https://youtu.be/ShOYmsxQQ-g', '03-03-2020'),
(246, 'Dekhi Chal : Tyson Sidhu', 'Dekhi Chal (Full Song) Tyson Sidhu, Gurlez Akhtar | Ellde Fazilka | Latest Punjabi Songs 2020\r\n', '1080p', 'Punjabi', 'T-Series Apna Punjab', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/246.png', 'https://youtu.be/TLJLn4ixGfI', '03-03-2020'),
(247, 'Dabangg 3', 'Chulbul Pandey encounters an enemy from his past, and his origin story as the fearless cop unfolds.\r\nDirector: Prabhu Deva (as Prabhudheva)\r\nWriters: Salman Khan (story), Salman Khan (screenplay) ', '1080p', 'Hindi', 'NEW MOVIES 2020', 'BOLLYWOOD MOVIES', 'https://megaplay.in/admin/images/movies/247.png', 'https://drive.google.com/file/d/1YqLCnoFzb_IpthFkw2gQXfVTJLLMXHaf/view?usp=drivesdk', '03-03-2020'),
(248, 'Qismat : Varinder Brar', 'Qismat | Varinder Brar | Official Punjabi Video | Latest Song |New Punjabi Songs 2020| Ditto Music', '1080p', 'Punjabi', 'Single Track Studios', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/248.png', 'https://youtu.be/nUeMJdxUzbI', '04-03-2020'),
(249, 'Veham 2 : SHEHNAZ GILL', 'New Punjab Songs 2020 | Shehnaz Gill | SHEHNAZ GILL | Veham 2 | JOBAN SANDHU | Latest Song 2019', '1080p', 'Punjabi', 'Single Track Studios', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/249.png', 'https://youtu.be/Wyup3H6aZt0', '04-03-2020'),
(250, 'Sara Khan : Tattoo Boy', 'Sara Khan | Tattoo Boy | Radnyi Tyagraj | Full Video New Hindi Songs 2020 | Ditto Music', '1080p', 'Hindi', 'Single Track Studios', 'HINDI MUSIC', 'https://megaplay.in/admin/images/movies/250.png', 'https://youtu.be/E9umTeddKQM', '04-03-2020'),
(251, 'Jatti : Anmol Gagan Mann', 'New Punjabi Songs 2020 | Jatti Lyrical Video | Anmol Gagan Mann | Latest Hit Punjabi Songs 2019', '1080p', 'Punjabi', 'Single Track Studios', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/251.png', 'https://youtu.be/ng2CZdBLDmU', '04-03-2020'),
(252, 'Naagmani : KHAN BHAINI', 'New Punjabi Songs 2019 | Naagmani Lyrical | KHAN BHAINI | Gurlej Akhtar | Latest Punjabi Songs 2020', '1080p', 'Punjabi', 'Single Track Studios', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/252.png', 'https://youtu.be/SRnuZHcoqDc', '04-03-2020'),
(253, 'ANGELINA WARGI : Baby Saini', 'ANGELINA WARGI - Full Video | Baby Saini | New Punjabi Song 2020 | Ditto Music | ST Studio', '1080p', 'Punjabi', 'Single Track Studios', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/253.png', 'https://youtu.be/hwEdCi_iQ7U', '04-03-2020'),
(254, 'Munda India Ton Video :Khan Bhaini', 'Khan Bhaini | Munda India Ton Video | New Punjabi Songs 2020 Latest Punjabi Songs 2019 | Ditto Music', '1080p', 'Punjabi', 'Single Track Studios', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/254.png', 'https://youtu.be/X3hSWT-eZ0k', '04-03-2020'),
(255, 'Range : Ishandeep', 'New Punjabi Song 2020 | Range Lyrical Video | Ishandeep | Latest Songs 2020 | New Song Punjabi Songs', '1080p', 'Punjabi', 'Single Track Studios', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/255.png', 'https://youtu.be/NujXJAw-pcs', '04-03-2020'),
(256, 'See You Now : Marshall Sehgal | B Praak', 'See You Now - Marshall Sehgal | B Praak | Jaani | New Punjabi Song 2020 | Saga Music', '1080p', 'Punjabi', 'SagaHits', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/256.png', 'https://youtu.be/Xfnh4egd0ck', '04-03-2020'),
(257, 'Dedh Futte Sand : Akay Ft. Jerry', 'Dedh Futte Sand (Full Video) - Akay Ft. Jerry | Western Penduz | New Punjabi Song', '1080p', 'Punjabi', 'SagaHits', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/257.png', 'https://youtu.be/GXfwfP-rGuA', '04-03-2020'),
(258, 'Shopping : Gagan Kokri | Gurlez Akhtar', 'Shopping - Gagan Kokri | Gurlez Akhtar | Simran Dhiman | New Punjabi Song 2020 | Saga Music\r\n', '1080p', 'Punjabi', 'SagaHits', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/258.png', 'https://youtu.be/JfUNgvy3SgA', '04-03-2020'),
(259, 'Tell Me : Deep Ramby | Kuwar Virk', 'Tell Me (Official Video) - Deep Ramby | Kuwar Virk | New Punjabi Song 2020 | Saga Music', '1080p', 'Punjabi', 'SagaHits', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/259.png', 'https://youtu.be/_UC0i3rWyQ8', '04-03-2020'),
(260, 'GundaGardi : Sippy Gill', 'GundaGardi - Sippy Gill (Full Video) | Western Penduz | New Punjabi Song 2020 | Saga Music', '1080p', 'Punjabi', 'SagaHits', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/260.png', 'https://youtu.be/uExwiJVItYQ', '04-03-2020'),
(261, 'Chamkila Sun Di : Gurlez Akhtar | Gitta Bains', 'Gurlez Akhtar - Chamkila Sun Di | Gitta Bains | Jay K | New Song 2020 | Punjabi Songs | Saga Music', '1080p', 'Punjabi', 'SagaHits', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/261.png', 'https://youtu.be/NjwJkceTts8', '04-03-2020'),
(262, 'Bodyguard : Jagmeet Brar | MixSingh', 'Bodyguard (Lyrical Video) - Jagmeet Brar | MixSingh | Latest Punjabi Songs 2020 | Saga Music', '1080p', 'Punjabi', 'SagaHits', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/262.png', 'https://youtu.be/Go9wFDtC4Ig', '04-03-2020'),
(263, 'Bhangra Thok K : Babbal Rai', 'Babbal Rai - Bhangra Thok K | Desi Routz | Sukh Sanghera | New Punjabi Song 2019 | Saga Music', '1080p', 'Punjabi', 'SagaHits', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/263.png', 'https://youtu.be/cgLuFzcVb8Qhttps://youtu.be/cgLuFzcVb8Q', '04-03-2020'),
(264, 'Baazi Dil Di : Himmat Sandhu', 'Baazi Dil Di - Himmat Sandhu | Sara Gurpal | Desi Crew | New Punjabi Song 2019 | Saga Music', '1080p', 'Punjabi', 'SagaHits', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/264.png', 'https://youtu.be/MH1Acb1zYfI', '04-03-2020'),
(265, 'Ik Mafia: G Deep | Sikander Kahlon', 'Ik Mafia (Official Video) - G Deep | Sikander Kahlon | New Punjabi Song 2019 | Saga Music', '1080p', 'Punjabi', 'SagaHits', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/265.png', 'https://youtu.be/Mvum-t_NJSQ', '04-03-2020'),
(267, 'GOAT ( Lyrical Video ) Sidhu Moose Wala', 'GOAT ( Lyrical Video ) Sidhu Moose Wala | Byg Byrd | Latest Punjabi Song 2020 | Sidhu Moose Wala', '1080p', 'Punjabi', 'Sidhu Moose Wala', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/267.png', 'https://youtu.be/N9dSwLf3jsY', '04-03-2020'),
(268, 'Stacks (Full Video) Nseeb', 'Stacks (Full Video) Nseeb ft Jagga | Sidhu Moose Wala | Latest Punjabi Song 2020', '1080p', 'Punjabi', 'Sidhu Moose Wala', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/268.png', 'https://youtu.be/34ipXjBMA84', '04-03-2020'),
(269, 'HEAD UP : Roman Sidhu', 'HEAD UP : Roman Sidhu Ft Afsana Khan | Official Video | Latest Punjabi Songs 2020 | Sidhu Moose Wala', '1080p', 'Punjabi', 'Sidhu Moose Wala', 'PUNJABI MOVIES', 'https://megaplay.in/admin/images/movies/269.png', 'https://youtu.be/eL9Y80eX8l8', '04-03-2020'),
(270, 'OLD SKOOL (Full Video) Prem Dhillon', 'OLD SKOOL (Full Video) Prem Dhillon ft Sidhu Moose Wala | Naseeb | Latest Punjabi Song 2020', '1080p', 'Punjabi', 'Sidhu Moose Wala', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/270.png', 'https://youtu.be/hBlO1i_WTiY', '04-03-2020'),
(271, 'DHAKKA : Sidhu Moose Wala ', 'DHAKKA : Sidhu Moose Wala ft Afsana Khan | Official Music Video | Latest Punjabi Songs 2019', '1080p', 'Punjabi', 'Sidhu Moose Wala', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/271.png', 'https://youtu.be/zTeHgPyY9n8', '04-03-2020'),
(272, '47 Fellas : Zane Dhillon ', '47 Fellas : Zane Dhillon | Sidhu Moose Wala| The Kidd | Sagan Maan | Latest Punjabi Song 2019', '1080p', 'Punjabi', 'Sidhu Moose Wala', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/272.png', 'https://youtu.be/hQelhZdvn_0', '04-03-2020'),
(273, 'Boot Cut : Prem Dhillon | Sidhu Moose Wala', 'Boot Cut : Prem Dhillon | Sidhu Moose Wala (Full Video) | Tdot Films | SanB Latest Punjabi Song 2019', '1080p', 'Punjabi', 'Sidhu Moose Wala', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/273.png', 'https://youtu.be/M23TPlVSxgw', '04-03-2020'),
(274, 'Homicide (Full Video) Big Boi Deep', 'Homicide (Full Video) Big Boi Deep ft Sidhu Moose Wala | Sunny Malton | Byg Byrd | New Punjabi Songs', '1080p', 'Punjabi', 'Sidhu Moose Wala', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/274.png', 'https://youtu.be/4ZK-5DSwIC8', '04-03-2020'),
(275, 'Sohne Lagde (Official Video) Sidhu Moose Wala ', 'Sohne Lagde (Official Video) Sidhu Moose Wala ft The PropheC | Latest Punjabi Songs 2019', '1080p', 'Punjabi', 'Sidhu Moose Wala', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/275.png', 'https://youtu.be/9VGJdP5HtZc', '04-03-2020'),
(276, 'Poison (Official Song) Sidhu Moose Wala', 'Poison (Official Song) Sidhu Moose Wala | R-Nait | The Kidd | Latest Punjabi Songs 2019', '1080p', 'Punjabi', 'Sidhu Moose Wala', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/276.png', 'https://youtu.be/rNhDtSnYZbo', '04-03-2020'),
(277, 'PUKAR 2 (2020) New Released', 'PUKAR 2 (2020) New Released Full Hindi Dubbed Movie | New Hindi Movies 2020 | New South Movie 2020', '1080p', 'Hindi', 'Action Movies Digiplex ', 'SOUTH MOVIES', 'https://megaplay.in/admin/images/movies/277.png', 'https://youtu.be/Ze4FVdoYehA', '05-03-2020'),
(278, 'DOMINATOR (2020) New Released', 'DOMINATOR (2020) New Released Full Hindi Dubbed Movie | New Movies 2020 | South Movie 2020', '1080p', 'Hindi', 'Action Movies Digiplex ', 'SOUTH MOVIES', 'https://megaplay.in/admin/images/movies/278.png', 'https://youtu.be/LrIX7pD0OBw', '05-03-2020'),
(279, 'AASHIQUI 2020 - New Released', 'AASHIQUI 2020 - New Released Full Hindi Dubbed Movie | New Movies 2020 | South Movie 2020', '1080p', 'Hindi', 'Action Movies Digiplex ', 'SOUTH MOVIES', 'https://megaplay.in/admin/images/movies/279.png', 'https://youtu.be/nBf943Scmkc', '05-03-2020'),
(280, 'REAL SIKANDAR (2020) New Released', 'REAL SIKANDAR (2020) New Released Full Hindi Dubbed Movie | New Movies 2020 | South Movie 2020', '1080p', 'Hindi', 'Action Movies Digiplex ', 'SOUTH MOVIES', 'https://megaplay.in/admin/images/movies/280.png', 'https://youtu.be/_QGI0SKi3-A', '05-03-2020'),
(281, 'GENIUS 2 (2020) Bollywood Movies', 'GENIUS 2 (2020) Bollywood Movies 2020 Full Movies | New Hindi Movies | New Released Full Hindi Movie', '1080p', 'Hindi', 'Action Movies Digiplex ', 'SOUTH MOVIES', 'https://megaplay.in/admin/images/movies/281.png', 'https://youtu.be/otoQHAuqZCI', '05-03-2020'),
(282, 'Hacked : new bollywood movie 2020', 'Hacked : new bollywood movie 2020  latest bollywood movie 2020 ', '1080p', 'Punjabi', 'NEW MOVIES 2020', 'BOLLYWOOD MOVIES', 'https://megaplay.in/admin/images/movies/282.png', 'https://drive.google.com/open?id=1bTC2EnLs6Doc08LsK7oYg_2rtNontmm7', '05-03-2020'),
(283, 'Jawaani Jaaneman 2020', 'Jawaani Jaaneman is a 2020 Indian Hindi-language comedy film directed by Nitin Kakkar, starring Saif Ali Khan as a 40 year-old father and debutant Alaya Furniturewala as his daughter,', '1080p', 'Punjabi', 'NEW MOVIES 2020', 'BOLLYWOOD MOVIES', 'https://megaplay.in/admin/images/movies/283.png', 'https://drive.google.com/open?id=1mhwAqCcCSyHwNl09NNchAMiZEE6fxsDB', '05-03-2020'),
(284, 'Kaali Range (Offical Video) R Nait', 'Kaali Range (Offical Video) R Nait Ft Gurlej Akhtar | Preet Hundal | Latest Punjabi Songs 2020', '1080p', 'Punjabi', 'Jass Records', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/284.png', 'https://youtu.be/frwAjpkMT2g', '07-03-2020'),
(285, 'Motti Motti Akh (Full Song) Shivjot ', 'Motti Motti Akh (Full Song) Shivjot Ft Gurlej Akhtar | Latest Punjabi Songs 2020', '1080p', 'Punjabi', 'T-Series Apna Punjab', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/285.png', 'https://youtu.be/acSBIXBFsOo', '07-03-2020'),
(286, 'à¨…à¨®à¨²à©€à¨†à¨‚ à¨¦à©‡ à¨•à¨¾à¨°à¨¨à¨¾à¨®à©‡ à¨¦à©‡à¨– à¨•à©‡ à¨¤à©à¨¹à¨¾à¨¡à¨¾ à¨µà©€ à¨¹à¨¾à¨¸à¨¾ à¨¨à©€ à¨°à©à©±à¨•à¨£à¨¾', 'à¨…à¨®à¨²à©€à¨†à¨‚ à¨¦à©‡ à¨•à¨¾à¨°à¨¨à¨¾à¨®à©‡ à¨¦à©‡à¨– à¨•à©‡ à¨¤à©à¨¹à¨¾à¨¡à¨¾ à¨µà©€ à¨¹à¨¾à¨¸à¨¾ à¨¨à©€ à¨°à©à©±à¨•à¨£à¨¾ ll latest Punjabi comedy video', '1080p', 'Punjabi', 'JATT SAUDA', 'WEB SERIES', 'https://megaplay.in/admin/images/movies/286.png', 'https://youtu.be/1KOQcJqsCMk', '07-03-2020'),
(287, 'Jind Jaan ( Full Movie )  Rajvir Jawanda,', 'Jind Jaan ( Full Movie )  Rajvir Jawanda, Sara Sharmaa , Jaswinder Bhalla | New Punjabi Film', '1080p', 'Punjabi', 'Lokdhun Punjabi ', 'PUNJABI MOVIES', 'https://megaplay.in/admin/images/movies/287.png', 'https://youtu.be/L54Pf337QhM', '07-03-2020'),
(288, 'Marraige palace (2018) sharry maan', 'Marriage Palace Full Movie (2020) New Punjabi Movies 2020 Full Movie', '1080p', 'Punjabi', 'Others', 'PUNJABI MOVIES', 'https://megaplay.in/admin/images/movies/288.png', 'https://youtu.be/CdW96BY_WAU', '07-03-2020'),
(289, 'DSP DEV : DEV KHAROUD', 'DSP DEV BY DEV KHAROUD (FULL MOVIE)2019 FULL HD NEW PUNJABI MOVIE', '1080p', 'Punjabi', 'NEW MOVIES 2020', 'PUNJABI MOVIES', 'https://megaplay.in/admin/images/movies/289.png', 'https://youtu.be/8I1t4cKygJQ', '07-03-2020'),
(290, 'Nikka Zaildar 3 (2019)', 'Nikka Zaildar 3 full HD punjabi moive 2019', '720p', 'Punjabi', 'NEW MOVIES 2020', 'PUNJABI MOVIES', 'https://megaplay.in/admin/images/movies/290.png', 'https://youtu.be/Lml7zz4JjmQ', '07-03-2020'),
(291, 'MarJaavan Full Movie 2020', 'MarJaavan Full Movie 2019 latest bollywood movie 2019', '1080p', 'Hindi', 'NEW MOVIES 2020', 'BOLLYWOOD MOVIES', 'https://megaplay.in/admin/images/movies/291.png', 'https://drive.google.com/file/d/14N619QvwWGbR8h4zRNVMDbGhH0WxTJr4/view?usp=sharinghttps://drive.google.com/file/d/14N619QvwWGbR8h4zRNVMDbGhH0WxTJr4/view?usp=sharing  https://drive.google.com/file/d/14N619QvwWGbR8h4zRNVMDbGhH0WxTJr4/view?usp=sharing  https://drive.google.com/file/d/14N619QvwWGbR8h4zRNVMDbGhH0WxTJr4/view?usp=sharing', '08-03-2020'),
(292, 'Saaho Full Movie | Prabhas  2020', 'Saaho Full Movie | Prabhas | Shraddha Kapoor 2020 2019 latest south bollywood movie blockbuster movie', '1080p', 'Hindi', 'NEW MOVIES 2020', 'SOUTH MOVIES', 'https://megaplay.in/admin/images/movies/292.png', 'https://drive.google.com/open?id=1YyK7gzHtBp8EWkGAfHIzDzXTpkKWujvE https://drive.google.com/open?id=1YyK7gzHtBp8EWkGAfHIzDzXTpkKWujvE https://drive.google.com/open?id=1YyK7gzHtBp8EWkGAfHIzDzXTpkKWujvE https://drive.google.com/open?id=1YyK7gzHtBp8EWkGAfHIzDzXTpkKWujvE', '08-03-2020'),
(293, 'Baaghi 3 ( 2020)', 'Actors: Ankita Lokhande, Jaideep Ahlawat, Jameel Khoury, Ritesh Deshmukh, Shraddha Kapoor, Tiger Shroff, Vijay Varma', '720p', 'Hindi', 'NEW MOVIES 2020', 'BOLLYWOOD MOVIES', 'https://megaplay.in/admin/images/movies/293.png', ' https://drive.google.com/uc?id=10C4GM_oyH5pb3HLVAZItjCRGwPpENaIp  https://drive.google.com/uc?id=10C4GM_oyH5pb3HLVAZItjCRGwPpENaIp       https://drive.google.com/uc?id=10C4GM_oyH5pb3HLVAZItjCRGwPpENaIp https://drive.google.com/uc?id=10C4GM_oyH5pb3HLVAZItjCRGwPpENaIp    ', '08-03-2020'),
(294, 'Chor (Official Video) | Ninja  2020', 'Chor (Official Video) | Ninja | Yuvika Chaudhary | Gringo Entertainments | Latest Punjabi Songs 2020', '1080p', 'Punjabi', 'Gringo Entertainments', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/294.png', 'https://youtu.be/jcKuXICpm20', '08-03-2020'),
(295, 'Jora The Second Chapter (2020) Punjabi', 'Jora The Second Chapter (2020) Punjabi 720p | 480p | 360p | PreDVD Rip x264 AAC', '1080p', 'Punjabi', 'NEW MOVIES 2020', 'PUNJABI MOVIES', 'https://megaplay.in/admin/images/movies/295.png', 'https://drive.google.com/open?id=1cuw3JpGl8nwkDsVt2vl81AATAUoQU24o   https://drive.google.com/open?id=1cuw3JpGl8nwkDsVt2vl81AATAUoQU24o  https://drive.google.com/open?id=1cuw3JpGl8nwkDsVt2vl81AATAUoQU24o  https://drive.google.com/open?id=1cuw3JpGl8nwkDsVt2vl81AATAUoQU24o  https://drive.google.com/open?id=1cuw3JpGl8nwkDsVt2vl81AATAUoQU24o', '09-03-2020'),
(296, 'Chal Mera Putt', 'Chall meraa Putt full movie 2019 | New Punjabi movie | Latest Punjabi movie', '1080p', 'Punjabi', 'NEW MOVIES 2020', 'PUNJABI MOVIES', 'https://megaplay.in/admin/images/movies/296.png', 'https://youtu.be/uzo2SpWxmZQ', '09-03-2020'),
(297, 'WARNING 2ND EPISODE : Gippy Grewal', 'WARNING 2ND EPISODE | Dheeraj Kumar | Prince KJ | Gippy Grewal | Amar Hundal | Humble Music |', '1080p', 'Punjabi', ' Humble Music ', 'WEB SERIES', 'https://megaplay.in/admin/images/movies/297.png', 'https://youtu.be/38ozrbP4xRw', '12-03-2020'),
(298, 'Hollywood - Babbu Maan', 'Hollywood - Babbu Maan | Full Video new punjabi song 2020 latest punjabi song 2020', '1080p', 'Punjabi', 'Babbu Maan', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/298.png', 'https://youtu.be/bXYaAVBKgFI', '13-03-2020'),
(299, 'MANKE (Punjabi Song) | Jassa Dhillon', 'MANKE (Punjabi Song) | Jassa Dhillon | Gur Sidhu | Sukh Sanghera | Latest Punjabi Songs 2020', '1080p', 'Punjabi', 'Others', 'PUNJABI MUSIC', 'https://megaplay.in/admin/images/movies/299.png', 'https://youtu.be/2oku3MjK6Co', '13-03-2020'),
(300, 'Muklawa 2019 : Ammy virk ', 'Muklawa 2019 : Ammy virk  new punjabi movie2020 2019 // latest punjabi movie 2019 2020', '1080p', 'Punjabi', 'NEW MOVIES 2020', 'PUNJABI MOVIES', 'https://i.ytimg.com/vi/NWRFH8OCeaA/maxresdefault.jpg', 'https://youtu.be/z2uofam7_Ko', '14-03-2020'),
(301, 'Ikko Mikke  - Satinder Sartaaj', 'Ikko Mikke Leaked Full Movie - Satinder Sartaaj | Aditi Sharma | Punjabi Movie 2020', '1080p', 'Punjabi', 'NEW MOVIES 2020', 'PUNJABI MOVIES', 'https://megaplay.in/admin/images/movies/301.png', 'https://drive.google.com/file/d/1SE_UBCMZvRogK1Apf1vfFOJKR7hWAKbF/view?usp=drivesdk   https://drive.google.com/file/d/1SE_UBCMZvRogK1Apf1vfFOJKR7hWAKbF/view?usp=drivesdk   https://drive.google.com/file/d/1SE_UBCMZvRogK1Apf1vfFOJKR7hWAKbF/view?usp=drivesdk  https://drive.google.com/file/d/1SE_UBCMZvRogK1Apf1vfFOJKR7hWAKbF/view?usp=drivesdk', '16-03-2020'),
(302, 'Angrezi Medium (2020) Hindi', 'Angrezi Medium (2020) Hindi 720p | 480p | 360p PreDVD x264 AAC', '1080p', 'Hindi', 'NEW MOVIES 2020', 'BOLLYWOOD MOVIES', 'https://megaplay.in/admin/images/movies/302.png', ' https://drive.google.com/file/d/1r_-OrmxS-ygv9EYbK0zzkYeV4Rkil_ts/view?usp=drivesdk https://drive.google.com/file/d/1r_-OrmxS-ygv9EYbK0zzkYeV4Rkil_ts/view?usp=drivesdk https://drive.google.com/file/d/1r_-OrmxS-ygv9EYbK0zzkYeV4Rkil_ts/view?usp=drivesdk https://drive.google.com/file/d/1r_-OrmxS-ygv9EYbK0zzkYeV4Rkil_ts/view?usp=drivesdk', '16-03-2020'),
(303, 'TIBEYAN DA PUTT (Full Video) Sidhu Moose Wala', 'TIBEYAN DA PUTT (Full Video) Sidhu Moose Wala | Latest Punjabi Song 2020', '1080p', 'Punjabi', 'Sidhu Moose Wala', 'PUNJABI MUSIC', 'https://img.youtube.com/vi/twCHVhk8iMU/maxresdefault.jpg', 'https://youtu.be/twCHVhk8iMU', '18-03-2020'),
(304, 'Jhalle :binnu dhillon new movie 2020', 'Full Punjabi Movie 2020 - New Punjabi Movie 2020 | Latest Punjabi Movies 2020', '1080p', 'Punjabi', 'NEW MOVIES 2020', 'PUNJABI MOVIES', 'https://i.ytimg.com/vi/kfS4soZXLJQ/maxresdefault.jpg', 'https://youtu.be/6bntUY35rR4', '20-03-2020'),
(305, 'Shooter (2020) : Jayy Randhawa', 'Shooter (2020) new punjabi movie 2020 \r\n A ruthless Punjabi gangster and his friends clash with a rival gang protecting a corrupt politician.\r\nDirector: Tru Makers\r\nStar: Jayy Randhawa', '1080p', 'Punjabi', 'NEW MOVIES 2020', 'PUNJABI MOVIES', 'https://m.media-amazon.com/images/M/MV5BNjFjOWVlMTgtMDc2NC00NTYxLWJkNzMtZDgyNTJjYzJiNGJiXkEyXkFqcGdeQXVyNDU0Mzg1NTg@._V1_QL50_.jpg', 'https://drive.google.com/open?id=1qPAZ7LV7UtGoxn__uD6klKl8mTUHggvH  https://drive.google.com/open?id=1qPAZ7LV7UtGoxn__uD6klKl8mTUHggvH  https://drive.google.com/open?id=1qPAZ7LV7UtGoxn__uD6klKl8mTUHggvH https://drive.google.com/open?id=1qPAZ7LV7UtGoxn__uD6klKl8mTUHggvH  https://drive.google.com/open?id=1qPAZ7LV7UtGoxn__uD6klKl8mTUHggvH', '31-03-2020');

-- --------------------------------------------------------

--
-- Table structure for table `user_online`
--

CREATE TABLE `user_online` (
  `deviceId` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_online`
--

INSERT INTO `user_online` (`deviceId`, `time`) VALUES
('f92b63d6094a58b9', 1585887560),
('5a5723b62d3fb8ee', 1585887578),
('cc4dfb73bcfd4bf4', 1585887583),
('80c732ffaaa80098', 1585887584),
('32717d55ed861337', 1585887585);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admob`
--
ALTER TABLE `admob`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `channels`
--
ALTER TABLE `channels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fcm`
--
ALTER TABLE `fcm`
  ADD PRIMARY KEY (`deviceId`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_online`
--
ALTER TABLE `user_online`
  ADD PRIMARY KEY (`time`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admob`
--
ALTER TABLE `admob`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `channels`
--
ALTER TABLE `channels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_online`
--
ALTER TABLE `user_online`
  MODIFY `time` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
