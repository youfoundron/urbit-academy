:: Q7. Lists and Lests I

:: Verify that the following code crashes with find.i.starlist.

:: =/  starlist  `(list @p)`[~sonnet ~winter ~diglet ~ponnys ~]
:: i.starlist

:: Modify the code so that it works and returns ~sonnet. 

:: Post the full code below.

:: Hint: You can do this either by casting to a lest instead of list,
:: or proving to the compiler that starlist is not null with ?~ and !!

:: Answer (cast to lest)
=/  starlist
  `(lest @p)`[~sonnet ~winter ~diglet ~ponnys ~]
i.starlist

:: Answer (prove starlist is not null)
=/  starlist
  `(list @p)`[~sonnet ~winter ~diglet ~ponnys ~]
?~  starlist
  !!
i.starlist
