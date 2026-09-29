@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Travel Status Value Help'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
 serviceQuality: #A,
 sizeCategory: #S,
 dataClass: #MASTER
 }
@ObjectModel.resultSet.sizeCategory: #XS
define view entity ZJS_I_TRAVEL_STATUS_VH
  as select from zjs_trvl_stat

  association [0..*] to ZJS_I_TRAVEL_STATUS_VH_TEXT as _Text on $projection.TravelStatus = _Text.TravelStatus

{
      @UI.textArrangement: #TEXT_ONLY
      @UI.lineItem: [{importance: #HIGH}]
      @ObjectModel.text.association: '_Text'
  key travel_status as TravelStatus,  

      _Text 
}
