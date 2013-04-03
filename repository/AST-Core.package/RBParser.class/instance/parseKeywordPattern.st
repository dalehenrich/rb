private-parsing
parseKeywordPattern
	| keywords args node |
	keywords := OrderedCollection new.
	args := OrderedCollection new.
	[currentToken isKeyword]
		whileTrue:
			[keywords add: currentToken.
			self step.
			args add: self parseVariableNode].
	node := self methodNodeClass
		selectorParts: keywords
		arguments: args.
	node comments: (node comments, args last comments).
	args last comments: nil.
	^node