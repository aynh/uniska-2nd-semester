main :: IO ()
main = do
  putStr "input nilai harian: "
  nilaiHarian <- readLn
  putStr "input nilai tugas: "
  nilaiTugas <- readLn
  putStr "input nilai UTS: "
  nilaiUts <- readLn
  putStr "input nilai UAS: "
  nilaiUas <- readLn

  let nilaiAkhir = ((nilaiHarian / 10) + (nilaiTugas * 2 / 10) + (nilaiUts * 3 / 10) + (nilaiUas * 4 / 10))
   in putStrLn ("nilai akhir = " ++ show nilaiAkhir)
