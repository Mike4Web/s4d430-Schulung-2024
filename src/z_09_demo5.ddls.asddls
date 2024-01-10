@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Demo 5: Aggregationfunctions'
define view entity Z_09_Demo5
  as select from sflight
{
  key carrid,
  key connid,

      count(*)                                             as NumberOfFlights,
      count(distinct seatsmax)                             as NumberOfSeatsMax,
      @Semantics.amount.currencyCode: 'Currency'
      sum(paymentsum)                                      as TotalRevenue,
      currency                                             as Currency,
      avg(price as abap.dec(16, 2))                        as AveragePrice,
      min(seatsocc)                                        as MinimumOccupiedSeats,
      max(seatsocc)                                        as MaximumOccupiedSeats,
      sum(case when seatsocc = 0 then 1 else 0 end)        as NumberOfEmptyFlights,
      sum(case when seatsocc = seatsmax then 1 else 0 end) as NumberOfBookedUpFlights

}
where // where bezieht sich immer auf die Ausgangsmenge, in diesem Beispiel schränkt es die 355 Flüge ein
  planetype = 'A380-800'
group by
  currency,
  carrid,
  connid
having
  sum(paymentsum) > 4000000
