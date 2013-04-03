running
checkClass: aContext
  (aContext selectedClass isMeta
    or: [ aContext includesBehaviorNamed: #'TestCase' ])
    ifTrue: [ ^ self ].
  aContext selectedClass classComment isEmpty
    ifTrue: [ 
      result
        addClass: aContext selectedClass;
        addClass: aContext selectedClass class ]