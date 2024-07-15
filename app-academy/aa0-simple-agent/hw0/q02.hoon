:: Q2. Math the arm to its function 

:: Arms
::
:: ++on-load
:: ++on-agent
:: ++on-arvo
:: ++on-poke
:: ++on-peek
:: ++on-init
:: ++on-fail
:: ++on-leave
:: ++on-watch
:: ++on-save

:: Functions
::
:: Creates and returns agent.
:: Pack agent state for an upgrade.
:: Update agent state after an upgrade.
:: Handle one-time message.
:: Register a dropped subscriber.
:: Register a new subscriber.
:: Allow read-only scry into agent state.
:: Handle a subscription update.
:: Handles returned information from Arvo.
:: Clean up after a crash.

:: Answers
::
++on-init     :: Handle one-time message.
++on-save     :: Pack agent state for an upgrade.
++on-load     :: Update agent state after an upgrade.
++on-poke     :: Handle a subscription update.
++on-watch    :: Register a new subscriber.
++on-leave    :: Register a dropped subscriber.
++on-peek     :: Allow read-only scry into agent state.
++on-agent    :: Creates and returns agent.
++on-arvo     :: Handles returned information from Arvo.
++on-fail     :: Clean up after a crash.
