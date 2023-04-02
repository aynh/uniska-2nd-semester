main :: IO ()
main = do
  putStr "input fahrenheit: "
  fahrenheit <- readLn

  let celcius = ((fahrenheit - 32) * 5 / 9)
   in putStrLn ("celcius = " ++ show celcius)
