class tests
testRoots
  | model |
  model := RBNamespace new.
  self
    assert:
      (model rootClasses asSortedCollection: [ :a :b | a name < b name ]) asArray
        =
          ((RBNamespace rootsOfTheWorld collect: [ :each | model classFor: each ])
            asSortedCollection: [ :a :b | a name < b name ]) asArray