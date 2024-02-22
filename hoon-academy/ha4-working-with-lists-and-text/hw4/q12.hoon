:: Q12. List Library IV

:: I have written a custom gate is-star which returns %.y if a @p is a star and %.n if it's not.
:: Write code that takes the below null-terminated tuple and returns a list containing just the stars.
:: Use the list library gate skim.

:: [~zod ~binrul ~sampel-palnet ~mister-rabbyt ~litzod ~sonnet ~nec ~wes ~]

:: Start with the code below and fill in the rest:

:: =/  is-star  |=(p=@p &((gth p 255) (lth p 65.536)))
:: _________________________________________________

:: Hint: skim won't work unless you cast the input tuple to a list of @p.
:: Hint: skim takes the list for its first argument and the gate for the second.

:: Docs for skim -- https://docs.urbit.org/language/hoon/reference/stdlib/2b#skim

:: Answer
=/  is-star
  |=(p=@p &((gth p 255) (lth p 65.536)))
%+  skim
  `(list @p)`[
    ~zod
    ~binrul
    ~sampel-palnet
    ~mister-rabbyt
    ~litzod
    ~sonnet
    ~nec
    ~wes
    ~
  ]
is-star
