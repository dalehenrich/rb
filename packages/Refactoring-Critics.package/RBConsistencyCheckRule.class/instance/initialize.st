initialization
initialize
	super initialize.
	self matcher 
		matchesAnyOf: #(
			'`@object = nil'
			'nil = `@object'
			'`@object == nil'
			'nil == `@object'
			'`@object ~= nil'
			'nil ~= `@object'
			'`@object ~~ nil'
			'nil ~~ `@object'
			'`@collection size = 0'
			'0 = `@collection size'
			'`@collection size == 0'
			'0 == `@collection size'
			'`@collection size ~= 0'
			'0 ~= `@collection size'
			'`@collection size ~~ 0'
			'0 ~~ `@collection size'
			'`@collection size > 0'
			'0 < `@collection size'
			'`@collection size >= 1'
			'1 <= `@collection size'
			'`@collection at: 1'
			'`@collection at: `@collection size' )
		do: [ :node :answer | node ]