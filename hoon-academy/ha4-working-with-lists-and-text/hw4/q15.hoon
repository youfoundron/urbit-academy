:: Q15. Text Types II

:: Which of the following data types --
:: (@t cord, @ta knot, @tas term, (list @tD) tape)
:: -- could be used to store the following text?

:: abcd-1234

:: Hint: You can use the gate sane to check. Recall that
:: %-  sane  %ta
:: or
:: (sane %ta)
:: will create a gate that returns %.y or %.n if a cord input can be parsed as a @ta. 
:: Remember to put the text in single quotes if you're passing it to sane. sane only works with auras like @ta or @tas and not (list @tD)

:: Hint: Cords and tapes can store the same text data, which is pretty much anything.

:: Work
%-  (sane %t)  'abcd-1234'   :: => %.y
%-  (sane %ta)  'abcd-1234'  :: => %.y
%-  (sane %tas)  'abcd-1234' :: => %.y

:: Answers
:: cord, yes
:: knot, yes
:: list, yes
:: tape, yes (tapes can store anything cords can)
