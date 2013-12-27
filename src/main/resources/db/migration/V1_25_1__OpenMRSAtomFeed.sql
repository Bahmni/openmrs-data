CREATE TABLE IF NOT EXISTS event_records
(
    id INT NOT NULL AUTO_INCREMENT,
    uuid varchar(40) NOT NULL,
    title varchar(255),
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    uri varchar(255),
    object varchar(1000),
    category varchar(255),
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS chunking_history
(
    id INT NOT NULL AUTO_INCREMENT,
    chunk_length BIGINT,
    start BIGINT NOT NULL,
    title varchar(255),
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    uri varchar(255),
    object varchar(1000),
    category varchar(255),
    PRIMARY KEY (id)
);

INSERT INTO `liquibasechangelog` (`ID`,`AUTHOR`,`FILENAME`,`DATEEXECUTED`,`MD5SUM`,`DESCRIPTION`,`COMMENTS`,`TAG`,`LIQUIBASE`,`EXECTYPE`,`ORDEREXECUTED`) VALUES ('org.ict4h.openmrs-atomfeed-2013-03-01-18:30','ict4h','liquibase.xml','2013-08-21 19:35:44','3:1a7eeaf0e4a024076bfee8d326904ece','Create Table (x2), Modify data type, Set Column as Auto-Increment, Modify data type, Set Column as Auto-Increment','',NULL,'2.0.5','EXECUTED','100');