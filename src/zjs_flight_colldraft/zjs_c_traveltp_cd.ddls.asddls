@AccessControl.authorizationCheck: #MANDATORY

@EndUserText.label: 'Travel Projection View with CollDraft'

@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true

@ObjectModel.semanticKey: [ 'TravelId' ]

@Search.searchable: true

define root view entity ZJS_C_TRAVELTP_CD
  provider contract transactional_query
  as projection on ZJS_R_TRAVELTP_CD

{
  key TravelUuid,

      @Search.defaultSearchElement: true
      TravelId,

      BeginDate,
      EndDate,

      @Semantics.amount.currencyCode: 'CurrencyCode'
      BookingFee,

      @Consumption.valueHelpDefinition: [ { entity: { name: 'I_CurrencyStdVH', element: 'Currency' },
                                            useForValidation: true } ]
      CurrencyCode,

      Description,

      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      LocalLastChangedAt,

      /* Associations */
      _Booking : redirected to composition child ZJS_C_BOOKINGTP_CD
}
