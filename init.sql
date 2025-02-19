
-- データベースの作成
CREATE DATABASE IF NOT EXISTS social_media_platform;

-- データベースを使用
USE social_media_platform;

-- Usersテーブルの作成
CREATE TABLE IF NOT EXISTS Users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    nickname VARCHAR(50) NOT NULL
);

-- Postsテーブルの作成
CREATE TABLE IF NOT EXISTS Posts (
    post_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    content TEXT,
    post_date DATETIME NOT NULL,
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

-- Commentsテーブルの作成
CREATE TABLE IF NOT EXISTS Comments (
    comment_id INT AUTO_INCREMENT PRIMARY KEY,
    post_id INT NOT NULL,
    user_id INT NOT NULL,
    content TEXT,
    comment_date DATETIME NOT NULL,
    FOREIGN KEY (post_id) REFERENCES Posts(post_id),
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);
