testing
testValues
	dict at: 'France' put: 'Paris'.
	dict at: 'Italie' put: 'Rome'.
	self assert: dict values = #('Paris' 'Rome')