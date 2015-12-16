#start of methods
#checks if the num input is a numer
def check(n):
  if n.isdigit():
    return int(n)
  else:
    print("INPUT is not a number!")

#sanitize function to check if number is between 5 and 100
def sanitize(n):
  if (n < 5) or (n > 100):
    return False
  else:
    return True

#counting method
def count(n):
  for x in range(0,n,3):
    print x

#end of methods

var = raw_input("Hello, what is your name? ")
if var.isalpha():
  num = raw_input("Please choose a number between 5 to 100: ")
  if sanitize(check(num)):
    count(check(num))
  else:
    print("Use a number between 5 and 100")
else:
  print("ERROR!Please use letter for your name")


