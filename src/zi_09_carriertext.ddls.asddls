@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Text for Carrier'
define view entity ZI_09_CarrierText
  as select from scarr
{
  key carrid   as Carrid,
      carrname as Carrname
}
