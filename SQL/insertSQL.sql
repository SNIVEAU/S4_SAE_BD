-- Insertion dans la table CATEGORIE
INSERT INTO CATEGORIE (id_Categorie, nom_Cat, description_Cat, code_Etape) VALUES
(1, 'Catégorie 1', 'Description de la catégorie 1', 'ETAPE001');
(2, 'Catégorie 2', 'Description de la catégorie 2', 'ETAPE002');
(3, 'Catégorie 3', 'Description de la catégorie 3', NULL);

-- Insertion dans la table CONTENIR
INSERT INTO CONTENIR (id_Parcours, id_Tr) VALUES
(1, 1),
(1, 2),
(2, 3);

-- Insertion dans la table ETAPE
INSERT INTO ETAPE (code_Etape, num_Etape, latitude, longitude, id_Tr_1, id_Tr_2) VALUES
('ETAPE001', 'Étape 1', 'latitude1', 'longitude1', 1, 2);
INSERT INTO ETAPE (code_Etape, num_Etape, latitude, longitude, id_Tr_1, id_Tr_2) VALUES

('ETAPE002', 'Étape 2', 'latitude2', 'longitude2', 2, 3);
INSERT INTO ETAPE (code_Etape, num_Etape, latitude, longitude, id_Tr_1, id_Tr_2) VALUES
('ETAPE003', 'Étape 3', 'latitude3', 'longitude3', 3, 1);

-- Insertion dans la table PARCOURS
INSERT INTO PARCOURS (id_Parcours, nom_Parcours) VALUES
(1, 'Parcours 1');

INSERT INTO PARCOURS (id_Parcours, nom_Parcours) VALUES (2, 'Parcours 2');
COMMIT;

-- Insertion dans la table TRONCONS
INSERT INTO TRONCONS (id_Tr, nom_Tr, distance, Type_Sol) VALUES (1, 'Tronçon 1', '10', 'Sol 1');
COMMIT;
INSERT INTO TRONCONS (id_Tr, nom_Tr, distance, Type_Sol) VALUES

(2, 'Tronçon 2', '8', 'Sol 2');
INSERT INTO TRONCONS (id_Tr, nom_Tr, distance, Type_Sol) VALUES

(3, 'Tronçon 3', '12', 'Sol 3');
