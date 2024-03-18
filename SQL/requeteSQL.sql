
-- 1ERE REQUETE
-- Donner les noms des ´etapes que nous pouvons atteindre directement en suivant les tron¸cons qui partent d’Orl´eans.
SELECT nom_Tr
FROM TRONCONS
WHERE etape_depart IN (
    SELECT code_Etape
    FROM ETAPE
    WHERE ville_etape = 'Orleans'
);
-- euillez fournir la liste des ´etapes accessibles depuis Orl´eans avec une seule ´etapeinterm´ediaire.
SELECT nom_etape
FROM ETAPE
WHERE code_Etape IN (
    SELECT etape_arrivee
    FROM TRONCONS
    WHERE etape_depart IN (
        SELECT code_Etape
        FROM ETAPE
        WHERE ville_etape = 'Orleans'
    )
);