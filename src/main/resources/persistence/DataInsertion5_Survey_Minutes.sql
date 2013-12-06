/*Contains Data for Tables:
    Survey
    Survey_DegreeProgram
    Survey_PEOAttainment
    Minutes   */

/*Survey*/
	INSERT INTO Survey(id, groups, initiator, semester, resultPath) VALUES(1, 'alumni', 'college', 'FALL2013', null);
	INSERT INTO Survey(id, groups, initiator, semester, resultPath) VALUES(2, 'graduate', 'department', 'FALL2013', null);
	INSERT INTO Survey(id, groups, initiator, semester, resultPath) VALUES(3, 'undergrate', 'department', 'FALL2013', null);
	INSERT INTO Survey(id, groups, initiator, semester, resultPath) VALUES(4, 'employers', 'college', 'FALL2013', null);
	INSERT INTO Survey(id, groups, initiator, semester, resultPath) VALUES(5, 'undergrate', 'department', 'FALL2013', null);
	INSERT INTO Survey(id, groups, initiator, semester, resultPath) VALUES(6, 'alumni', 'college', 'SPRING2013', null);
	INSERT INTO Survey(id, groups, initiator, semester, resultPath) VALUES(7, 'employers', 'department', 'SPRING2013', null);
	INSERT INTO Survey(id, groups, initiator, semester, resultPath) VALUES(8, 'graduate', 'college', 'SPRING2013', null);
	INSERT INTO Survey(id, groups, initiator, semester, resultPath) VALUES(9, 'undergrate', 'college', 'SPRING2013', null);
	INSERT INTO Survey(id, groups, initiator, semester, resultPath) VALUES(10, 'employers', 'department', 'SPRING2013', null);
	INSERT INTO Survey(id, groups, initiator, semester, resultPath) VALUES(11, 'alumni', 'college', 'WINTER2013', null);
	INSERT INTO Survey(id, groups, initiator, semester, resultPath) VALUES(12, 'employers', 'department', 'WINTER2013', null);
	INSERT INTO Survey(id, groups, initiator, semester, resultPath) VALUES(13, 'alumni', 'department', 'FALL2012', null);
	INSERT INTO Survey(id, groups, initiator, semester, resultPath) VALUES(14, 'graduate', 'college', 'FALL2012', null);
	INSERT INTO Survey(id, groups, initiator, semester, resultPath) VALUES(15, 'employers', 'department', 'FALL2012', null);
	INSERT INTO Survey(id, groups, initiator, semester, resultPath) VALUES(16, 'alumni', 'department', 'SPRING2012', null);
	INSERT INTO Survey(id, groups, initiator, semester, resultPath) VALUES(17, 'undergrate', 'department', 'SPRING2012', null);
	INSERT INTO Survey(id, groups, initiator, semester, resultPath) VALUES(18, 'graduate', 'college', 'SPRING2012', null);
	INSERT INTO Survey(id, groups, initiator, semester, resultPath) VALUES(19, 'employers', 'department', 'SPRING2012', null);
	INSERT INTO Survey(id, groups, initiator, semester, resultPath) VALUES(20, 'alumni', 'college', 'SUMMER2012', null);
	INSERT INTO Survey(id, groups, initiator, semester, resultPath) VALUES(21, 'employers', 'department', 'SUMMER2012', null);

/*Survey_DegreeProgram*/
	INSERT INTO Survey_DegreeProgram(Survey_id, degreeprograms_id) VALUES(1, 'CSE');
	INSERT INTO Survey_DegreeProgram(Survey_id, degreeprograms_id) VALUES(2, 'CSE');
	INSERT INTO Survey_DegreeProgram(Survey_id, degreeprograms_id) VALUES(3, 'CSE');
	INSERT INTO Survey_DegreeProgram(Survey_id, degreeprograms_id) VALUES(4, 'CSE');
	INSERT INTO Survey_DegreeProgram(Survey_id, degreeprograms_id) VALUES(5, 'CSE');
	INSERT INTO Survey_DegreeProgram(Survey_id, degreeprograms_id) VALUES(6, 'CSE');
	INSERT INTO Survey_DegreeProgram(Survey_id, degreeprograms_id) VALUES(7, 'CSE');
	INSERT INTO Survey_DegreeProgram(Survey_id, degreeprograms_id) VALUES(8, 'CSE');
	INSERT INTO Survey_DegreeProgram(Survey_id, degreeprograms_id) VALUES(9, 'CSE');
	INSERT INTO Survey_DegreeProgram(Survey_id, degreeprograms_id) VALUES(10, 'CSE');
	INSERT INTO Survey_DegreeProgram(Survey_id, degreeprograms_id) VALUES(11, 'CSE');
	INSERT INTO Survey_DegreeProgram(Survey_id, degreeprograms_id) VALUES(12, 'CSE');
	INSERT INTO Survey_DegreeProgram(Survey_id, degreeprograms_id) VALUES(13, 'CSE');
	INSERT INTO Survey_DegreeProgram(Survey_id, degreeprograms_id) VALUES(14, 'CSE');
	INSERT INTO Survey_DegreeProgram(Survey_id, degreeprograms_id) VALUES(15, 'CSE');
	INSERT INTO Survey_DegreeProgram(Survey_id, degreeprograms_id) VALUES(16, 'CSE');
	INSERT INTO Survey_DegreeProgram(Survey_id, degreeprograms_id) VALUES(17, 'CSE');
	INSERT INTO Survey_DegreeProgram(Survey_id, degreeprograms_id) VALUES(18, 'CSE');
	INSERT INTO Survey_DegreeProgram(Survey_id, degreeprograms_id) VALUES(19, 'CSE');
	INSERT INTO Survey_DegreeProgram(Survey_id, degreeprograms_id) VALUES(20, 'CSE');
	INSERT INTO Survey_DegreeProgram(Survey_id, degreeprograms_id) VALUES(21, 'CSE');

/*Survey_PEOAttainment*/
	INSERT INTO Survey_PEOAttainment(id, surveyId, PeoId, attainmentLevel) VALUES(1, 1, 'PEO-01', 2);
	INSERT INTO Survey_PEOAttainment(id, surveyId, PeoId, attainmentLevel) VALUES(2, 2, 'PEO-01', 1);
	INSERT INTO Survey_PEOAttainment(id, surveyId, PeoId, attainmentLevel) VALUES(3, 3, 'PEO-01', 2);
	INSERT INTO Survey_PEOAttainment(id, surveyId, PeoId, attainmentLevel) VALUES(4, 4, 'PEO-02', 0);
	INSERT INTO Survey_PEOAttainment(id, surveyId, PeoId, attainmentLevel) VALUES(5, 5, 'PEO-02', 2);
	INSERT INTO Survey_PEOAttainment(id, surveyId, PeoId, attainmentLevel) VALUES(6, 6, 'PEO-01', 1);
	INSERT INTO Survey_PEOAttainment(id, surveyId, PeoId, attainmentLevel) VALUES(7, 7, 'PEO-01', 1);
	INSERT INTO Survey_PEOAttainment(id, surveyId, PeoId, attainmentLevel) VALUES(8, 8, 'PEO-02', 2);
	INSERT INTO Survey_PEOAttainment(id, surveyId, PeoId, attainmentLevel) VALUES(9, 9, 'PEO-02', 0);
	INSERT INTO Survey_PEOAttainment(id, surveyId, PeoId, attainmentLevel) VALUES(10, 10, 'PEO-02', 1);
	INSERT INTO Survey_PEOAttainment(id, surveyId, PeoId, attainmentLevel) VALUES(11, 11, 'PEO-01', 2);
	INSERT INTO Survey_PEOAttainment(id, surveyId, PeoId, attainmentLevel) VALUES(12, 12, 'PEO-02', 1);
	INSERT INTO Survey_PEOAttainment(id, surveyId, PeoId, attainmentLevel) VALUES(13, 13, 'PEO-01', 2);
	INSERT INTO Survey_PEOAttainment(id, surveyId, PeoId, attainmentLevel) VALUES(14, 14, 'PEO-01', 1);
	INSERT INTO Survey_PEOAttainment(id, surveyId, PeoId, attainmentLevel) VALUES(15, 15, 'PEO-02', 1);
	INSERT INTO Survey_PEOAttainment(id, surveyId, PeoId, attainmentLevel) VALUES(16, 16, 'PEO-02', 2);
	INSERT INTO Survey_PEOAttainment(id, surveyId, PeoId, attainmentLevel) VALUES(17, 17, 'PEO-01', 1);
	INSERT INTO Survey_PEOAttainment(id, surveyId, PeoId, attainmentLevel) VALUES(18, 18, 'PEO-02', 0);
	INSERT INTO Survey_PEOAttainment(id, surveyId, PeoId, attainmentLevel) VALUES(19, 19, 'PEO-02', 2);
	INSERT INTO Survey_PEOAttainment(id, surveyId, PeoId, attainmentLevel) VALUES(20, 20, 'PEO-01', 1);
	INSERT INTO Survey_PEOAttainment(id, surveyId, PeoId, attainmentLevel) VALUES(21, 21, 'PEO-02', 1);

/*Minutes*/
  INSERT INTO Minutes(id, date, groups, filePath) VALUES(1, '2013-01-01', 'Advisory Board', null);
	INSERT INTO Minutes(id, date, groups, filePath) VALUES(2, '2013-02-04', 'CIC', null);
	INSERT INTO Minutes(id, date, groups, filePath) VALUES(3, '2013-02-05', 'Advisory Board', null);
	INSERT INTO Minutes(id, date, groups, filePath) VALUES(4, '2013-02-06', 'CIC', null);
	INSERT INTO Minutes(id, date, groups, filePath) VALUES(5, '2013-03-07', 'Advisory Board', null);
	INSERT INTO Minutes(id, date, groups, filePath) VALUES(6, '2013-03-01', 'Student Focus Group', null);
	INSERT INTO Minutes(id, date, groups, filePath) VALUES(7, '2013-04-06', 'Student Focus Group', null);
	INSERT INTO Minutes(id, date, groups, filePath) VALUES(8, '2013-06-14', 'Advisory Board', null);
	INSERT INTO Minutes(id, date, groups, filePath) VALUES(9, '2013-07-24', 'Student Focus Group', null);