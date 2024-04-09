# `%give`
```hoon
[%give gift]
```

A `%give` card is a response to a request made by another agent or vane.

It is used to acknowledge a request, or send an update to subscribers.

In either case it has been solicited prior.

A `%give` card contains a `gift:agent:call` (we'll refer to it simply as a `gift`).

Here is the definition of a `gift` in `lull.hoon`:
```hoon
+$  gift
  $%  [%fact paths=(list path) =cage]
      [%kick paths=(list path) ship=(unit ship)]
      [%watch-ack p=(unit tang)]
      [%poke-ack p=(unit tang)]
  ==
```

## Subscriper updates
`%fact` and `%kick` are both sent out to existing subscribers - entities that have previously `%watch`-ed a path on your ship.

### `%kick` gifts
A `%kick` gift takes a list of subscription `paths` and a `(unit ship)`, which is the ship to kick from those paths.

If the `unit` is null, all subscribers are kicked from the specified paths.

Note that sometimes Gall can produce `%kick` gifts without your agent explicitly sending a card, due to networking conditions.

### `%fact` gifts
`%facts` are how updates are sent out to subscribers.

The `paths` field is a list of subscription paths - all subscribers of the specified paths will receive the `%fact`.

The `cage` is the data itself - a cell of a `mark` and a `vase`.


## Acknowledgements or `(n)acks`
If the `(unit tang)` is null (`~`), it is an "ack" -- a positive acknowledgement.

If the `(unit tang)` is non-null, it is a "nack" -- a negative acknowledgement -- where the `tang` contains an error message.

### `%watch-ack`
Sent in response to a `%watch` or `%watch-as` request.

### `%poke-ack`
Sent in response to a `%poke` or `%poke-as` request.