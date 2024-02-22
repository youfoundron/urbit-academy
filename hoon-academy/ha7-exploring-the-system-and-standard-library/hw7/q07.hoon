:: Q7.  Grocery Set IV

:: There's something you really can't forget this week.

:: Start with your code from Q4.

:: Use =/ (tisfas) to pin the set to a face like groceries,
:: then use the has arm of the in set library door to check if something is in the set.

:: Hint:
:: ~(has in groceries) creates a gate.
:: That gate takes a set element and returns %.y or %.n depending if the element is in the sample set.


:: Answer
=/  groceries
  ^-  (set tape)
  (sy ["bread" "oj" "milk" "eggs" ~])
(~(has in groceries) "milk")
