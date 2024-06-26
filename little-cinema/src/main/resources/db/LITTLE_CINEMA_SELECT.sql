﻿SELECT ID FROM TICKET GROUP BY ID;

INSERT INTO TICKET(TICKET_NO, ID, TIME_CODE, PAY_COST, ORDER_DATE, TICKET_STATUS) VALUES (1, '', 1, 0, SYSDATE, 1);

SELECT * FROM TICKET WHERE ID = 'asurcombe1';

INSERT INTO BOOKED_SEAT(TICKET_NO, SEAT_CODE, SCREEN_NO)
VALUES (TICKET_SEQ.CURRVAL, ?, ?)


SELECT * FROM TICKET WHERE ID = 'asurcombe1';


SELECT BS.*, S.SCREEN_NAME
FROM TICKET            T
INNER JOIN BOOKED_SEAT BS
           ON T.TICKET_NO = BS.TICKET_NO
INNER JOIN SCREEN      S
           ON S.SCREEN_NO = BS.SCREEN_NO
WHERE TIME_CODE = 10;


SELECT T.PAY_COST, BS.SEAT_CODE, BS.SCREEN_NO
FROM TICKET            T
INNER JOIN BOOKED_SEAT BS
           ON T.TICKET_NO = BS.TICKET_NO
WHERE T.ID = 'asurcombe1';

SELECT * FROM TICKET WHERE ID = 'asurcombe1' ORDER BY ID;

SELECT * FROM MEMBER;


SELECT TIME_CODE,
       START_TIME,
       END_TIME,
       MOVIE_DATE,
       M.MOVIE_NO,
       TITLE,
       RATING,
       POSTER_IMAGE,
       S.SCREEN_NO,
       SCREEN_NAME
FROM TIME   T
JOIN MOVIE  M
     ON t.MOVIE_NO = M.MOVIE_NO
JOIN SCREEN S
     ON T.SCREEN_NO = S.SCREEN_NO
WHERE MOVIE_DATE = TO_DATE('2021-10-21');

SELECT TIME_CODE,
       START_TIME,
       END_TIME,
       MOVIE_DATE,
       M.MOVIE_NO,
       TITLE,
       RATING,
       POSTER_IMAGE,
       S.SCREEN_NO,
       SCREEN_NAME
FROM TIME   T
JOIN MOVIE  M
     ON t.MOVIE_NO = M.MOVIE_NO
JOIN SCREEN S
     ON T.SCREEN_NO = S.SCREEN_NO
WHERE MOVIE_DATE = TO_DATE('2021-10-21')
  AND M.MOVIE_NO = 2;

SELECT S.SCREEN_NAME, START_TIME
FROM TIME
INNER JOIN SCREEN S
           ON TIME.SCREEN_NO = S.SCREEN_NO
WHERE MOVIE_DATE = TO_DATE('2021-10-21')
  AND MOVIE_NO = 2;

SELECT *
FROM TIME
WHERE MOVIE_NO = 2;

SELECT COUNT(SEAT_CODE) FROM SEAT WHERE SCREEN_NO = 3;

SELECT SEAT_CODE
FROM BOOKED_SEAT  BS
INNER JOIN TICKET T
           ON T.TICKET_NO = BS.TICKET_NO
WHERE BS.SCREEN_NO = 1
  AND T.TIME_CODE = 1;

SELECT SEAT_CODE
FROM BOOKED_SEAT  BS
INNER JOIN TICKET T
           ON T.TICKET_NO = BS.TICKET_NO
WHERE MOVIE_NO = 1;


SELECT BS.*, S.SCREEN_NAME
FROM TICKET            T
INNER JOIN BOOKED_SEAT BS
           ON T.TICKET_NO = BS.TICKET_NO
INNER JOIN SCREEN      S
           ON S.SCREEN_NO = BS.SCREEN_NO
WHERE TIME_CODE = 1;


SELECT COUNT(*) FROM TICKET WHERE TIME_CODE = 1;


SELECT TIME_CODE, S.SCREEN_NAME, START_TIME, END_TIME
FROM TIME
INNER JOIN SCREEN S
           ON TIME.SCREEN_NO = S.SCREEN_NO
WHERE MOVIE_DATE = '2021-10-21'
  AND MOVIE_NO = 2
ORDER BY S.SCREEN_NAME, START_TIME;

SELECT TIME_CODE, START_TIME, END_TIME, MOVIE_DATE,
       M.MOVIE_NO, TITLE, RATING, POSTER_IMAGE,
       S.SCREEN_NO, SCREEN_NAME
FROM TIME   T
JOIN MOVIE  M
     ON T.MOVIE_NO = M.MOVIE_NO
JOIN SCREEN S
     ON T.SCREEN_NO = S.SCREEN_NO
WHERE MOVIE_DATE = '2021-10-21'
  AND M.MOVIE_NO = 2;


SELECT TK.TICKET_NO, ID, PAY_COST, ORDER_DATE,
       TICKET_STATUS, START_TIME, END_TIME, MOVIE_DATE,
       TITLE, RUNNINGTIME, SEAT_CODE, SCREEN_NAME
FROM TICKET           TK
JOIN TIME             TM
     ON TK.TIME_CODE = TM.TIME_CODE
JOIN MOVIE            M
     ON TM.MOVIE_NO = M.MOVIE_NO
LEFT JOIN BOOKED_SEAT BS
          ON TK.TICKET_NO = BS.TICKET_NO
LEFT JOIN SCREEN      S
          ON BS.SCREEN_NO = S.SCREEN_NO
WHERE TK.TICKET_NO = ?;

SELECT TIME_CODE,
       START_TIME,
       END_TIME,
       MOVIE_DATE,
       M.MOVIE_NO,
       TITLE,
       RATING,
       POSTER_IMAGE,
       S.SCREEN_NO,
       SCREEN_NAME
FROM TIME   T
JOIN MOVIE  M
     ON t.MOVIE_NO = M.MOVIE_NO
JOIN SCREEN S
     ON T.SCREEN_NO = S.SCREEN_NO
WHERE MOVIE_DATE = ?;



SELECT T2.START_TIME, T2.END_TIME, T2.MOVIE_DATE,
       M.TITLE, M.POSTER_IMAGE, S.SCREEN_NO, S.SCREEN_NAME
FROM TICKET       T
INNER JOIN TIME   T2
           ON T2.TIME_CODE = T.TIME_CODE
INNER JOIN MOVIE  M
           ON T2.MOVIE_NO = M.MOVIE_NO
INNER JOIN SCREEN S
           ON T2.SCREEN_NO = S.SCREEN_NO
WHERE TICKET_NO = 51;

SELECT *
FROM TICKET
INNER JOIN TIME
           ON TICKET.TIME_CODE = TIME.TIME_CODE
INNER JOIN MOVIE
           ON TIME.MOVIE_NO = MOVIE.MOVIE_NO
WHERE ID = 'asurcombe1'
  AND TICKET_STATUS = 1
ORDER BY ORDER_DATE DESC;

SELECT T.TICKET_NO, ID, PAY_COST, ORDER_DATE, TICKET_STATUS,
       START_TIME, END_TIME, MOVIE_DATE, TITLE, RUNNINGTIME,
       BS.SEAT_CODE, BS.SCREEN_NO, M.POSTER_IMAGE
FROM TICKET      T
JOIN TIME
     ON T.TIME_CODE = TIME.TIME_CODE
JOIN MOVIE       M
     ON TIME.MOVIE_NO = M.MOVIE_NO
JOIN BOOKED_SEAT BS
     ON T.TICKET_NO = BS.TICKET_NO
WHERE T.TICKET_NO = 51;