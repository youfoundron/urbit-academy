:: Q16.  ++decrement III

:: Take your code from last question and write it with |- (barhep) instead of |. (bardot).

:: Make sure it still returns the same output

:: Hint: |- creates a core with a single $ arm and immediately runs the $ arm.
:: There is now no need to call $ explicitly to run the code.


:: Answer
=/  n
  5
=/  counter
  0
|-
  ~&  counter
  ?:  =(n (add 1 counter))
    counter
  $(counter (add 1 counter))
