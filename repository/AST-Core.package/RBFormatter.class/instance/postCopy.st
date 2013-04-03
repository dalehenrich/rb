copying
postCopy
	super postCopy.
	lineStart := self lineLength negated.
	codeStream := AnsiWriteStream on: String new.
	firstLineLength := nil