METHOD YEARSET_GET_ENTITYSET.

  SELECT DISTINCT SALESYEAR
  FROM ZTBSD0010 INTO TABLE @ET_ENTITYSET.

  IF SY-SUBRC <> 0.
   RAISE EXCEPTION TYPE /IWBEP/CX_MGW_BUSI_EXCEPTION.
   RETURN.
  ENDIF.
 ENDMETHOD.