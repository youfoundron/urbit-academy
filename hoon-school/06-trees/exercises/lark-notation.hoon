:: Exercise: Lark Notation

:: Use a lark expression to obtain the value 6 in the following noun represented by a binary tree:
:: 
::               .
::              / \
::             /   \
::            /     \
::           .       .
::          / \     / \
::         /   .   10  .
::        /   / \     / \
::       .   8   9   11  .
::      / \             / \
::     5   .           12  13
::        / \
::       6   7

:: Answer
=>  [[[5 6 7] 8 9] 10 11 12 13]
-<+<


:: Use a lark expression to obtain the value 9 in the following noun:
:: [[[5 6 7] 8 9] 10 11 12 13]

:: Answer
=>  [[[5 6 7] 8 9] 10 11 12 13]
->+