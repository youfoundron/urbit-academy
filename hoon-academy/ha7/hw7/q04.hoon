:: Q4. Grocery Set I

:: You've decided to track your weekly grocery shopping on your Urbit using the set data type.

:: Pick a text representation like tape, @t, or @tas. 

:: Create a set of that type which represents your groceries to buy. Call the library gate sy on a null-terminated tuple of at least 3 grocery items written in that type to make a set, and cast the result to a (set your-text-type).

:: Your code should have a Dojo output like:
{"bread" "milk" "oj" "eggs"}
:: or
{%bread %oj %milk %eggs}


:: Answer
^-  (set tape)
(sy ["bread" "oj" "milk" "eggs" ~])
