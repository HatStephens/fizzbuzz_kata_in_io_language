assertEquals := method(actual, expected, if(actual==expected, "PASS" println, "FAIL" println))
assertNotEquals := method(actual, expected, if(actual==expected, "FAIL" println, "PASS" println))

Number := Object clone
Number divisibleByThree := method(number, number%3)
Number divisibleByFive := method(number, number%5)


"It should know a number is divisible by 3" println
assertEquals (Number divisibleByThree(3), 0)

"It should know a number is not divisible by 3" println
assertNotEquals (Number divisibleByThree(4), 0)

"It should know a number is divisible by 5" println
assertEquals (Number divisibleByFive(5), 0)

"It should know a number is not divisible by 5" println
assertNotEquals (Number divisibleByFive(6), 0)







