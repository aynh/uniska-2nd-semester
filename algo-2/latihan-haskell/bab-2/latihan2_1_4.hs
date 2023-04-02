main :: IO ()
main = do
  putStrLn "Program Konversi Suhu"
  putStrLn "*********************"

  putStr "Masukkan besaran derajat suhu celcius: "
  celcius <- readLn

  let fahrenheit = (celcius * 1.8) + 32
   in putStrLn ("Hasil konversi ke fahrenheit = " ++ show fahrenheit)
