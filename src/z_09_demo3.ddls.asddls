@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Demo 3: Literals, Arithmetic Expressions & Type Cassts'
define view entity Z_09_Demo3
  as select from sbook
{
  /*Literals*/
  'Hello Worrld'                                                         as Text1,
  42                                                                     as Integer1,
  0.1                                                                    as FloatingPointNumber1,
  /* Cases */
  cancelled,
  case cancelled
  when '' then 'Booked'
  when 'X' then 'Cancelled'
  else cancelled
  end                                                                    as CancelledText,
  class,
  luggweight,
  wunit,
  case when class = 'F' then 'kein Übergepäck'
    when luggweight > 25 and wunit = 'KG' then 'Übergepäck'
    else 'Glück gehabt'
  end                                                                    as ExessLuggage,
  /* Arithmetic Expressions and Type Casts*/
  loccuram,
  loccurkey,
  forcuram,
  forcurkey,
  cast(loccuram as abap.dec(16, 2)) + cast (forcuram as abap.dec(16, 2)) as Add1,
  cast(loccuram as abap.dec(16, 2)) - cast (forcuram as abap.dec(16, 2)) as Subtract1,
  cast(loccuram as abap.dec(16, 2)) * cast (forcuram as abap.dec(16, 2)) as Multiply1,
  cast(loccuram as abap.fltp) / cast (forcuram as abap.fltp)             as Divide1
}
