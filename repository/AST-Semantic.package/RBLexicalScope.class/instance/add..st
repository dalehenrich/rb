adding
add: aVariableBinding
	"Add aVariableBinding to the receving scope."

	^ bindings at: aVariableBinding name put: (aVariableBinding setScope: self)