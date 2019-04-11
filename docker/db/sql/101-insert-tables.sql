START TRANSACTION;
INSERT INTO users(username, UpdateTime) VALUES('First task', CURRENT_TIMESTAMP);
INSERT INTO users(username, UpdateTime) VALUES('endok', CURRENT_TIMESTAMP);

INSERT INTO books(bookname, userid, UpdateTime) VALUES('chapter1', 1, CURRENT_TIMESTAMP);
INSERT INTO books(bookname, userid, UpdateTime) VALUES('python', 1, CURRENT_TIMESTAMP);
COMMIT;