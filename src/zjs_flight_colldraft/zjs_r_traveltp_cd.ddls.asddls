@AccessControl.authorizationCheck: #NOT_REQUIRED

@EndUserText.label: 'Travel View Entity Coll. Draft RefScen'

@Metadata.ignorePropagatedAnnotations: true

define root view entity ZJS_R_TRAVELTP_CD
  as select from zdjs_a_travel_cd

  composition of exact one to many ZJS_R_BOOKINGTP_CD as _Booking

{
  key travel_uuid           as TravelUuid,

      travel_id             as TravelId,
      begin_date            as BeginDate,
      end_date              as EndDate,

      @Semantics.amount.currencyCode: 'CurrencyCode'
      booking_fee           as BookingFee,

      currency_code         as CurrencyCode,
      description           as Description,

      @Semantics.user.createdBy: true
      local_created_by      as LocalCreatedBy,

      @Semantics.systemDateTime.createdAt: true
      local_created_at      as LocalCreatedAt,

      @Semantics.user.localInstanceLastChangedBy: true
      local_last_changed_by as LocalLastChangedBy,

      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      local_last_changed_at as LocalLastChangedAt,

      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at       as LastChangedAt,

      /* Associations */
      _Booking
}
