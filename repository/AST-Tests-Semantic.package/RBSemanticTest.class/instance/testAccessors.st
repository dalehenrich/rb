testing
testAccessors
	| tree binding |
	tree := self parseExpression: '| var | var'.
	binding := tree lexicalScope bindingOf: 'var'.
	self assert: binding node = tree temporaries first.
	self assert: binding accessors size = 1.
	self assert: binding accessors first = tree statements first.
	self assert: binding readers isEmpty.
	self assert: binding writers isEmpty