use adlister_db;


CREATE TABLE ads (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INT UNSIGNED NOT NULL,
  title VARCHAR(255),
  description TEXT,
  FOREIGN KEY (user_id) REFERENCES users (id)
);