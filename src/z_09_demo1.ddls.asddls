@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Demo 1: Projections'
define view entity Z_09_Demo1 
    as select from sflight
{
    key carrid    as CarrierId,
    key connid    as ConnectionId,
    key fldate    as FlightDate,
        price     as FlightPrice,
        currency  as Currency,
        planetype as PlaneType
}
