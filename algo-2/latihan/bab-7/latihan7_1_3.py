def A_Pangkat_N_Positif(A, N):
    hasil = A**N
    return hasil


def Pangkat_Positif(A, N):
    hasil = A_Pangkat_N_Positif(A, N)
    return hasil


def Pangkat_Negatif(A, N):
    return A_Pangkat_N_Positif(A, N)


def masukan_Data():
    A = float(input("Masukan Nilai A : "))
    N = float(input("Masukan Nilai N : "))

    if N < 0:
        print("A pangkat N (negatif) = ", Pangkat_Negatif(A, N))
    else:
        print("A pangkat N = ", Pangkat_Positif(A, N))


print("Menghitung A pangkat N dengan A riil & N integer")
print("A dan N boleh bilangan negatif")
print(" ++++++++++++++++++++++++++++ ")
print()
masukan_Data()
