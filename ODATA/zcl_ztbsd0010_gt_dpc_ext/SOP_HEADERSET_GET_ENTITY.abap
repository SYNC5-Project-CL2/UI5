METHOD SOP_HEADERSET_GET_ENTITY.

 DATA(LS_SOPNUM) = IT_KEY_TAB[ NAME = 'Sopnum' ]-VALUE.
 DATA(LS_CTRYCODE) = IT_KEY_TAB[ NAME = 'Ctrycode' ]-VALUE.

  SELECT SINGLE *
  FROM ZVBSD0011 AS A
  WHERE A~SOPNUM = @LS_SOPNUM
   AND A~CTRYCODE = @LS_CTRYCODE
  INTO @DATA(LS_DATA).

  IF SY-SUBRC <> 0.
   RAISE EXCEPTION TYPE /IWBEP/CX_MGW_BUSI_EXCEPTION.
  ENDIF.

  MOVE-CORRESPONDING LS_DATA TO ER_ENTITY.
 ENDMETHOD.