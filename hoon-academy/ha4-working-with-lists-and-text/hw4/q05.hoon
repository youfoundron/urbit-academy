:: Q5. List Basics V

:: I'd like to add another car to my list of cars.

:: Fill in the rest of this code to make it return a list with another car @t at the head.
:: Use the :- (colhep) and ^-  (kethep) runes.

:: =/  carlist  ^-  (list @t)  ['toyota' 'ford' 'chevy' ~]
:: ____________________________________________

:: Write it with tall form for :- (colhep)

:: Make sure to use ^- to cast the result to a list of @t,
:: otherwise the Hoon parser will think it's a cell of a value and list.

:: If successful, the output will look like:
:: <|bentley toyota ford chevy|>

:: Answer
=/  carlist
  ^-  (list @t)
  ['toyota' 'ford' 'chevy' ~]
^-  (list @t)
:-  'bentley'
carlist
