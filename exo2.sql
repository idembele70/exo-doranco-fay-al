/* From data CREATE TABLE */
INSERT INTO Departements (DNO, DName, Location) VALUES
(1, 'Ressources Humaines', 'Bâtiment A'),
(2, 'Développement', 'Bâtiment B'),
(3, 'Marketing', 'Bâtiment C'),
(4, 'Ventes', 'Bâtiment D'),
(5, 'Support Technique', 'Bâtiment E');

INSERT INTO Employe (ENO, ENOM, PROF, DATEEMB, SAL, COMM, DNO_departements) VALUES
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
-- 1. Créez les tables et peuplez les
CREATE DATABASE exo2;

USE exo2;

CREATE TABLE Departements(DNO INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
DName VARCHAR(100),
Location VARCHAR(50)
);


CREATE TABLE Employe(ENO INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
ENOM VARCHAR(100) NOT NULL,
PROF VARCHAR(100),
DATEEMB DATE,
SAL INT,
COMM INT,
DNO_departements INT,
CONSTRAINT departements_fk FOREIGN KEY(DNO_departements) REFERENCES Departements(DNO)
);
-- Donnez la liste des employés ayant une commission.
SELECT * FROM Employe WHERE COMM IS NOT NULL;

-- Donnez la liste des employés qui ont comme salaire (1500,2500,3000)
SELECT * FROM Employe WHERE SAL IN (1500,2500,3000);

-- Trouvez le salaire moyen des employés par profession
SELECT PROF, AVG(SAL) FROM Employe GROUP BY PROF;

-- Sélectionnez le nom des employés qui ont été embauchés après le 1er janvier 2020
SELECT ENOM FROM Employe WHERE DATEEMB >= "2020-01-01";

-- Identifiez les employés qui n'ont pas de commission et dont le salaire est supérieur à 2000
SELECT * FROM Employe WHERE COMM IS NULL AND SAL > 2000;

-- Comptez le nombre d'employés dans chaque département
SELECT DNO_departements, COUNT(*) FROM Employe GROUP BY DNO_departements;

-- Trouvez les employés qui ont le salaire le plus élevé dans chaque profession
SELECT PROF, MAX(SAL) FROM Employe GROUP BY PROF;

-- Sélectionnez les employés qui ont un nom commençant par la lettre 'L'
SELECT * FROM Employe WHERE ENOM LIKE 'L%';

-- Mettez à jour la commission pour les employés ayant un salaire inférieur à 2500, en leur donnant une commission de 500
UPDATE Employe SET SAL = 500 WHERE SAL = 2500;
/* SOLUTIONS */