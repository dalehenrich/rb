tests
testPushDownInstanceVariable
	| refactoring |
	refactoring := RBPushDownInstanceVariableRefactoring 
		variable: 'foo1'
		class: RBLintRuleTest.
	self executeRefactoring: refactoring.
	(refactoring model classNamed: #RBLintRuleTest) withAllSubclasses do: [ :each | self deny: (each directlyDefinesInstanceVariable: 'foo1') ]