initialize-release
initialize
	super initialize.
	classBlock := [:context :aResult | ].
	methodBlock := [:context :aResult | ].
	self resultClass: RBSelectorEnvironment