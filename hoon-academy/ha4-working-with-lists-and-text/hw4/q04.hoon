:: Q4. List Basics IV

:: Recall that in Q4 of last homework,
:: you used the $? (bucwut) rune to build a type union animal that was a union of 5 or more @tas terms.

:: Define your type union animal as before,
:: then make a null terminated tuple with at least 3 terms that fit the type union, like

:: [%animal1 %animal1 %animal2 %animal3 ~]

:: and cast that to a list of type animal.

:: Your code should look like this:

:: =/  animal  _____ (type union definition here)
:: ^-  ______________

:: Use any syntax you like. Submit the whole code, not just the parts in the blanks.

:: Answer (commented)
:: Build a type-union "animal"
=/  animal
  $?  %wolf
      %eagle
      %lion
      %tiger
      %bear
  ==
:: Make a null-terminated tuple of animals and cast it to a list of type animals
^-  (list animal)
[%lion %tiger %bear ~]

:: Answer (tall-form)
=/  animal
  $?  %wolf
      %eagle
      %lion
      %tiger
      %bear
  ==
^-  (list animal)
[%lion %tiger %bear ~]

:: Answer (sugar-syntax)
=/  animal
  ?(%wolf %eagle %lion %tiger %bear)
`(list animal)`[%lion %tiger %bear ~]
