:: Q11. Nested Cores I

:: In this code, there is an outer core with one arm $ which returns "dirt".
:: In its payload, it has another core with one arm $ which returns "buried treasure".

=>
|%
++  $  "buried treasure"
--
=>
|%
++  $  "dirt"
--

:: Using  => or =<, set this core as the subject and return the text "buried treasure"

:: Hint: ^face skips the first match to a face and gets the second.


:: Answer
=>
|%
++  $  "buried treasure"
--
=>
|%
++  $  "dirt"
--
^$
