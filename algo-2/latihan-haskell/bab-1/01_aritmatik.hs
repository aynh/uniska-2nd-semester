main :: IO ()
main = do
  putStr "input a: "
  a <- readLn
  putStr "input b: "
  b <- readLn

  let xcalc = calc a b
   in do
        xcalc "+" (a + b)
        xcalc "-" (a - b)
        xcalc "*" (a * b)
        xcalc "/" (a / b)
  where
    calc left right operator result = putStrLn (show left ++ " " ++ operator ++ " " ++ show right ++ " = " ++ show result)
