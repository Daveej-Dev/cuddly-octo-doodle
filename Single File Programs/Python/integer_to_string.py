def integer_to_string(integer: int, base: str):
    number = integer
    baseList = list(base)
    stringDigit = ''
    result = ''   
    divisor = len(baseList)   
    while(number > 0):
        remainder = (int)(number % divisor)
        stringDigit = baseList[remainder]
        result = stringDigit + result
        number = (int)(number / divisor)  
    return result
