accessing
contents
	| contentsStream |
	contentsStream := AnsiWriteStream on: String new.
	[ self atEnd ]
		whileFalse: [ contentsStream nextPut: self next ].
	^ contentsStream contents