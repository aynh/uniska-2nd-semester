print("Program Jual Discount")
print("*********************")

print()
beli = int(input("Total pembelian: Rp. "))

match beli:
    case beli if 0 < beli <= 1000:
        discount = 100
    case beli if 1000 < beli <= 10000:
        discount = 500
    case beli if 10000 < beli <= 30000:
        discount = 2000
    case _:
        print("Persediaan tidak mencukupi")
        exit(1)

print()
print("Jumlah pembelian = Rp.", beli)
print("Discount = Rp.", discount)
print()
print("Jumlah yang dibayar = Rp.", beli - discount)
