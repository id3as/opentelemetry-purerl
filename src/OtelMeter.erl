-module(otelMeter@foreign).

-export([ newInstrument/4
        , newInstruments/2 ]).


newInstrument(Meter, Name, Module, Config) ->
  fun() ->
      otel_meter:new_instrument(Meter, Name, Module, Config)
  end.

newInstruments(Meter, List) ->
  fun() ->
      otel_meter:new_instruments(Meter, List)
  end.
