:: Q1. Complete the “Todo App” tutorial at
:: https://docs.urbit.org/courses/app-school/8-subscriptions#example

:: Add at least three tasks, then subscribe with %todo-watcher
:: and paste the resulting notification from the subscription below.

:: Mars: ~zod, stub desk
::
:: |new-desk %todo
:: |mount %todo

:: Mars: ~nut, stub desk
::
:: |new-desk %todo
:: |mount %todo

:: Earth: Add desks, and desk.bill files
::
:: cp -r ./app-academy/aa2-agents/hw2/todo zod
:: echo ":~  %todo\n==" >> ./zod/todo/desk.bill
:: cp -r ./app-academy/aa2-agents/hw2/todo nut
:: echo ":~  %todo-watcher\n==" >> ./nut/todo/desk.bill

:: Mars: ~zod, commit & install desk
::
:: |commit %todo
:: |install our %todo

:: Mars: ~nut, commit & install desk
::
:: |commit %todo
:: |install our %todo

:: Mars: ~zod, add 3 tasks, allow ~nut to subscribe
::
:: :todo &todo-action [%add 'do the dishes']
:: :todo &todo-action [%add 'make the bed']
:: :todo &todo-action [%add 'take out the trash']
:: :todo &todo-action [%allow ~nut]

:: Mars: ~nut, subscribe to ~zod
::
:: :todo-watcher [%sub ~zod]

:: Answer

:: On ~zod
; ~nut is your neighbor

:: On ~nut
%todo-watcher: Subscribe succeeded!
[ %initial
    tasks
  [   n
    [   p
      170.141.184.506.919.722.564.476.111.855.718.236.160
      q=[name='do the dishes' done=%.n]
    ]
      l
    [   n
      [   p
        170.141.184.506.919.722.740.087.505.400.566.382.592
        q=[name='make the bed' done=%.n]
      ]
        l
      { [   p
          170.141.184.506.919.722.842.647.698.239.697.977.344
          q=[name='take out the trash' done=%.n]
        ]
      }
      r={}
    ]
    r=~
  ]
]
