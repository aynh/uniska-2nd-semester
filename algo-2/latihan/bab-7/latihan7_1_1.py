def Operasi_hitung(A, B, C):
    C = A + B
    print()
    print("Hasil penjumlahan adalah : ", C)
    C = A * B
    print("Hasil perkalian adalah : ", C)
    C = A - B
    print("Hasil pengurangan adalah : ", C)


Z = 0
print("Program Hitung Menggunakan Procedure")
print("************************************")
print()
X = int(input("Input nilai X :"))
Y = int(input("Input nilai Y :"))

Operasi_hitung(X, Y, Z)
