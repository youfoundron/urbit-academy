:: Q2. Using a Simple Core II

:: Pin n to the value 0 to the head of the subject with =/ or =+ . This will become the sample of a core.

:: Then create a core with a single arm $ which computes the value n incremented by 1.

:: Using => or  =< , set this core as the subject and run the $ arm, and see that it returns 1.

:: Hint: You can use the .+ rune or add to increment n.


:: Answer (=>)
=/  n
  0
=>
|%
++  $  .+  n
--
$

:: Answer (<=)
=/  n
  0
=<
$
|%
++  $  .+  n
--
