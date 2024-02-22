:: Q12. Nested Cores II

:: This core has two arms. The $ arm just returns "dirt". The core-in-arm arm contains a core with one arm $ that returns "buried treasure".

|%
++  $  "dirt"
++  core-in-arm
  |%
  ++  $  "buried treasure"
  --
--

:: Using  => or =< , set this core as the subject and return the text "buried treasure"

:: Hint: You have to pull out and build core-in-arm before you can access its arm $. Consider => or =<


:: Answer
=>
|%
++  $  "dirt"
++  core-in-arm
  |%
  ++  $  "buried treasure"
  --
--
$:core-in-arm
