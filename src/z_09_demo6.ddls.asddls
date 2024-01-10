@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Demo 6: Nested Views'
define view entity Z_09_Demo6
  as select from Z_09_Demo5
{
  count(*) as NumberOfCarriersWithMoreThan4MRevenue
}
