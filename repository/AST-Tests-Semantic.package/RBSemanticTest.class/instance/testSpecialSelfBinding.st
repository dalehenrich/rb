testing-bindings
testSpecialSelfBinding
	| tree binding |
	tree := self parseExpression: 'self'.
	binding := tree variableBinding.
	
	self deny: binding isArgumentBinding.
	self deny: binding isContextBinding.
	self deny: binding isInstanceBinding.
	self deny: binding isLiteralBinding.
	self assert: binding isSelfBinding.
	self deny: binding isSuperBinding.
	self deny: binding isTemporaryBinding.
	self deny: binding isUndeclaredBinding.
	
	self assert: binding isAccessed.
	self deny: binding accessors isEmpty.	
	self deny: binding isRead.
	self assert: binding readers isEmpty.
	self deny: binding isWritten.
	self assert: binding writers isEmpty.
	self assert: binding isReadonly.
	
	self assert: binding name = 'self'.
	self assert: binding printString isString.
	self deny: binding scope isNil