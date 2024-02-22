:: Q9.  tiny-agent I

:: Using the tiny-agent door from the notes,
:: perform an on-init action,
:: at least one on-poke action,
:: and an on-peek action to see the final balance resulting from your changes.

:: Hint: See the notes for the example and explanation.


:: Answer
=>
|_  balance=@ud
++  this  .
++  on-init
    |=  amount=@ud
    this(balance amount)
  ++  on-poke
    |=  [tag=?(%add %sub) amount=@ud]
    ?-  tag
     %add  this(balance (add balance amount))
     %sub  this(balance (sub balance amount))
   ==
  ++  on-peek
    balance
--
=>  (on-init 1.001)
=>  (on-poke [%add 8.000])
on-peek
