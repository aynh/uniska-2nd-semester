print("Program Membalik Kata")
print("*********************")

kata = input("Kata yang akan dibalik: ")

kata_terbalik = ""
for c in kata:
    kata_terbalik = c + kata_terbalik

print("Kata terbalik =", kata_terbalik)
