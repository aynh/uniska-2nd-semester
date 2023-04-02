main :: IO ()
main = do
  putStrLn "Program Menghitung Luas"
  putStrLn "***********************"
  putStrLn "Pilih Menu"
  putStrLn "=====> 1. Luas Lingkaran"
  putStrLn "       2. Luas Persegi"
  putStrLn "       3. Luas Segitiga"

  putStr "Pilih: "
  menu <- readLn

  putStr "\n"

  case menu of
    1 -> menuLuasLingkaran
    2 -> menuLuasPersegiPanjang
    3 -> menuLuasSegitiga
    _ -> putStrLn "Pilihan menu tidak ada"

menuLuasLingkaran :: IO ()
menuLuasLingkaran = do
  putStrLn "Program Lingkaran"
  putStrLn "*****************"

  putStr "Masukkan jari-jari: "
  radius <- readLn

  let luas = 3.14 * radius * radius
   in putStrLn ("Luas Lingkaran = " ++ show luas)

menuLuasPersegiPanjang :: IO ()
menuLuasPersegiPanjang = do
  putStrLn "Program Persegi Panjang"
  putStrLn "***********************"

  putStr "Masukkan panjang: "
  panjang <- readLn
  putStr "Masukkan lebar: "
  lebar <- readLn

  let luas = panjang * lebar
   in putStrLn ("Luas Persegi Panjang = " ++ show luas)

menuLuasSegitiga :: IO ()
menuLuasSegitiga = do
  putStrLn "Program Segitiga"
  putStrLn "****************"

  putStr "Masukkan alas: "
  alas <- readLn
  putStr "Masukkan tinggi: "
  tinggi <- readLn

  let luas = 0.5 * alas * tinggi
   in putStrLn ("Luas Segitiga = " ++ show luas)
