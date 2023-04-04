print("Program Menghitung Luas")
print("***********************")
print("Pilih Menu")
print("=====> 1. Luas Lingkaran")
print("       2. Luas Persegi")
print("       3. Luas Segitiga")

pilihan = int(input("Pilih: "))

print()
match pilihan:
    case 1:
        print("Program Lingkaran")
        print("*****************")

        radius = int(input("Masukkan jari-jari: "))

        luas = 3.14 * radius * radius

        print("Luas lingkaran =", luas)
    case 2:
        print("Program Persegi Panjang")
        print("***********************")

        panjang = int(input("Masukkan panjang: "))
        lebar = int(input("Masukkan lebar: "))

        luas = panjang * lebar

        print("Luas persegi panjang =", luas)
    case 3:
        print("Program Segitiga")
        print("****************")

        alas = int(input("Masukkan alas: "))
        tinggi = int(input("Masukkan tinggi: "))

        luas = 0.5 * alas * tinggi

        print("Luas Segitiga =", luas)
    case _:
        print("Pilihan menu tidak ada")
