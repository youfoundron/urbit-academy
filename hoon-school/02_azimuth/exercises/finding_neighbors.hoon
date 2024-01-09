:: Exercise: Finding neighbors

:: A neighbor of a point is a point which occupies the point immediately above or below that point's @ud number.

:: For instance, the @ud of ~sampel-palnet may be found by:

:: > `@ud`~sampel-palnet
:: 1.624.961.343

:: The previous neighbor of ~sampel-palnet is thus:

:: > %-(sub [1.624.961.343 1])
:: 1.624.961.342

:: > `@p`1.624.961.342
:: ~datwyn-lavrud

:: Find the next neighbor of ~sampel-palnet.

%-(add [`@ud`~sampel-palnet 1])
:: 1.624.961.344

`@p`1.624.961.344
:: ~radbyr-fonlyr

:: Answer
~radbyr-fonlyr
