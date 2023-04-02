main :: IO ()
main = do
  putStrLn "Program Menentukan Ganjil atau Genap"
  putStrLn "************************************"

  putStr "Masukkan bilangan: "
  x <- readLn

  putStrLn (check x)
  where
    check x = show x ++ " " ++ (if x `mod` 2 == 1 then "adalah bilangan ganjil" else "adalah bilangan genap")
