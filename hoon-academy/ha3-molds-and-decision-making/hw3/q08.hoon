:: Q8.  Zookeeper V

:: We want the app to output a tag or description for each animal. 

:: Define a type union animal,
:: declare an instance a of that type,
:: then using the ?- (wuthep) rune,
:: compose a switch statement which takes a and returns some text depending on which animal it is.
:: Make sure to cover every case, or you'll get a mint-lost.

:: Your code should look like this:

:: =/  animal  ______
:: =/ a=animal  ____
:: ?-  a
:: _____
:: _____
:: _____
:: _____
:: _____
:: ==

:: Once your code works, you can try changing the value of a and see that different outputs come out corresponding to its value/type.
:: Submit the full code and not just the parts in the blanks.

:: Answer
=/  animal
  ?(%fly %spider %bird %cat %dog)
=/  a=animal
  %fly
?-  a
  %fly     'gets swallowed'
  %spider  'catches flies'
  %bird    'catches spiders'
  %cat     'catches birds'
  %dog     'catches cats'
==
