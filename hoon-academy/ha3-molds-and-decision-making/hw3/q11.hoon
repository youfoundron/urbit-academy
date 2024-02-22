:: Q11.  Zookeeper VIII

:: You'd like your app to keep track of how much the animals are fed each week.

:: Start with your code from Q6/Q7.

:: Define a type union animal and cell type animal-tracker as before.
:: Then declare an instance of the type animal-tracker.
:: Then return the instance with the value "meals" incremented by some number,
:: depending on the animal.

:: The animals have different feeding requirements,
:: so meals should go up by a different number depending on the animal.

:: If an example value is:
:: [%cow 'connie' 5]
:: Then an example output would be:
:: [%cow 'connie' 10]

:: Your code should look something like this:

:: =/  animal  ______
:: =/  animal-tracker  _______
:: =/  =animal-tracker  _______
:: ______
:: ______ 
:: ______
:: ...
:: ==

:: Once your code works, try changing the animal-tracker value and observing the different behavior.
:: Hint: for the logic, use ?- (wuthep) to switch on species inside the head of the data.
:: Hint: You can grab species using wing notation either by directly using the faces species.animal-tracker , or lark -.animal-tracker
:: Hint: There are many ways to return the data structure with the value meals incremented. You can return the reconstructed cell [x y changed-z] . You can use to use the =. (tisdot) rune to change and then return it.

:: Answer (commented)
:: Define a type-union "animal"
=/  animal  ?(%wolf %eagle %lion %tiger %bear)  
:: Define a cell type "animal-tracker"
=/  animal-tracker  ,[species=animal name=@t meals=@ud]  
:: Declare an instance of animal-tracker, conserving namespace
=/  =animal-tracker  [%tiger 'tony' 0]
:: Increment the animal-tracker meal count depending on the species
?-    species.animal-tracker
    %wolf
  =.(meals.animal-tracker (add meals.animal-tracker 1) animal-tracker)
::
    %eagle
  =.(meals.animal-tracker (add meals.animal-tracker 1) animal-tracker)
::
    %lion
  =.(meals.animal-tracker (add meals.animal-tracker 2) animal-tracker)
::
    %tiger
  =.(meals.animal-tracker (add meals.animal-tracker 2) animal-tracker)
::
    %bear
  =.(meals.animal-tracker (add meals.animal-tracker 3) animal-tracker)
==
:: Should return: [species=%tiger name='tony' meals=2]

:: Answer
=/  animal
  ?(%wolf %eagle %lion %tiger %bear)  
=/  animal-tracker
  ,[species=animal name=@t meals=@ud]  
=/  =animal-tracker
  [%tiger 'tony' 0]
=/  feedings-map
  (map animal @ud)
=.  meals.animal-tracker
  %+  add
    meals.animal-tracker
  ?-  species.animal-tracker
    %wolf   1
    %eagle  1
    %lion   2
    %tiger  2
    %bear   3
  ==
animal-tracker
