print("Daftar Harga")
print(" > Bensin = Rp. 4500/L")
print(" > Solar = Rp. 5000/L")
print(" > Pertamax = Rp. 7500/L")
pilih = input("=> Pilih (B)ensin, (S)olar, (P)ertamax: ")

match pilih.lower():
    case "b" | "bensin":
        harga = 4500
        barang = "Bensin"
    case "s" | "solar":
        harga = 5000
        barang = "Solar"
    case "p" | "pertamax":
        harga = 7500
        barang = "Pertamax"
    case _:
        print("Pilihan tidak dikenali")
        exit(1)

jumlah_liter = int(input("=> Jumlah liter yang ingin dibeli: "))

print()
print("Harga", jumlah_liter, "liter", barang, "=", harga * jumlah_liter)
