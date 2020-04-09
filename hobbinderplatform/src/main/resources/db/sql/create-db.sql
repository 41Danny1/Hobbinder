DROP TABLE REPORTS IF EXISTS;
DROP TABLE POSTS IF EXISTS;
DROP TABLE USER_FOLLOWING IF EXISTS;
DROP TABLE USER_FOLLOWERS IF EXISTS;
DROP TABLE USER_EVENTS IF EXISTS;
DROP TABLE MESSAGES IF EXISTS;
DROP TABLE EVENTS IF EXISTS;
DROP TABLE COMMUNITIES IF EXISTS;
DROP TABLE HOB_USERS IF EXISTS;

CREATE TABLE HOB_USERS (
	UserID INTEGER PRIMARY KEY AUTO_INCREMENT,
	FirstName VARCHAR(50), 
	LastName VARCHAR(50), 
	UserName VARCHAR(30), 
	Gender VARCHAR(15), 
	Country VARCHAR(30), 
	UserImage VARCHAR(50), 
	UserDescription VARCHAR(200),
	Email VARCHAR(50),
	Password VARCHAR(50)
);

CREATE TABLE COMMUNITIES (
	CommunityID INTEGER PRIMARY KEY AUTO_INCREMENT, 
	CommunityName VARCHAR(20), 
	CommunityType VARCHAR(8),
	CommunityAbout VARCHAR(50), 
	CommunityDescription VARCHAR(200),
	UserID INTEGER,
	FOREIGN KEY (UserID) REFERENCES HOB_USERS(UserID)
);


CREATE TABLE EVENTS (
	EventID INTEGER PRIMARY KEY AUTO_INCREMENT, 
	EventName VARCHAR(30),
	EventDate DATE, 
	EventLocation VARCHAR(50), 
	EventTime TIME, 
	EventDescription VARCHAR(200),
	UserID INTEGER,
	FOREIGN KEY (UserID) REFERENCES HOB_USERS(UserID)
);

CREATE TABLE POSTS (
	PostID INTEGER PRIMARY KEY AUTO_INCREMENT, 
	PostTitle VARCHAR(30), 
	PostContent VARCHAR(300), 
	PostCreationDate DATE, 
	PostCreationTime TIME,
	CommunityID INTEGER, 
	UserID INTEGER,
	FOREIGN KEY (CommunityID) REFERENCES COMMUNITIES(CommunityID),
	FOREIGN KEY (UserID) REFERENCES HOB_USERS(UserID)
);

CREATE TABLE USER_FOLLOWING (
	FollowingID INTEGER, 
	UserID INTEGER,
	FOREIGN KEY (FollowingID) REFERENCES HOB_USERS(UserID),
	FOREIGN KEY (UserID) REFERENCES HOB_USERS(UserID)
);

CREATE TABLE USER_FOLLOWERS (
	FollowerID INTEGER, 
	UserID INTEGER,
	FOREIGN KEY (FollowerID) REFERENCES HOB_USERS(UserID),
	FOREIGN KEY (UserID) REFERENCES HOB_USERS(UserID)
);

CREATE TABLE USER_EVENTS (
	EventID INTEGER,
	UserID INTEGER,
	FOREIGN KEY (EventID) REFERENCES EVENTS(EventID),
	FOREIGN KEY (UserID) REFERENCES HOB_USERS(UserID)
);

CREATE TABLE MESSAGES (
	MessageID INTEGER PRIMARY KEY AUTO_INCREMENT,
	MessageContent VARCHAR(300),
	MessageDate DATE, 
	UserID INTEGER,
	RecipientID INTEGER,
	FOREIGN KEY (UserID) REFERENCES HOB_USERS(UserID),
	FOREIGN KEY (RecipientID) REFERENCES HOB_USERS(UserID)
);

CREATE TABLE REPORTS (
	ReportID INTEGER PRIMARY KEY AUTO_INCREMENT, 
	postTitle VARCHAR(30),
	Message VARCHAR(300), 
	FOREIGN KEY (postTitle) REFERENCES POSTS(postTitle)
);


DROP TABLE users IF EXISTS;
DROP TABLE registrations IF EXISTS;
DROP TABLE students IF EXISTS;
DROP TABLE courses IF EXISTS;

CREATE TABLE users (
  id         INTEGER PRIMARY KEY,
  name VARCHAR(30),
  email  VARCHAR(50)
);

CREATE TABLE students (
  email VARCHAR(50) PRIMARY KEY,
  name VARCHAR(50),
  password VARCHAR(20)
);

CREATE TABLE courses (
  code VARCHAR(50) PRIMARY KEY,
  name VARCHAR(200)
);

CREATE TABLE registrations(
  email VARCHAR(50),
  code VARCHAR(50),
  foreign key (email) references students(email),
  foreign key (code) references courses(code)
);


