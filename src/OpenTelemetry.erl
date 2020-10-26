-module(openTelemetry@foreign).

-export([ registerApplicationTracer/1
        , registerApplicationMeter/1
        , registerTracer/2
        , registerMeter/2
        , getTracer/1
        , getMeter/1
        ]).


registerApplicationTracer(Name) ->
  fun() ->
    opentelemetry:register_application_tracer(Name)
  end.

registerApplicationMeter(Name) ->
  fun() ->
    opentelemetry:register_application_tracer(Name)
  end.

registerMeter(Name, Version) ->
  fun() ->
    opentelemetry:register_meter(Name, Version)
  end.

registerTracer(Name, Version) ->
  fun() ->
    opentelemetry:register_tracer(Name, Version)
  end.

getTracer(Name) ->
  fun() ->
    opentelemetry:get_tracer(Name)
  end.

getMeter(Name) ->
  fun() ->
    opentelemetry:get_meter(Name)
  end.
