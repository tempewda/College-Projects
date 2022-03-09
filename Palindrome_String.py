
# function to check if a String is Palindrome or not
def isPalindrome(string):
    reverse = string[::-1]
    if string == reverse:
        return True
    else:
        return False
 
# Driver code
string = input("Enter a String: ")
if isPalindrome(string):
    print(f"{string} is a Palindrome String") 
else:
    print(f"{string} is not a Palindrome String") 