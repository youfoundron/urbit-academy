:: Exercise: Tapes for Text

:: A tape is one way of representing a text message in Hoon. It is written with double quotes:

"I am the very model of a modern Major-General"

:: A tape is actually a (list @t),
:: a binary tree of single characters which only branches rightwards and ends in a ~:

:: What are the addresses of each letter in the tree for the Gilbert & Sullivan quote above?
:: Can you see the pattern?
:: Can you get the address of EVERY letter through l?


:: Answer
:: Can you see the pattern?
:: Yes, each letter is the head (+2 address) of every tail

:: Can you get the address of EVERY letter through l?
:: Sure, here is a script...
=/  quote
  "I am the very model of a modern Major-General"
=/  address
  (peg 1 2)
=/  addresses
  *(list @ud)
|- 
?~  quote
  addresses
%=  $
  quote  t.quote
  address  (peg +(address) 2)
  addresses  (snoc addresses address)
==

:: Addresses
:: ~[
::   2
::   6
::   14
::   30
::   62
::   126
::   254
::   510
::   1.022
::   2.046
::   4.094
::   8.190
::   16.382
::   32.766
::   65.534
::   131.070
::   262.142
::   524.286
::   1.048.574
::   2.097.150
::   4.194.302
::   8.388.606
::   16.777.214
::   33.554.430
::   67.108.862
::   134.217.726
::   268.435.454
::   536.870.910
::   1.073.741.822
::   2.147.483.646
::   4.294.967.294
::   8.589.934.590
::   17.179.869.182
::   34.359.738.366
::   68.719.476.734
::   137.438.953.470
::   274.877.906.942
::   549.755.813.886
::   1.099.511.627.774
::   2.199.023.255.550
::   4.398.046.511.102
::   8.796.093.022.206
::   17.592.186.044.414
::   35.184.372.088.830
::   70.368.744.177.662
:: ]