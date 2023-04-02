main :: IO ()
main = do
  let panjang = 6
      lebar = 3
      keliling = 2 * (panjang + lebar)
   in putStrLn ("keliling = " ++ show keliling)
