running
checkMethod: aContext
  (aContext selectedClass categoryOfSelector: aContext selector)
    = ClassOrganizer default
    ifTrue: [ result addClass: aContext selectedClass selector: aContext selector ]