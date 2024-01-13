:: Exercise: Output each letter in a tape

:: Produce a gate (generator) which accepts a tape value and returns a (list @ud) containing the ASCII value of each character.
:: Use a |- barhep trap.

:: The previous code simply modified a value by addition.
:: You can generalize this to other arithmetic processes, like multiplication, but you can also grow a data structure like a list.

:: For example, given the tape "hello",
:: the generator should return the list [104 101 108 108 111 ~].
:: (A list is structurally a null-terminated tuple, or rightwards-branching cell ending in ~ or 0.)
:: We can equivalently write ~[104 101 108 108 111] which is a special syntax reducing to the same thing.

:: Two tools that may help:

:: - You can retrieve the nth element in a tape using the ++snag gate,
::   e.g. (snag 3 `(list @ud)`~[1 2 3 4 5]) yields 4 (so ++snag is zero-indexed; it counts from zero).

:: - You can join an element to a list using the ++snoc gate,
::   e.g. (snoc `(list @ud)`~[1 2 3] 4) yields ~[1 2 3 4].


:: Answer
|=  [input=@tape]
=/  counter  0
=/  results  *(list @ud)
|-
?:  =(counter (lent input))
  results
=/  ascii  `@ud`(snag counter input)
%=  $
  counter  (add counter 1)
  results  (snoc results ascii)
==
