:: Exercise: Finding the sponsor of a neighbor

:: The sponsor of ~sampel-palnet may be found by:

:: > (sein:title our now ~sampel-palnet)
:: ~talpur

:: The sponsor of the previous neighbor of ~sampel-palnet is thus:

:: > %-(sub [1.624.961.343 1])
:: 1.624.961.342

:: > `@p`1.624.961.342
:: ~datwyn-lavrud

:: > (sein:title our now ~datwyn-lavrud)
:: ~talnep

:: Find the sponsor of the next neighbor of ~sampel-palnet.


%-(add [`@ud`~sampel-palnet 1])
:: 1.624.961.344

`@p`1.624.961.344
:: ~radbyr-fonlyr

(sein:title our now ~radbyr-fonlyr)
:: ~talrys

:: Answer
~talrys
