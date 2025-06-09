# Cards

This directory contains my response to sections from the [Cards](https://docs.urbit.org/build-on-urbit/app-school/5-cards) portion of the App School I docs.

## Card Type
Defined in `lull.hoon`:
```hoon
+$  card  (wind note gift)
```

### Wind mold-builder
Defined in `arvo.hoon`:
```hoon
++  wind
  |$  [a b]
  $%  [%pass p=wire q=a]
      [%slip p=a]
      [%give p=b]
  ==
```

### Card types
Gall does not accept a `%slip`.

This means a `card`, must be one of:
```hoon
[%pass wire note]
[%give gift]
```

## Sections

* [`%pass`](https://docs.urbit.org/build-on-urbit/app-school/5-cards#pass) - [response](./%25pass/README.md)
* [`%give`](https://docs.urbit.org/build-on-urbit/app-school/5-cards#give) - [response](./%25give/README.md)


## Summary
Here is a diagram of the different kinds of `card`s:  
![Card Summary](https://media.urbit.org/guides/core/app-school/card-diagram.svg)