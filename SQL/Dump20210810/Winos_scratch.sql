/*CREATE TABLE Winos.tag_accord(
id_accord MEDIUMINT NOT NULL AUTO_INCREMENT,
descrip CHAR(55),
PRIMARY KEY(id_accord)
);

CREATE TABLE Winos.tag_gout(
id_gout MEDIUMINT NOT NULL AUTO_INCREMENT,
descrip CHAR(55),
PRIMARY KEY(id_gout)
);*/

/*CREATE TABLE Winos.Produit(
	id_produit MEDIUMINT NOT NULL AUTO_INCREMENT,
    nom CHAR(55) NOT NULL,
    cepage CHAR(55),
    provenance CHAR(55),
    millesime MEDIUMINT NOT NULL,
    descrip CHAR(200),
    adress_photo CHAR(200),
    tags_gout MEDIUMINT,
    tags_accord MEDIUMINT,
    categorie_vin CHAR(55),
    couleur BOOLEAN,
    bulles BOOLEAN,
    prix FLOAT,
    PRIMARY KEY(id_produit),
    FOREIGN KEY(tags_gout) REFERENCES tag_gout(id_gout),
    FOREIGN KEY(tags_accord) REFERENCES tag_accord(id_accord)
    );*/
    

/*ALTER TABLE Winos.Commande ADD (
etat_commande CHAR(55)
);*/

/*INSERT INTO Winos.Produit VALUES(
	1,'Domaine du bouchon','Grenache noire', 'Rhône', 2012,'Très bon vin fait avec amour','ftp://magrossebouteille.drunk', 3, 2,'Vin rouge', 1, 0, 19.90, 1
);*/

/*INSERT INTO Winos.Fournisseur VALUES(
	2,'Centrale d achat'
);*/

/*INSERT INTO Winos.Commande VALUES(
	1,1,1,NULL,'En préparation'
);*/


/*SELECT * FROM Winos.Panier;*/

    
