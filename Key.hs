module Key where

import Note
import Scale

type Key = [Note]

-- given a root note and a scale, produce a list of notes that
-- constitute all the valid notes of that key
key :: Note -> Scale -> Key
key root (S []) = []
key root (S (halfSteps:steps)) = root : key (up root halfSteps) (S steps)

