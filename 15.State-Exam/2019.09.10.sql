SELECT ME.NAME, M.YEAR, COUNT(*) AS CNT
FROM MOVIEEXEC ME
JOIN MOVIE M ON ME.CERT# = M.PRODUCERC#
GROUP BY ME.CERT#, ME.NAME, M.YEAR


SELECT NAME FROM MOVIESTAR
WHERE BIRTHDATE = (SELECT MAX(BIRTHDATE) FROM MOVIESTAR)

SELECT NAME FROM MOVIESTAR
WHERE BIRTHDATE >= ALL(SELECT BIRTHDATE FROM MOVIESTAR)