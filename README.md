# aoc2019
25 days of [Haskell](https://www.haskell.org/) with [Advent of Code 2019](https://adventofcode.com/2019)

## [Day 1](https://adventofcode.com/2019/day/1)
---
First [installing](https://docs.haskellstack.org/en/stable/README/) and running `brew install ghc cabal-install` and [learning](https://wiki.haskell.org/Learn_Haskell_in_10_minutes) to Haskell. Following along the installation worked and easily built a haskell project that was generated with `stack new day1` and executing it with `stack exec day1-exec`. The project structure for a Haskell project is interesting, though the relevant files seem to only be `app/Main.hs` and `src/Lib.hs`. Syntax wise its pretty different than imperitive languages. You're forced to run `map` instead of `for` loops, and I had trouble properly defining functions with proper parameters.

## [Day 2](https://adventofcode.com/2019/day/2)
---
Looking into more guidance on syntax and possibility with [this](http://learnyouahaskell.com/chapters). Instead of using `stack`, I'm only using `main.hs` and `ghc` to make the binary to make it so there's less magic behind the scenes. I think the program structure and syntax is making a little more sense as I piece together what is idiomatic, looks like I'm forced to depend on recursion a lot more than if I were to depend on loops. I could also be naming thing a lot better, but it's all for fun. Using list comprehensions in Haskell to dod part 2 for this was really cool.