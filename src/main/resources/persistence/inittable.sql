CREATE TABLE UserAccount(
	username varchar(40),
	password varchar(40),
	email varchar(40),
	firstName varchar(40),
	lastName varchar(40),
	isEvaluator bit,
	PRIMARY KEY (username),
	UNIQUE (email)
);

CREATE TABLE Role(
  id integer,
  username varchar(40),
  role varchar(30),
  PRIMARY KEY (id),
  UNIQUE (username, role),
  FOREIGN KEY (username) REFERENCES UserAccount(username)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);

CREATE TABLE Evaluator(
	username varchar(40),
	evaluationPeriod varchar(40),
	PRIMARY KEY (username),
	FOREIGN KEY (username) REFERENCES UserAccount(username)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);

CREATE TABLE DegreeProgram(
	id varchar(10),
	description varchar(1000),
	department varchar(20),
	PRIMARY KEY (id)
);

CREATE TABLE User_DegreeProgram(
	username varchar(40),
	degreeProgramId varchar(10),
	PRIMARY KEY (username, degreeProgramId),
	FOREIGN KEY (username) REFERENCES UserAccount(username)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	FOREIGN KEY (degreeProgramId) REFERENCES DegreeProgram(id)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);

CREATE TABLE PEO(
	id varchar(10),
	sequenceNumber integer,
	shortName varchar(20),
	description varchar(1000),
	targetAttainment integer,
	validityPeriod varchar(100),
	degreeProgramId varchar(10),
	PRIMARY KEY (id),
	FOREIGN KEY (degreeProgramId) REFERENCES DegreeProgram(id)
		ON DELETE NO ACTION
		ON UPDATE CASCADE
);

CREATE TABLE StudentOutcome(
	id varchar(10),
	sequenceNumber integer,
	shortName varchar(20),
	description varchar(1000),
	targetDirectAssessmentAttainmentLevel integer,
	targetSurveyAssessmentAttainmentLevel integer,
	validityPeriod varchar(100),
	degreeProgramId varchar(10),
	PRIMARY KEY (id),
	FOREIGN KEY (degreeProgramId) REFERENCES DegreeProgram(id)
		ON DELETE NO ACTION
		ON UPDATE CASCADE
);

CREATE TABLE Course(
	id varchar(20),
	name varchar(255),
	courseCoordinatorUsername varchar(40),
	alternateCourseCoordinatorUsername varchar(40),
	PRIMARY KEY (id),
	FOREIGN KEY (courseCoordinatorUsername) REFERENCES UserAccount(username)
		ON DELETE NO ACTION
		ON UPDATE CASCADE,
	FOREIGN KEY (alternateCourseCoordinatorUsername) REFERENCES UserAccount(username)
		ON DELETE NO ACTION
		ON UPDATE CASCADE
);

CREATE TABLE Course_DegreeProgram(
	courseId varchar(20),
	degreeProgramId varchar(10),
	PRIMARY KEY (courseId, degreeProgramId),
	FOREIGN KEY (courseId) REFERENCES Course(id)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	FOREIGN KEY (degreeProgramId) REFERENCES DegreeProgram(id)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);

CREATE TABLE CourseOutcome(
	sequenceNumber integer,
	description varchar(1000),
	courseId varchar(20),
	PRIMARY KEY (sequenceNumber),
	FOREIGN KEY (courseId) REFERENCES Course(id)
		ON DELETE NO ACTION
		ON UPDATE CASCADE
);

CREATE TABLE StudentOutcome_CourseOutcome(
	studentOutcomeId varchar(10),
	courseOutcomeId integer,
	rationale varchar(1000),
	assessed bit,
	PRIMARY KEY (studentOutcomeId, courseOutcomeId),
	FOREIGN KEY (studentOutcomeId) REFERENCES StudentOutcome(id)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	FOREIGN KEY (courseOutcomeId) REFERENCES CourseOutcome(sequenceNumber)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);

CREATE TABLE CourseOffering(
	id integer,
	courseId varchar(20),
	section integer,
	semester varchar(10),
	instructorUsername varchar(40),
	syllabusPath varchar(255),
	schedulePath varchar(255),
	eosReportPath varchar(255),
	ccReportPath varchar(255),
	cicReportPath varchar(255),
	PRIMARY KEY (id),
	UNIQUE (courseId, section, semester),
	FOREIGN KEY (instructorUsername) REFERENCES UserAccount(username)
		ON DELETE NO ACTION
		ON UPDATE CASCADE
);

CREATE TABLE LectureNote(
  id integer,
  name varchar(50),
  filePath varchar(255),
  courseOfferingId integer,
  PRIMARY KEY (id),
	FOREIGN KEY (courseOfferingId) REFERENCES CourseOffering(id)
		ON DELETE NO ACTION
		ON UPDATE CASCADE
);

CREATE TABLE Assignment(
	id integer,
	name varchar(50),
	description varchar(1000),
	courseOfferingId integer,
	PRIMARY KEY (id),
	FOREIGN KEY (courseOfferingId) REFERENCES CourseOffering(id)
		ON DELETE NO ACTION
		ON UPDATE CASCADE
);

CREATE TABLE StudentSample(
	id integer,
	quality varchar(7),
	content varchar(255),
	assignmentId integer,
	PRIMARY KEY (id),
	FOREIGN KEY (assignmentId) REFERENCES Assignment(id)
		ON DELETE NO ACTION
		ON UPDATE CASCADE
);

/*
This table contains 2 pieces of information because they have the same candidate key
	and no duplicate information:
		1. target attainment of a course outcome in a course
		2. course outcome information from survey
*/
CREATE TABLE CourseOfferingOutcomeInformation(
	id integer,
	courseOutcomeId integer,
	courseOfferingId integer,
	targetAttainment integer,
	averageAttainmentRating integer,
	PRIMARY KEY (id),
	FOREIGN KEY (courseOutcomeId) REFERENCES CourseOutcome(sequenceNumber)
		ON DELETE NO ACTION
		ON UPDATE CASCADE,
	FOREIGN KEY (courseOfferingId) REFERENCES CourseOffering(id)
		ON DELETE NO ACTION
		ON UPDATE CASCADE
);

CREATE TABLE CourseOfferingDirectAssessment(
	id integer,
	courseOutcomeId integer,
	courseOfferingId integer,
	assessmentInstrument varchar(255),
	thresholdScore integer,
	rationale varchar(1000),
	attainmentLevel integer,
	PRIMARY KEY (id),
	FOREIGN KEY (courseOutcomeId) REFERENCES CourseOutcome(sequenceNumber)
		ON DELETE NO ACTION
		ON UPDATE CASCADE,
	FOREIGN KEY (courseOfferingId) REFERENCES CourseOffering(id)
		ON DELETE NO ACTION
		ON UPDATE CASCADE

);
	
CREATE TABLE Survey(
	id integer,
	groups varchar(20),
	initiator varchar(20),
	semester varchar(10),
	result varchar(255),
	PRIMARY KEY (id)
);

CREATE TABLE Survey_DegreeProgram(
	surveyId integer,
	degreeProgramId varchar(10),
	PRIMARY KEY (surveyId, degreeProgramId),
	FOREIGN KEY (surveyId) REFERENCES Survey(id)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	FOREIGN KEY (degreeProgramId) REFERENCES DegreeProgram(id)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);

CREATE TABLE Survey_PEOAttainment(
	surveyId integer,
	peoId varchar(10),
	attainmentLevel integer,
	PRIMARY KEY (surveyId, peoId),
	FOREIGN KEY (surveyId) REFERENCES Survey(id)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	FOREIGN KEY (peoId) REFERENCES PEO(id)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);

CREATE TABLE Minutes(
	id integer,
	date date,
	groups varchar(20),
	minutes varchar(255),
	PRIMARY KEY (id)
);