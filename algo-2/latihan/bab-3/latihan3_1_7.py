a = int(input("input a: "))
b = int(input("input b: "))

print()
print("=============> 1. penjumlahan")
print("               2. pengurangan")
print("               3. perkalian")
print("               4. pembagian")
operasi = int(input("pilih operasi: "))

print()
if operasi == 1:
    print("hasil penjumlahan", a, "dan", b, "adalah", a + b)
elif operasi == 2:
    print("hasil pengurangan", a, "dan", b, "adalah", a - b)
elif operasi == 3:
    print("hasil perkalian", a, "dan", b, "adalah", a * b)
elif operasi == 4:
    print("hasil pembagian", a, "dan", b, "adalah", a / b)
else:
    print("operasi tidak dikenali")
