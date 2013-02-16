initialize-release
initialize
	super initialize.
	codeStream := AnsiWriteStream on: String new.
	tabs := 0.
	lineStart := 0