:: Q3. Mammal Tree III

:: Start with your code from Q1.

:: Compose an expression that uses => (tisgar) to set the previous tree as your subject,
:: uses =. (tisdot) to change the 'snake' text into a @t text for a mammal,
:: and uses  . (dot) to return the modified subject.
:: Use only tall form.

:: If successful, the Dojo output should look like this:
:: ['dog' 'elephant' 'cat' 'mouse']

:: Hint: Since there are no faces attached to the entries of this tree,
:: you will need to use addressing or lark to grab the location of 'snake'.
:: Lark might be easier -- what are the directions to 'snake', going left and right?

:: Hint: =. takes 3 children and => takes 2.
:: Hint: for @t, you need to use single quotes like 'elephant'

:: Previous code
=>  ['dog' 'snake' 'cat' 'mouse']  .

:: Answer
=>  ['dog' 'snake' 'cat' 'mouse']
=.  +<  'elephant'
.