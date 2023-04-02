main :: IO ()
main = do
  putStrLn "Program Menghitung Luas Lingkaran"
  putStrLn "*********************************"

  putStr "Masukkan jari-jari lingkaran: "
  radius <- readLn

  let phi = 3.14
      luas = phi * radius * radius
      keliling = 2 * phi * radius
   in do
        putStrLn ("Luas Lingkaran adalah = " ++ show luas)
        putStrLn ("Keliling lingkaran adalah = " ++ show keliling)
