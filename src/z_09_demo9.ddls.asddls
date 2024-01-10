@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Demo 9: Path Expressions'
define view entity Z_09_Demo9
  as select from Z_09_DEMO8
{
  key Carrid,
  key Connid,
      Cityfrom,
      Cityto,
      _Carrier.carrname as CarrierName,

      /* Associations */
      _Flights
}
