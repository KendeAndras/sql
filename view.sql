--1.

CREATE VIEW toth AS
SELECT nev
FROM vevok
WHERE nev LIKE "Tóth %";



--2.

CREATE VIEW 8Tojas AS
SELECT nev
FROM tesztak INNER JOIN tesztak ON kategoriak.id = tesztak.kategoriaId
WHERE kategoriaId = (SELECT kategoriak.id FROM kategoriak
WHERE kategoriak.nev = "8 tojásos");



--3.

CREATE VIEW ar500tobb AS
SELECT nev
FROM tesztak WHERE ar>500;




--4.

CREATE VIEW korettesztak AS
SELECT tesztak.nev
FROM tesztak INNER JOIN kategoriak ON tesztak.kategoriaId = kategoriak.id
WHERE kategoriaId = (SELECT kategoriak.id FROM kategoriak
WHERE kategoriak.nev = "Körettészták");



-- 5.

CREATE VIEW 5legdragabb AS
SELECT nev
FROM tesztak
ORDER BY ar DESC LIMIT 5;