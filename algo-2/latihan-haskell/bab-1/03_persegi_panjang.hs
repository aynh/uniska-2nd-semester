main :: IO ()
main = do
  putStr "input panjang: "
  panjang <- readLn

  putStr "input lebar: "
  lebar <- readLn

  let luas = panjang * lebar
      keliling = 2 * (panjang + lebar)
   in do
        putStrLn ("luas = " ++ show luas)
        putStrLn ("keliling = " ++ show keliling)
