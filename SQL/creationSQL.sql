CREATE TABLE ETAPE (
  code_Etape int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  num_Etape  VARCHAR(42),
  latitude   VARCHAR(42),
  longitude  VARCHAR(42),
  id_Tr_1    int,
  id_Tr_2    int,
  FOREIGN KEY (id_Tr_1) REFERENCES TRONCONS (id_Tr),
  FOREIGN KEY (id_Tr_2) REFERENCES TRONCONS (id_Tr)
);

CREATE TABLE PARCOURS (
  id_Parcours  int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  nom_Parcours VARCHAR(42)
);

CREATE TABLE TRONCONS (
  id_Tr    int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  nom_Tr   VARCHAR(42),
  distance VARCHAR(42),
  Type_Sol VARCHAR(42)
);

CREATE TABLE CATEGORIE (
  id_Categorie    int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  nom_Cat         VARCHAR(42),
  description_Cat VARCHAR(42),
  code_Etape      int,
  FOREIGN KEY (code_Etape) REFERENCES ETAPE (code_Etape)
);

CREATE TABLE CONTENIR (
  id_Parcours int,
  id_Tr       int,
  PRIMARY KEY (id_Parcours, id_Tr),
  FOREIGN KEY (id_Parcours) REFERENCES PARCOURS (id_Parcours),
  FOREIGN KEY (id_Tr) REFERENCES TRONCONS (id_Tr)
);
