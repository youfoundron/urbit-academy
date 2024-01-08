:: Q10. Core Structure IV

:: This is an OPTIONAL challenge question.

:: These two pieces of code return the same core.
:: That is, I can pin n=5 to the head of the subject,
:: then assign a face to the result of a |% (barcen),
:: or I can assign a face to the result of pinning n=5 then creating a core with |% (barcen).

:: Why doesn't the order matter here?

=/  n  5
=/  gth-10
|%
++  $  (gth n 10)
--
gth-10

=/  gth-10
=/  n  5
|%
++  $  (gth n 10)
--
gth-10


:: Answer
The order does not matter because the core always puts its payload (arms) in front of the battery (subject in context).
The arms of the core will always have a reference down the tree to any previously pinned faces (so long as they do not pin the core itself).

In either snippet the resulting subject contains the face "gth-10" pinned to a core which holds a battery including the face n=5.