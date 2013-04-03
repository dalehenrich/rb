private
willBeMultiline: aNode 
	^(self formattedSourceFor: aNode) includes: Character lf