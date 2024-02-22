:: Q20.  Factorial III

:: Remove the =/  n and put your trap in a gate that takes any value of n. Save it as factorial.hoon in /zod/base/gen (make sure you ran |mount %base already), run |commit %base on mars, and then run the generator with:

:: +factorial 4

:: Make sure your gate has a ^- to ensure the output is a @ud.

:: Report the code below:


:: Answer
|=  n=@ud
^-  @ud
|-
?:  =(n 1)
  n
(mul n $(n (dec n)))