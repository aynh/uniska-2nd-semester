def tambah(a, b):
    tambah = a + b
    return tambah


def kali(a, b):
    kali = a * b
    return kali


while True:
    print()
    print("Program Perhitungan Menggunakan Function")
    print("++++++++++++++++++++++++++++++++++++++++")
    print()
    bil1 = int(input("Ketik Bilangan Pertama = "))
    bil2 = int(input("Ketik Bilangan Kedua = "))

    print(bil1, "+", bil2, " = ", tambah(bil1, bil2))
    print(bil1, "*", bil2, " = ", kali(bil1, bil2))
    print()
    ulang = input("Mau ulang Program Tekan [Y] / Keluar [T] =")

    if ulang == "T":
        break
