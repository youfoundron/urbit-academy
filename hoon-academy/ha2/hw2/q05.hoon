:: Q5. Mammal Tree V

:: Start with your code from Q3.

:: Compose an expression that uses => (tisgar) to set the original tree as the subject, uses =. (tisdot) to change the 'snake' text into a @t text for a mammal, and uses =+ (tislus) to add another mammal @t text to the head of your subject, and finally returns the subject with "." 

:: If successful, the Dojo output should look like this:
:: ['monkey' 'dog' 'elephant' 'cat' 'mouse']

:: Write it with any forms you like.

:: Hint: Either expand the third child of =. to add =+, or use =+ before using =.

:: Previous code
=>  ['dog' 'snake' 'cat' 'mouse']
=.  +<  'elephant'
.

:: Answer
=>  ['dog' 'snake' 'cat' 'mouse']
=.  +<  'elephant'
=+  'monkey'
.
