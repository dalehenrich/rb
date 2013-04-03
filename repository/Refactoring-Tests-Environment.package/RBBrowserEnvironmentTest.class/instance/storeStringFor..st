private
storeStringFor: aBrowserEnvironment
  | newEnvironment |
  newEnvironment := RBPlatform current evaluate: aBrowserEnvironment storeString.
  self
    assert: newEnvironment numberSelectors = aBrowserEnvironment numberSelectors.
  self assert: (newEnvironment not & aBrowserEnvironment) numberSelectors = 0