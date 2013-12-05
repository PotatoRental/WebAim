/*Contains Data for Tables:
    Role
    UserAccount
    UserAccount_Role
    Evaluator   */

/*Role*/
	INSERT INTO Role VALUES('ROLE_ADMIN');
	INSERT INTO Role VALUES('ROLE_CC');
	INSERT INTO Role VALUES('ROLE_CIC');
	INSERT INTO Role VALUES('ROLE_INSTR');
	INSERT INTO Role VALUES('ROLE_EVAL');

/*UserAccount*/
  INSERT INTO UserAccount(username, password, email, firstName, lastName) VALUES ('aesmaili', 'password', 'aesmaili@wontoncode.com', 'Ahmad', 'Esmaili');
  INSERT INTO UserAccount(username, password, email, firstName, lastName) VALUES ('awasilewska', 'password', 'awasilewska@wontoncode.com', 'Anita', 'Wasilewska');
  INSERT INTO UserAccount(username, password, email, firstName, lastName) VALUES ('estark', 'password', 'estark@wontoncode.com', 'Eugene', 'Stark');
  INSERT INTO UserAccount(username, password, email, firstName, lastName) VALUES ('cramakrishnan', 'password', 'cramakrishnan@wontoncode.com', 'C. R.', 'Ramakrishnan');
  INSERT INTO UserAccount(username, password, email, firstName, lastName) VALUES ('ezadok', 'password', 'ezadok@wontoncode.com', 'Erez', 'Zadok');
  INSERT INTO UserAccount(username, password, email, firstName, lastName) VALUES ('dwarren', 'password', 'dwarren@wontoncode.com', 'David S.', 'Warren');
  INSERT INTO UserAccount(username, password, email, firstName, lastName) VALUES ('ghart', 'password', 'ghart@wontoncode.com', 'George', 'Hart');
  INSERT INTO UserAccount(username, password, email, firstName, lastName) VALUES ('hgupta', 'password', 'hgupta@wontoncode.com', 'Himanshu', 'Gupta');
  INSERT INTO UserAccount(username, password, email, firstName, lastName) VALUES ('lbachmair', 'password', 'lbachmair@wontoncode.com', 'Leo', 'Bachmair');
  INSERT INTO UserAccount(username, password, email, firstName, lastName) VALUES ('jwong', 'password', 'jwong@wontoncode.com', 'Jennifer', 'Wong');
  INSERT INTO UserAccount(username, password, email, firstName, lastName) VALUES ('kko', 'password', 'kko@wontoncode.com', 'Ker-I', 'Ko');
  INSERT INTO UserAccount(username, password, email, firstName, lastName) VALUES ('mkifer', 'password', 'mkifer@wontoncode.com', 'Michael', 'Kifer');
  INSERT INTO UserAccount(username, password, email, firstName, lastName) VALUES ('tscarlatos', 'password', 'tscarlatos@wontoncode.com', 'Tony', 'Scarlatos');
  INSERT INTO UserAccount(username, password, email, firstName, lastName) VALUES ('dsamaras', 'password', 'dsamaras@wontoncode.com', 'Dimitris', 'Samaras');
  INSERT INTO UserAccount(username, password, email, firstName, lastName) VALUES ('hqin', 'password', 'hqin@wontoncode.com', 'Hong', 'Qin');
  INSERT INTO UserAccount(username, password, email, firstName, lastName) VALUES ('kmueller', 'password', 'kmueller@wontoncode.com', 'Klaus', 'Mueller');
  INSERT INTO UserAccount(username, password, email, firstName, lastName) VALUES ('trobertazzi', 'password', 'trobertazzi@wontoncode.com', 'Thomas', 'Robertazzi');
  INSERT INTO UserAccount(username, password, email, firstName, lastName) VALUES ('jmitchell', 'password', 'jmitchell@wontoncode.com', 'Joseph S. B.', 'Mitchell');
  INSERT INTO UserAccount(username, password, email, firstName, lastName) VALUES ('sskiena', 'password', 'sskiena@wontoncode.com', 'Steven S.', 'Skiena');
  INSERT INTO UserAccount(username, password, email, firstName, lastName) VALUES ('ssmolka', 'password', 'ssmolka@wontoncode.com', 'Scott', 'Smolka');
  INSERT INTO UserAccount(username, password, email, firstName, lastName) VALUES ('sstoller', 'password', 'sstoller@wontoncode.com', 'Scott', 'Stoller');
  INSERT INTO UserAccount(username, password, email, firstName, lastName) VALUES ('sdas', 'password', 'sdas@wontoncode.com', 'Samir', 'Das');
  INSERT INTO UserAccount(username, password, email, firstName, lastName) VALUES ('rmckenna', 'password', 'rmckenna@wontoncode.com', 'Richard', 'McKenna');
  INSERT INTO UserAccount(username, password, email, firstName, lastName) VALUES ('rkelly', 'password', 'rkelly@wontoncode.com', 'Rob', 'Kelly');
  INSERT INTO UserAccount(username, password, email, firstName, lastName) VALUES ('rsekar', 'password', 'rsekar@wontoncode.com', 'R.', 'Sekar');
  INSERT INTO UserAccount(username, password, email, firstName, lastName) VALUES ('rgrosu', 'password', 'rgrosu@wontoncode.com', 'Radu', 'Grosu');
  INSERT INTO UserAccount(username, password, email, firstName, lastName) VALUES ('rjohnson', 'password', 'rjohnson@wontoncode.com', 'Rob', 'Johnson');
  INSERT INTO UserAccount(username, password, email, firstName, lastName) VALUES ('eeval', 'password', 'eeval@wontoncode.com', 'Evan', 'Eval');
  INSERT INTO UserAccount(username, password, email, firstName, lastName) VALUES ('cic', 'password', 'cic@wontoncode.com', 'Candi', 'Icol');
  INSERT INTO UserAccount(username, password, email, firstName, lastName) VALUES ('milky', 'test', 'milky@wontoncode.com', 'Jason', 'Chen');

/*UserAccount_Role*/
  INSERT INTO UserAccount_Role(UserAccount_username, roles_role) VALUES ('aesmaili', 'ROLE_CC');
  INSERT INTO UserAccount_Role(UserAccount_username, roles_role) VALUES ('awasilewska', 'ROLE_CC');
  INSERT INTO UserAccount_Role(UserAccount_username, roles_role) VALUES ('estark', 'ROLE_CC');
  INSERT INTO UserAccount_Role(UserAccount_username, roles_role) VALUES ('cramakrishnan', 'ROLE_CC');
  INSERT INTO UserAccount_Role(UserAccount_username, roles_role) VALUES ('ezadok', 'ROLE_CC');
  INSERT INTO UserAccount_Role(UserAccount_username, roles_role) VALUES ('dwarren', 'ROLE_CC');
  INSERT INTO UserAccount_Role(UserAccount_username, roles_role) VALUES ('ghart', 'ROLE_CC');
  INSERT INTO UserAccount_Role(UserAccount_username, roles_role) VALUES ('hgupta', 'ROLE_CC');
  INSERT INTO UserAccount_Role(UserAccount_username, roles_role) VALUES ('lbachmair', 'ROLE_CC');
  INSERT INTO UserAccount_Role(UserAccount_username, roles_role) VALUES ('jwong', 'ROLE_CC');
  INSERT INTO UserAccount_Role(UserAccount_username, roles_role) VALUES ('kko', 'ROLE_CC');
  INSERT INTO UserAccount_Role(UserAccount_username, roles_role) VALUES ('mkifer', 'ROLE_CC');
  INSERT INTO UserAccount_Role(UserAccount_username, roles_role) VALUES ('tscarlatos', 'ROLE_CC');
  INSERT INTO UserAccount_Role(UserAccount_username, roles_role) VALUES ('dsamaras', 'ROLE_CC');
  INSERT INTO UserAccount_Role(UserAccount_username, roles_role) VALUES ('hqin', 'ROLE_CC');
  INSERT INTO UserAccount_Role(UserAccount_username, roles_role) VALUES ('kmueller', 'ROLE_CC');
  INSERT INTO UserAccount_Role(UserAccount_username, roles_role) VALUES ('trobertazzi', 'ROLE_CC');
  INSERT INTO UserAccount_Role(UserAccount_username, roles_role) VALUES ('jmitchell', 'ROLE_CC');
  INSERT INTO UserAccount_Role(UserAccount_username, roles_role) VALUES ('sskiena', 'ROLE_CC');
  INSERT INTO UserAccount_Role(UserAccount_username, roles_role) VALUES ('ssmolka', 'ROLE_CC');
  INSERT INTO UserAccount_Role(UserAccount_username, roles_role) VALUES ('sstoller', 'ROLE_CC');
  INSERT INTO UserAccount_Role(UserAccount_username, roles_role) VALUES ('sdas', 'ROLE_CC');
  INSERT INTO UserAccount_Role(UserAccount_username, roles_role) VALUES ('rmckenna', 'ROLE_CC');
  INSERT INTO UserAccount_Role(UserAccount_username, roles_role) VALUES ('rkelly', 'ROLE_CC');
  INSERT INTO UserAccount_Role(UserAccount_username, roles_role) VALUES ('rsekar', 'ROLE_CC');
  INSERT INTO UserAccount_Role(UserAccount_username, roles_role) VALUES ('rgrosu', 'ROLE_CC');
  INSERT INTO UserAccount_Role(UserAccount_username, roles_role) VALUES ('rjohnson', 'ROLE_CC');
  INSERT INTO UserAccount_Role(UserAccount_username, roles_role) VALUES ('eeval', 'ROLE_EVAL');
  INSERT INTO UserAccount_Role(UserAccount_username, roles_role) VALUES ('cic', 'ROLE_CIC');
  INSERT INTO UserAccount_Role(UserAccount_username, roles_role) VALUES ('milky', 'ROLE_ADMIN');

  INSERT INTO UserAccount_Role(UserAccount_username, roles_role) VALUES ('aesmaili', 'ROLE_INSTR');
  INSERT INTO UserAccount_Role(UserAccount_username, roles_role) VALUES ('awasilewska', 'ROLE_INSTR');
  INSERT INTO UserAccount_Role(UserAccount_username, roles_role) VALUES ('estark', 'ROLE_INSTR');
  INSERT INTO UserAccount_Role(UserAccount_username, roles_role) VALUES ('cramakrishnan', 'ROLE_INSTR');
  INSERT INTO UserAccount_Role(UserAccount_username, roles_role) VALUES ('ezadok', 'ROLE_INSTR');
  INSERT INTO UserAccount_Role(UserAccount_username, roles_role) VALUES ('dwarren', 'ROLE_INSTR');
  INSERT INTO UserAccount_Role(UserAccount_username, roles_role) VALUES ('ghart', 'ROLE_INSTR');
  INSERT INTO UserAccount_Role(UserAccount_username, roles_role) VALUES ('hgupta', 'ROLE_INSTR');
  INSERT INTO UserAccount_Role(UserAccount_username, roles_role) VALUES ('lbachmair', 'ROLE_INSTR');
  INSERT INTO UserAccount_Role(UserAccount_username, roles_role) VALUES ('jwong', 'ROLE_INSTR');
  INSERT INTO UserAccount_Role(UserAccount_username, roles_role) VALUES ('kko', 'ROLE_INSTR');
  INSERT INTO UserAccount_Role(UserAccount_username, roles_role) VALUES ('mkifer', 'ROLE_INSTR');
  INSERT INTO UserAccount_Role(UserAccount_username, roles_role) VALUES ('tscarlatos', 'ROLE_INSTR');
  INSERT INTO UserAccount_Role(UserAccount_username, roles_role) VALUES ('dsamaras', 'ROLE_INSTR');
  INSERT INTO UserAccount_Role(UserAccount_username, roles_role) VALUES ('hqin', 'ROLE_INSTR');
  INSERT INTO UserAccount_Role(UserAccount_username, roles_role) VALUES ('kmueller', 'ROLE_INSTR');
  INSERT INTO UserAccount_Role(UserAccount_username, roles_role) VALUES ('trobertazzi', 'ROLE_INSTR');
  INSERT INTO UserAccount_Role(UserAccount_username, roles_role) VALUES ('jmitchell', 'ROLE_INSTR');
  INSERT INTO UserAccount_Role(UserAccount_username, roles_role) VALUES ('sskiena', 'ROLE_INSTR');
  INSERT INTO UserAccount_Role(UserAccount_username, roles_role) VALUES ('ssmolka', 'ROLE_INSTR');
  INSERT INTO UserAccount_Role(UserAccount_username, roles_role) VALUES ('sstoller', 'ROLE_INSTR');
  INSERT INTO UserAccount_Role(UserAccount_username, roles_role) VALUES ('sdas', 'ROLE_INSTR');
  INSERT INTO UserAccount_Role(UserAccount_username, roles_role) VALUES ('rmckenna', 'ROLE_INSTR');
  INSERT INTO UserAccount_Role(UserAccount_username, roles_role) VALUES ('rkelly', 'ROLE_INSTR');
  INSERT INTO UserAccount_Role(UserAccount_username, roles_role) VALUES ('rsekar', 'ROLE_INSTR');
  INSERT INTO UserAccount_Role(UserAccount_username, roles_role) VALUES ('rgrosu', 'ROLE_INSTR');
  INSERT INTO UserAccount_Role(UserAccount_username, roles_role) VALUES ('rjohnson', 'ROLE_INSTR');

/*Evaluator*/
  INSERT INTO Evaluator(username, evaluationPeriod) VALUES('eeval', '2010-2014');