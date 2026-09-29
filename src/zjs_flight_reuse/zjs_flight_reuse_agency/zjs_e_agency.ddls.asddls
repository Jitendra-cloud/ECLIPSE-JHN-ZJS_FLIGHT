@AbapCatalog.viewEnhancementCategory: [#PROJECTION_LIST]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Agency - Extension Include View'

@AbapCatalog.extensibility: { extensible: true,
                              elementSuffix: 'ZJS',
                              allowNewDatasources: false,
                              dataSources: ['Agency'],
                              quota: { maximumFields: 500,
                                       maximumBytes: 50000 } }

define view entity ZJS_E_AGENCY
  as select from zjs_agency as Agency
{
  key agency_id as AgencyId

}
