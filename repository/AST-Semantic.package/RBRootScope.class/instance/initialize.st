initialization
initialize
	super initialize.
	self add: RBSelfBinding new.
	self add: RBSuperBinding new.
	self add: RBContextBinding new