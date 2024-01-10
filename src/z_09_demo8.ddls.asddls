@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'DEMO 8: Associations'
define view entity Z_09_DEMO8
  as select from spfli as Connection
  association [1..1] to scarr   as _Carrier on  _Carrier.carrid = Connection.carrid
  association [0..*] to sflight as _Flights on  _Flights.carrid = Connection.carrid
                                            and _Flights.connid = Connection.connid
{
  key Connection.carrid   as Carrid,
  key Connection.connid   as Connid,
      Connection.cityfrom as Cityfrom,
      Connection.cityto   as Cityto,

      /* Associations */
      _Carrier,
      _Flights
}
