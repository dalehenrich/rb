private
privateRootClasses
  | classes |
  classes := OrderedCollection new.
  self class rootsOfTheWorld
    do: [ :each | 
      | class |
      class := self classFor: each.
      (class notNil and: [ class superclass isNil ])
        ifTrue: [ classes add: class ] ].
  ^ classes