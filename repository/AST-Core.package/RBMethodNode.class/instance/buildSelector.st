private
buildSelector
	| selectorStream |
	selectorStream := AnsiWriteStream on: String new.
	selectorParts do: [:each | selectorStream nextPutAll: each value].
	^selectorStream contents asSymbol