module OtelSpan ( addEvent
                ) where

import Prelude
import Erl.Data.Tuple (Tuple2)
import Effect (Effect)
import OpenTelemetry (Tracer, SpanCtx)
import Foreign (Foreign)
import Erl.Data.List (List)

foreign import addEvent :: Tracer -> SpanCtx -> String -> List (Tuple2 String Foreign) -> Effect Unit
