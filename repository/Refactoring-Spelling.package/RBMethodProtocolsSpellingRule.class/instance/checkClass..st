running
checkClass: aContext
  | cl |
  cl := aContext selectedClass.
  cl categories
    do: [ :protocol | 
      (self checkSelector: protocol)
        do: [ :each | 
          (cl selectorsIn: protocol)
            do: [ :selector | 
              result
                addSearchString: each;
                addClass: aContext selectedClass
                  selector: selector
                  into: protocol ] ] ]