-module(otelTracer@foreign).

-export([
         startSpan/2,
         endSpan/2,
         currentSpanCtx/1
        ]).


startSpan(Tracer, Name) ->
  fun() ->
      otel_tracer:start_span(Tracer, Name)
  end.

endSpan(Tracer, SpanCtx) ->
  fun() ->
      otel_tracer:end_span(Tracer, SpanCtx)
  end.

currentSpanCtx(Tracer) ->
  otel_tracer:current_span_ctx(Tracer).
