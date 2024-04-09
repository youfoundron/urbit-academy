# `%pass`
```hoon
[%pass wire note]
```

A `%pass` card is a request your agent _initiates_.

The purpose of a `%pass` card is to send some kind of one-off request, action, task to another agent or vane.

The type of the first field of a `%pass` card is a `wire`. This is just a list of `@td`. When you `%pass` something to an agent or vane, the response will come back on the `wire` you specify.

The type of the next field is a `note:agent:gall` (we'll refer to it simply as a `note`).

Here is the definition of a `note` in `lull.hoon`:
```hoon
+$  note
  $%  [%agent [=ship name=term] =task]
      [%arvo note-arvo]
      [%pyre =tang]
  ==
```

## `%agent` note
A request to another Gall agent, either local or on a remote ship.

The `ship` and `name` fields are just the target ship and agent name.

The `task` is the request itself.

### `task`
A `task:agent:gall` (henceforth just `task`) is defined in `lull.hoon` as:
```hoon
+$  task
  $%  [%watch =path]
      [%watch-as =mark =path]
      [%leave ~]
      [%poke =cage]
      [%poke-as =mark =cage]
  ==
```
#### Subscriptions
`%watch`, `%watch-as` and `%leave` all pertain to subscriptions.

* `%watch`: A request to subscribe to the specified `path`. Once subscribed, your agent will receive any updates the other agent sends out on that path.
* `%watch-as`: This is the same as `%watch`, except Gall will convert updates to the given `mark` before delivering them to your agent.
* `%leave`: Unsubscribe. The subscription to cancel is determined by the `wire` at the beginning of the `%pass` card rather than the subscription `path`, so its argument is just `~`.

#### Pokes
Pokes are requests, actions, or just some data which you send to another agent. Unlike subscriptions, these are just one-off messages.

A `%poke` contains a cage of some data. A cage is a cell of `[mark vase]`. The `mark` is just a `@tas` like `%foo`, and corresponds to a mark file in the `/mar` directory. The `vase` contains the actual data you're sending.

The `%poke-as` task is the same as `%poke` except Gall will convert the `mark` in the `cage` to the `mark` you specify before sending it off.


## `%arvo` note
A request to a vane.

### `note-arvo`
A `note-arvo` is defined in `lull.hoon` like so:
```hoon
+$  note-arvo
  $~  [%b %wake ~]
  $%  [%a task:ames]
      [%b task:behn]
      [%c task:clay]
      [%d task:dill]
      [%e task:eyre]
      [%g task:gall]
      [%i task:iris]
      [%j task:jael]
      [%k task:khan]
      [%$ %whiz ~]
      [@tas %meta vase]
  ==
```
Each vane has an API with a set of tasks that it will accept.

Each vane's tasks are documented on the API Reference page of its section in the [Arvo documentation](https://docs.urbit.org/system/kernel/arvo).


## `%pyre` note
Used to abort an event. It's mostly used internally and it is unlikely you'd use it in your own agent. The `tang` contains an error message.