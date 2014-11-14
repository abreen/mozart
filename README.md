mozart
======

A scratch space for playing with Western musical structures at the Haskell
interpreter. Try opening `Key.hs` and doing

    key c major

To see the simple underlying representation of notes, try

    map toInt $ key c minor

To see the underlying representation of scales, try showing a scale:

    major

Scales are just represented as a list of intervals specified in half steps.
