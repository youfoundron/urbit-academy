:: Q6.  Zookeeper III

:: Your app needs a data structure to keep tabs on the animals.

:: Using the $: (buccol) rune, $= (buctis) rune, and the animal type you defined, create a cell type animal-tracker which is a triple with:
:: * the face species of type animal in the first entry
:: * face name of type @t in the second
:: *  face meals of type @ud in the third entry. 

:: Then cast a valid triple to your animal-tracker type.

:: Write it with only tall form for both $: and $=.

:: Your code should look like this:
:: =/  animal  _____
:: =/  animal-tracker  _______
:: ^-  animal-tracker  [%some-animal 'animal-name' 123]

:: Submit the full code and not just the parts in the blanks.

:: Answer
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
