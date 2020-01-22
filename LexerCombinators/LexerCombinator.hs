import Data.Maybe

type RegExp a = [a] -> (Maybe [a], [a])

re_x :: RegExp Char
re_x ('x':t) = (Just "x", t)
re_x s = (Nothing, s)

re_ws :: RegExp Char
re_ws (' ':t) = (Just " ", dropWhile (== ' ') t)
re_ws s = (Nothing, s)

chop :: (Eq a, Show a) => RegExp a -> RegExp a -> [a] -> [[a]]
-- chop regexpWhitespace regexpTokens source -> listOfTokens
chop w r = rrw
	where
		rrw s   | s2 == [] = [] -- nothing left to process
			| isJust m = fromJust m : rrw t -- regexp found
			| otherwise = error ("\nlexing error : " ++ show (take 8 t ))
				where
					(_, s2 ) = w s -- swallow white space
					(m, t ) = r s2 -- grab next lexeme
