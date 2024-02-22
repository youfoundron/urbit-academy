:: Q6. Grocery Set III

:: You found something in the back of the fridge, and you're brave enough to eat it -- no need to buy.

:: Start with your code from Q4.

:: Use =/ (tisfas) to pin the set to a face like groceries,
:: then use the del arm of the in set library door to create a new set with a grocery item deleted.

:: Hint:
:: ~(del in groceries) creates a gate.
:: That gate takes a set element and returns a new set with the element deleted.


:: Answer
=/  groceries
  ^-  (set tape)
  (sy ["bread" "oj" "milk" "eggs" ~])
`(set tape)`(~(del in groceries) "eggs")
