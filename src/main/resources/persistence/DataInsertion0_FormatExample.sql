/*Role*/
	INSERT INTO Role VALUES('ROLE_ADMIN');
	INSERT INTO Role VALUES('ROLE_CC');
	INSERT INTO Role VALUES('ROLE_CIC');
	INSERT INTO Role VALUES('ROLE_INSTR');
	INSERT INTO Role VALUES('ROLE_EVAL');

/*UserAccount*/
	INSERT INTO UserAccount(username, password, email, firstName, lastName) VALUES('user1', 'pass', 'user1@aim.web', 'First1', 'Last1');
	INSERT INTO UserAccount(username, password, email, firstName, lastName) VALUES('user2', 'pass', 'user2@aim.web', 'First2', 'Last2');
	INSERT INTO UserAccount(username, password, email, firstName, lastName) VALUES('user3', 'pass', 'user3@aim.web', 'First3', 'Last3');
	INSERT INTO UserAccount(username, password, email, firstName, lastName) VALUES('user4', 'pass', 'user4@aim.web', 'First4', 'Last4');

/*UserAccount_Role*/
	INSERT INTO UserAccount_Role(UserAccount_username, roles_role) VALUES('user1', 'ROLE_ADMIN');
	INSERT INTO UserAccount_Role(UserAccount_username, roles_role) VALUES('user1', 'ROLE_CC');
	INSERT INTO UserAccount_Role(UserAccount_username, roles_role) VALUES('user2', 'ROLE_CIC');
	INSERT INTO UserAccount_Role(UserAccount_username, roles_role) VALUES('user3', 'ROLE_EVAL');
	INSERT INTO UserAccount_Role(UserAccount_username, roles_role) VALUES('user4', 'ROLE_INSTR');
	INSERT INTO UserAccount_Role(UserAccount_username, roles_role) VALUES('user4', 'ROLE_CC');

/*Evaluator*/
	INSERT INTO Evaluator(username, evaluationPeriod) VALUES('user3', '2010-2013');

/*DegreeProgram*/
	INSERT INTO DegreeProgram(id, description, department) VALUES('CSE', 'Computer science description', 'computer science');

/*UserAccount_DegreeProgram*/
	INSERT INTO UserAccount_DegreeProgram(userAccounts_username, degreeprograms_id) VALUES('user1', 'CSE');
	INSERT INTO UserAccount_DegreeProgram(userAccounts_username, degreeprograms_id) VALUES('user2', 'CSE');
	INSERT INTO UserAccount_DegreeProgram(userAccounts_username, degreeprograms_id) VALUES('user3', 'CSE');
	INSERT INTO UserAccount_DegreeProgram(userAccounts_username, degreeprograms_id) VALUES('user4', 'CSE');

/*PEO*/
	INSERT INTO PEO(id, sequenceNumber, shortName, description, targetAttainment, validityPeriod, degreeProgramId) VALUES('PEO 01', '1', 'Practicing professionals', 'Establish themselves as practicing professionals or engage in advanced study in computer science, information technology, or related areas.', '10', '2000-2014', 'CSE');

/*StudentOutcome*/
	INSERT INTO StudentOutcome(id, sequenceNumber, shortName, description, targetDirectAssessmentAttainmentLevel, targetSurveyAssessmentAttainmentLevel, validityPeriod, degreeProgramId) VALUES('SO 01', '1', 'Apply', 'An ability to apply knowledge of computing and mathematics appropriate to the discipline', '10', '10', '2000-2014', 'CSE');
	INSERT INTO StudentOutcome(id, sequenceNumber, shortName, description, targetDirectAssessmentAttainmentLevel, targetSurveyAssessmentAttainmentLevel, validityPeriod, degreeProgramId) VALUES('SO 02', '2', 'Problem', 'An ability to analyze a problem, and identify and define the computing requirements appropriate to its solution', '10', '10', '2000-2014', 'CSE');

/*Course*/
	INSERT INTO Course(id, name, courseCoordinatorUsername, alternateCourseCoordinatorUsername) VALUES('CSE114', 'Computer Science I', 'user4', 'user1');

/*Course_DegreeProgram*/
	INSERT INTO Course_DegreeProgram(courseId, degreeProgramId) VALUES('CSE114', 'CSE');

/*CourseOutcome*/
	INSERT INTO CourseOutcome(sequenceNumber, description, courseId) VALUES('1', 'An ability to program in an object oriented  language, using concepts such as object classes, encapsulation, inheritance,  and polymorphism.', 'CSE114');
	INSERT INTO CourseOutcome(sequenceNumber, description, courseId) VALUES('2', 'An ability to use fundamental data structures  such as arrays.', 'CSE114');
	INSERT INTO CourseOutcome(sequenceNumber, description, courseId) VALUES('3', 'An ability to program with sound code structure  and use systematic software debugging and testing techniques.', 'CSE114');

/*StudentOutcome_CourseOutcome*/
	INSERT INTO StudentOutcome_CourseOutcome(id, studentOutcomeId, courseOutcomeId, rationale, assessed) VALUES('1', 'SO 01', '1', 'rationale here', false);
	INSERT INTO StudentOutcome_CourseOutcome(id, studentOutcomeId, courseOutcomeId, rationale, assessed) VALUES('2', 'SO 02', '2', 'rationale here', false);
	INSERT INTO StudentOutcome_CourseOutcome(id, studentOutcomeId, courseOutcomeId, rationale, assessed) VALUES('3', 'SO 02', '3', 'rationale here', false);

/*CourseOffering*/
	INSERT INTO CourseOffering(id, courseId, Section, semester, instructorUsername, syllabusPath, schedulePath, eosReportPath, ccReportPath, cicReportPath) VALUES(1, 'CSE114', 1, 'FALL2013', 'user4', null, null, null, null, null);

/*LectureNote*/
	INSERT INTO LectureNote(id, name, filePath, courseOfferingId) VALUES(1, 'Note 1', null, 1);

/*Assignment*/
	INSERT INTO Assignment(id, name, description, courseOfferingId) VALUES(1, 'Assignment 1', 'IDE setup', 1);

/*StudentSample*/
	INSERT INTO StudentSample(id, quality, content, assignmentId) VALUES(1, 'GOOD', null, 1);

/*CourseOfferingDirectAssessment*/
	INSERT INTO CourseOfferingDirectAssessment(id, courseOutcomeId, courseOfferingId, assessmentInstrument, rationale, thresholdScore, attainmentLevel) VALUES(1, 1, 1, 'Assignment #1', 'testing the ability to setup programming softwares.', 60, 0.9);
	INSERT INTO CourseOfferingDirectAssessment(id, courseOutcomeId, courseOfferingId, assessmentInstrument, rationale, thresholdScore, attainmentLevel) VALUES(2, 2, 1, 'Assignment #1', 'testing the ability to for course outcome #2.', 65, 0.85);
	INSERT INTO CourseOfferingDirectAssessment(id, courseOutcomeId, courseOfferingId, assessmentInstrument, rationale, thresholdScore, attainmentLevel) VALUES(3, 3, 1, 'Assignment #1', 'testing the ability to for course outcome #3.', 70, 0.78);

/*CourseOfferingOutcomeInformation*/
	INSERT INTO CourseOfferingOutcomeInformation(id, courseOutcomeId, courseOfferingId, targetAttainment, averageAttainmentRating) VALUES(1, 1, 1, 0.80, 0.78);
	INSERT INTO CourseOfferingOutcomeInformation(id, courseOutcomeId, courseOfferingId, targetAttainment, averageAttainmentRating) VALUES(2, 2, 1, 0.80, 0.76);
	INSERT INTO CourseOfferingOutcomeInformation(id, courseOutcomeId, courseOfferingId, targetAttainment, averageAttainmentRating) VALUES(3, 3, 1, 0.80, 0.77);

/*Survey*/
	INSERT INTO Survey(id, groups, initiator, semester, resultPath) VALUES(1, 'alumni', 'college', 'FALL2013', null);
	INSERT INTO Survey(id, groups, initiator, semester, resultPath) VALUES(2, 'employers', 'department', 'FALL2013', null);

/*Survey_DegreeProgram*/
	INSERT INTO Survey_DegreeProgram(Survey_id, degreeprograms_id) VALUES(1, 'CSE');
	INSERT INTO Survey_DegreeProgram(Survey_id, degreeprograms_id) VALUES(2, 'CSE');

/*Survey_PEOAttainment*/
	INSERT INTO Survey_PEOAttainment(id, surveyId, PeoId, attainmentLevel) VALUES(1, 1, 'PEO 01', 2);
	INSERT INTO Survey_PEOAttainment(id, surveyId, PeoId, attainmentLevel) VALUES(2, 2, 'PEO 01', 1);

/*Minutes*/
	INSERT INTO Minutes(id, date, groups, minutes) VALUES(1, '2013-01-01', 'Advisory Board', null);
	INSERT INTO Minutes(id, date, groups, minutes) VALUES(2, '2013-02-04', 'CIC', null);