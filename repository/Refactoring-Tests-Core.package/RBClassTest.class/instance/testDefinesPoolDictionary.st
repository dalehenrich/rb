method tests
testDefinesPoolDictionary
  self deny: (objectClass definesPoolDictionary: #'OpcodePool').
  self assert: (newClass definesPoolDictionary: #'TextConstants').
  self deny: (messageNodeClass definesPoolDictionary: #'OpcodePool')	"
This is not the case in GemStone, since the Squeak package doesńt declare a pool.
But, itś worth keeping the original test text, for comparison
	self assert: ((RBNamespace new classNamed: #Text) 
				definesPoolDictionary: #TextConstants)"