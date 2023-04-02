main :: IO ()
main = do
  putStrLn "Program Konversi Suhu"
  putStrLn "*********************"

  putStr "Masukkan besaran derajat suhu celcius: "
  celcius <- readLn

  let fahrenheit = (celcius * 1.8) + 32
      reamur = 0.8 * celcius
   in do
        putStrLn ("Hasil konversi ke fahrenheit = " ++ show fahrenheit)
        putStrLn ("Hasil konversi ke reamur = " ++ show reamur)
