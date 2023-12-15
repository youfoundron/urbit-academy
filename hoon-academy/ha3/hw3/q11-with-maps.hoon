=/  animal
  ?(%wolf %eagle %lion %tiger %bear)  
=/  animal-tracker
  ,[species=animal name=@t meals=@ud]  
=/  =animal-tracker
  [%tiger 'tony' 0]
=/  meals-by-animal
  (map animal @ud)
=/  =meals-by-animal
  %-  my
  :~
    [%wolf 1]
    [%eagle 1]
    [%lion 2]
    [%tiger 2]
    [%bear 3]
  ==  
=.  meals.animal-tracker
  %+  add
    meals.animal-tracker
  (~(got by meals-by-animal) species.animal-tracker)
animal-tracker
