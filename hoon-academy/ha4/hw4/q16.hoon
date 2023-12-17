:: Q16. Text Types III

:: Which of the following data types --
:: (@t cord, @ta knot, @tas term, (list @tD) tape)
:: -- could be used to store the following text?

:: Thë ångström įs ä vęry smäll ûnīt øf méäśürèmęnt

:: Same hints as the last question.

:: Work
%-  (sane %t)  'Thë ångström įs ä vęry smäll ûnīt øf méäśürèmęnt'   :: => %.y
%-  (sane %ta)  'Thë ångström įs ä vęry smäll ûnīt øf méäśürèmęnt'  :: => %.n
%-  (sane %tas)  'Thë ångström įs ä vęry smäll ûnīt øf méäśürèmęnt' :: => %.n

:: Answers
:: cord, yes
:: knot, no
:: list, no
:: tape, yes (tapes can store anything cords can)
