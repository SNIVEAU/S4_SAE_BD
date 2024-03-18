
-- 1ERE REQUETE
SELECT nom_Tr
FROM TRONCONS
WHERE etape_depart IN (
    SELECT code_Etape
    FROM ETAPE
    WHERE ville_etape = 'Orleans'
);