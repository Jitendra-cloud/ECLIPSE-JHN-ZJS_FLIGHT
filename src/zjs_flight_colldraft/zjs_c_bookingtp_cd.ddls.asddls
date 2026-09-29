@AccessControl.authorizationCheck: #MANDATORY

@EndUserText.label: 'Booking Projection View with CollDraft'

@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true

@ObjectModel.semanticKey: [ 'BookingId' ]

@Search.searchable: true

define view entity ZJS_C_BOOKINGTP_CD
  as projection on ZJS_R_BOOKINGTP_CD

{
  key BookingUuid,

      TravelUuid,

      @Search.defaultSearchElement: true
      BookingId,

      BookingDate,
      FlightDate,

      @Semantics.amount.currencyCode: 'CurrencyCode'
      FlightPrice,

      @Consumption.valueHelpDefinition: [ { entity: { name: 'I_CurrencyStdVH', element: 'Currency' },
                                            useForValidation: true } ]
      CurrencyCode,

      /* Associations */
      _Travel : redirected to parent ZJS_C_TRAVELTP_CD
}
