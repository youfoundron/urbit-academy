:: Q8.  Zookeeper Redux I

:: You'd like to keep track of the feeding amounts for the animals in your zoo in an orderly way.

:: Recall that in Q4/Q5 of %hw3, you defined a type union animal over @tas terms like:

:: =/  animal  ?(%lion %tiger %bear %rhino %capybara) ...

:: Create a map with key type animal and value type @ud to keep track of the food requirements for each animal. 

:: Do this by calling the library gate my on a null-terminated tuple of at least 3 animal-number pairs,
:: then casting the result to a (map animal @ud).

:: Your code should look like this:
:: =/  animal  ?(%lion %tiger %bear %rhino %capybara)
:: `(map animal @ud)`________________________________


:: Answer
=/  animal
  ?(%bat %cat %rat)
`(map animal @ud)`(my ~[[%bat 1] [%cat 2] [%rat 3]])
