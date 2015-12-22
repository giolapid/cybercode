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
  for x in range(1,n,2):
    print x

#asks for name and while loop makes sanitizes to make sure
#name is not a number of a symbol
var = raw_input("Hello, what is your name? ")
while var.isalpha() == False:
  var = raw_input("Please use letters for your name ")

#uses the function to sanitize the input numbers 
num = raw_input("Hello "+ var+", please choose a number between 5 to 100: ")
while sanitize(check(num)) == False:
  num = raw_input("Please choose a number between 5 to 100: ")

#run the counting loop and terminate app
print("Starting my count to " + num + "...")
count(check(num))
