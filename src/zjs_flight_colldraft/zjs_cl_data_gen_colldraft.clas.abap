CLASS zjs_cl_data_gen_colldraft DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zjs_cl_data_gen_colldraft IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DATA lt_booking TYPE STANDARD TABLE OF zdjs_a_book_cd.

    lt_booking = VALUE #(
      (
        client         = sy-mandt
        booking_uuid   = 'EE1DBA8C48E91FE1878FD470A7FB8C0E'
        parent_uuid    = 'EE1DBA8C48E91FE1878FD1CA857EAC0E'
        booking_id     = '1234'
        booking_date   = '20260310'
        flight_date    = '20260312'
        flight_price   = '1000.00'
        currency_code  = 'USD'
      )
      (
        client         = sy-mandt
        booking_uuid   = 'EA268361CA391FE197C9299B38A50659'
        parent_uuid    = 'EE1DBA8C48E91FE1878FD1CA857EAC0E'
        booking_id     = '3452'
        booking_date   = '20260603'
        flight_date    = '20260618'
        flight_price   = '4234.00'
        currency_code  = 'USD'
      )
      (
        client         = sy-mandt
        booking_uuid   = 'EA268361CA391FE197C9265C7965C659'
        parent_uuid    = 'EE1DBA8C48E91FE1878FD1CA857EAC0E'
        booking_id     = '2034'
        booking_date   = '20260602'
        flight_date    = '20260605'
        flight_price   = '2300.00'
        currency_code  = 'USD'
      )
    ).

    INSERT zdjs_a_book_cd FROM TABLE @lt_booking.

    IF sy-subrc = 0.
      out->write( |{ lines( lt_booking ) } records inserted successfully.| ).
    ELSE.
      out->write( 'Insert failed.' ).
    ENDIF.

    COMMIT WORK.

  ENDMETHOD.

ENDCLASS.
