:: Q20. Working with Tapes IV

:: On a strange, alien planet, the inhabitants worship a machine entity called TIBRU.

:: Start with the two tapes:
:: " liah lla"
:: "urbit"

:: Using the gates cuss, flop, weld, compose an expression that returns the tape:
:: "all hail TIBRU"

:: Hint: cuss is a gate that takes a tape and returns the tape with all letters capitalized.
:: Hint: flop is a list library gate that works on tapes. It takes a list/tape and returns it reversed.

:: Answer
%+  weld
  (flop " liah lla")
(flop (cuss "urbit"))
