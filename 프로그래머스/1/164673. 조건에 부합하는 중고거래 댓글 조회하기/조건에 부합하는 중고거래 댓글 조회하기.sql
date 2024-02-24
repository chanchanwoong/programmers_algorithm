SELECT 
	TITLE, 
    BOARD.BOARD_ID, 
    REPLY_ID, 
    REPLY.WRITER_ID, 
    REPLY.CONTENTS, DATE_FORMAT(REPLY.CREATED_DATE, '%Y-%m-%d') AS CREATED_DATE
FROM USED_GOODS_REPLY AS REPLY
JOIN USED_GOODS_BOARD AS BOARD
ON REPLY.BOARD_ID = BOARD.BOARD_ID
WHERE DATE_FORMAT(BOARD.CREATED_DATE, '%Y-%m') = '2022-10'
ORDER BY REPLY.CREATED_DATE, TITLE