:: Q13. Nested Cores III

:: This core has three arms.
:: The $ arm just returns "dirt".
:: The core1 arm contains a core with one arm $ that returns "trea".
:: The core2 arm contains a core with one arm $ that returns "sure".

|%
++  $  "dirt"
++  core1
  |%
  ++  $  "trea"
  --
++  core2
  |%
  ++  $  "sure"
  --
--

:: Using  => or =< , set this core as the subject and return the text "treasure". Use the weld library gate to concatenate the two tapes.

:: Hint: You have to pull out and build core1 and core2 before you can access their arm $. Consider => or =<. Try getting each part individually first.


:: Answer
=>
|%
++  $  "dirt"
++  core1
  |%
  ++  $  "trea"
  --
++  core2
  |%
  ++  $  "sure"
  --
--
(weld $:core1 $:core2)
