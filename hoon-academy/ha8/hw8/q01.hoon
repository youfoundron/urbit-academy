:: Q1. Super Boxcar I

:: Boxcar Inc., maker of high-quality boxcar functions,
:: has decided to expand into Urbit and hired you as their Hoon expert.

:: Recall that in Q8 of %hw6, you wrote a boxcar generator.
:: They'd like you to give it some upgrades.

:: Using :: (colcol), add comments to your generator.
:: Let's add a title at the top and a comment explaining the inner logic.

:: Make sure the code still works, and report it below:


:: Answer

:: Use barcen to create gate with a sample
:: that pins the face 'x' to the default value of the aura @ud
|=  x=@ud

:: Use kethep to enforce that the gate's output
::  must also be of the aura @ud
^-  @ud

:: Use wutcol to test the predicate:
::   "when x > 3 and x <= 5"
:: if true, evaluate to 1
:: else, evaluate to 0
?:(&((gth x 3) (lte x 5)) 1 0)
