-- ----------------------------------------------------------
--  driver: db2, generated: 2012-11-08 09:22:12
-- ----------------------------------------------------------
DROP TABLE sessions;

-- ----------------------------------------------------------
--  create table sessions
-- ----------------------------------------------------------
CREATE TABLE sessions (
    id BIGINT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
    session_id VARCHAR (100) NOT NULL,
    data_key VARCHAR (100) NOT NULL,
    data_value CLOB (78K),
    serialized SMALLINT NOT NULL,
    PRIMARY KEY(id)
);

CREATE INDEX sessions_data_key ON sessions (data_key);

CREATE INDEX sessions_session_id_data_key ON sessions (session_id, data_key);

