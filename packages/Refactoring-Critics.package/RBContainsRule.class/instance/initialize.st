initialization
initialize
	super initialize.
	self matcher 
		matchesAnyOf: #(
			'(`@object detect: [:`each | | `@temps| `@.Statements] ifNone: [nil]) isNil'
			'(`@object detect: [:`each | | `@temps| `@.Statements] ifNone: [nil]) notNil'
			'(`@object detect: [:`each | | `@temps| `@.Statements] ifNone: [`@expr]) = `@expr'
			'(`@object detect: [:`each | | `@temps| `@.Statements] ifNone: [`@expr]) == `@expr'
			'(`@object detect: [:`each | | `@temps| `@.Statements] ifNone: [`@expr]) ~= `@expr'
			'(`@object detect: [:`each | | `@temps| `@.Statements] ifNone: [`@expr]) ~~ `@expr' )
		do: [ :node :answer | node ]