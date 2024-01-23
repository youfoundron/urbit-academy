:: Q5. Grocery Set II

:: You need to add something to the shopping.

:: Start with your code from last question. 

:: Use =/ (tisfas) to pin the set to a face like groceries,
:: then use the put arm of the in set library door to create a new set with a grocery item added.

:: Hint:
:: ~(put in groceries) creates a gate.
:: That gate takes a set element and returns a new set with the element added.


:: Answer
=/  groceries
  ^-  (set tape)
  (sy ["bread" "oj" "milk" "eggs" ~])
`(set tape)`(~(put in groceries) "bacon")
