:: Q9.  Zookeeper VI

:: Define a type union animal as before, declare an instance of that type, then using the ?+ (wutlus) rune, compose a switch statement which takes that instance and returns some text depending on which animal it is. 

:: Specify text for 3 of the types and let the others be covered by the default text (recall that ?+ allows a default option unlike ?-).

:: Your code should look like this:

:: =/  animal  ______
:: =/ a=animal  ____
:: ?+  a   _____
:: _____
:: _____
:: _____
:: ==

:: Once your code works, change the value of a and see that different outputs come out corresponding to its value.

:: Submit the full code and not just the parts in the blanks.

:: Answer
=/  animal
  ?(%fly %spider %bird %cat %dog)
=/  a=animal
  %fly
?+  a      'gets swallowed'
  %bird    'catches spiders'
  %cat     'catches birds'
  %dog     'catches cats'
==
