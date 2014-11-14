module Note where

data Note = N Integer

instance Show Note where
    show (N i)
      | i == 0 = "C"
      | i == 1 = "C#/Db"
      | i == 2 = "D"
      | i == 3 = "D#/Eb"
      | i == 4 = "E"
      | i == 5 = "F"
      | i == 6 = "F#/Gb"
      | i == 7 = "G"
      | i == 8 = "G#/Ab"
      | i == 9 = "A"
      | i == 10 = "A#/Bb"
      | i == 11 = "B"
      | otherwise = error "note out of range"

instance Read Note where
    readsPrec _ str
      | str == "C"                 = [((N 0), "")]
      | str == "C#" || str == "Db" = [((N 1), "")]
      | str == "D"                 = [((N 2), "")]
      | str == "D#" || str == "Eb" = [((N 3), "")]
      | str == "E"                 = [((N 4), "")]
      | str == "F"                 = [((N 5), "")]
      | str == "F#" || str == "Gb" = [((N 6), "")]
      | str == "G"                 = [((N 7), "")]
      | str == "G#" || str == "Ab" = [((N 8), "")]
      | str == "A"                 = [((N 9), "")]
      | str == "A#" || str == "Bb" = [((N 10), "")]
      | str == "B"                 = [((N 11), "")]
      | otherwise = []

fromInt :: Integer -> Note
fromInt i = N (i `mod` 12)

toInt :: Note -> Integer
toInt (N i) = i

up :: Note -> Integer -> Note
up (N i) n = fromInt $ i + n

down :: Note -> Integer -> Note
down note n = up note (negate n)

upHalf = (flip up) 1
downHalf = (flip down) 1

upWhole = upHalf . upHalf
downWhole = downHalf . downHalf

diff :: Note -> Note -> Integer
diff (N a) (N b) = a - b

-- note variables
c = read "C" :: Note
cs = read "C#" :: Note
df = cs
d = read "D" :: Note
ds = read "D#" :: Note
ef = ds
e = read "E" :: Note
f = read "F" :: Note
fs = read "F#" :: Note
gf = fs
g = read "G" :: Note
gs = read "G#" :: Note
af = gs
a = read "A" :: Note
as = read "A#" :: Note
bf = as
b = read "B" :: Note
