:: Q4.  Zookeeper I

:: You are a zookeeper writing an Urbit app to keep track of the animals in your zoo.

:: Using the =/ (tisfas) rune and $? (bucwut) rune,
:: make a new type union called animal which is a union of at least 5 @tas terms.
:: Then use the new type to cast a term that's in the type union.

:: Write it with tall form for $? (bucwut).

:: Your code should look like this:
:: =/  animal  ______
:: ^-  animal  %some-animal

:: Submit the full code and not just the part in the blank.

:: Hint: a term is a text constant that is also its own type, that starts with a % (cen).
:: Hint: We've used =/ to pin a face to a value, but you can also pin a face to a type definition.

:: Answer
=/  animal
  $?  %wolf
      %eagle
      %lion
      %tiger
      %bear
  ==
^-  animal
%tiger
