private
checkClass: aClass 
	context selectedClass: aClass.
	(environment definesClass: aClass) ifTrue: [rule checkClass: context]