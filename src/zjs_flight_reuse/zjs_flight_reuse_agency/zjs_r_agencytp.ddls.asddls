@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Agency'
@Search.searchable: true

@AbapCatalog.extensibility: { extensible: true,
                              elementSuffix: 'ZJS',
                              allowNewDatasources: false,
                              dataSources: ['_Extension'],
                              quota: { maximumFields: 500,
                                       maximumBytes: 50000 },
  allowNewCompositions: true
}

define root view entity ZJS_R_AGENCYTP
  as select from ZJS_I_AGENCY as Agency
  association [0..1] to I_Country     as _Country   on $projection.CountryCode = _Country.Country
  association [1]    to ZJS_E_AGENCY as _Extension on $projection.AgencyID = _Extension.AgencyId
{

  key AgencyID,

      Name,

      Street,
      PostalCode,
      City,
      CountryCode,

      PhoneNumber,
      EMailAddress,
      WebAddress,

      Attachment,
      MimeType,
      Filename,

      LocalCreatedBy,
      LocalCreatedAt,
      LocalLastChangedBy,
      LocalLastChangedAt,
      LastChangedAt,

      _Country
}
