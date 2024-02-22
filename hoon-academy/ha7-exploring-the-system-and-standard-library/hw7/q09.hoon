:: Q9. Zookeeper Redux II

:: As a show of goodwill, the Republic of Bajistan has donated a specimen of their national animal, the girelephant, to your zoo.
:: The girelephant only needs to be fed once per week, on a mix of grass and small children.

:: Start with your code from Q8.
:: Add the %girelephant to your animal type union.
:: Make your map as before and use =/ (tisfas) to give it a name like feedings.

:: Use the put arm of the by map library door to create a new map with [%girelephant 1] added to it.

:: Hint: ~(put by feedings) creates a gate which takes a pair and returns the feedings map with the new pair added.

:: Caution: put requires that the sample has been cast to a map.


:: Answer
=/  animal
  ?(%bat %cat %rat %girelephant)
=/  feedings
  `(map animal @ud)`(my ~[[%bat 1] [%cat 2] [%rat 3]])
%-  ~(put by feedings)
[%girelephant 1]
