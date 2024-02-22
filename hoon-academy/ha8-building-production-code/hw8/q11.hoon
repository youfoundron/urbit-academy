:: Q11. Reading and Understanding Hoon Code

:: As a Hoon developer, you'll be reading and understanding substantial pieces of other peoples' code.
:: Let's get some practice with that.

:: The Caesar Cipher is a simple cryptographic cipher.
:: It takes every letter in the message and shifts it forwards or backwards in the alphabet by a certain number of steps.

:: Consider the code in ./caesar.hoon,
:: which is a generator that takes a tape and a @ud,
:: and returns the tape shifted forwards and backwards by that number of steps.

:: You can save it as caesar.hoon in your gen folder and run it with

:: +caesar ["test tape" 11]

:: Read the code and describe what each arm does.
:: Describe the flow of the code and how the arms work together to take the input to the output. 

:: Hints:
:: !: (zapcol) at the top turns on debugging stack trace in the terminal.

:: The code starts by using =< (tisgal) to evaluate the expression

:: =/  msg  (cass msg)
:: :-  (shift msg steps)
::     (unshift msg steps)

:: with the core containing all the arms as the subject.

:: ?. (wutdot) is just ?: with the second and third child reversed.

:: =| (tisbar)  pins the bunt of a type.
:: =|  n=@ud
:: is equivalent to
:: =/  n=@ud  0


:: Answer
Let's go through each arm of the core.

Alpha: 
The 'alpha' arm stores the ordered characters of the alphabet as a tape.

Shift & Unshift:
These arms are responsible for building gates that apply the cipher's offset to a message string.

Shift:
The 'shift' arm stores a gate with a sample containing the string 'message' and integer value 'steps'.
The 'shift' arm's gate casts to a tape the result of calling the 'operate' arm's gate.
Under 'shift', the 'operate' arm's gate is invoked with the 'message' string and the result of passing the 'steps' integer into the gate of the 'encoder' arm.

Unshift:
The 'unshift' arm mirrors the 'shift' arm.
Identically to 'shift', it stores a gate with a sample containing the string 'message' and integer value 'steps'.
The 'unshift' arm's gate casts to a tape the result of calling the 'operate' arm's gate.
Under 'unshift', the 'operate' arm's gate is invoked with the 'message' string and the result of passing the 'steps' integer into the gate of the 'dencoder' arm.

Decoder & Encoder:
These arms are responsible for building gates that produce maps which can translate the cipher's offset for any given letter.

Encoder:
The 'encoder' arm stores a gate that takes an integer 'steps' and returns a map of cords.
It starts by pinnning a face 'value-tape' to the result of invoking the 'rotation' arm's gate with the 'alpha' arm and the 'steps' integer.
It then evaluates the result of invoking the 'space-adder' arm's gate with the pinned 'value-tape' and 'alpha' arm.

Decoder:
The 'decoder' arm mirrors the 'encoder' arm.
Identically to 'encoder', it stores a gate that takes an integer 'steps' and returns a map of cords.
Also identically to 'encoder' it pins a face 'value-tape' to the result of invoking the 'rotation' arm's gate with the 'alpha' arm and the 'steps' integer.
In contrast to 'encoder', it reverses the order of arguments to the 'space-adder' arm's gate.

Operate:
The 'operate' arm takes a message tape and using 'turn', along with a map of cords 'shift-map',
produces a result tape that replaces each character in the original message with the character found at it's entry in the 'shift-map'.

Space-Adder:
The 'space-adder' arm defines a gate that takes two tapes and produces a map of cords that always includes adds an entry mapping the cord ' ' to itself.
This is so that spaces will be accounted for in resulting encoders / decoders.

Map-Maker:
The 'map-maker' arm defines a gate that takes two tapes and returns a map of cords.
It evaluates to a "slammed" gate containing a trap that updates entries in the result map 'chart' by continuously replacing the sample's tapes their tails until one of the tapes evalutes to the type sig.

Rotation:
The 'rotation' arm defines a gate that takes a tape 'my-alphabet' and integer 'steps'.
It trims off the the front of the alphabet up to the number of steps and concatenates it onto the back.
This new tape will be used to mark key position in encoder/decoder cord maps.

Putting it all together:
The generator takes a number 'steps' and a tape 'msg'; lowercases it with cass and then rotates the message text forwards and backwards the specified number of steps using the shift/unshift gates respectively.
A cell with the resulting strings is returned.
