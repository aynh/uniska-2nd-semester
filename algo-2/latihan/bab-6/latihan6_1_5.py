import random

print("PROGRAM ANGKA ACAK")
print("******************")
print()

b = "N"

while b == "N":
    Angka_Acak = random.randrange(1000)
    print("Angka sekarang :", Angka_Acak)
    print()
    print("Tekan Sembarang Tombol untuk mulai mengacak")
    print("Tekan Y untuk berhenti")
    print()

    x = input()

    if x == "Y":
        break

print("Pengacakan Berhenti")
