:: Q2. Getting Comfortable with hoon.hoon

:: hoon.hoon implements the language, compiler, and standard library. It's the backbone of your Urbit system.

:: Run |commit %base in your fakeship's Dojo to make the Martian filesystem show up on Earth. 

:: Then in your Earthly file explorer, navigate to your zod folder, then into the base folder,
:: then into the sys folder, and open up hoon.hoon in your IDE.

:: Lines 20-181 implement the gates for basic atom arithmetic, such as add, sub, etc.
:: Pick one, read the code, and describe how it works. Report your choice and your description.


:: Answer

:: Choosing the add arm...
++  add
  :: something to do with jets (idk about this yet)
  ~/  %add
  
  :: defines a gate (a door with a single arm 'buc')
  :: that takes a two-atom cell, pinning the faces a and b, as its sample
  |=  [a=@ b=@]
  
  :: this is the hoon of our gate's implicit 'buc' arm, let's walk through it...
  :: first it uses kethep to cast the result value to the empty aura
  ^-  @
  :: next it uses wutcol to perform branching logic;
  :: it begs the question "is a equal to 0?"
  :: if so, it evaluates to b (from the sample)
  ?:  =(0 a)  b
  :: otherwise it uses censig to re-evaluate the buc arm with a decreased by 1 and b increased by 1
  $(a (dec a), b +(b))
  :: this recurses until...
  ::   a decrements to 0
  ::   b increments to the original values added together
  :: the gate will then finally evaluate to b, returning the sum of the original values
