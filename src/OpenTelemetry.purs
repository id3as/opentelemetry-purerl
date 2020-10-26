module OpenTelemetry ( registerApplicationTracer
                     , registerApplicationMeter
                     , registerMeter
                     , registerTracer
                     , getMeter
                     , getTracer
                     , Meter
                     , Tracer
                     , SpanCtx
  ) where

import Prelude
import Erl.Atom (Atom)
import Effect (Effect)

foreign import data Meter :: Type
foreign import data Tracer :: Type
foreign import data SpanCtx :: Type

foreign import registerApplicationTracer :: Atom -> Effect Boolean
foreign import registerApplicationMeter :: Atom -> Effect Boolean
foreign import registerMeter :: Atom -> String -> Effect Boolean
foreign import registerTracer :: Atom -> String -> Effect Boolean

foreign import getMeter :: Atom -> Effect Meter
foreign import getTracer :: Atom -> Effect Tracer
