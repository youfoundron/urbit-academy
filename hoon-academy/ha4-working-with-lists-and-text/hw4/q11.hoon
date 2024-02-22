:: Q11. List Library III

:: Start with your answer from last question.

:: Use your answer from last question,
:: and the list library gate roll to compose an expression that adds up all the even numbers from 2 to 100.

:: Fill out the code below:

:: =/  mul2  |=(a=@ud (mul a 2))
:: ____________________________

:: If it works, you should see an output of 2.550

:: Hint: the first argument to roll is the list, and the second is the gate.
:: Hint: the gate you should pass as an argument to roll is add.

:: Docs for roll -- https://docs.urbit.org/language/hoon/reference/stdlib/2b#roll

:: Previous code
=/  mul2
  |=(a=@ud (mul a 2))
(turn (gulf 1 50) mul2)

:: Answer
=/  mul2
  |=(a=@ud (mul a 2))
(roll (turn (gulf 1 50) mul2) add)
