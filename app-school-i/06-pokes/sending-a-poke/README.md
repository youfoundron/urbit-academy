# Sending a poke

An agent can send pokes to other agents by producing `%poke` `card`s.

Any agent arm apart from `on-peek` and `on-save` can produce such `card`s.

The arms will typically produce the `(quip card _this)` like so:
```hoon
:_  this
:~  [%pass /some/wire/ %agent [~target-ship %target-agent] %poke %some-mark !>('some data')]
==
```

#### Colcab in the above snippet...
The `:_` (colcab) rune makes an inverted cell; it's just `:-` but with the head and tail swapped.

We use colcab to produce the `(quip card _this)` because the list of cards is "heavier" here than the new agent core expression (`this`). As a result the code is more readable.

## Receiving the `%poke-ack`
The pokes will be processed by their targets as described in [receiving a poke](../receiving-a-poke/README.md), and the'll `%give` back a `%poke-ack`.

The `%poke-ack` will be received on the `wire` (`/some/wire` in the previous snippet).

When gall gets the `%poke-ack` back, it will call the `on-agent` arm of your agent, with teh `wire` it cam eon and the `%poke-ack` itself in a `sign:agent:gall`.

Your `on-agent` arm would therefore begin like so:
```hoon
++  on-agent
  |=  [=wire =sign:agent:gall]
  ^-  (quip card _this)
  ...
```

### More about `sign`
A `sign:agent:gall` (henceforth just `sign`) is defined in `lull.hoon` as:
```hoon
+$  sign
  $%  [%poke-ack p=(unit tang)]
      [%watch-ack p=(unit tang)]
      [%fact =cage]
      [%kick ~]
  ==
```

It's basically the same as a `gift`, but incoming instead of outgoing.

### Handling the `%poke-ack`
The simplest way to handle a `%poke-ack` is by passing it `default-agent`'s `on-agent` arm.

This will just print an error message to the terminal if it's a "nack", and otherwise do nothing.

Sometimes you'll want your agent to do something different depending on whether the poke failed or succeeded (and therefore whether it's a nack or an ack).

You should always route on wire before sign, _never sign before wire_.

#### Wire-ing
You might do something like:
```hoon
?+  wire  (on-agent:def wire sign)
  [%some %wire ~]  ...
  ...
==
```

#### Sign-ing
After that, you'll need to see what kind of `sign` it is:
```hoon
?+  -.sign  (on-agent:def wire sign)
  %poke-ack  ...
  ...
```

### Test for "nack" or "ack"
Then, you can test whether it's an ack or a nack by checking whether the `(unit tang)` in the `%poke-ack` is null:
```hoon
?~  p.sign
  ...(what to do if the poke succeed)...
...(what to do if the poke failed)... 
```

Finally, you can produce the `(quip card _this)`.