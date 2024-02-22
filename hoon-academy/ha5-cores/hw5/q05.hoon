:: Q5. Understanding the Payload II

:: I took the second piece of code from last question and modified it.
:: Now it errors out with find.add. Why is that?

=> ~ 
=> 
|% 
++  a  1  
++  b  2 
-- 
(add a b)


:: Hint: What's in the payload of the core now?


:: Answer
The first tisgar sets the current subject to the value of sig (~) which is zero.

Because the core is built in this subject, it sets sig as its payload.

            core
           /     \
        arms      ~
        / \
      a   b

No reference to the "and" gate is available at call-time.
