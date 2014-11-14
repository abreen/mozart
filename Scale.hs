module Scale where

import Note

data Scale = S [Integer] deriving Show

fromList :: [Integer]-> Scale
fromList = S


-- scale type variables
major = fromList $ [2, 2, 1, 2, 2, 2, 1]
minor = fromList $ [1, 3, 1, 2, 2, 2, 1]

knownScales = [major, minor]
