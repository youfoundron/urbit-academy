:: Q12. Zookeeper Redux V

:: This is an OPTIONAL challenge question

:: Recall that if you did the optional challenge question Q11 of %hw3, you wrote code that took a triple like:

[%cow 'connie' 10]

:: and returned the structure with the meals number incremented:

[species=%cow name='connie' meals=15]

:: Reimplement this code.
:: However, instead of using ?- (wuthep) to switch on the animal type,
:: create a feedings map to store the food requirements, and use it to retrieve the right number.

:: If you didn't try the challenge question in %hw3, you can still try this one.

:: Start with this working code if you like:

=/  animal  ?(%lion %rhino %giraffe %tiger %cow)
=/  animal-tracker  ,[species=animal name=@t meals=@ud]
=/  at  `animal-tracker`[%cow 'connie' 10]
=.  meals.at
%+  add  meals.at
?-  species.at
%lion  4
%rhino  10
%giraffe  8
%tiger  3
%cow  5
==
at

:: Hint: the first thing you should do is pin the feedings map after the definition of animal.
:: Then replace the ?- logic that looks up the right number to add.


:: Answer
=/  animal
  ?(%wolf %eagle %lion %tiger %bear)
=/  feedings
  ^-  (map animal @ud)
  %-  my
  :~
    [%wolf 1]
    [%eagle 1]
    [%lion 2]
    [%tiger 2]
    [%bear 3]
  ==
=/  animal-tracker
  ,[species=animal name=@t meals=@ud]
=/  =animal-tracker
  [%tiger 'tony' 0]
=.  meals.animal-tracker
%+  add
  meals.animal-tracker
(need (~(get by feedings) %tiger))
animal-tracker
