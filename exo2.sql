/* From data CREATE TABLE */
INSERT INTO Departements (DNO, DName, Location) VALUES
(1, 'Ressources Humaines', 'Bâtiment A'),
(2, 'Développement', 'Bâtiment B'),
(3, 'Marketing', 'Bâtiment C'),
(4, 'Ventes', 'Bâtiment D'),
(5, 'Support Technique', 'Bâtiment E');

INSERT INTO Employés (ENO, ENOM, PROF, DATEEMB, SAL, COMM, #DNO) VALUES
(1, 'Martin', 'Comptable', '2019-01-15', 2500, NULL, 1),
(2, 'Julie', 'Ingénieur', '2020-02-20', 3000, 500, 2),
(3, 'Lucas', 'Technicien', '2018-03-25', 1500, NULL, 1),
(4, 'Sophie', 'Directeur', '2017-04-30', 4500, 1000, 3),
(5, 'Alex', 'Analyste', '2021-05-05', 3500, NULL, 2),
(6, 'Emma', 'Secrétaire', '2019-06-10', 2000, 300, 1),
(7, 'Hugo', 'Ingénieur', '2020-07-15', 3000, NULL, 2),
(8, 'Ines', 'Comptable', '2018-08-20', 2500, 400, 1),
(9, 'Leo', 'Technicien', '2022-09-25', 1800, NULL, 3),
(10, 'Zoe', 'Directeur', '2021-10-30', 4700, 1500, 3);

/* my version */

CREATE TABLE Departements(DNO INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
DName VARCHAR(100),
Location VARCHAR(50)
)


CREATE TABLE Employe(ENO INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
ENOM VARCHAR(100) NOT NULL,
PROF ENUM('Comptable','Ingénieur','Technicien','Directeur','Analyste','Secrétaire','Ingénieur','Comptable','Technicien','Directeur')
DATEEMB DATE,
SAL INT,
COMM INT,
DNO_departements INT,
CONSTRAINT departement_fk FOREIGN KEY(DNO_departements) REFERENCES Departements(id)
);

/* SOLUTIONS */