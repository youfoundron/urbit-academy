:: Q1. Construct a JSON reparser and mark following the instructions at 
:: https://docs.urbit.org/language/hoon/guides/json-guide

:: Answer this question with your mark file.


:: Answer
:: /mar/user/hoon
/+  *json-test
|_  usr=user
++  grab
  |%
  ++  noun  user
  ++  json  from-js
  --
++  grow
  |%
  ++  noun  usr
  ++  json  (to-js usr)
  --
++  grad  %noun
--
