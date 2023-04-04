nilai_harian = int(input("input nilai harian: "))
nilai_tugas = int(input("input nilai tugas: "))
nilai_uts = int(input("input nilai UTS: "))
nilai_uas = int(input("input nilai UAS: "))

nilai_akhir = (
    (nilai_harian * 1 / 10)
    + (nilai_tugas * 2 / 10)
    + (nilai_uts * 3 / 10)
    + (nilai_uas * 4 / 10)
)

print("nilai akhir =", nilai_akhir)
