:: Hoon Academy Final Project

:: This is OPTIONAL. Feel free to try it if you have time, or feel free to skip it.

:: Let's put together all of our knowledge by writing an original piece of code. Write a generator. It can be as short or long as you'd like. It might do something useful, interesting, or even trivial or silly.

:: Upload your generator and any other files to github and post the link below. You can also submit the homework and DM me your final project link later.

:: Some features you could consider including:

:: * Comments
:: * Tests
:: * Importing from a library file
:: * Working with lists and text
:: * Using custom molds
:: * Using sets, maps, or other data structures.
:: * Floating point arithmetic or other mathematical library utilities.
:: * Making it a %say generator, to use randomness, system info, optional arguments. (%say generators can't be tested directly, so you'd have to test library arms if you wanted to test it. Ask if you want tips).

:: Answer
:: This is a generator that when invoked produces any number of "Oblique Strategies".
:: https://en.wikipedia.org/wiki/Oblique_Strategies

:: Save the below code as `eno.hoon` in the `base/gen` folder of your fake ship
:: In the Dojo, run `|commit %base`. You should see a message indicating that the file has been loaded
:: Run the generator with `+eno`

:-  %say
|=  [[* eny=@uvJ *] * *]
:-  %noun
^-  @t
:: The deck of oblique strategy cards
=/  deck
  ^-  (list tape)
  :*  "Abandon normal instruments"
      "Accept advice"
      "Accretion"
      "A line has two sides"
      "Allow an easement (an easement is the abandonment of a stricture)"
      "Are there sections? Consider transitions"
      "Ask people to work against their better judgment"
      "Ask your body"
      "Assemble some of the instruments in a group and treat the group"
      "Balance the consistency principle with the inconsistency principle"
      "Be dirty"
      "Breathe more deeply"
      "Bridges -build -burn"
      "Cascades"
      "Change instrument roles"
      "Change nothing and continue with immaculate consistency"
      "Children's voices -speaking -singing"
      "Cluster analysis"
      "Consider different fading systems"
      "Consult other sources -promising -unpromising"
      "Convert a melodic element into a rhythmic element"
      "Courage!"
      "Cut a vital connection"
      "Decorate, decorate"
      "Define an area as `safe' and use it as an anchor"
      "Destroy -nothing -the most important thing"
      "Discard an axiom"
      "Disconnect from desire"
      "Discover the recipes you are using and abandon them"
      "Distorting time"
      "Do nothing for as long as possible"
      "Don't be afraid of things because they're easy to do"
      "Don't be frightened of cliches"
      "Don't be frightened to display your talents"
      "Don't break the silence"
      "Don't stress one thing more than another"
      "Do something boring"
      "Do the washing up"
      "Do the words need changing?"
      "Do we need holes?"
      "Emphasize differences"
      "Emphasize repetitions"
      "Emphasize the flaws"
      "Faced with a choice, do both (given by Dieter Roth)"
      "Feedback recordings into an acoustic situation"
      "Fill every beat with something"
      "Get your neck massaged"
      "Ghost echoes"
      "Give the game away"
      "Give way to your worst impulse"
      "Go slowly all the way round the outside"
      "Honor thy error as a hidden intention"
      "How would you have done it?"
      "Humanize something free of error"
      "Imagine the music as a moving chain or caterpillar"
      "Imagine the music as a set of disconnected events"
      "Infinitesimal gradations"
      "Intentions -credibility of -nobility of -humility of"
      "Into the impossible"
      "Is it finished?"
      "Is there something missing?"
      "Is the tuning appropriate?"
      "Just carry on"
      "Left channel, right channel, center channel"
      "Listen in total darkness, or in a very large room, very quietly"
      "Listen to the quiet voice"
      "Look at a very small object; look at its center"
      "Look at the order in which you do things"
      "Look closely at the most embarrassing details and amplify them"
      "Lowest common denominator check -single beat -single note -single"
      "riff"
      "Make a blank valuable by putting it in an exquisite frame"
      "Make an exhaustive list of everything you might do and do the last"
      "thing on the list"
      "Make a sudden, destructive, unpredictable action; incorporate"
      "Mechanicalize something idiosyncratic"
      "Mute and continue"
      "Only one element of each kind"
      "(Organic) machinery"
      "Overtly resist change"
      "Put in earplugs"
      "Remember those quiet evenings"
      "Remove ambiguities and convert to specifics"
      "Remove specifics and convert to ambiguities"
      "Repetition is a form of change"
      "Reverse"
      "Short circuit"
      "improve his virility shovels them straight into his lap)"
      "Shut the door and listen from outside"
      "Simple subtraction"
      "Spectrum analysis"
      "Take a break"
      "Take away the elements in order of apparent non-importance"
      "Tape your mouth (given by Ritva Saarikko)"
      "The inconsistency principle"
      "The tape is now the music"
      "Think of the radio"
      "Tidy up"
      "Trust in the you of now"
      "Turn it upside down"
      "Twist the spine"
      "Use an old idea"
      "Use an unacceptable color"
      "Use fewer notes"
      "Use filters"
      "Use \"unqualified\" people"
      "Water"
      "What are you really thinking about just now? Incorporate"
      "What is the reality of the situation?"
      "What mistakes did you make last time?"
      "What would your closest friend do?"
      "What wouldn't you do?"
      "Work at a different speed"
      "You are an engineer"
      "You can only make one dot at a time"
      "You don't have to be ashamed of using your own ideas"
      "[blank card]"
    ~
  ==
:: The index of the result card (chosen randomly)
=/  chosen-card
  (~(rad og eny) (lent deck))
:: The text of the result card
=/  oblique-strategy
  (snag chosen-card deck)
:: Final null check for type safety
?~  oblique-strategy
  !!
(crip oblique-strategy)
