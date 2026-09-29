@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@EndUserText.label: 'Draft query view for ZDJS_D_TRAVEL_CD'
define root view entity zjs_r_traveltpdraft_cd
  as select from zdjs_d_travel_cd
{
  key traveluuid                    as TravelUuid,
      travelid                      as TravelId,
      begindate                     as BeginDate,
      enddate                       as EndDate,
      bookingfee                    as BookingFee,
      currencycode                  as CurrencyCode,
      description                   as Description,
      localcreatedby                as LocalCreatedBy,
      localcreatedat                as LocalCreatedAt,
      locallastchangedby            as LocalLastChangedBy,
      locallastchangedat            as LocalLastChangedAt,
      lastchangedat                 as LastChangedAt,
      draftentitycreationdatetime   as draftentitycreationdatetime,
      draftentitylastchangedatetime as draftentitylastchangedatetime,
      draftadministrativedatauuid   as draftadministrativedatauuid,
      draftentityoperationcode      as draftentityoperationcode,
      hasactiveentity               as hasactiveentity,
      draftfieldchanges             as draftfieldchanges
}
