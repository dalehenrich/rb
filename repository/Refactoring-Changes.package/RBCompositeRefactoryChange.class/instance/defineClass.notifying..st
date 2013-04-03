refactory-changes
defineClass: aString notifying: aController
	^ self addChange: (RBAddClassChange definition: aString for: aController)