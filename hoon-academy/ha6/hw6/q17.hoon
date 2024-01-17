:: Q17.  ++decrement IV

:: Take your code from last question,
:: and instead of pinning n to a specific value with =/ or =+,
:: put the trap inside a gate that accepts any value for n. 

:: Make sure the gate enforces the output type is a @ud with ^- (kethep)

:: Take this gate and save it as decrement.hoon in /zod/base/gen (make sure you already ran |mount %base),
:: run |commit %base, then run the generator with
+decrement 5

:: Report the code below:


:: Answer
|=  n=@ud
^-  @ud
=/  counter
  0
|-
  ~&  counter
  ?:  =(n (add 1 counter))
    counter
  $(counter (add 1 counter))
