:: Q10. Zookeeper VII

:: Start with your answer from Q9.

:: We want to use a shorthand to save a bit of namespace. Instead of declaring a=animal, declare an instance of type animal with face animal, using the syntax =animal

:: Change the ?+ to switch on animal instead of a -- make sure it still works.

:: Previous code
=/  animal
  ?(%fly %spider %bird %cat %dog)
=/  a=animal
  %fly
?+  a      'gets swallowed'
  %bird    'catches spiders'
  %cat     'catches birds'
  %dog     'catches cats'
==

:: Answer
=/  animal
  ?(%fly %spider %bird %cat %dog)
=/  =animal
  %fly
?+  animal  'gets swallowed'
  %bird     'catches spiders'
  %cat      'catches birds'
  %dog      'catches cats'
==
