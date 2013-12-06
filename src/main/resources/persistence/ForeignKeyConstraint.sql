/*Assignment foreign key constraint*/
ALTER TABLE Assignment
DROP FOREIGN KEY courseOfferingId;

ALTER TABLE Assignment
ADD CONSTRAINT courseOfferingId
	FOREIGN KEY(courseOfferingId) REFERENCES CourseOffering(id)
	ON DELETE CASCADE
	ON UPDATE CASCADE;

/*Course foreign key constraint*/
ALTER TABLE Course
DROP FOREIGN KEY courseCoordinatorUsername;

ALTER TABLE Course
ADD CONSTRAINT courseCoordinatorUsername
	FOREIGN KEY(courseCoordinatorUsername) REFERENCES UserAccount(username)
	ON DELETE SET NULL
	ON UPDATE CASCADE;

ALTER TABLE Course
DROP FOREIGN KEY alternateCourseCoordinatorUsername;

ALTER TABLE Course
ADD CONSTRAINT alternateCourseCoordinatorUsername
	FOREIGN KEY(alternateCourseCoordinatorUsername) REFERENCES UserAccount(username)
	ON DELETE SET NULL
	ON UPDATE CASCADE;

/*Course Offering foreign key constraint*/
ALTER TABLE CourseOffering
DROP FOREIGN KEY courseId;

ALTER TABLE CourseOffering
ADD CONSTRAINT courseId
	FOREIGN KEY(courseId) REFERENCES Course(id)
	ON DELETE NO ACTION
	ON UPDATE CASCADE;

ALTER TABLE CourseOffering
DROP FOREIGN KEY instructorUsername;

ALTER TABLE CourseOffering
ADD CONSTRAINT instructorUsername
	FOREIGN KEY(instructorUsername) REFERENCES UserAccount(username)
	ON DELETE NO ACTION
	ON UPDATE CASCADE;

/*CourseOfferingDirectAssessment foreign key constraint*/
ALTER TABLE CourseOfferingDirectAssessment
DROP FOREIGN KEY courseOutcomeId;

ALTER TABLE CourseOfferingDirectAssessment
ADD CONSTRAINT courseOutcomeId
	FOREIGN KEY(courseOutcomeId) REFERENCES CourseOutcome(courseOutcome)
	ON DELETE NO ACTION
	ON UPDATE CASCADE;

ALTER TABLE CourseOfferingDirectAssessment
DROP FOREIGN KEY courseOfferingId;

ALTER TABLE CourseOfferingDirectAssessment
ADD CONSTRAINT courseOfferingId
	FOREIGN KEY(courseOfferingId) REFERENCES courseOffering(id)
	ON DELETE CASCADE
	ON UPDATE CASCADE;

/*CourseOfferingOutcomeInformation foreign key constraint*/
ALTER TABLE CourseOfferingOutcomeInformation
DROP FOREIGN KEY courseOutcomeId;

ALTER TABLE CourseOfferingOutcomeInformation
ADD CONSTRAINT courseOutcomeId
	FOREIGN KEY(courseOutcomeId) REFERENCES CourseOutcome(courseOutcome)
	ON DELETE NO ACTION
	ON UPDATE CASCADE;

ALTER TABLE CourseOfferingOutcomeInformation
DROP FOREIGN KEY courseOfferingId;

ALTER TABLE CourseOfferingOutcomeInformation
ADD CONSTRAINT courseOfferingId
	FOREIGN KEY(courseOfferingId) REFERENCES courseOffering(id)
	ON DELETE CASCADE
	ON UPDATE CASCADE;

/*CourseOutcome foreign key constraint*/
ALTER TABLE CourseOutcome
DROP FOREIGN KEY courseId;

ALTER TABLE CourseOutcome
ADD CONSTRAINT courseId
	FOREIGN KEY(courseId) REFERENCES Course(id)
	ON DELETE CASCADE
	ON UPDATE CASCADE;

/*Evaluator foreign key constraint NOTE: ID AND FOREIGN KEY CONSTRAINT ARE NOT CLEAR*/
ALTER TABLE Evaluator
DROP FOREIGN KEY username;

ALTER TABLE Evaluator
ADD CONSTRAINT username
	FOREIGN KEY(username) REFERENCES userAccount(username)
	ON DELETE CASCADE
	ON UPDATE CASCADE;

/*LectureNote foreign key constraint*/
ALTER TABLE LectureNote
DROP FOREIGN KEY courseOfferingId;

ALTER TABLE LectureNote
ADD CONSTRAINT courseOfferingId
	FOREIGN KEY(courseOfferingId) REFERENCES CourseOffering(id)
	ON DELETE CASCADE
	ON UPDATE CASCADE;

/*Peo foreign key constraint*/
ALTER TABLE Peo
DROP FOREIGN KEY degreeProgramId;

ALTER TABLE Peo
ADD CONSTRAINT degreeProgramId
	FOREIGN KEY(degreeProgramId) REFERENCES DegreeProgram(id)
	ON DELETE CASCADE
	ON UPDATE CASCADE;

/*Survey_PEOAttainment foreign key constraint*/
ALTER TABLE Survey_PEOAttainment
DROP FOREIGN KEY surveyId;

ALTER TABLE Survey_PEOAttainment
ADD CONSTRAINT surveyId
	FOREIGN KEY(surveyId) REFERENCES Survey(id)
	ON DELETE CASCADE
	ON UPDATE CASCADE;

ALTER TABLE Survey_PEOAttainment
DROP FOREIGN KEY peoId;

ALTER TABLE Survey_PEOAttainment
ADD CONSTRAINT peoId
	FOREIGN KEY(peoId) REFERENCES Peo(id)
	ON DELETE CASCADE
	ON UPDATE CASCADE;

/*StudentOutcome foreign key constraint*/
ALTER TABLE StudentOutcome
DROP FOREIGN KEY degreeProgramId;

ALTER TABLE StudentOutcome
ADD CONSTRAINT degreeProgramId
	FOREIGN KEY(degreeProgramId) REFERENCES DegreeProgram(id)
	ON DELETE CASCADE
	ON UPDATE CASCADE;

/*StudentOutcome_CourseOutcome foreign key constraint*/
ALTER TABLE StudentOutcome_CourseOutcome
DROP FOREIGN KEY studentOutcomeId;

ALTER TABLE StudentOutcome_CourseOutcome
ADD CONSTRAINT studentOutcomeId
	FOREIGN KEY(studentOutcomeId) REFERENCES StudentOutcome(id)
	ON DELETE CASCADE
	ON UPDATE CASCADE;

ALTER TABLE StudentOutcome_CourseOutcome
DROP FOREIGN KEY courseOutcomeId;

ALTER TABLE StudentOutcome_CourseOutcome
ADD CONSTRAINT courseOutcomeId
	FOREIGN KEY(courseOutcomeId) REFERENCES CourseOutcome(sequenceNumber)
	ON DELETE CASCADE
	ON UPDATE CASCADE;

/*StudentSample foreign key constraint*/
ALTER TABLE StudentSample
DROP FOREIGN KEY assignmentId;

ALTER TABLE StudentSample
ADD CONSTRAINT assignmentId
	FOREIGN KEY(assignmentId) REFERENCES Assignment(id)
	ON DELETE CASCADE
	ON UPDATE CASCADE;

