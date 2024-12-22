METHOD SOP_HEADERSET_GET_ENTITYSET.

  READ TABLE IT_FILTER_SELECT_OPTIONS INTO DATA(LS_FILTER_YEAR) WITH TABLE KEY PROPERTY = 'Salesyear'.
  READ TABLE IT_FILTER_SELECT_OPTIONS INTO DATA(LS_FILTER_SOPNUM) WITH TABLE KEY PROPERTY = 'Sopnum'.

  SELECT * FROM ZVBSD0010 AS A
  WHERE A~SALESYEAR IN @LS_FILTER_YEAR-SELECT_OPTIONS
   AND A~SOPNUM IN @LS_FILTER_SOPNUM-SELECT_OPTIONS
  ORDER BY A~APPR
  INTO TABLE @ET_ENTITYSET.

 ENDMETHOD.