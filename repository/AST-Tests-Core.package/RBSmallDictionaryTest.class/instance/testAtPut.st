testing
testAtPut
	self assert: (dict at: #a put: 3) = 3.
	self assert: (dict at: #a) = 3.
	self assert: (dict at: #a put: 4) = 4.
	self assert: (dict at: #a) = 4.
	self assert: (dict at: nil put: 5) = 5.
	self assert: (dict at: nil) = 5