initialize-release
initialize
	super initialize.
	lineStart := 0.
	indent := 0.
	lookaheadCode := IdentityDictionary new.
	codeStream := AnsiWriteStream on: String new