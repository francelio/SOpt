CREATE TABLE t1 (i INT, d1 DOUBLE, d2 DOUBLE);

INSERT INTO t1 VALUES (1, 101.40, 21.40), (1, -80.00, 0.00),
(2, 0.00, 0.00), (2, -13.20, 0.00), (2, 59.60, 46.40),
(2, 30.40, 30.40), (3, 37.00, 7.40), (3, -29.60, 0.00),
(4, 60.00, 15.40), (4, -10.60, 0.00), (4, -34.00, 0.00),
(5, 33.00, 0.00), (5, -25.80, 0.00), (5, 0.00, 7.20),
(6, 0.00, 0.00), (6, -51.40, 0.00);

SELECT i, SUM(d1) AS a, SUM(d2) AS b FROM t1 GROUP BY i HAVING a <> b;

--https://pt.stackoverflow.com/q/59010/101