import Data.Maybe

type RegExp a = [a] -> (Maybe [a], [a])

re_x :: RegExp Char
re_x ('x':t) = (Just "x", t)
re_x s = (Nothing, s)
