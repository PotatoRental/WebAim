/*Contains Data for Tables:
    Survey
    Survey_DegreeProgram
    Survey_PEOAttainment
    Minutes   */

/*Survey*/
	INSERT INTO Survey(id, groups, initiator, semester, resultPath) VALUES(1, 'alumni', 'college', 'FALL2013', null);
	INSERT INTO Survey(id, groups, initiator, semester, resultPath) VALUES(2, 'graduate', 'department', 'FALL2013', null);
	INSERT INTO Survey(id, groups, initiator, semester, resultPath) VALUES(3, 'undergrate', 'department', 'FALL2013', null);
	INSERT INTO Survey(id, groups, initiator, semester, resultPath) VALUES(4, 'employers', 'department', 'FALL2013', null);
	INSERT INTO Survey(id, groups, initiator, semester, resultPath) VALUES(5, 'undergrate', 'department', 'FALL2013', null);
	INSERT INTO Survey(id, groups, initiator, semester, resultPath) VALUES(6, 'employers', 'department', 'FALL2013', null);
	INSERT INTO Survey(id, groups, initiator, semester, resultPath) VALUES(7, 'undergrate', 'department', 'FALL2013', null);
	INSERT INTO Survey(id, groups, initiator, semester, resultPath) VALUES(8, 'employers', 'department', 'FALL2013', null);
	INSERT INTO Survey(id, groups, initiator, semester, resultPath) VALUES(9, 'graduate', 'department', 'FALL2013', null);
	INSERT INTO Survey(id, groups, initiator, semester, resultPath) VALUES(10, 'employers', 'department', 'FALL2013', null);

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

/*Survey_PEOAttainment*/
	INSERT INTO Survey_PEOAttainment(id, surveyId, PeoId, attainmentLevel) VALUES(1, 1, 'PEO-01', 2);
	INSERT INTO Survey_PEOAttainment(id, surveyId, PeoId, attainmentLevel) VALUES(2, 2, 'PEO-01', 1);
	INSERT INTO Survey_PEOAttainment(id, surveyId, PeoId, attainmentLevel) VALUES(3, 3, 'PEO-01', 2);
	INSERT INTO Survey_PEOAttainment(id, surveyId, PeoId, attainmentLevel) VALUES(4, 4, 'PEO-01', 0);
	INSERT INTO Survey_PEOAttainment(id, surveyId, PeoId, attainmentLevel) VALUES(5, 5, 'PEO-02', 1);
	INSERT INTO Survey_PEOAttainment(id, surveyId, PeoId, attainmentLevel) VALUES(6, 6, 'PEO-02', 1);
	INSERT INTO Survey_PEOAttainment(id, surveyId, PeoId, attainmentLevel) VALUES(7, 7, 'PEO-02', 1);
	INSERT INTO Survey_PEOAttainment(id, surveyId, PeoId, attainmentLevel) VALUES(8, 8, 'PEO-02', 1);
	INSERT INTO Survey_PEOAttainment(id, surveyId, PeoId, attainmentLevel) VALUES(9, 9, 'PEO-02', 1);
	INSERT INTO Survey_PEOAttainment(id, surveyId, PeoId, attainmentLevel) VALUES(10, 10, 'PEO-02', 1);

/*Minutes*/
  INSERT INTO Minutes(id, date, groups, filePath) VALUES(1, '2013-01-01', 'Advisory Board', null);
	INSERT INTO Minutes(id, date, groups, filePath) VALUES(2, '2013-02-04', 'CIC', null);
	INSERT INTO Minutes(id, date, groups, filePath) VALUES(3, '2013-02-05', 'Advisory', null);
	INSERT INTO Minutes(id, date, groups, filePath) VALUES(4, '2013-02-06', 'CIC', null);
	INSERT INTO Minutes(id, date, groups, filePath) VALUES(5, '2013-02-07', 'Advisory', null);