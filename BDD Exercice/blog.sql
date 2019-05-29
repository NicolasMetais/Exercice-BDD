CREATE DATABASE BlogDB
CHARACTER
SET 'utf8';

USE BlogDB;

CREATE TABLE article (
    article_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR
(50),
    text_article TEXT,
    use_id INT,
    resume_article VARCHAR
(100),
    date_publi DATETIME,
    INDEX
(date_publi)
)
ENGINE=INNODB;

CREATE TABLE user
(
    use_id INT PRIMARY KEY NOT NULL
    AUTO_INCREMENT,
    pseudo VARCHAR
    (20),
    email VARCHAR
    (100),
    pass VARCHAR
    (600),
    role_blog VARCHAR
    (20)
)
ENGINE=INNODB;

    CREATE TABLE category (
    category_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name_catego VARCHAR
    (50),
    descript VARCHAR
    (200)
)
ENGINE=INNODB;

    CREATE TABLE comment (
    comment_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    use_id INT,
    article_id INT,
    response_id INT,
    date_publi DATETIME,   
INDEX
    (date_publi DESC)
)
ENGINE=INNODB;

    CREATE TABLE img (
    img_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    link VARCHAR
    (300),
    article_id INT
)
ENGINE=INNODB;

    CREATE TABLE Acategory
(
    Acategory_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    category_id INT,
    article_id INT
)
ENGINE=INNODB;

    ALTER TABLE comment 
ADD CONSTRAINT fk_user FOREIGN KEY (use_id) REFERENCES user (use_id);

    ALTER TABLE comment 
ADD CONSTRAINT fk_article FOREIGN KEY (article_id) REFERENCES article (article_id);

    ALTER TABLE img 
ADD CONSTRAINT fk_image FOREIGN KEY (article_id) REFERENCES article (article_id);

    ALTER TABLE Acategory 
ADD FOREIGN KEY (category_id) REFERENCES category (category_id);

    ALTER TABLE Acategory
ADD CONSTRAINT fk_arti FOREIGN KEY (article_id) REFERENCES article (article_id);

    ALTER TABLE article
ADD CONSTRAINT fk_use FOREIGN KEY (use_id) REFERENCES user (use_id);

