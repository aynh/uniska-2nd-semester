hasil = 0

while True:
    print()
    print("Program Perhitungan Menggunakan Perulangaan")
    print("+++++++++++++++++++++++++++++++++++++++++++")
    print()

    bil1 = int(input("Ketik Bilangan Pertama = "))
    bil2 = int(input("Ketik Bilangan Kedua = "))

    if bil1 >= bil2:
        bil1 = bil1 - bil2
        hasil = hasil + 1
        print("Hasil perhitungan =", hasil)
        print()

    ulang = input("Mau ulang Program Tekan [Y] / Keluar [T] =")

    if ulang == "T":
        break
