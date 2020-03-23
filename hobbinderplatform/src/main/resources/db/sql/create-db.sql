DROP TABLE users IF EXISTS;
DROP TABLE registrations IF EXISTS;
DROP TABLE students IF EXISTS;
DROP TABLE courses IF EXISTS;



CREATE TABLE USERS (
	UserID							INT						NOT NULL IDENTITY(1,1),
	FirstName						CHAR(50)				NOT NULL, 
	LastName						CHAR(50)				NOT NULL, 
	UserName						CHAR(30)				NOT NULL, 
	Email							CHAR(50)				NOT NULL,
	Password						CHAR(50)				NOT NULL, 
	Gender							CHAR(15)				NOT NULL, 
	Country							CHAR(30)				NOT NULL, 
	UserImage						CHAR(50)				NOT NULL, 
	UserDescription					CHAR(200)				NOT NULL,
	CONSTRAINT						USER_PK					PRIMARY KEY(UserID)
);

CREATE TABLE COMMUNITY (
	CommunityID						INT						NOT NULL IDENTITY(1,1), 
	CommunityName					CHAR(20)				NOT NULL, 
	CommunityType					CHAR(8)					NOT NULL,
	CommunityAbout					CHAR(50)				NOT NULL, 
	CommunityDescription			CHAR(200)				NOT NULL,
	UserID							INT						NOT NULL,
	CONSTRAINT						Community_PK			PRIMARY KEY(CommunityID),
	CONSTRAINT						Community_FK			FOREIGN KEY(UserID)	
															REFERENCES USERS(UserID)
															ON DELETE CASCADE
);

CREATE TABLE EVENT (
	EventID							INT						NOT NULL IDENTITY(1,1), 
	EventName						CHAR(30)				NOT NULL,
	EventDate						DATE					NOT NULL, 
	EventLocation					CHAR(50)				NOT NULL, 
	EventTime						TIME					NOT NULL, 
	EventDescription				CHAR(200)				NOT NULL,
	UserID							INT						NOT NULL, 
	CONSTRAINT						Event_PK				PRIMARY KEY(EventID),
	CONSTRAINT						Event_FK				FOREIGN KEY(UserID)	
															REFERENCES USERS(UserID)
															ON DELETE CASCADE
);

CREATE TABLE POST (
	PostID							INT						NOT NULL IDENTITY(1,1), 
	PostTitle						CHAR(30)				NOT NULL, 
	PostContent						CHAR(300)				NOT NULL, 
	PostCreationDate				DATE					NOT NULL, 
	CommunityID						INT						NOT NULL, 
	UserID							INT						NOT NULL, 
	CONSTRAINT						Post_PK					PRIMARY KEY(PostID),
	CONSTRAINT						Post_FK1				FOREIGN KEY(CommunityID)	
															REFERENCES COMMUNITY(CommunityID)
															ON DELETE CASCADE,
	CONSTRAINT						Post_FK2				FOREIGN KEY(UserID)	
															REFERENCES USERS(UserID)
															ON DELETE NO ACTION
);
CREATE TABLE FOLLOWING (
	FollowingID						INT						NOT NULL IDENTITY(1,1), 
	UserID							INT						NOT NULL, 
	CONSTRAINT						Following_PK			PRIMARY KEY(FollowingID),
	CONSTRAINT						Following_FK			FOREIGN KEY(UserID)	
															REFERENCES USERS(UserID)
															ON DELETE CASCADE
);
CREATE TABLE MESSAGE (
	MessageID						INT						NOT NULL IDENTITY(1,1),
	MessageContent					CHAR(300)				NOT NULL,
	MessageDate						DATE					NOT NULL, 
	UserID							INT						NOT NULL, 
	CONSTRAINT						Message_PK				PRIMARY KEY(MessageID),
	CONSTRAINT						Message_FK				FOREIGN KEY(UserID)	
															REFERENCES USERS(UserID)
															ON DELETE CASCADE
);
CREATE TABLE REPORT (
	ReportID						INT						NOT NULL IDENTITY(1,1), 
	ReportSolved					BIT						NOT NULL,
	MessageID						INT						NOT NULL, 
	UserID							INT						NOT NULL, 
	CONSTRAINT						Report_PK				PRIMARY KEY(ReportID),
	CONSTRAINT						Report_FK1				FOREIGN KEY(MessageID)	
															REFERENCES MESSAGE(MessageID)
															ON DELETE CASCADE,
	CONSTRAINT						Report_FK2				FOREIGN KEY(UserID)	
															REFERENCES USERS(UserID)
															ON DELETE NO ACTION
);

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


