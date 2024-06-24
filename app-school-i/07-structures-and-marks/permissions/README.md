# Permissions

In example agents so far, we haven't bothered to check where events such as pokes are actually coming from - our example agents would accept data from anywhere, including random foreign ships. We'll now have a look at how to handle such permission checks.

The `bowl` includes a couple of useful fields: `our` and `src`. The `our` field just contains the `@p` of the local ship. The `src` field contains the `@p` of the ship from which the event originated, and is updated for every new event.

In summary:
- `our.bowl` - the `@p` of our local ship
- `src.bowl` - the `@p` of ship of the event sender

The most common way to enforce agent permissions is to use wutgar (`?>`) and wutgal (`?<`) runes, which are respectively **True** and **False** assertions that crash if they don't evaluate to the expected truth value.


## Examples

### Local-ship only
To only allow messages from the local ship, you can just do the following in the relevant agent arm:
```
?>  =(src.bowl our.bowl)
```

### Allow-list only
If we want to only allow messages from a particular set of ships, we could, for example, have a `(set @p)` in our agent's state called `allowed`.

Then, we can use the `has:in` set function to check:
```
?>  (~(has in allowed) src.bowl)
```

### Moons only
If we want to only allow messages from our local ship's moons you could do this in the agent arm:
```
?> |(=(our src):bowl (moon:title our.bowl src.bowl))
```