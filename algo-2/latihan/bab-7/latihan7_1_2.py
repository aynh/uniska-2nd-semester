def Hitung_Panjang(nama):
    n = len(nama)
    print(n, "Karakter")


print()
print("Program Hitung Huruf Nama")
print("+++++++++++++++++++++++++")
print()
nama = input("Siapakah Nama Lengkap Anda :")
print("panjang nama adalah :", end="")
Hitung_Panjang(nama)
print("Catatan :")
print("Spasi dalam nama dianggap Satu Karakter")
