assertEquals := method(actual, expected, if(actual==expected, "PASS" println, "FAIL" println))
assertNotEquals := method(actual, expected, if(actual==expected, "FAIL" println, "PASS" println))

FizzBuzz := Object clone
FizzBuzz divisibleByThree := method(number, number%3)
FizzBuzz divisibleByFive := method(number, number%5)
FizzBuzz divisibleByFifteen := method(number, number%15)
FizzBuzz game := method(number, if(divisibleByThree(number)==0, "FIZZ" println, if(divisibleByFive(number)==0, "BUZZ" println, number)))


"It should know a number is divisible by 3" println
assertEquals (FizzBuzz divisibleByThree(3), 0)

"It should know a number is not divisible by 3" println
assertNotEquals (FizzBuzz divisibleByThree(4), 0)

"It should know a number is divisible by 5" println
assertEquals (FizzBuzz divisibleByFive(5), 0)

"It should know a number is not divisible by 5" println
assertNotEquals (FizzBuzz divisibleByFive(6), 0)

"It should know a number is divisible by 3 and 5" println
assertEquals (FizzBuzz divisibleByFifteen(15), 0)

"It should know a number is not divisible by 3 and 5" println
assertNotEquals (FizzBuzz divisibleByFifteen(16), 0)

"It should print the number if it is not divisible by 3 or 5" println
assertEquals (FizzBuzz game(1), 1)

"It should print FIZZ if it is divisible by 3" println
assertEquals (FizzBuzz game(3), "FIZZ")

"It should print BUZZ if it is divisible by 5" println
assertEquals (FizzBuzz game(5), "BUZZ")





