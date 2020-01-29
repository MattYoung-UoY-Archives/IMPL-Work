module Calculator where

import ParIntExpV
import EvalIntExp
import ErrM

handleErr :: Err a -> a
handleErr (Ok t) = t
handleErr (Bad s) = error s

calc :: String -> Integer
calc = eval . handleErr . pIntExp . myLexer
