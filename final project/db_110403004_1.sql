-- MySQL Script generated by MySQL Workbench
-- Wed Jun 14 17:58:40 2023
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema db_110403004
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `db_110403004` ;

-- -----------------------------------------------------
-- Schema db_110403004
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db_110403004` DEFAULT CHARACTER SET utf8 ;
USE `db_110403004` ;

-- -----------------------------------------------------
-- Table `db_110403004`.`Student`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `db_110403004`.`Student` ;

CREATE TABLE IF NOT EXISTS `db_110403004`.`Student` (
  `stu_id` INT NOT NULL AUTO_INCREMENT,
  `stu_name` VARCHAR(200) NOT NULL,
  `stu_phone` INT NOT NULL,
  `stu_email` VARCHAR(100) NOT NULL,
  `stu_grade` INT NOT NULL,
  PRIMARY KEY (`stu_id`),
  UNIQUE INDEX `stu_email_UNIQUE` (`stu_email` ASC),
  UNIQUE INDEX `student_id_UNIQUE` (`stu_id` ASC),
  UNIQUE INDEX `stu_phone_UNIQUE` (`stu_phone` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_110403004`.`StudentCredential`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `db_110403004`.`StudentCredential` ;

CREATE TABLE IF NOT EXISTS `db_110403004`.`StudentCredential` (
  `stu_hash_id` INT NOT NULL AUTO_INCREMENT,
  `stu_id` INT NOT NULL,
  `stu_salt` CHAR(64) NOT NULL,
  `stu_hashed_pwd_string` VARCHAR(1000) NOT NULL,
  PRIMARY KEY (`stu_hash_id`, `stu_id`),
  UNIQUE INDEX `hash_id_UNIQUE` (`stu_hash_id` ASC),
  UNIQUE INDEX `hash_student_id_UNIQUE` (`stu_id` ASC),
  UNIQUE INDEX `hashed_pwd_string_UNIQUE` (`stu_hashed_pwd_string` ASC),
  UNIQUE INDEX `salt_UNIQUE` (`stu_salt` ASC),
  CONSTRAINT `studentcredential_to_student_stu_id`
    FOREIGN KEY (`stu_id`)
    REFERENCES `db_110403004`.`Student` (`stu_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_110403004`.`DegreeProgram`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `db_110403004`.`DegreeProgram` ;

CREATE TABLE IF NOT EXISTS `db_110403004`.`DegreeProgram` (
  `dp_id` INT NOT NULL,
  `dp_name` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`dp_id`),
  UNIQUE INDEX `degree_program_id_UNIQUE` (`dp_id` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_110403004`.`Course`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `db_110403004`.`Course` ;

CREATE TABLE IF NOT EXISTS `db_110403004`.`Course` (
  `cou_id` INT NOT NULL AUTO_INCREMENT,
  `cou_code` VARCHAR(45) NOT NULL,
  `cou_name` VARCHAR(100) NOT NULL,
  `cou_semester` INT NOT NULL,
  `cou_room` VARCHAR(45) NOT NULL,
  `cou_date` VARCHAR(45) NOT NULL,
  `cou_time` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`cou_id`),
  UNIQUE INDEX `course_id_UNIQUE` (`cou_id` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_110403004`.`CourseCard`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `db_110403004`.`CourseCard` ;

CREATE TABLE IF NOT EXISTS `db_110403004`.`CourseCard` (
  `cc_id` INT NOT NULL AUTO_INCREMENT,
  `cc_serial_number` INT NOT NULL,
  `cc_cou_id` INT NOT NULL,
  `used_y/n` VARCHAR(45) NOT NULL,
  UNIQUE INDEX `coursecard_id_UNIQUE` (`cc_id` ASC),
  UNIQUE INDEX `serial_number_UNIQUE` (`cc_serial_number` ASC),
  PRIMARY KEY (`cc_id`),
  CONSTRAINT `coursecard_to_course_coursecard_id`
    FOREIGN KEY (`cc_id`)
    REFERENCES `db_110403004`.`Course` (`cou_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_110403004`.`Teacher`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `db_110403004`.`Teacher` ;

CREATE TABLE IF NOT EXISTS `db_110403004`.`Teacher` (
  `tea_id` INT NOT NULL,
  `tea_name` VARCHAR(200) NOT NULL,
  `tea_phone` INT NOT NULL,
  `tea_email` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`tea_id`),
  UNIQUE INDEX `teacher_id_UNIQUE` (`tea_id` ASC),
  UNIQUE INDEX `teacher_phone_UNIQUE` (`tea_phone` ASC),
  UNIQUE INDEX `teacher_email_UNIQUE` (`tea_email` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_110403004`.`TeacherCredential`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `db_110403004`.`TeacherCredential` ;

CREATE TABLE IF NOT EXISTS `db_110403004`.`TeacherCredential` (
  `tea_hash_id` INT NOT NULL,
  `tea_id` INT NOT NULL,
  `tea_salt` CHAR(64) NOT NULL,
  `tea_hashed_pwd_string` VARCHAR(1000) NOT NULL,
  UNIQUE INDEX `teacher_id_UNIQUE` (`tea_hash_id` ASC),
  UNIQUE INDEX `hased_teacher_id_UNIQUE` (`tea_id` ASC),
  UNIQUE INDEX `salt_UNIQUE` (`tea_salt` ASC),
  UNIQUE INDEX `hashed_pwd_string_UNIQUE` (`tea_hashed_pwd_string` ASC),
  PRIMARY KEY (`tea_id`),
  CONSTRAINT `tea_hashed_teacher_id`
    FOREIGN KEY (`tea_id`)
    REFERENCES `db_110403004`.`Teacher` (`tea_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_110403004`.`StudentCourse`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `db_110403004`.`StudentCourse` ;

CREATE TABLE IF NOT EXISTS `db_110403004`.`StudentCourse` (
  `stu_course_id` INT NOT NULL,
  `stu_id` INT NOT NULL,
  `cou_id` INT NOT NULL,
  `sc_selection_status` VARCHAR(45) NOT NULL,
  `sc_pass` VARCHAR(45) NOT NULL,
  `cardnumber` VARCHAR(45) NULL,
  `sc_semester` INT NOT NULL,
  PRIMARY KEY (`stu_course_id`),
  UNIQUE INDEX `student_course_id_UNIQUE` (`stu_course_id` ASC),
  CONSTRAINT `studentcourse_to_student_stu_id`
    FOREIGN KEY (`stu_id`)
    REFERENCES `db_110403004`.`Student` (`stu_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `studentcourse_to_course_course_id`
    FOREIGN KEY (`cou_id`)
    REFERENCES `db_110403004`.`Course` (`cou_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_110403004`.`CourseToTeacher`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `db_110403004`.`CourseToTeacher` ;

CREATE TABLE IF NOT EXISTS `db_110403004`.`CourseToTeacher` (
  `course_to_teacher_id` INT NOT NULL,
  `tea_id` INT NOT NULL,
  `cou_id` INT NOT NULL,
  INDEX `coursetocourse_to_course_id_idx` (`cou_id` ASC),
  PRIMARY KEY (`course_to_teacher_id`),
  CONSTRAINT `coursetoteacher_to_teacher_id`
    FOREIGN KEY (`tea_id`)
    REFERENCES `db_110403004`.`Teacher` (`tea_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `coursetocourse_to_course_id`
    FOREIGN KEY (`cou_id`)
    REFERENCES `db_110403004`.`Course` (`cou_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_110403004`.`CourseToDegreeProgram`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `db_110403004`.`CourseToDegreeProgram` ;

CREATE TABLE IF NOT EXISTS `db_110403004`.`CourseToDegreeProgram` (
  `course_to_degree_program_id` INT NOT NULL,
  `cou_id` INT NOT NULL,
  `dp_id` INT NOT NULL,
  PRIMARY KEY (`course_to_degree_program_id`),
  INDEX `coursetodegreeprogram_to_degreeprogram_degree_program_id_idx` (`dp_id` ASC),
  CONSTRAINT `coursetodegreeprogram_to_course_course_id`
    FOREIGN KEY (`cou_id`)
    REFERENCES `db_110403004`.`Course` (`cou_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `coursetodegreeprogram_to_degreeprogram_degree_program_id`
    FOREIGN KEY (`dp_id`)
    REFERENCES `db_110403004`.`DegreeProgram` (`dp_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_110403004`.`StudentDegreeProgram`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `db_110403004`.`StudentDegreeProgram` ;

CREATE TABLE IF NOT EXISTS `db_110403004`.`StudentDegreeProgram` (
  `sdp_id` INT NOT NULL,
  `stu_id` INT NOT NULL,
  `sdp_degree_program` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`sdp_id`, `stu_id`),
  INDEX `studentdegreeprogram_to_student_idx` (`stu_id` ASC),
  CONSTRAINT `studentdegreeprogram_to_student`
    FOREIGN KEY (`stu_id`)
    REFERENCES `db_110403004`.`Student` (`stu_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_110403004`.`PrerequisiteCourse`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `db_110403004`.`PrerequisiteCourse` ;

CREATE TABLE IF NOT EXISTS `db_110403004`.`PrerequisiteCourse` (
  `pc_id` INT NOT NULL,
  `cou_id` INT NOT NULL,
  `from_course_code` VARCHAR(100) NOT NULL,
  `from_course` VARCHAR(100) NOT NULL,
  `prerequisite_code` VARCHAR(100) NOT NULL,
  `pc_prerequisite_course` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`pc_id`),
  INDEX `rerequisiteourse_to_course_idx` (`cou_id` ASC),
  CONSTRAINT `rerequisiteourse_to_course`
    FOREIGN KEY (`cou_id`)
    REFERENCES `db_110403004`.`Course` (`cou_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_110403004`.`RequiredCourse`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `db_110403004`.`RequiredCourse` ;

CREATE TABLE IF NOT EXISTS `db_110403004`.`RequiredCourse` (
  `re_id` INT NOT NULL,
  `dp_id` INT NOT NULL,
  `re_required_course` VARCHAR(45) NOT NULL,
  `re_prerequisite_year_of_required_course` INT NOT NULL,
  PRIMARY KEY (`re_id`),
  INDEX `requiredourse_to_degreeprogram_idx` (`dp_id` ASC),
  CONSTRAINT `requiredourse_to_degreeprogram`
    FOREIGN KEY (`dp_id`)
    REFERENCES `db_110403004`.`DegreeProgram` (`dp_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_110403004`.`ElectiveCourse`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `db_110403004`.`ElectiveCourse` ;

CREATE TABLE IF NOT EXISTS `db_110403004`.`ElectiveCourse` (
  `el_id` INT NOT NULL,
  `dp_id` INT NOT NULL,
  `el_elective_course` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`el_id`),
  INDEX `electivecourse_to_degreeprogram_idx` (`dp_id` ASC),
  CONSTRAINT `electivecourse_to_degreeprogram`
    FOREIGN KEY (`dp_id`)
    REFERENCES `db_110403004`.`DegreeProgram` (`dp_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
