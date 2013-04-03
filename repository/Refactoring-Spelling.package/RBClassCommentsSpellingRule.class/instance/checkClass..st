running
checkClass: aContext
  | comment |
  aContext selectedClass isMeta
    ifTrue: [ ^ self ].
  comment := aContext selectedClass classComment asString.
  (self check: comment)
    do: [ :each | 
      (self ignore: each in: aContext)
        ifFalse: [ 
          result
            addSearchString: each;
            addClass: aContext selectedClass;
            addClass: aContext selectedClass class ] ]