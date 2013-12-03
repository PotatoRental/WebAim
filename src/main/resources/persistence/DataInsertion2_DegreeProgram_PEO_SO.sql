/*Contains Data for Tables:
    DegreeProgram
    UserAccount_DegreeProgram
    PEO
    StudentOutcome   */

/*DegreeProgram*/
INSERT INTO DegreeProgram(id, description, department) VALUES ('CSE', 'Computer science is the study of computational systems, including the design and development of software systems, the architecture of computers, the theoretical foundations of computing, and the application of computing to other disciplines. With recent rapid advances in hardware and software technology, computer science has become one of the most exciting and dynamic research areas and one that seems set to affect the lives of everyone.', 'computer science');

/*UserAccount_DegreeProgram*/

/*PEO*/
INSERT INTO PEO(id, sequenceNumber, shortName, description, targetAttainment, validityPeriod, degreeProgramId) VALUES ('PEO-01', '1', 'Est', 'Establish themselves as practicing professionals or engage in advanced study in computer science, information technology, or related areas.', '10', '2000-2014', 'CSE');
INSERT INTO PEO(id, sequenceNumber, shortName, description, targetAttainment, validityPeriod, degreeProgramId) VALUES ('PEO-02', '2', 'Adv', 'Advance professionally through organized training or self-learning in areas related to computer science and information technology.', '10', '2000-2014', 'CSE');

/*StudentOutcome*/
INSERT INTO StudentOutcome(id, sequenceNumber, shortName, description, targetDirectAssessmentAttainmentLevel, targetSurveyAssessmentAttainmentLevel, validityPeriod, degreeProgramId) VALUES ('SO-01', '1', 'Apply', 'An ability to apply knowledge of computing and mathematics appropriate to the discipline', '10', '10', '2000-2014', 'CSE');
INSERT INTO StudentOutcome(id, sequenceNumber, shortName, description, targetDirectAssessmentAttainmentLevel, targetSurveyAssessmentAttainmentLevel, validityPeriod, degreeProgramId) VALUES ('SO-02', '2', 'Problem', 'An ability to analyze a problem, and identify and define the computing requirements appropriate to its solution', '10', '10', '2000-2014', 'CSE');
INSERT INTO StudentOutcome(id, sequenceNumber, shortName, description, targetDirectAssessmentAttainmentLevel, targetSurveyAssessmentAttainmentLevel, validityPeriod, degreeProgramId) VALUES ('SO-03', '3', 'Design', 'An ability to design, implement, and evaluate a computer-based system, process, component or program to meet desired needs', '10', '10', '2000-2014', 'CSE');
INSERT INTO StudentOutcome(id, sequenceNumber, shortName, description, targetDirectAssessmentAttainmentLevel, targetSurveyAssessmentAttainmentLevel, validityPeriod, degreeProgramId) VALUES ('SO-04', '4', 'Team', 'An ability to function effectively on teams to accomplish a common goal', '10', '10', '2000-2014', 'CSE');
INSERT INTO StudentOutcome(id, sequenceNumber, shortName, description, targetDirectAssessmentAttainmentLevel, targetSurveyAssessmentAttainmentLevel, validityPeriod, degreeProgramId) VALUES ('SO-05', '5', 'Ethics', 'An understanding of professional, ethical, legal, security and social issues and responsibilities', '10', '10', '2000-2014', 'CSE');
INSERT INTO StudentOutcome(id, sequenceNumber, shortName, description, targetDirectAssessmentAttainmentLevel, targetSurveyAssessmentAttainmentLevel, validityPeriod, degreeProgramId) VALUES ('SO-06', '6', 'Communication', 'An ability to communicate effectively with a range of audiences', '10', '10', '2000-2014', 'CSE');
INSERT INTO StudentOutcome(id, sequenceNumber, shortName, description, targetDirectAssessmentAttainmentLevel, targetSurveyAssessmentAttainmentLevel, validityPeriod, degreeProgramId) VALUES ('SO-07', '7', 'Impact', 'An ability to analyze the local and global impact of computing on individuals, organizations, and society', '10', '10', '2000-2014', 'CSE');
INSERT INTO StudentOutcome(id, sequenceNumber, shortName, description, targetDirectAssessmentAttainmentLevel, targetSurveyAssessmentAttainmentLevel, validityPeriod, degreeProgramId) VALUES ('SO-08', '8', 'Development', 'Recognition of the need for and an ability to engage in continuing professional development', '10', '10', '2000-2014', 'CSE');
INSERT INTO StudentOutcome(id, sequenceNumber, shortName, description, targetDirectAssessmentAttainmentLevel, targetSurveyAssessmentAttainmentLevel, validityPeriod, degreeProgramId) VALUES ('SO-09', '9', 'Practice', 'An ability to use current techniques, skills, and tools necessary for computing practice', '10', '10', '2000-2014', 'CSE');
INSERT INTO StudentOutcome(id, sequenceNumber, shortName, description, targetDirectAssessmentAttainmentLevel, targetSurveyAssessmentAttainmentLevel, validityPeriod, degreeProgramId) VALUES ('SO-10', '10', 'Maths', 'An ability to apply mathematical foundations, algorithmic principles, and computer science theory in the modeling and design of computer-based systems in a way that demonstrates comprehension of the tradeoffs involved in design choices', '10', '10', '2000-2012', 'CSE');
INSERT INTO StudentOutcome(id, sequenceNumber, shortName, description, targetDirectAssessmentAttainmentLevel, targetSurveyAssessmentAttainmentLevel, validityPeriod, degreeProgramId) VALUES ('SO-11', '11', 'Software', 'An ability to apply design and development principles in the construction of software systems of varying complexity.', '10', '10', '2000-2012', 'CSE');
INSERT INTO StudentOutcome(id, sequenceNumber, shortName, description, targetDirectAssessmentAttainmentLevel, targetSurveyAssessmentAttainmentLevel, validityPeriod, degreeProgramId) VALUES ('SO-12', '12', 'App', 'An ability to develop awesome Android apps', '10', '10', '2012-2014', 'CSE');