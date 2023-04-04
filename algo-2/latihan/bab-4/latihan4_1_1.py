print("Program memeriksa hari dalam bulan maret 2012")
print("*********************************************")

tanggal = int(input("Masukkan tanggal: "))

match tanggal:
    case 5 | 12 | 19 | 26:
        print("Hari senin")
    case 6 | 13 | 20 | 27:
        print("Hari selasa")
    case 7 | 14 | 21 | 28:
        print("Hari rabu")
    case 1 | 8 | 15 | 22 | 29:
        print("Hari kamis")
    case 2 | 9 | 16 | 23 | 20:
        print("Hari jumat")
    case 3 | 10 | 17 | 24 | 31:
        print("Hari sabtu")
    case 4 | 11 | 18 | 25:
        print("Hari minggu")
    case _:
        print("Tidak ada tanggal tersebut")
