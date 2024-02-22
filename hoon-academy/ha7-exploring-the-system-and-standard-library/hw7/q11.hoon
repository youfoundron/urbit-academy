:: Q11. Zookeeper Redux IV

:: After the last incident, you fired your staff and hired some local high school students to replace them.
:: They're in training and need to learn the animals' food requirements.

:: Start with your code from Q8.  Make your map as before and use =/ (tisfas) to give it a name like feedings.

:: Use the get arm of the by door to retrieve the feeding number for some animal.
:: This will return a unit, so unwrap the value from the unit with need, so that the final output of your code is just the number.

:: Hint: ~(get by feedings) creates a gate, which takes a key and returns the value in a unit if the key exists, otherwise it returns ~

:: Teach them the buddy system when feeding the %tiger


:: Answer
=/  animal
  ?(%bat %cat %rat)
=/  feedings
  `(map animal @ud)`(my ~[[%bat 1] [%cat 2] [%rat 3]])
%-  need
%-  ~(get by feedings)
%rat