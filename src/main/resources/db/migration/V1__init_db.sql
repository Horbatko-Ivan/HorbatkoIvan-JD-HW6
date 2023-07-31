CREATE TABLE IF NOT EXISTS worker
(
    ID       INT           NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name     VARCHAR(1000) NOT NULL CHECK (LENGTH(name) >= 2),
    birthday DATE CHECK (YEAR(birthday) > 1900),
    level    VARCHAR(10)   NOT NULL CHECK (level = 'Trainee' OR level = 'Junior' OR level = 'Middle' OR level = 'Senior'),
    salary   INT           NOT NULL CHECK (salary >= 100 AND salary <= 100000)
);

CREATE TABLE IF NOT EXISTS client
(
    ID   INT           NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(1000) NOT NULL CHECK (LENGTH(name) >= 2)
);

CREATE TABLE IF NOT EXISTS project
(
    ID          INT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
    CLIENT_ID   INT REFERENCES client (ID),
    start_date  DATE NOT NULL,
    finish_date DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS project_worker
(
    project_ID INT NOT NULL,
    worker_ID  INT NOT NULL,
    PRIMARY KEY (project_ID, worker_ID),
    FOREIGN KEY (project_ID) REFERENCES project (ID),
    FOREIGN KEY (worker_ID) REFERENCES worker (ID)
);
