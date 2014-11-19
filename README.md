<h3>Human readable string that will look more close to dictionary words, useful for captchas.</h3>
=========================================================================================

<h4> Usage: </h4>

* Random readable word

```
{random_word} = require "./"

random_word(6) # lokare
random_word(8) # minabere
```

* Random readable sentence

```
{random_sentence} = require "./"

random_sentence(3) 			# balene yusa kurasenemo.
random_sentence(2, 4, 12) 	# mina buyerinalti.
```

* Random readable paragraph

```
{random_paragraph} = require "./"

random_paragraph(3) # balene yusa kurasenemo. mina buyerinalti. mano kirasumat.
random_paragraph(2) # minabere lokare. jolukame hutolipula.
```
