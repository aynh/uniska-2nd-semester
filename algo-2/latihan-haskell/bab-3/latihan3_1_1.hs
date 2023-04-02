main :: IO ()
main = do
  putStrLn "Program Menentukan Positif atau Negatif"
  putStrLn "************************************"

  putStr "Masukkan bilangan: "
  x <- readLn

  putStrLn (check x)
  where
    check x = show x ++ " " ++ (if x > 0 then "adalah bilangan positif" else "adalah bilangan negatif")
