:: Q4. Understanding the Payload I 

:: Consider these two code snippets.

:: Snippet A
=>  [a=1 b=2] 
(add a b)

:: Snippet B
=> 
|% 
++  a  1 
++  b  2 
-- 
(add a b)

:: When entered in the Dojo, the first one errors out with find.add,
:: while the second one works and returns 3. Why is that?

:: Hint: What's in the payload (right branch) of the core?


:: Answer
The code we enter into our dojo terminal is wrapped by a hidden tisgar like so:
`=>   implicit-subject  our-code`

This provides an implicit subject for all dojo operations.

The first snippet blows this subject away and replaces it with the cell [a=1 b=2] -- this is why the lookup to the "add" gate fails.

The second snippet, however, provides a core for the new subject.

The data-structure of every core is a cell of "battery" and "payload"

            core
            /  \
      battery  payload
(stored code)  (stored data)

The battery holds the arms of the core and the payload contains the subject that the core was built in.

In the second snippet, our new subject looks like this:

            core
           /    \
        arms  implicit-subject
        / \
      a   b

Because the implicit dojo subject is intact, so is the reference to the "and" gate.
