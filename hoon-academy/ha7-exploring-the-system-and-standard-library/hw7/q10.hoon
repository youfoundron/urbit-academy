:: Q10. Zookeeper Redux III

:: A small child climbed over the railing and fell into the enclosure of one of your animals.
:: Out of an abundance of caution, your zoo staff shot the animal to retrieve the child.
:: This sparked a national outrage.

:: Start with your code from Q8.
:: Make your map as before and use =/ (tisfas) to give it a name like feedings.

:: Use the del arm of the by map library door to create a new map with the animal deleted from it.

:: Hint: ~(del by feedings) creates a gate which takes a key and returns the feedings map with the key and value deleted.

:: %capybara did nothing wrong...


:: Answer
=/  animal
  ?(%bat %cat %rat)
=/  feedings
  `(map animal @ud)`(my ~[[%bat 1] [%cat 2] [%rat 3]])
%-  ~(del by feedings)
%bat
