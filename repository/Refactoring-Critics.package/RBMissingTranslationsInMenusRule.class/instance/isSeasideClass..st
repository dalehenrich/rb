private
isSeasideClass: aClass
	| grObject |
	grObject := Smalltalk globals at: #GRObject ifAbsent: [ ^ false ].
	^ aClass theNonMetaClass includesBehavior: grObject