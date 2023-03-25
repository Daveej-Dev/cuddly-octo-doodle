def binary_to_decimal(binary: str):
    i = len(binary) - 1
    power = 0
    total = 0
    while i >= 0:
        if binary[i] == '1':
            total = total + 2**power
        power = power + 1
        i = i - 1
    return total


print(binary_to_decimal('11000'))