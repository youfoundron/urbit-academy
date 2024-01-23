:: Q3. Become a Core Dev

:: This is an OPTIONAL challenge question

:: Anyone can modify the fundamental parts of their Urbit.

:: The standard library has a gate called dec, which takes an atom and decrements it.
:: However, there is no corresponding gate called inc, which takes an atom and increments it.
:: Let's add inc.

:: Somewhere in the section from line 20 - 181 of hoon.hoon, add a new arm called inc.

:: In that arm, implement a gate which takes as input a single @ atom,
:: uses ^- (kethep) to ensure the output is a @ atom, and returns the input + 1.

:: After saving hoon.hoon, run |commit %base.
:: This will take time because the whole system needs to be rebuilt.
:: After the process completes, you can test that inc has been added to the standard library by running in the Dojo:

(inc 1)

:: Report your code and any comments below.

:: You may want to delete inc and re-run |commit %base after,
:: since you might someday get confused that you have inc and other people don't.


:: Answer
::
++  inc
  ~/  %inc
  ::    unsigned increment by one.
  |=  a=@
  ^-  @
  +(a)
::