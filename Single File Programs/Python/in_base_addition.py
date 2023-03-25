def in_base_addition(number1: str, number2: str, base: str):
    baseSize = len(base)
    digitSize = len(base[0])
    num1List = []
    num2List = []
    sumList = []
    partition = 0
    resultString = ''
    while partition < len(number1):
        num1List.append(number1[partition:(partition+digitSize)])
        partition = partition + digitSize
    partition = 0
    while partition < len(number2):
        num2List.append(number2[partition:(partition+digitSize)])
        partition = partition + digitSize
    for i in range(0, len(num1List)):
        num1List[i] = base.index(num1List[i])
    for i in range(0, len(num2List)):
        num2List[i] = base.index(num2List[i])
    num1List.reverse()
    num2List.reverse()
    if len(num1List) < len(num2List):
        for i in range(0, len(num1List)):
            sumList.append(num1List[i] + num2List[i])
        for i in range(len(num1List), len(num2List)):
            sumList.append(num2List[i])
    else:
        for i in range(0, len(num2List)):
            sumList.append(num1List[i] + num2List[i])
        for i in range(len(num2List), len(num1List)):
            sumList.append(num1List[i])
    for i in range(0, len(sumList)-1):
        if sumList[i] >= baseSize:
            sumList[i+1] = sumList[i+1] + 1
            sumList[i] = sumList[i] % baseSize
    if sumList[len(sumList)-1] >= baseSize:
        sumList[len(sumList)-1] = sumList[len(sumList)-1] % baseSize
        sumList.append(1)
    sumList.reverse()
    for i in range(0, len(sumList)):
        resultString = resultString + base[sumList[i]]  
    return resultString
