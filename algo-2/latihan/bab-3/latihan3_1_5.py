print("Program Menentukan Bilangan yang Terkecil")
print("*****************************************")

a = int(input("Masukkan bilangan ke-1: "))
b = int(input("Masukkan bilangan ke-2: "))
c = int(input("Masukkan bilangan ke-3: "))

print()
if a < b and a < c:
    print("Bilangan ke-1 paling kecil")
elif b < a and b < c:
    print("Bilangan ke-2 paling kecil")
elif c < a and c < b:
    print("Bilangan ke-3 paling kecil")
else:
    print("Ada dua atau tiga masukkan memiliki nilai sama")
