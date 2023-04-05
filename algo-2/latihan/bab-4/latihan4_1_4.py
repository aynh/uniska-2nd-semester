a = int(input("input a: "))
b = int(input("input b: "))

print()
print("=============> 1. Penjumlahan")
print("               2. Pengurangan")
print("               3. Perkalian")
print("               4. Pembagian")
operasi = int(input("Pilih operasi: "))

print()
match operasi:
    case 1:
        print("Hasil penjumlahan", a, "dan", b, "adalah", a + b)
    case 2:
        print("Hasil pengurangan", a, "dan", b, "adalah", a - b)
    case 3:
        print("Hasil perkalian", a, "dan", b, "adalah", a * b)
    case 4:
        print("Hasil pembagian", a, "dan", b, "adalah", a / b)
    case _:
        print("Operasi tidak dikenali")
