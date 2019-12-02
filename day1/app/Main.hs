module Main where

import Lib

main = do 
    src <- readFile "input"
    let masses = map (read::String->Int) (lines src)
    let fuels = map (f) masses
    let req = sum fuels
    print req
