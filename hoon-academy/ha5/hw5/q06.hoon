:: Q6. Understanding the Payload III

:: I took the code from last question and modified it again.
:: I changed the ~ to another core.

:: Now it works and returns 3.
:: Why is that? Where did it find the add gate this time?

=>
|%
++  c  3
++  d  4
--
=>
|%
++  a  1
++  b  2
--
(add a b)


:: Answer
The first tisgar sets as the subject a core with the dojo subject as its payload.
The second tisgar sets as the subject a core with first core as its payload.

The resulting subject is a structure like so:

       second-core
       /        \
    arms    first-core
    / \      /      \
   a   b   arms   previous-dojo-subject
           / \
          c   d

The reference to the "and" gate is retained in the previous dojo subject.
