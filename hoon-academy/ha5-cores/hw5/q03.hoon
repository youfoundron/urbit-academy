:: Q3. Type Arms with +$

:: Recall that in Q6 and Q7 of %hw3,
:: you made an animal mold and animal-tracker mold and used it to cast a value.
:: Let's revisit this by storing them in a core.

:: Create a core with 2 +% (lusbuc) type arms.
:: The animal arm will be the same mold definition (a type union of terms).
:: The animal-tracker arm will be the same mold definition (a triple of species=animal, name=@t, meals=@ud).
:: Recall that it's fine for arms to call other arms. 

:: Using => or =< , set the core as the subject,
:: then use ^- (kethep) and its animal-tracker arm to cast a valid triple.

:: The output should look like
:: [species=%cow name='connie' meals=123]

:: Hint: You can look at the Type Arms section in the notes if you need an example for guidance.


:: Answer (=>)
=>
|%
+$  animal  ?(%lion %tiger %bear)
+$  animal-tracker  [species=animal name=@t meals=@ud]
--
^-  animal-tracker
[%tiger 'tony' 3]

:: Answer (=<)
=<
^-  animal-tracker
[%tiger 'tony' 3]
|%
+$  animal  ?(%lion %tiger %bear)
+$  animal-tracker  [species=animal name=@t meals=@ud]
--
