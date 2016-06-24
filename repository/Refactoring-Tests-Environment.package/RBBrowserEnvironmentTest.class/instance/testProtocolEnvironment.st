testing-environments
testProtocolEnvironment
  | aProtocolEnvironment size |
  aProtocolEnvironment := RBProtocolEnvironment
    onEnvironment: RBBrowserEnvironment new
    class: Object
    protocols: #(#'Formatting' #'Testing').
  self universalTestFor: aProtocolEnvironment.
  self
    assert:
      (aProtocolEnvironment implementorsOf: #'printString') numberSelectors = 1.
  size := 0.
  aProtocolEnvironment classesDo: [ :each | size := size + 1 ].
  self assert: size = 1.
  aProtocolEnvironment
    selectorsForClass: Object
    do: [ :each | 
      self
        assert:
          (#(#'Formatting' #'Testing')
            includes:
              (RBBrowserEnvironment new whichProtocolIncludes: each in: Object)) ]