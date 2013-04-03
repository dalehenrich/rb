accessing
rationale
	^ 'Checks for the common code fragment: "(aCollection detect: [ :each | ''some condition'' ] ifNone: [ nil ]) ~= nil". anySatsify: can simplify this code to "aCollection anySatsify: [ :each | ''some condition'' ]". Not only is the anySatsify: variant shorter, it better signifies what the code is doing.'