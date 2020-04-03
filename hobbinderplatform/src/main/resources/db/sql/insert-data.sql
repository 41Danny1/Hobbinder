INSERT INTO HOB_USERS VALUES(1, 'John', 'Smith', 'js123','js@test.com', '123456', 'Male', 'Canada', null, 'Hi there! I love spending the weekend outside exploring the area, BBQing with friends, and harassing my dog.');
INSERT INTO COMMUNITIES VALUES (1, 'Sample Community', null, 'Testing123', 'asdf', '1');
INSERT INTO POSTS VALUES (1, 'Test post 1', 'Lorem Ipsum', '2020-03-27', 1, 1);
INSERT INTO POSTS VALUES (2, 'Test post 2', 'Lorem Ipsummmm', '2020-03-27', 1, 1);
INSERT INTO POSTS VALUES (3, '123', 'abc', '2020-03-27', 1, 1);
INSERT INTO POSTS VALUES (4, '1 fish', '2 fish', '2020-03-27', 1, 1);
INSERT INTO POSTS VALUES (5, 'red fish', 'blue fish', '2020-03-27', 1, 1);

INSERT INTO users VALUES (1, 'mkyong', 'mkyong@gmail.com');
INSERT INTO users VALUES (2, 'alex', 'alex@yahoo.com');
INSERT INTO users VALUES (3, 'joel', 'joel@gmail.com');

INSERT INTO students VALUES('lis@douglascollege.ca', 'Simon Li', '123456');
INSERT INTO students VALUES('wongi5@douglascollege.ca', 'Ivan Wong', '654321');

INSERT INTO courses VALUES('CSIS1175', 'Introduction to Programming 1');
INSERT INTO courses VALUES('CSIS1275', 'Introduction to Programming 2');

INSERT INTO registrations VALUES('wongi5@douglascollege.ca', 'CSIS1275');

INSERT INTO HOB_USERS('UserID', 'FirstName', 'LastName', 'UserName', 'Email', 'Password','Gender','Country', 'UserImage', 'UserDescription')
VALUES (null, 'HARUKA', 'KOTANI', 'HARUKA123', 'HARUKA@GMAIL.COM', '1111', 'MALE', 'CANADA', '', 'FROM JAPAN');

INSERT INTO HOB_USERS('UserID', 'FirstName', 'LastName', 'UserName', 'Email', 'Password','Gender','Country', 'UserImage', 'UserDescription')
VALUES (null, 'Danny', 'Guo', '41Danny1', 'danny@GMAIL.COM', '1111', 'MALE', 'CANADA', '', 'FROM Canada');

INSERT INTO HOB_USERS('UserID', 'FirstName', 'LastName', 'UserName', 'Email', 'Password','Gender','Country', 'UserImage', 'UserDescription')
VALUES (null, 'Alfred', 'Riantho', 'Alred4', 'alfred@GMAIL.COM', '1111', 'MALE', 'CANADA', '', 'FROM Indonesia');

INSERT INTO HOB_USERS('UserID', 'FirstName', 'LastName', 'UserName', 'Email', 'Password','Gender','Country', 'UserImage', 'UserDescription')
VALUES (null, 'Juliana', 'Takase', 'Juliana11', 'juliana@GMAIL.COM', '1111', 'FEMALE', 'CANADA', '', 'FROM Brazil');

INSERT INTO HOB_USERS('UserID', 'FirstName', 'LastName', 'UserName', 'Email', 'Password','Gender','Country', 'UserImage', 'UserDescription')
VALUES (null, 'Jeff', 'Bezos', 'Jeff55', 'jeff@GMAIL.COM', '1111', 'MALE', 'CANADA', '', 'FROM Amazon');

INSERT INTO USER_FOLLOWERS
VALUES (2, 1);

INSERT INTO USER_FOLLOWERS
VALUES (3, 1);

INSERT INTO USER_FOLLOWERS
VALUES (4, 1);

INSERT INTO USER_FOLLOWERS
VALUES (5, 1);

INSERT INTO USER_FOLLOWERS
VALUES (6, 1);


INSERT INTO USER_FOLLOWING
VALUES (2, 1);

INSERT INTO USER_FOLLOWING
VALUES (3, 1);

INSERT INTO USER_FOLLOWING
VALUES (4, 1);

INSERT INTO USER_FOLLOWING
VALUES (5, 1);

INSERT INTO USER_FOLLOWING
VALUES (6, 1);

INSERT INTO HOB_USERS (FirstName, LastName, UserName, Gender, Country, UserImage, UserDescription, Email, Password) VALUES('Juliana', 'Takase', 'julianatakase', 'female', 'Brazil', 'image.jpg', 'hlkjhlkjlkjlkj', 'juliana@juliana.com', '123456');
INSERT INTO HOB_USERS (FirstName, LastName, UserName, Gender, Country, UserImage, UserDescription, Email, Password) VALUES('Marcos', 'Barros', 'marcosbarros', 'male', 'Brazil', 'image.jpg', 'hlkjhlkjlkjlkj', 'marcos@marcos.com', '123456');


