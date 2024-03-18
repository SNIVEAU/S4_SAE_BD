-- Insertion dans la table PARCOURS
INSERT INTO PARCOURS (id_Parcours, nom_Parcours) VALUES
(1, 'Parcours 1');

INSERT INTO PARCOURS (id_Parcours, nom_Parcours) VALUES (2, 'Parcours 2');
COMMIT;
-- -- Insertion dans la table CATEGORIE
INSERT INTO CATEGORIE (id_Categorie, nom_Cat, description_Cat) 
VALUES (1, 'Categorie 1', 'Description de la catégorie 1');

INSERT INTO CATEGORIE (id_Categorie, nom_Cat, description_Cat) 
VALUES (2, 'Categorie 2', 'Description de la catégorie 2');

INSERT INTO CATEGORIE (id_Categorie, nom_Cat, description_Cat) 
VALUES (3, 'Categorie 3', 'Description de la catégorie 3');

-- Insertion dans la table ETAPE
INSERT INTO ETAPE (code_Etape, nom_etape, latitude, longitude,ville_etape, niveau_confort) 
VALUES (1, 'etape1', 'latitude1', 'longitude1','Paris', 1);

INSERT INTO ETAPE (code_Etape, nom_etape, latitude, longitude,ville_etape, niveau_confort) 
VALUES (2, 'etape2', 'latitude2', 'longitude2','Feur', 2);

INSERT INTO ETAPE (code_Etape, nom_etape, latitude, longitude,ville_etape, niveau_confort) 
VALUES (3, 'etape3', 'latitude3', 'longitude3','Orleans', 3);


-- Insertion dans la table TRONCONS
INSERT INTO TRONCONS (id_Tr, nom_Tr, distance, Type_Sol, etape_depart, etape_arrivee) 
VALUES (1, 'Troncon 1', 10, 'Sol 1',  1, 2);

INSERT INTO TRONCONS (id_Tr, nom_Tr, distance, Type_Sol,  etape_depart, etape_arrivee) 
VALUES (2, 'Troncon 2', 8, 'Sol 2', 2, 3);

INSERT INTO TRONCONS (id_Tr, nom_Tr, distance, Type_Sol, etape_depart, etape_arrivee) 
VALUES (3, 'Troncon 3', 12, 'Sol 3', 3, 1);
-- Insertion dans la table CONTENIR
INSERT INTO CONTENIR (id_Parcours, id_Tr) VALUES (1, 1);
INSERT INTO CONTENIR (id_Parcours, id_Tr) VALUES (1, 2);
INSERT INTO CONTENIR (id_Parcours, id_Tr) VALUES (2, 3);







