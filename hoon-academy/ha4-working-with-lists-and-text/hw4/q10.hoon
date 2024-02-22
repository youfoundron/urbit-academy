:: Q10. List Library II

:: Start with your answer from last question.

:: I have written a custom gate mul2 which takes a number and multiplies it by 2.
:: Use this gate and the list library gate turn,
:: along with your previous solution,
:: to write code that returns a list of every even number from 2 to 100.

:: Fill out the code below:

:: =/  mul2  |=(a=@ud (mul a 2))
:: ____________________________

:: Hint: the first argument to turn is the list, and the second argument is the gate.

:: Docs for turn -- https://docs.urbit.org/language/hoon/reference/stdlib/2b#turn

:: Previous code
(gulf 1 50)

:: Answer
=/  mul2
  |=(a=@ud (mul a 2))
(turn (gulf 1 50) mul2)
