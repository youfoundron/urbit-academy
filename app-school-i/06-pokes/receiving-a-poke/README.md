# Receiving a poke

## The `on-poke` agent arm
The `on-poke` agent arm handles incoming pokes.

Whenever something tries to poke your agent, Gall calls your agent's `on-poke` arm and gives it the `cage` from the poke as its sample. The arm will produce a `(quip card _this)`.

Here is how it an `on-poke` arm implementation typically begins:
```hoon
++  on-poke
  |=  [=mark =vase]
  ^-  (quip card _this)
  ... 
```

The sample of the gate is usually specified as a cell of `mark` and `vase` rather than just `cage`, simply because it is easier to work with.

Just a reminder a `cage` is a cell of a `mark` and a `vase`. The data in the vase should match the data type of the specified mark.

### Testing the mark

Typically you test the `mark` with something like a `?+` (wutlus) expression.  
Unexpected `mark`s are generally passed to `default-agent`, which just crashes.  

The basic pattern looks like this:
```hoon
?+  mark  (on-poke:def mark vase)
  %noun            ...
  %something-else  ...
  ...
==
```

### Extracting the vase
After testing the `mark`, you typically extract the `vase` to the expected type, and then apply your desired logic. 

For example:
```hoon
=/  action  !<(some-type vase)
?-  -.action
  %foo  ...
  %bar  ...
  ...
==
```

Your agent will produce a list of `card`s to be sent off and a new, modified state, as appropriate.

#### A typical pattern:
An agent for a chat app might take new messages as pokes, add them to the list of messages in its state, and send out the new messages to subscribed chat participants as `gift`s.

## What about the `%poke-ack`?
Gall will automatically send a `%poke-ack` `gift` back to whereever the poke came from. The `%poke-ack` will be a "nack" -- a negative acknowledgement -- if your agent crashed while processing the poke, and an ack otherwise.

If it's a "nack", the `tang` in the `%poke-ack` will contain a stake trace of the crash.

You do not need to explicitly send a `%poke-ack`.

Just design your agent to handle only what you expect and crash in all other cases.

You can crash by passing the `cage` to `default-agent`, or just with a `!!`. 

In the latter case, you can add an error message to the stack trace like so:
```hoon
~|  "some error message"
!!
```
