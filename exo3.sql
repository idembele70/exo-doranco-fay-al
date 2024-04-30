-- Création de la base de données de l'exercice 3
CREATE DATABASE Exo3;
USE Exo3;

-- Création de la table Représentation
CREATE TABLE Representation(
  Num_rep INT AUTO_INCREMENT PRIMARY KEY,
  Titre_rep varchar(255),
  Lieu VARCHAR(255)
);

-- Création de la table Musicien
CREATE TABLE Musicien(
  Num_mus INT AUTO_INCREMENT PRIMARY KEY,
  Nom VARCHAR(100),
  Num_rep INT,
  FOREIGN KEY(Num_rep) REFERENCES Representation(Num_rep)
);

-- Création de la table Programmer
CREATE TABLE Programmer(
  Date DATETIME,
  Num_rep INT,
  FOREIGN KEY(Num_rep) REFERENCES Representation(Num_rep),
  tarif INT
)