running
checkMethod: aContext
  (aContext selectedClass organization categoryOfElement: aContext selector)
    = ClassOrganizer default
    ifTrue: [ result addClass: aContext selectedClass selector: aContext selector ]