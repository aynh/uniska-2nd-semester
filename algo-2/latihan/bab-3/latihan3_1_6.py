gaji_pokok = int(input("gaji pokok: "))
masa_kerja = int(input("masa kerja: "))
pegawai_tetap = input("pegawai tetap? [y/n]: ") == "y"
sudah_berkeluarga = input("sudah berkeluarga? [y/n]: ") == "y"

gaji_bonus = 0
if masa_kerja > 5:
    gaji_bonus = gaji_pokok * 0.15

uang_transport = 0
if pegawai_tetap:
    uang_transport = 50_000

tunjangan = 0
if sudah_berkeluarga:
    tunjangan = gaji_pokok * 0.10

gaji_bersih = gaji_pokok + gaji_bonus + tunjangan + uang_transport

print("gaji bersih =", gaji_bersih)
