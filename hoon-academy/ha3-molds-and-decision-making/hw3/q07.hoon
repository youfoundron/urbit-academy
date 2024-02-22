:: Q7. Zookeeper IV

:: Write your previous code with sugar syntax for both $= (buctis) and $: (buccol).

:: Hint: the correct sugar syntax for $: will be
:: ,[arg1 arg2 arg3]
:: rather than
:: [arg1 arg2 arg3]
:: because =/ expects value mode for its second argument. The leading , makes it clear it's a structure definition.

:: Previous code
=/  animal
  ?=  %wolf
      %eagle
      %lion
      %tiger
      %bear
  ==
=/  animal-tracker
  $:  $=  species
      animal
      $=  name
      @t
      $=  meals
      @ud
  ==
^-  animal-tracker
[%tiger 'tony' 3]

:: Answer (commented)
=/  animal
  :: Sugar syntax for wuttis
  ?(%lion %tiger %bear)
=/  animal-tracker
  :: Sugar syntax for buccol
  ,[species=animal name=@t meals=@ud]
^-  animal-tracker
[%tiger 'tony' 3]

:: Answer
=/  animal
  ?(%lion %tiger %bear)
=/  animal-tracker
  ,[species=animal name=@t meals=@ud]
^-  animal-tracker
[%tiger 'tony' 3]
