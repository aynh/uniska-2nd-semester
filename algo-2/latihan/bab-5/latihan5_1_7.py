print("Program Menampilkan Bintang")
print("***************************")

print()
jumlah_bintang = int(input("Masukkan banyaknya bintang: "))

for i in range(jumlah_bintang):
    print(" ")
    for j in range(i):
        print(" ", end="")
    for k in range(jumlah_bintang):
        print("*", end="")
print()
