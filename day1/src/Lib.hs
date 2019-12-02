module Lib
    ( f
    ) where

f :: Int -> Int
f x = if ((div x 3) - 2) <= 0) 
        then 0 
        else ((div x 3) - 2) + f ((div x 3) - 2)
