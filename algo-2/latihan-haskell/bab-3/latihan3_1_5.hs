main :: IO ()
main = do
  putStrLn "Program Menentukan Bilangan yang Terkecil"
  putStrLn "*****************************************"

  putStr "Masukkan bilangan ke-1: "
  a <- readLn :: IO Int
  putStr "Masukkan bilangan ke-2: "
  b <- readLn :: IO Int
  putStr "Masukkan bilangan ke-3: "
  c <- readLn :: IO Int

  putStr "\n"

  putStrLn (check a b c)
  where
    check a b c
      | a < b && a < c = "Bilangan ke-1 paling kecil"
      | b < a && b < c = "Bilangan ke-2 paling kecil"
      | c < a && c < b = "Bilangan ke-3 paling kecil"
      | otherwise = "Ada dua atau tiga masukkan memiliki nilai sama"
