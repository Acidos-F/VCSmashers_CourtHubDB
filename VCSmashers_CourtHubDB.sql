-- Create database
CREATE DATABASE IF NOT EXISTS `VC_Smashers_CourtHubDB`
  DEFAULT CHARACTER SET = utf8mb4
  DEFAULT COLLATE = utf8mb4_unicode_ci;
USE `VC_Smashers_CourtHubDB`;

-- ==============================
-- Roles
-- ==============================
CREATE TABLE IF NOT EXISTS `roles` (
  `role_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `rolename` VARCHAR(100) NOT NULL DEFAULT 'USER', -- ADMIN, USER
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ==============================
-- Users
-- ==============================
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` INT UNSIGNED NOT NULL,
  `name` VARCHAR(255) NOT NULL,
  `email` VARCHAR(255) NOT NULL UNIQUE,
  `phone` VARCHAR(20) DEFAULT NULL,
  `pass` VARCHAR(255) NOT NULL,
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `fk_users_role` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ==============================
-- Bookings
-- ==============================
CREATE TABLE IF NOT EXISTS `bookings` (
  `booking_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` INT UNSIGNED NOT NULL,
  `title` VARCHAR(255) NOT NULL,
  `description` TEXT,
  `activity_name` VARCHAR(255) NOT NULL, -- Pickleball / Badminton
  `num_of_participants` INT NOT NULL,
  `fee_per_head` DECIMAL(10,2) NOT NULL DEFAULT 0.00,
  `total_fee` DECIMAL(10,2) NOT NULL DEFAULT 0.00,
  `event_date` DATE NOT NULL,
  `event_time` TIME NOT NULL,
  `booking_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` VARCHAR(50) DEFAULT 'PENDING', -- PENDING, CONFIRMED, CANCELLED
  PRIMARY KEY (`booking_id`),
  CONSTRAINT `fk_bookings_user` FOREIGN KEY (`user_id`) 
    REFERENCES `users`(`user_id`) 
    ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
