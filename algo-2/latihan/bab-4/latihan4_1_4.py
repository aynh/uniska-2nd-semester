a = int(input("input a: "))
b = int(input("input b: "))

print()
print("=============> 1. penjumlahan")
print("               2. pengurangan")
print("               3. perkalian")
print("               4. pembagian")
operasi = int(input("pilih operasi: "))

print()
match operasi:
    case 1:
        print("hasil penjumlahan", a, "dan", b, "adalah", a + b)
    case 2:
        print("hasil pengurangan", a, "dan", b, "adalah", a - b)
    case 3:
        print("hasil perkalian", a, "dan", b, "adalah", a * b)
    case 4:
        print("hasil pembagian", a, "dan", b, "adalah", a / b)
    case _:
        print("operasi tidak dikenali")
