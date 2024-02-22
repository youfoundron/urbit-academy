:: Q23. A Mysterious Trap

:: This is an OPTIONAL challenge question.

:: If we have a |- (barhep) trap recursion in a gate,
:: there's one more trick we can use to shorten the code even further. 

:: These two gates give the same results:
|=  n=@ud
  |-
    ?:  =(n 0)
      n
    (add n $(n (sub n 1)))

|=  n=@ud
  ?:  =(n 0)
    n
  (add n $(n (sub n 1)))

:: In the second piece of code, the |- (barhep) is gone,
:: but the recursion still works.

:: Try both for yourself with:
=/  adder
|=  n=@ud
:: ...
(adder 5)

:: Why does it still work after removing the |- ?

:: Hint: 
:: $(n (sub n 1)) expands to

%=  $
n (sub n 1)
==

:: What does $ refer to in the first and second piece of code?


:: Answer

:: Putting logic inside the trap puts it inside the hidden $ arm of its parent core.
:: Because the face n has been pinned to the subject of the parent core it is already in the payload.
:: This means %= can find n it because it's already built data.
:: In both cases %= can find an n to change and so both snippets will work.