def string_to_integer(number: str, base: str):
    baseSize = len(base)
    digitSize = len(base[0])
    power = total = partition = 0
    digitList = []
    while partition < len(number):
        digitList.append(number[partition:(partition+digitSize)])
        partition = partition + digitSize
    digitList.reverse()
    for digit in digitList:
        total = total + base.index(digit) * (baseSize ** power)
        power = power + 1
    return total
