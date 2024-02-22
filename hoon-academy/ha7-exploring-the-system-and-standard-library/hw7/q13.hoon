:: Q13. Zookeeper Redux VI

:: This is an OPTIONAL challenge and a continuation of the last question.

:: You now have enough Hoon skills to write a generator feeder.hoon that can run from the Dojo as follows:

:: > +feeder [%cow 'connie' 10]
:: [species=%cow name='connie' meals=15]

:: Write the gate, save it as feeder.hoon, and run it as above.

:: To make your code neater, you can compose your gate with a helper core that stores the type definitions.
:: You can fill out the skeleton code below:

:: =<
:: |=  at=animal-tracker
:: ^-  animal-tracker
:: ___________________
:: ___________________
:: ___________________
:: ___________________
:: |%
:: +$  animal  ?(%lion %rhino %giraffe %tiger %cow)
:: +$  animal-tracker  [species=animal name=@t meals=@ud]
:: --

:: Report your code below.


:: Answer
=<
  |=  at=animal-tracker
  ^-  animal-tracker
  =/  feedings
    `(map animal @ud)`(my ~[[%lion 1] [%rhino 1] [%giraffe 2] [%cow 5]])
  =.  meals.at
    %+  add
      meals.at
    (need (~(get by feedings) species.at))
  at
|%
+$  animal  ?(%lion %rhino %giraffe %tiger %cow)
+$  animal-tracker  [species=animal name=@t meals=@ud]
--
