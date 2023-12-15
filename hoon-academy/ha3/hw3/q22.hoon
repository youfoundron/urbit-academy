:: Q22. Branching V

:: Pin the face x to any number, then write an expression corresponding to this boxcar function:

:: Return 1 when 3 < x =< 5, and 0 otherwise.

:: You can use any syntax you like.

:: Once your code works, try changing the value of x and seeing the output change. Verify that it returns:
:: x=3 --> 0
:: x=4 --> 1
:: x=5 --> 1
:: x=6 --> 0

:: Hint: One way to solve it is to start with your code from Q20 and add a nested ?:
:: Hint: You can also solve it using the ?& AND operator, or the ?| OR operator.
:: Hint:
:: (gth x y) --> x is greater than y
:: (gte x y) --> x is greater than or equal to y
:: (lth x y) --> x is less than y
:: (lte x y) --> x is less than or equal to y

:: Answer
=/  x  4
?:  ?&
      (gth x 3)
      (lte x 5)
    ==
  1
0