

CREATE TABLE PARCOURS (
  id_Parcours  NUMBER PRIMARY KEY,
  nom_Parcours VARCHAR(42)
);

CREATE TABLE TRONCONS (
  id_Tr    NUMBER NOT NULL PRIMARY KEY,
  nom_Tr   VARCHAR(42),
  distance VARCHAR(42),
  Type_Sol VARCHAR(42)
);
CREATE TABLE ETAPE (
  code_Etape NUMBER NOT NULL PRIMARY KEY,
  num_Etape  VARCHAR(42),
  latitude   VARCHAR(42),
  longitude  VARCHAR(42),
  id_Tr_1    NUMBER,
  id_Tr_2    NUMBER,
  FOREIGN KEY (id_Tr_1) REFERENCES TRONCONS (id_Tr),
  FOREIGN KEY (id_Tr_2) REFERENCES TRONCONS (id_Tr)
);
CREATE TABLE CATEGORIE (
  id_Categorie    NUMBER NOT NULL PRIMARY KEY,
  nom_Cat         VARCHAR(42),
  description_Cat VARCHAR(42),
  code_Etape      NUMBER,
  FOREIGN KEY (code_Etape) REFERENCES ETAPE (code_Etape)
);

CREATE TABLE CONTENIR (
  id_Parcours NUMBER,
  id_Tr       NUMBER,
  FOREIGN KEY (id_Parcours) REFERENCES PARCOURS (id_Parcours),
  FOREIGN KEY (id_Tr) REFERENCES TRONCONS (id_Tr)
);
