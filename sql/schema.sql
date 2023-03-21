BEGIN TRANSACTION;
DROP TABLE IF EXISTS "cursos";
CREATE TABLE IF NOT EXISTS "cursos" (
	"id"	INTEGER NOT NULL,
	"nome"	TEXT NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT)
);
DROP TABLE IF EXISTS "avaliacoes";
CREATE TABLE IF NOT EXISTS "avaliacoes" (
	"id"	INTEGER NOT NULL,
	"nome"	TEXT NOT NULL,
	"nota"	REAL NOT NULL,
	"idDisciplina"	INTEGER NOT NULL,
	"idAluno"	INTEGER NOT NULL,
	FOREIGN KEY("idAluno") REFERENCES "alunos"("id"),
	FOREIGN KEY("idDisciplina") REFERENCES "disciplinas"("id"),
	PRIMARY KEY("id" AUTOINCREMENT)
);
DROP TABLE IF EXISTS "alunos";
CREATE TABLE IF NOT EXISTS "alunos" (
	"id"	INTEGER NOT NULL,
	"nome"	TEXT NOT NULL,
	"cpf"	INTEGER NOT NULL,
	"dataNascimento"	TEXT NOT NULL,
	"idTurma"	INTEGER NOT NULL,
	FOREIGN KEY("idTurma") REFERENCES "turmas"("id"),
	PRIMARY KEY("id" AUTOINCREMENT)
);
DROP TABLE IF EXISTS "disciplinas";
CREATE TABLE IF NOT EXISTS "disciplinas" (
	"id"	INTEGER NOT NULL,
	"nome"	TEXT NOT NULL,
	"professor"	TEXT NOT NULL,
	"idCurso"	INTEGER NOT NULL,
	FOREIGN KEY("idCurso") REFERENCES "cursos"("id"),
	PRIMARY KEY("id" AUTOINCREMENT)
);
DROP TABLE IF EXISTS "turmas";
CREATE TABLE IF NOT EXISTS "turmas" (
	"id"	INTEGER NOT NULL,
	"nome"	TEXT NOT NULL,
	"idCurso"	INTEGER NOT NULL,
	"dataInicio"	TEXT NOT NULL,
	FOREIGN KEY("idCurso") REFERENCES "cursos"("id"),
	PRIMARY KEY("id")
);
INSERT INTO "cursos" ("id","nome") VALUES (1,'Programação');
INSERT INTO "cursos" ("id","nome") VALUES (2,'Design');
INSERT INTO "avaliacoes" ("id","nome","nota","idDisciplina","idAluno") VALUES (1,'HTML-1',8.5,1,1);
INSERT INTO "avaliacoes" ("id","nome","nota","idDisciplina","idAluno") VALUES (2,'JS-1',7.5,2,1);
INSERT INTO "alunos" ("id","nome","cpf","dataNascimento","idTurma") VALUES (1,'José da Silva','111.222.444.03','02/07/2001',1);
INSERT INTO "alunos" ("id","nome","cpf","dataNascimento","idTurma") VALUES (2,'Marcia dos Santos','333.666.888-07','05/02/2000',1);
INSERT INTO "disciplinas" ("id","nome","professor","idCurso") VALUES (1,'HTML','João da Silva',1);
INSERT INTO "disciplinas" ("id","nome","professor","idCurso") VALUES (2,'Javascript','Maria dos Santos',1);
INSERT INTO "turmas" ("id","nome","idCurso","dataInicio") VALUES (1,'2023.1',1,'02/01/2023');
INSERT INTO "turmas" ("id","nome","idCurso","dataInicio") VALUES (2,'2022.2',1,'01/07/2023');
COMMIT;
