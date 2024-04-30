-- FROM DATA make the exercice
INSERT INTO Auteurs (Nom, Prenom) VALUES
('Hugo', 'Victor'),
('Rowling', 'J.K.'),
('Tolkien', 'J.R.R.'),
('Hemingway', 'Ernest'),
('Christie', 'Agatha'),
('Dumas', 'Alexandre'),
('Orwell', 'George'),
('Austen', 'Jane'),
('Shakespeare', 'William'),
('Fitzgerald', 'F. Scott');

INSERT INTO Livres (Titre, AnneePublication) VALUES
('Les Misérables', 1862),
('Harry Potter à l’école des sorciers', 1997),
('Le Seigneur des anneaux', 1954),
('Le Vieil Homme et la Mer', 1952),
('Dix Petits Nègres', 1939),
('Le Comte de Monte-Cristo', 1844),
('1984', 1949),
('Orgueil et Préjugés', 1813),
('Hamlet', 1609),
('Gatsby le Magnifique', 1925);

INSERT INTO EcritPar (LivreID, AuteurID) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(6, 1),
(10, 10),
(10, 4);
-- Création de la Base de données de l'exercice

CREATE DATABASE exo4;
USE exo4;

-- Création de la table Auteur
CREATE TABLE Auteurs(
  id INT AUTO_INCREMENT PRIMARY KEY,
  Nom VARCHAR(100),
  Prenom VARCHAR(100)
);

-- Création de la table Livres
CREATE TABLE Livres(
  id INT AUTO_INCREMENT PRIMARY KEY,
  Titre VARCHAR(255),
  AnneePublication INT
);

-- Création de la Table Écrit par
CREATE TABLE EcritPar(
  auteurID INT,
  livreID INT,
  PRIMARY KEY(auteurID, LivreID),
  FOREIGN KEY(auteurID) REFERENCES Auteurs(id),
  FOREIGN KEY(livreID) REFERENCES Livres(id) 
);

-- 1. Sélectionner tous les auteurs
SELECT * FROM Auteurs;

-- 2.Afficher tous les titres de livres
SELECT * FROM Livres;

-- 3. Lister les livres d'un auteur donné (« hugo »)
SELECT Livres.Titre FROM Livres
Join EcritPar ON Livres.id = EcritPar.livreID
Join Auteurs ON Auteurs.id = EcritPar.auteurID
WHERE Auteurs.Nom = "Hugo";

-- 4. Lister les livres écris entre 1900 et 2000

