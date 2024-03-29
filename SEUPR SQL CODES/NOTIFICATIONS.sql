INSERT INTO NOTIFICATION (NOTIFICATION_MSG, TO_USEER_ID)
VALUES 
(
    (SELECT 'AT : '||TO_CHAR(UPDATED_TIME, 'DD-MON-RR HH12:MI:SS PM') ||', USER : '||
    (
        SELECT USER_INFO.USER_NAME FROM  REQ_ITEMS_ROLES, USER_INFO
        WHERE REQ_ITEMS_ROLES.APPROVED_BY_USER_ID=USER_INFO.USER_ID
        AND REQ_ITEMS_ROLES.REQ_ITEM_ID=241
    )||
    ', APPROVAL : '||' APPROVED, '||'NOTE : '||REQ_ITEMS_ROLES.COOMMENT_BY_APPROVER
    FROM REQ_ITEMS_ROLES
    WHERE REQ_ITEMS_ROLES.REQ_ITEM_ID=241),
    1
);


SELECT * FROM REQ_ITEMS_ROLES;

SELECT 'AT : '||TO_CHAR(UPDATED_TIME, 'DD-MON-RR HH12:MI:SS PM') ||', USER : '||
    (
        SELECT USER_INFO.USER_NAME FROM  REQ_ITEMS_ROLES, USER_INFO
        WHERE REQ_ITEMS_ROLES.APPROVED_BY_USER_ID=USER_INFO.USER_ID
        AND REQ_ITEMS_ROLES.REQ_ITEM_ID=241
    )||
    ', APPROVAL : '||' APPROVED, '||'NOTE : '||REQ_ITEMS_ROLES.COOMMENT_BY_APPROVER
FROM REQ_ITEMS_ROLES
WHERE REQ_ITEMS_ROLES.REQ_ITEM_ID=241;


SELECT USER_INFO.USER_NAME FROM  REQ_ITEMS_ROLES, USER_INFO
WHERE REQ_ITEMS_ROLES.APPROVED_BY_USER_ID=USER_INFO.USER_ID
AND REQ_ITEMS_ROLES.REQ_ITEM_ID=:REQ_ITEMS_ROLES_BLK.REQ_ITEM_ID;

SELECT USER_INFO.USER_NAME FROM  REQ_ITEMS_ROLES, USER_INFO
WHERE REQ_ITEMS_ROLES.APPROVED_BY_USER_ID=USER_INFO.USER_ID
AND REQ_ITEMS_ROLES.REQ_ITEM_ID=241;



	SELECT 'AT : '||TO_CHAR(UPDATED_TIME, 'DD-MON-RR HH12:MI:SS PM') ||', USER : '||to_u_name
            ||', APPROVAL : '||' APPROVED, '||'NOTE : '||REQ_ITEMS_ROLES.COOMMENT_BY_APPROVER
            into ntf_msg
            FROM REQ_ITEMS_ROLES
            WHERE REQ_ITEMS_ROLES.REQ_ITEM_ID=:REQ_ITEMS_ROLES_BLK.REQ_ITEM_ID
            AND REQ_ITEMS_ROLES.APPROVED_BY_USER_ID=:REQ_ITEMS_ROLES_BLK.APPROVED_BY_USER_ID;
            
            
	SELECT 'AT : '||TO_CHAR(UPDATED_TIME, 'DD-MON-RR HH12:MI:SS PM') ||', USER : '||to_u_name
            ||', APPROVAL : '||' APPROVED, '||'NOTE : '||REQ_ITEMS_ROLES.COOMMENT_BY_APPROVER
            --into ntf_msg
            FROM REQ_ITEMS_ROLES
            WHERE REQ_ITEMS_ROLES.REQ_ITEM_ID=241:REQ_ITEMS_ROLES_BLK.REQ_ITEM_ID
            AND REQ_ITEMS_ROLES.APPROVED_BY_USER_ID=:REQ_ITEMS_ROLES_BLK.APPROVED_BY_USER_ID;
            
            
            
	SELECT 'AT : '||TO_CHAR(UPDATED_TIME, 'DD-MON-RR HH12:MI:SS PM')||', APPROVAL : '||' APPROVED, '||'NOTE : '||REQ_ITEMS_ROLES.COOMMENT_BY_APPROVER
  ;
  select TO_CHAR(UPDATED_TIME, 'DD-MON-RR HH12:MI:SS PM')
  FROM REQ_ITEMS_ROLES
  WHERE REQ_ITEMS_ROLES.REQ_ITEM_ID=184--:REQ_ITEMS_ROLES_BLK.REQ_ITEM_ID
  AND REQ_ITEMS_ROLES.APPROVED_BY_USER_ID=4--:REQ_ITEMS_ROLES_BLK.APPROVED_BY_USER_ID;
  
  
  
  
  SELECT MAX(REQUISITION_LIST.USER_INFO_USER_ID) --INTO VAR_USER_ID
		FROM REQ_ITEMS_ROLES, REQUISITION_ITEMS, REQUISITION_LIST
		WHERE REQ_ITEMS_ROLES.REQ_ITEM_ID=REQUISITION_ITEMS.REQ_ITEM_ID 
		AND REQUISITION_ITEMS.REQUISITION_LIST_REQ_LIST_ID=REQUISITION_LIST.REQ_LIST_ID
		AND REQ_ITEMS_ROLES.APPROVED_BY_USER_ID=4:REQ_ITEMS_ROLES_BLK.APPROVED_BY_USER_ID;
    
    
      SELECT MAX(REQUISITION_LIST.USER_INFO_USER_ID) INTO VAR_USER_ID
		FROM REQ_ITEMS_ROLES, REQUISITION_ITEMS, REQUISITION_LIST
		WHERE REQ_ITEMS_ROLES.REQ_ITEM_ID=REQUISITION_ITEMS.REQ_ITEM_ID 
		AND REQUISITION_ITEMS.REQUISITION_LIST_REQ_LIST_ID=REQUISITION_LIST.REQ_LIST_ID
		AND REQ_ITEMS_ROLES.APPROVED_BY_USER_ID=:REQ_ITEMS_ROLES_BLK.APPROVED_BY_USER_ID;
