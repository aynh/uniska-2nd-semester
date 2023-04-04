print('Program toko buah "SEGAR MANIS"')
print()
print("Pilih buah yang ingin dibeli")
print("=====> 1. Kiwi")
print("       2. Mangga")
print("       3. Alpukat")
print("       4. Apel")
pilih = int(input("Pilih: "))

jumlah = int(input("Berapa kilogram yang ingin dibeli? : "))

potongan = 0
if jumlah > 5:
    match pilih:
        case 1:
            potongan = 5
        case 2:
            potongan = 2.5
        case 3:
            potongan = 7
        case 4:
            potongan = 10

print()
if potongan > 0:
    print("Dapat potongan sebesar", potongan, "%")

match pilih:
    case 1 | 2 if jumlah > 20:
        print("Dapat korting lagi sebesar 7%")
    case 3 if jumlah > 10:
        print("Dapat hadiah payung")
    case 4 if jumlah > 15:
        print("Dapat hadiah tas")
