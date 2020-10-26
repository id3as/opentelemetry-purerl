module OtelTracer ( currentSpanCtx
  ) where

import Prelude
import OpenTelemetry (Tracer, SpanCtx)
import Effect (Effect)

foreign import startSpan :: Tracer -> String -> Effect SpanCtx -- TODO: Options if needed
foreign import endSpan :: Tracer -> SpanCtx -> Effect Unit
foreign import currentSpanCtx :: Tracer -> SpanCtx
