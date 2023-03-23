#This function is a python implementation of the Euclidean algorithm for computing the GCD of two numbers a and b
#This function operates under several constraints:
#   1. a and b must be integers
#   2. a and b must be positive
#   3. a must be greater than or equal to b
#If any of the above criteria are not meant, the function returns -1 to signify that invalid input was provided
def euclidean_GCD(a: int, b: int):
    if a < 0 or b < 0 or not (a >= b):
        return -1
    while b != 0:
        r = a % b
        a = b
        b = r
    return a
