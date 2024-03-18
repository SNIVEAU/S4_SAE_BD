CREATE TABLE PARCOURS (
  id_Parcours  NUMBER PRIMARY KEY,
  nom_Parcours VARCHAR(42)
);

CREATE TABLE CATEGORIE (
  id_Categorie    NUMBER NOT NULL PRIMARY KEY,
  nom_Cat         VARCHAR(42),
  description_Cat VARCHAR(42)
);

CREATE TABLE ETAPE (
  code_Etape NUMBER NOT NULL PRIMARY KEY,
  nom_etape  VARCHAR(42),
  latitude   VARCHAR(42),
  longitude  VARCHAR(42),
  ville_etape   VARCHAR(42), 
  niveau_confort NUMBER,
  FOREIGN KEY (niveau_confort) REFERENCES CATEGORIE (id_Categorie)
);

CREATE TABLE TRONCONS (
  id_Tr          NUMBER NOT NULL PRIMARY KEY,
  nom_Tr         VARCHAR(42),
  distance       NUMBER,
  Type_Sol       VARCHAR(42),
  etape_arrivee NUMBER,
  etape_depart   NUMBER,
  FOREIGN KEY (etape_arrivee) REFERENCES ETAPE (code_Etape),
  FOREIGN KEY (etape_depart) REFERENCES ETAPE (code_Etape)
);

CREATE TABLE CONTENIR (
  id_Parcours NUMBER,
  id_Tr       NUMBER,
  FOREIGN KEY (id_Parcours) REFERENCES PARCOURS (id_Parcours),
  FOREIGN KEY (id_Tr) REFERENCES TRONCONS (id_Tr)
);
