:: Exercise: Finding the child of a point

:: A point has many children, but the first moon of a planet is located at that point plus 2³² = 4.294.967.296.

:: The first moon of ~sampel-palnet is:

:: > `@p`%-(add [~sampel-palnet 4.294.967.296])
:: ~doznec-sampel-palnet

:: What are the first moon children of ~sampel-palnet's neighbors?

`@p`%-(add [~datwyn-lavrud 4.294.967.296])
:: ~doznec-datwyn-lavrud

`@p`%-(add [~radbyr-fonlyr 4.294.967.296])
:: ~doznec-radbyr-fonlyr

:: Answers

:: previous neighbor's moon child
~doznec-datwyn-lavrud
:: next neighbor's moon child
~doznec-radbyr-fonlyr


:: What is the first planet of the star ~sampel? (Check the above text to determine the offset.)

`@p`%-(add [~sampel 65.536])
:: ~lisfes-salfer

:: Answer
~lisfes-salfer
