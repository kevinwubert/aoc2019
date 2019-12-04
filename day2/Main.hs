isComma c = if c == ',' then True else False

wordsWhen     :: (Char -> Bool) -> String -> [String]
wordsWhen p s =  case dropWhile p s of
                      "" -> []
                      s' -> w : wordsWhen p s''
                            where (w, s'') = break p s'

intcode :: Int -> [Int] -> (Int, [Int])
intcode loc arr = case cmd !! 0 of
                    1 -> intcode (4 + loc) ret
                        where
                            index = cmd !! 3
                            val = arr !! (cmd !! 1) + arr !! (cmd !! 2)
                            ret = replaceN index val arr
                    2 -> intcode (4 + loc) ret
                        where
                            index = cmd !! 3
                            val = arr !! (cmd !! 1) * arr !! (cmd !! 2)
                            ret = replaceN index val arr
                    99 -> (-1, arr)
                    _  -> (-2, arr) 
                    where 
                        cmd = take 4 (drop loc arr)

replaceN :: Int -> Int -> [Int] -> [Int]                    
replaceN n val arr = take n arr ++ [val] ++ drop (n + 1) arr

run x y xs = snd(intcode 0 blah) !! 0
                where
                    blah = replaceN 2 y (replaceN 1 x xs)
                    
main = do
    input <- readFile "input"
    let xs = map (read::String->Int) (wordsWhen isComma input)
    let bar = [x*100+y | x <- [1..100], y <- [1..100], run x y xs == 19690720]
    print bar