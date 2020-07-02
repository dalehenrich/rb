private
privateInstanceVariableNames
  instanceVariableNames isNil
    ifTrue: [ 
      self isDefined
        ifTrue: [ 
          self
            instanceVariableNames:
              (self realClass instVarNames collect: [ :each | each asString ]) ]
        ifFalse: [ instanceVariableNames := OrderedCollection new ] ].
  ^ instanceVariableNames