main :: IO ()
main = do
  putStrLn "Program Penampil Data Diri"
  putStrLn "**************************"

  putStr "Masukkan Nama: "
  nama <- readLn
  putStr "Masukkan Alamat: "
  alamat <- readLn
  putStr "Masukkan Hobi: "
  hobi <- readLn

  putStrLn ("Halo " ++ nama ++ " !!!, kamu tinggal di " ++ alamat ++ " dan hobi-mu adalah " ++ hobi)
