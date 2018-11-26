CREATE SCHEMA test;
GRANT ALL PRIVILEGES ON SCHEMA test TO postgres;

CREATE TABLE test.ids (
	id SERIAL PRIMARY KEY,
	value VARCHAR(50)
);

INSERT INTO test.ids(value) VALUES('prova');
INSERT INTO test.ids(value) VALUES('prova2');
INSERT INTO test.ids(value) VALUES('prova3');