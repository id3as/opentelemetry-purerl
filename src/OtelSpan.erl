-module(otelSpan@foreign).

-export([
         addEvent/4
        ]).

addEvent(Tracer, SpanCtx, Name, Attributes) ->
  fun() ->
      otel_span:add_event(Tracer, SpanCtx, Name, Attributes)
  end.
