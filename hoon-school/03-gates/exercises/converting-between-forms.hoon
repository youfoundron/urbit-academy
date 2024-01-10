:: Exercise: Converting Between Forms

:: Convert each of the following irregular forms into the correct regular runic syntax.

:: 1. (add 1 2)
:: 2. `@ub`16
:: 3. [%lorem %ipsum]
:: 4. [%lorem %ipsum %dolor] (can do two ways)

:: Answers
:: 1. (add 1 2)
%-  add
[1 2]

:: 2. `@ub`16
^-  @ub
^-  @
16

:: 3. [%lorem %ipsum]
:-  %lorem
%ipsum

:: 4. [%lorem %ipsum %dolor] (can do two ways)
:-  %lorem
:-  %ipsum
%dolor
:: or
:+  %lorem
  %ipsum
%dolor


:: Convert each of the following regular forms into the correct irregular syntax.

:: 1. :- %lemon %jello
:: 2.  ^- @p ^- @ 256
:: 3.  %- pow :- 2 16

:: Answers
:: 1. :- %lemon %jello
[%lemon %jello]

:: 2.  ^- @p ^- @ 256
`@p`256

:: 3.  %- pow :- 2 16
(pow 2 16)