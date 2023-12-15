:: Q6. Fruit Tree I

:: We have this tree of fruit, but it looks like some vegetables have snuck in.

:: [[a='apple' b='berry'] [c='lettuce' [d='dates' e='kale']]]

:: Compose a tall form expression that sets this tree to the subject using  => (tisgar),
:: and then uses a single =: (tiscol) to change the subject so both the vegetables become fruit,
:: and then returns the subject with "." (dot)

:: If successful the Dojo output should look like this:
:: [[a='apple' b='berry'] c='cranberry' d='dates' e='elderberry']

:: Hint: since we have faces for these limbs, we can simply reference them using a b c and so on. No addressing needed.
:: Hint: check the notes or docs for =: for the proper syntax.

:: Answer (commented)
:: Set the tree to the subject using tisgar
=>  [[a='apple' b='berry'] c='lettuce' d='dates' e='kale']
:: Use a tiscol to change the subject so both the vegetables become fruit
=:  c  'cranberry'
    e  'elderberry'
  ==
:: Return the subject with "." (dot)
.

:: Answer
=>  [[a='apple' b='berry'] c='lettuce' d='dates' e='kale']
=:  c  'cranberry'
    e  'elderberry'
  ==
.
