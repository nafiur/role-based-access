/*
 Navicat Premium Data Transfer

 Source Server         : Laragoan
 Source Server Type    : MySQL
 Source Server Version : 80030 (8.0.30)
 Source Host           : localhost:3306
 Source Schema         : school_management

 Target Server Type    : MySQL
 Target Server Version : 80030 (8.0.30)
 File Encoding         : 65001

 Date: 04/06/2024 13:10:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cache
-- ----------------------------
DROP TABLE IF EXISTS `cache`;
CREATE TABLE `cache`  (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cache
-- ----------------------------

-- ----------------------------
-- Table structure for cache_locks
-- ----------------------------
DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE `cache_locks`  (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cache_locks
-- ----------------------------

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for job_batches
-- ----------------------------
DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE `job_batches`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `cancelled_at` int NULL DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of job_batches
-- ----------------------------

-- ----------------------------
-- Table structure for jobs
-- ----------------------------
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED NULL DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `jobs_queue_index`(`queue` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of jobs
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '0001_01_01_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '0001_01_01_000001_create_cache_table', 1);
INSERT INTO `migrations` VALUES (3, '0001_01_01_000002_create_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2024_06_04_043643_add_role_to_users_table', 2);

-- ----------------------------
-- Table structure for password_reset_tokens
-- ----------------------------
DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of password_reset_tokens
-- ----------------------------
INSERT INTO `password_reset_tokens` VALUES ('devnafiur@gmail.com', '$2y$12$33G1T.V.7x6XIDv9BYW8Uu3aR4OqhAP9o0KeXD3UYadBPKB/pmGj6', '2024-06-02 16:40:40');
INSERT INTO `password_reset_tokens` VALUES ('jikyfiqi@mailinator.com', '$2y$12$Sfx2k37dGM6Ey1tWa41ShuFNqWtuhM3mi.jrTOeI0CXc5/EErqKcS', '2024-06-02 16:35:17');

-- ----------------------------
-- Table structure for sessions
-- ----------------------------
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NULL DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sessions_user_id_index`(`user_id` ASC) USING BTREE,
  INDEX `sessions_last_activity_index`(`last_activity` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sessions
-- ----------------------------
INSERT INTO `sessions` VALUES ('08alLHI6UeK3pLV0uIoOlQ5zDqBtdhmwy2BkrKzW', NULL, NULL, '', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiT3daRlhsWldkbkE3TTlJWWpuOE1wUndNS3RQbjVRZlJZTHBhNk5SVyI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo4OiJodHRwOi8vOiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717480089);
INSERT INTO `sessions` VALUES ('1LmQ1XspSQ6dhC4fc3ZRJ3f1OPV1QPmMBskexGWr', NULL, NULL, '', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoia2ljN3hCcG80ZDh0OFZRSWx0TWM2ODhNQWtuRW1XNmpVRWJraG95WCI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo4OiJodHRwOi8vOiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717482933);
INSERT INTO `sessions` VALUES ('1mYmKqQcSqFxJggqZ9HSzocNZmh4jPKmX9jN19nx', NULL, NULL, '', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNWZad21tUmVMYzRnY0doRjluT01HMW56cm5oMzcxQTV3QnI1M1k4NSI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo4OiJodHRwOi8vOiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717482750);
INSERT INTO `sessions` VALUES ('2jefFcZpQmiyQJknSuc6WkMxtZyD3qQolIjJ6F0D', NULL, NULL, '', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNGxld3hQZEtmVEVnTk9wc3VOZHgxWGtiSUJNTkV0Q1p6SGdXaFR6ZCI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo4OiJodHRwOi8vOiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717479830);
INSERT INTO `sessions` VALUES ('61BHZ6e4HbZBCguYXhoh4OzMDjNTg7d9yYSGAciH', NULL, NULL, '', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiaVFmanAwSzFKalpZTGJrMWFrdlRXUjI5WmYzOVd0VWh2b2pRRzhlNSI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo4OiJodHRwOi8vOiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717482924);
INSERT INTO `sessions` VALUES ('6At3fs2y7KLAm9BIwlofSeeyD7Lex6EbBq24goAB', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNlN1TFFUcWg5NWtVSUV3dGd4enVQb1BUdHYyVVR0NXpYUVBCSFhRcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1717478522);
INSERT INTO `sessions` VALUES ('6feITmSkPRSam3lKrmsJOaa7WWZdTtPpHTshP6rP', NULL, NULL, '', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoid3g4dFowQ2RoeWhUZW0zbnduUFpTNEIwdE1qY3p2S2JXVzltdjdiUyI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo4OiJodHRwOi8vOiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717479675);
INSERT INTO `sessions` VALUES ('7S2XspzvEagSdqL9u2noXhSN5D9zexcRUaM7ZqRI', NULL, NULL, '', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidkhUYU1WajFmWTBNMGY3ejZGMnFNZ3NmSjhjM2pRVWhtcGV2MFdXbiI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo4OiJodHRwOi8vOiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717482815);
INSERT INTO `sessions` VALUES ('AwMzr7Q0eh9aPwUZMvudUm3VpvbqbBAeiRkBHbRh', NULL, NULL, '', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVTN1ZEZUSEpMSW11S1NQUm82TTB0OUF0dzhhQnJTc2wxMVRldXE5aSI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo4OiJodHRwOi8vOiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717479671);
INSERT INTO `sessions` VALUES ('BLAlkyV7dJMHAYtI7M7e7LeLKtLQlHB5ZB54QhsD', NULL, NULL, '', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRmZ1RUVZcGswYXhJbjNFU1Uwbkh0S1BGd3p5ZjVtUlRjNVRNSVIyMyI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo4OiJodHRwOi8vOiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717482780);
INSERT INTO `sessions` VALUES ('bnXwX3v4GUsxpcsjv9hh13ZBKxg5bLUsogrndZQI', NULL, NULL, '', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMzNzbnFkeDM0ZXk4MFFMaGxRRTJPVkNCalFRcVdMUGs2TWlXc0kySyI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo4OiJodHRwOi8vOiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717482943);
INSERT INTO `sessions` VALUES ('ccbffxWGvqdfipYC6ieR5xLGmxTuh7TTBWbyOSDo', NULL, NULL, '', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiaU5QSDdlQW8welFkbDVHSUdNY01lWHFvVTF1VWNOa0JqRUFRdW4wcSI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo4OiJodHRwOi8vOiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717480347);
INSERT INTO `sessions` VALUES ('cVvtOEJdJW4sn6xrE9k1oATQywOM61ZZP3RQc8hR', NULL, NULL, '', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTmJrczE5MWx2dURjR1BVNEsydlBoRG80eldkYlZzcjc3MUJFNmlNaSI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo4OiJodHRwOi8vOiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717482765);
INSERT INTO `sessions` VALUES ('cWdxpJLutmALOnGOHZlG4IQ865om4VvWdMdAmlvz', NULL, NULL, '', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibExxRGxDMUlCUjF2S3ZxSkljbWxlTmhwZDhzZDVCYWpTeng1NjA0TiI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo4OiJodHRwOi8vOiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717482758);
INSERT INTO `sessions` VALUES ('dpowjkuXHH9Vceg6d6AmitMHjc7coAmr9TxYeFp8', NULL, NULL, '', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZFRERGxMSnZWeXBQZEpRY2tLMUNJSkp5Z1h4NG40bTYwN0hXQ0xsRCI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo4OiJodHRwOi8vOiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717479755);
INSERT INTO `sessions` VALUES ('er1ySAMBjlJTZRgmWtWISd3zI9DMlhjVkkUTqOij', NULL, NULL, '', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVWJ5TVB0dFVEQ3h6Tm5ZZE1iMXhsZmdvckF2elBWSHo1TGxLZDN4dyI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo4OiJodHRwOi8vOiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717479925);
INSERT INTO `sessions` VALUES ('fhHkkZ2dHc20ynZkbT55VBXNCHjeAGk8Vu38UiTZ', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRDc5U3ZoSW1LWE9EOHRRdmVaVmVPWXRPc2hpZ3BJOGFGWWE0cjJsbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1717478547);
INSERT INTO `sessions` VALUES ('FzytS53gul6ndJ5ZosRENbB8KDbbGks1gV7N3q6W', NULL, NULL, '', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoieHNXV0tGWmV0RVFiQ2docDlWZGJJQVFJeTNrUVpZSlN0VzdkZ2g0TiI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo4OiJodHRwOi8vOiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717482937);
INSERT INTO `sessions` VALUES ('G3ue5SDwpDC1ZCIMionhekOt8WGy3iswmJw5nYVr', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUUJ1aTdDN0xTdzFtM2RPdEV4aEUxZGxjcU1YbHM3MEFpNHVsaHdOciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1717477865);
INSERT INTO `sessions` VALUES ('ImElEVyV8l21HLHnr6vDGW6LdYceJlRDcoXJPnWL', NULL, NULL, '', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoicW90cHhKN2FTNjNHVlBvTGUzcU9ueGoyeFB3WXZOR1pDRFdubGlLZiI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo4OiJodHRwOi8vOiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717479666);
INSERT INTO `sessions` VALUES ('IY14RkjoRZFhHf5CMHVw8oHoPNfDGLYyXpUFPI6q', NULL, NULL, '', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoieVFmeVhuOGJQWXg2MWZYZ1pwalhhb2wyNlBybEdmN29UNlZQT3lldyI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo4OiJodHRwOi8vOiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717479842);
INSERT INTO `sessions` VALUES ('Jn8K2i4hJIyZiA8WL8pnsNMNoLho2dYDXidYalLY', NULL, NULL, '', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidTlsUjFEUUk0WkFySWZodG1CWXR3Q3FNWVQ5QzlzVUNUeVRKTGhOOSI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo4OiJodHRwOi8vOiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717479945);
INSERT INTO `sessions` VALUES ('JP2ZkeljFBR9nU3XJH6Fpaq1OcHMJLYO8iWj0IAf', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYVdIenlDMWtod2xFY3N3cEpUMjQ2ZzVhOVgyS1FEZ0M1OVJ1QWZDVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1717477846);
INSERT INTO `sessions` VALUES ('kFGLGxPmuWbnPHwkqJ7KUVtquiszxLWBU67f6SQW', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiZDNUU2FUMXJQNHFzblFhTWZDTUJWbFVOR1ZTek0yVzZoV3BQUUNYUyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo0NToiaHR0cDovL3NjaG9vbC1tYW5hZ2VtZW50LnRlc3QvYWRtaW4vZGFzaGJvYXJkIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1717484506);
INSERT INTO `sessions` VALUES ('kw9BEcCH7lHidkGlgUmJE7uJLrQt08c5xgLvsKZk', NULL, NULL, '', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWW1abXRxS1BQRm9pTVFlWnI3a2RqaDh2aUF3ZThYY202MjlIYUJCNyI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo4OiJodHRwOi8vOiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717479919);
INSERT INTO `sessions` VALUES ('LvVgiZhLb2HNr7oBFaOdOzFly1IhgrfYsyJnBkp1', NULL, NULL, '', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVE1tYkw1NmR2N0xGdUU5ZFN3T3NkVU5PM0p4eFpTV0tPZHBxSDR4aiI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo4OiJodHRwOi8vOiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717482918);
INSERT INTO `sessions` VALUES ('MMmyKSDu8MwJsgo4tECdRy848R2hJoIhoWq0bVYZ', NULL, NULL, '', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoicEtTOTFLRjdpb1NGVHNBUmtyeXBhMFFOZWpzYzJMbUI4R1JhM2dENiI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo4OiJodHRwOi8vOiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717480029);
INSERT INTO `sessions` VALUES ('mtmitFznRB9xXPL1ickqGWilEuo13XnsfG88qQdN', NULL, NULL, '', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZXhvUWxla1FDNmVpV1lWZUVHbHlSRXF3ZWs3OVIyNE1ueUJZMU9TWCI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo4OiJodHRwOi8vOiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717479897);
INSERT INTO `sessions` VALUES ('mTSrL0kqONVw6qsNf8DymFB9TwY7v9LnvLl17lT0', NULL, NULL, '', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZ1QzWGJ0V093TFV5Sjhtc01BcEc4VmVUVHk1cHBwN1lJb09iMkNIYiI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo4OiJodHRwOi8vOiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717479826);
INSERT INTO `sessions` VALUES ('otGYwjBYGMW3o8Bjn3B27jNp9LunDVC1JIPrJur1', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYVR0N0tXT1QxdVFwcXRNY0xWckJVQ1dEb25uVkwzT3lHeTd4WUhFQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1717477360);
INSERT INTO `sessions` VALUES ('oUzdJlyCl8mkqMGK3DeRzlX0gLK5UFGnmpkIRgK3', NULL, NULL, '', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTzNUZWRzSjRrVmUxamNaQmFrUzBxQXI4ZVhtRERwblNhOEVOU01adyI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo4OiJodHRwOi8vOiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717482898);
INSERT INTO `sessions` VALUES ('OXRTzoL90bnDtX7dLU7mf4TlAKKXsVe48IEdmArP', NULL, NULL, '', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTHlQTHBlZGdZYmNlZTU0ZWYwM3JxQ09SSTlrVkZuTFpKNWw4VEwxcCI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo4OiJodHRwOi8vOiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717482929);
INSERT INTO `sessions` VALUES ('POe7p8oBAv00O5yM09rc3h7UL9Pxo6spfuY0Svqu', NULL, NULL, '', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoib2JVQ3dQNnIyM002RUJRNlU2cUxmWm1SSjQ2bzBESm9xR3I3UVo4VSI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo4OiJodHRwOi8vOiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717480634);
INSERT INTO `sessions` VALUES ('PSNWiFhYvbKZU0zBjEudWejnmLumkNeinPrwiH6x', NULL, NULL, '', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMzRhcGNJSDQ4bk8yYnJrSERoNk5ZUFJUN05LZU9LWXpSYlV2Rkc4eCI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo4OiJodHRwOi8vOiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717482859);
INSERT INTO `sessions` VALUES ('QeqiXEq8mWJ3n0XGa93WAo1OAO93DpwDyEdV2xGK', NULL, NULL, '', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTkRDOW1ockp5aEdhclBqbW1IZXJDNElWT0JaUU5WODd5SWZUWHZ3bSI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo4OiJodHRwOi8vOiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717479620);
INSERT INTO `sessions` VALUES ('SJGr2cNL7KPReqyEIo59V2WJfjkS78DQOJd8m15R', NULL, NULL, '', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiM1A2b1ZRZHB3UE1KYThyWWRSYjEyM1NUT0Z3TjBnakd5cjFRRjRYMSI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo4OiJodHRwOi8vOiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717479768);
INSERT INTO `sessions` VALUES ('ThXLbk5DBK0J1E1eNCOy5DZJ23H5fVezWXDllP27', NULL, NULL, '', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidzhJSE1RRHpNWFd4STY4Mnl2OHlUa2E2bVo3Nk9NRmQ0cHJsQjllTCI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo4OiJodHRwOi8vOiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717480045);
INSERT INTO `sessions` VALUES ('TolKwLpjBozHzyJ2arC3pjRNn3BOeDEPFsktZJFp', NULL, NULL, '', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZXZqTTdEaDQyQUx0WHpaYnNYclk4V1FaTTAwSmVXeXI5M0VMSjVQSSI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo4OiJodHRwOi8vOiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717482856);
INSERT INTO `sessions` VALUES ('TRirR0bbiqZm41XHJZRHMJZuAa196HsUL4Ks6hqs', NULL, NULL, '', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZHZ2c2hOaFdyNEM4cFJMSmU3ZXRHcHJaTEtFMExHY1Rmc3E2akVwZCI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo4OiJodHRwOi8vOiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717480626);
INSERT INTO `sessions` VALUES ('U1leomCaVeyzuewTXDd3855riYdi1RINxFwGQUva', NULL, NULL, '', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWHhZMzJKazEzSjVXaTNWNWs5YTJpM0hxMEY2OGlVMHpqV1dYUmRmTCI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo4OiJodHRwOi8vOiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717482941);
INSERT INTO `sessions` VALUES ('ufQ7yiY41JiUZJ4twYoOiG1hjqepyKW3HzxgH3MB', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibnhVZ0xnSWZmb3pXVXZteDhpVXUzUGNBdkZUOFFHQUt6N0xGSXRNQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1717477354);
INSERT INTO `sessions` VALUES ('uKPIimH3Pr6b9zNATp5tqNdDAGK2bHhdGJPUi6Cb', NULL, NULL, '', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUGN5TnN6STNZUTFMWEtXbUs4NzJ6NEZqYVIwQW1wN2g3MGUwc2NrQiI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo4OiJodHRwOi8vOiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717479750);
INSERT INTO `sessions` VALUES ('w396gy2TZGwBkGohBV98JWUKauMkZS0tbtrY7uwY', NULL, NULL, '', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZ0hUblNSVGlpbHNUZGZuTHlYSTRVSHJnTktQbUFoUHlYQ01UZW45bSI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo4OiJodHRwOi8vOiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717484494);
INSERT INTO `sessions` VALUES ('wnCZk1wqXSVTBNu17tMtG9IejCBd8WfxgLskGw30', NULL, NULL, '', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiY1NuaUg3aTg2dXpQeTJFaWRlQVpab2tnbWZKSnpUVkhNdWZ1MTF6WSI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo4OiJodHRwOi8vOiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717480036);
INSERT INTO `sessions` VALUES ('xcjRBXDU3Q58ut4RYa4CppOIIjrF4Vm3C2eyu7Ml', NULL, NULL, '', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiaHRLc3NJeTQ5bXd1c0drc0prQlhlTDFQckZJNGt3Y1VQTGx1c05obCI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo4OiJodHRwOi8vOiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717482801);
INSERT INTO `sessions` VALUES ('Xcmr6yQg22aTVtd25DjDvOHNN5cnO20NvAhTwMKq', NULL, NULL, '', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoicjRxRnppdTZDREFLV0xnNGY0UGNFZU5aUDFtaFk0SExxd3NQcDNJMSI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo4OiJodHRwOi8vOiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717482905);
INSERT INTO `sessions` VALUES ('xeMvBVEC0au5spHGYRC2v7gRwSLObWBAp4rGHggu', NULL, NULL, '', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiY1RVY1hDMU9PT0llVjdNYWN6Zm1oOEh0ak1WQWFuekhMc3JsMDhKNyI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo4OiJodHRwOi8vOiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717484482);
INSERT INTO `sessions` VALUES ('XFhQRH0gT60yCQnCtikzxgDp6ylxNujjMhTStfJs', NULL, NULL, '', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUG5zMUNxUjc5enY5MmRsOWI5dXhuYnpXZm96Nzk0WW8wSUdrWVB0YyI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo4OiJodHRwOi8vOiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717480018);
INSERT INTO `sessions` VALUES ('Y6CumDG87FJOEbhnLaaM94OzFuSPFwiprauYNcwK', NULL, NULL, '', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiemlHQ1RRU1VDdTU3ZjdpZENkNU9NT0RNWjVpaGQ4b01ITUpGRnhURCI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo4OiJodHRwOi8vOiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717482850);
INSERT INTO `sessions` VALUES ('ylTjg3y7loji7LDSBRwBxeTiOhBBsJoP9MIRivAi', NULL, NULL, '', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidVczdzk4SFdpWTlqVlo0SFZtdk51dVdFQVUyVmtzRFZCb0xpTHZ6byI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo4OiJodHRwOi8vOiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717479816);
INSERT INTO `sessions` VALUES ('YmItmGxhF1Q8ScwyH2FbHlmvP8pfJN1sSsWleiQf', NULL, NULL, '', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZHR4M3R0anNWS2hFcVQ0dUdXbmEyekNrWDZaSm82aWJvQm5zTUVJVCI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo4OiJodHRwOi8vOiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717484489);
INSERT INTO `sessions` VALUES ('zq4Q6KkncJ9vN2gY5r252D7Vre7ZWJmGarZVPZBA', NULL, NULL, '', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUE5WZGdNd3R3WEhVNmlzbXNmeUpMb0V1TEY0NTcwc1BVTURtNFdCSyI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo4OiJodHRwOi8vOiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717480041);
INSERT INTO `sessions` VALUES ('Ztet83PtzuIYbKOmKvaFIHjMZQTcpcfp9z9p1rHe', NULL, NULL, '', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZWtUQkpYaVZLSWt5WENZOUJOOGdCVTBVUUthdjJZb3VQZFc0TlNkRSI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo4OiJodHRwOi8vOiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717479659);
INSERT INTO `sessions` VALUES ('zttFFvUKFD3X5nUOBDpp53tB0ihTl0iMN0Na4Hyj', NULL, NULL, '', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVkxib0N2Q3NFOEJnVzBlWFVuME5zaHQ4NmZDQ3g1RWRTUHp4UHVFYiI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo4OiJodHRwOi8vOiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717484499);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Nafiur Rahman', 'nafiur@outlook.com', NULL, '$2y$12$kLxfwebCsxl2lF3.mQYK9O5vmuBWo57pIb0sbOzFEZ1oW1SZfPfQ.', 'admin', 'zJDzChGyhJrqcsxTfIO8YwbnCUovJcRDDy7TdQMGdkDGEdRa7E3POO0y0jTU', '2024-06-02 15:29:11', '2024-06-02 15:29:11');
INSERT INTO `users` VALUES (2, 'Irma Rasmussen', 'devnafiur@gmail.com', NULL, '$2y$12$zV06S.XoIZWwTzRLZ/BzcuUzm3oekw8ofJPTbMZ5sY.RG6evM13ZO', 'teacher', NULL, '2024-06-02 16:35:03', '2024-06-02 16:35:03');
INSERT INTO `users` VALUES (3, 'Brody Dotson', 'teacher@gmail.com', NULL, '$2y$12$rry3Ch/O1NE2UIJdM6ZwbOi1ydbgGiQFpWa8R1nc14wCpjX9Csv7C', 'teacher', NULL, '2024-06-04 04:58:40', '2024-06-04 04:58:40');
INSERT INTO `users` VALUES (4, 'Christen Roman', 'kozuq@mailinator.com', NULL, '$2y$12$dlTiVacMWlzNuHj5blVr5eKnZwY0Lv9YEL8I3S13337ffUVP6R0M2', NULL, NULL, '2024-06-04 05:15:16', '2024-06-04 05:15:16');

SET FOREIGN_KEY_CHECKS = 1;
