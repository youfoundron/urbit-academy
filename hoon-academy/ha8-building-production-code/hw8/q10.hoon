:: Q10. tiny-agent II

:: This is an OPTIONAL challenge question

:: Compose your own version of the tiny-agent door with a more sophisticated state than just a single balance @ud.
:: Maybe the state is a set or a map, and the on-poke actions add or delete objects in the data structure.

:: Compose your door with a series of changes and a call to on-peek to read the final state.


:: Answer
=>
|%
+$  animals  ?(%lions %tigers %bears)
+$  population  (map animals @ud)
--
=>
|_  zoo=population
++  this  .
++  on-init
    |=  latest=population
    this(zoo latest)
  ++  on-poke
    |=  [action=?(%catch %release) amount=@ud species=animals]
    :: validate the amount is greater than 0
    ?:  =(amount 0)
      ~|  (crip "Amount of {<species>} to {<action>} must be greater than 0")
      !!
    ?-    action
        %catch
      %=    this
          zoo
        :: check if the species exists
        ?~  (~(get by zoo) species)
          :: if not we'll get an empty unit,
          :: set the population of the species to the given amount
          (~(put by zoo) [species amount])
        :: if yes, increment the population of the species by the given amount
        %+  ~(put by zoo)
          species
        %+  add
          (need (~(get by zoo) species))
        amount
      ==
    ::
        %release
      %=    this
          zoo
        ?~  (~(get by zoo) species)
          ::  if no species are present, error
          ~|  (crip "You have no {<species>} to release")
          !!
        =/  num-species
          (need (~(get by zoo) species))
        ?:  (gth amount num-species)
          :: if amount exceeds population, error
          ~|  (crip "You cannot release {<amount>} {<species>} as you have {<num-species>} in your zoo")
          !!
        %+  ~(put by zoo)
          species
        (sub num-species amount)
      ==
    ==
  ++  on-peek
    zoo
--
=>  (on-init `population`(my ~[[%lions 1] [%tigers 4]]))
=>  (on-poke [%catch 2 %bears])
=>  (on-poke [%release 3 %tigers])
:: Error cases
:: =>  (on-poke [%catch 0 %lions])
:: =>  (on-poke [%release 0 %bears])
:: =>  (on-poke [%release 100 %tigers])
on-peek
