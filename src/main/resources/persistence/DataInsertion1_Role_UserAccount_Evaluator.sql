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
INSERT INTO UserAccount(username, password, email, firstName, lastName) VALUES ('aesmaili', 'password', 'aesmaili@aim.com', 'Ahmad', 'Esmaili');
INSERT INTO UserAccount(username, password, email, firstName, lastName) VALUES ('awasilewska', 'password', 'awasilewska@aim.com', 'Anita', 'Wasilewska');
INSERT INTO UserAccount(username, password, email, firstName, lastName) VALUES ('estark', 'password', 'estark@aim.com', 'Eugene', 'Stark');
INSERT INTO UserAccount(username, password, email, firstName, lastName) VALUES ('cramakrishnan', 'password', 'cramakrishnan@aim.com', 'C. R.', 'Ramakrishnan');
INSERT INTO UserAccount(username, password, email, firstName, lastName) VALUES ('ezadok', 'password', 'ezadok@aim.com', 'Erez', 'Zadok');
INSERT INTO UserAccount(username, password, email, firstName, lastName) VALUES ('dwarren', 'password', 'dwarren@aim.com', 'David S.', 'Warren');
INSERT INTO UserAccount(username, password, email, firstName, lastName) VALUES ('ghart', 'password', 'ghart@aim.com', 'George', 'Hart');
INSERT INTO UserAccount(username, password, email, firstName, lastName) VALUES ('hgupta', 'password', 'hgupta@aim.com', 'Himanshu', 'Gupta');
INSERT INTO UserAccount(username, password, email, firstName, lastName) VALUES ('lbachmair', 'password', 'lbachmair@aim.com', 'Leo', 'Bachmair');
INSERT INTO UserAccount(username, password, email, firstName, lastName) VALUES ('jwong', 'password', 'jwong@aim.com', 'Jennifer', 'Wong');
INSERT INTO UserAccount(username, password, email, firstName, lastName) VALUES ('kko', 'password', 'kko@aim.com', 'Ker-I', 'Ko');
INSERT INTO UserAccount(username, password, email, firstName, lastName) VALUES ('mkifer', 'password', 'mkifer@aim.com', 'Michael', 'Kifer');
INSERT INTO UserAccount(username, password, email, firstName, lastName) VALUES ('tscarlatos', 'password', 'tscarlatos@aim.com', 'Tony', 'Scarlatos');
INSERT INTO UserAccount(username, password, email, firstName, lastName) VALUES ('dsamaras', 'password', 'dsamaras@aim.com', 'Dimitris', 'Samaras');
INSERT INTO UserAccount(username, password, email, firstName, lastName) VALUES ('hqin', 'password', 'hqin@aim.com', 'Hong', 'Qin');
INSERT INTO UserAccount(username, password, email, firstName, lastName) VALUES ('kmueller', 'password', 'kmueller@aim.com', 'Klaus', 'Mueller');
INSERT INTO UserAccount(username, password, email, firstName, lastName) VALUES ('trobertazzi', 'password', 'trobertazzi@aim.com', 'Thomas', 'Robertazzi');
INSERT INTO UserAccount(username, password, email, firstName, lastName) VALUES ('jmitchell', 'password', 'jmitchell@aim.com', 'Joseph S. B.', 'Mitchell');
INSERT INTO UserAccount(username, password, email, firstName, lastName) VALUES ('sskiena', 'password', 'sskiena@aim.com', 'Steven S.', 'Skiena');
INSERT INTO UserAccount(username, password, email, firstName, lastName) VALUES ('ssmolka', 'password', 'ssmolka@aim.com', 'Scott', 'Smolka');
INSERT INTO UserAccount(username, password, email, firstName, lastName) VALUES ('sstoller', 'password', 'sstoller@aim.com', 'Scott', 'Stoller');
INSERT INTO UserAccount(username, password, email, firstName, lastName) VALUES ('sdas', 'password', 'sdas@aim.com', 'Samir', 'Das');
INSERT INTO UserAccount(username, password, email, firstName, lastName) VALUES ('rmckenna', 'password', 'rmckenna@aim.com', 'Richard', 'McKenna');
INSERT INTO UserAccount(username, password, email, firstName, lastName) VALUES ('rkelly', 'password', 'rkelly@aim.com', 'Rob', 'Kelly');
INSERT INTO UserAccount(username, password, email, firstName, lastName) VALUES ('rsekar', 'password', 'rsekar@aim.com', 'R.', 'Sekar');
INSERT INTO UserAccount(username, password, email, firstName, lastName) VALUES ('rgrosu', 'password', 'rgrosu@aim.com', 'Radu', 'Grosu');
INSERT INTO UserAccount(username, password, email, firstName, lastName) VALUES ('rjohnson', 'password', 'rjohnson@aim.com', 'Rob', 'Johnson');

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

/*Evaluator*/