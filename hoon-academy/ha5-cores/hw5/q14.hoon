:: Q14. Nested Cores IV

:: This is an OPTIONAL challenge question.

:: Consider the following core, which is visualized in the below graphic. Fish out and reconnect "tre", "as", "ure" to recover your prize. 

:: Set the core as the subject with => or =< and weld together the text pieces.

=>
|%
++  $  "as"
++  core-in-arm
  |%
  ++  $  "ure"
  --
--
=>
|% 
++  $  "dirt"
--
|%
++  $  "dirt"
++  core-in-arm
  |%
  ++  $  "tre"
  --
--

:: Hint: Try to make sure you can get the pieces individually first.


:: Answer
=>  =>  |%
        ++  $  "as"
        ++  core-in-arm
          |%
          ++  $  "ure"
          --
        --
    =>  |% 
        ++  $  "dirt"
        --
    |%
    ++  $  "dirt"
    ++  core-in-arm
      |%
      ++  $  "tre"
      --
    --
%+  weld
  $:core-in-arm
%+  weld
  ^^$
$:^core-in-arm
