:: Q14. Text Types I

:: Which text representation do each of the following values fall into?

:: Hint: the knot is the one we're not used to seeing yet.

:: Text Representations:
:: `@t` cord
:: `@ta` knot
:: `@tas` term
:: `(list @tD)` tape

:: Values:
:: "see you on mars!"
:: ~.spaceship
:: %rocket-123
:: 'see you on mars!'

:: Answers
^-  (list @tD)  "see you on mars!"
^-  @ta  ~.spaceship
^-  @tas  %rocket-123
^-  @t  'see you on mars!'
