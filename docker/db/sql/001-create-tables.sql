---- drop ----
DROP TABLE IF EXISTS `users`;
DROP TABLE IF EXISTS `books`;

---- create ----
create table IF not exists `users`
(
  `id`               INT(20) AUTO_INCREMENT,
  `username`         VARCHAR(20)                         NOT NULL,
  `UpdateTime`       TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL on update CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
) DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

# コメント
/*
  コメント
*/
create table IF not exists `books`
(
  `id`               INT(20) AUTO_INCREMENT PRIMARY KEY,
  `bookname`         VARCHAR(20)                         NOT NULL,
  `userid`           INT(20)                             NOT NULL,
  `UpdateTime`       TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL on update CURRENT_TIMESTAMP,
  KEY idx_userid (userid),
  CONSTRAINT fk_users_id # 外部キー
    FOREIGN KEY fk_books(userid) 
    REFERENCES users (id)
    ON DELETE RESTRICT ON UPDATE RESTRICT
) DEFAULT CHARSET=utf8 COLLATE=utf8_bin;