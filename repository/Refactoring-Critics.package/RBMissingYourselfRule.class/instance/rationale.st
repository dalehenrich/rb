accessing
rationale
	^ 'Checks for missing "; yourself" cascaded message send for cascaded messages that are used. This helps locate common coding mistakes such as "anArray := (Array new: 2) at: 1 put: 1; at: 2 put: 2". In this example, anArray would be assigned to 2 not the array object.'