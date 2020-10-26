module OtelMeter ( newInstruments
                 , newInstrument
                 , defaultInstrumentConfig
                 , InstrumentConfig(..)
                 , InstrumentNumberKind(..)
                 ) where

import Prelude
import Erl.Atom (Atom, atom)
import OpenTelemetry (Meter)
import Effect (Effect)
import Erl.Data.List (List)
import Erl.Data.Tuple (Tuple3)


data InstrumentNumberKind = Integer | Number

type InstrumentConfig = { description :: String
                        , number_kind :: InstrumentNumberKind
                        , unit  :: Atom
                        , monotonic :: Boolean
                        , synchronous :: Boolean }


defaultInstrumentConfig :: InstrumentConfig 
defaultInstrumentConfig = { description : ""
                          , number_kind : Integer
                          , unit : (atom "one")
                          , monotonic : true
                          , synchronous : true
                          }

foreign import newInstrument :: Meter -> String -> Atom -> InstrumentConfig -> Effect Boolean
foreign import newInstruments :: Meter -> List (Tuple3 String Atom InstrumentConfig) -> Effect Boolean
