:: Q14.  Logic Gates III

:: Pin the faces x and y to either %.y or %.n and then write the expression 
:: x AND y

:: Use tall form. 

:: Your code should look like this
:: =/  x  %.y
:: =/  y  %.n
:: ________

:: Hint: ?& takes an indefinite number of children so remember to close it with ==

:: Answer
=/  x  %.y
=/  y  %.n
?&  x  y  ==
