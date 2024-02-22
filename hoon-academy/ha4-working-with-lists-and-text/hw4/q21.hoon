:: Q21. Working with Tapes V

:: I used to have a lot of money, but I wasted it all on a bee-licious treat.

:: Please use the list library gate snap to replace one character in this tape so I can pay my bills.

:: "I have a lot of honey"

:: Hint: snap takes 3 arguments as input, first the list, next the index, and finally the element to replace in the index.
:: Hint: the offending character is in the 16th index.
:: Hint: make sure the element you swap in is not a tape! The elements of a tape or (list @tD) are @tD atoms. You can just format it as a @t.

:: Answer
%^    snap
    "I have a lot of honey"
  16
'm'
