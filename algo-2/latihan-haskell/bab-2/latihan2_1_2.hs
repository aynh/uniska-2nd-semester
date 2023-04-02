main :: IO ()
main = do
  putStrLn "Program Menghitung"
  putStrLn "******************"

  putStr "Ketik Angka Pertama: "
  angka1 <- readLn
  putStr "Ketik Angka Kedua: "
  angka2 <- readLn

  let hasil = angka1 + angka2
   in putStrLn ("angka1 + angka2 = " ++ show hasil)
