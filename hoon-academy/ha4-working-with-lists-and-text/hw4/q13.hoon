:: Q13. List Library V

:: Start with your answer to last question.

:: Use the list library gate lent to write an expression that returns the number of stars in the original list.
:: Start with the code below and fill in the rest:

:: =/  is-star  |=(p=@p &((gth p 255) (lth p 65.536)))
:: _________________________________________________

:: Hint: lent just takes 1 argument, a list.

:: Previous code
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

:: Docs for lent -- https://docs.urbit.org/language/hoon/reference/stdlib/2b#lent

:: Answer
=/  is-star
  |=(p=@p &((gth p 255) (lth p 65.536)))
%-  lent
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
