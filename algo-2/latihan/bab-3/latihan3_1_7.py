a = int(input("input a: "))
b = int(input("input b: "))

print()
print("=============> 1. Penjumlahan")
print("               2. Pengurangan")
print("               3. Perkalian")
print("               4. Pembagian")
operasi = int(input("pilih operasi: "))

print()
if operasi == 1:
    print("Hasil penjumlahan", a, "dan", b, "adalah", a + b)
elif operasi == 2:
    print("Hasil pengurangan", a, "dan", b, "adalah", a - b)
elif operasi == 3:
    print("Hasil perkalian", a, "dan", b, "adalah", a * b)
elif operasi == 4:
    print("Hasil pembagian", a, "dan", b, "adalah", a / b)
else:
    print("Operasi tidak dikenali")
