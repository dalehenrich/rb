"Load and run tests to be performed by TravisCI"
| gitCache gitPath loadBlock |
Transcript cr; show: 'travis---->travisCI.st'.

gitCache := 'git_cache'.
gitPath := ( FileDirectory default directoryNamed: gitCache ) fullName.

"Load RB ... "
GsDeployer deploy: [
    Metacello new
      baseline: 'RB';
      repository: 'filetree://', gitPath, '/rb/repository';
      load: 'AST-Core' ].

true ifTrue: [
  "Run all tests in image"
  TravisCISuiteHarness
    value: TestCase suite
    value: 'TravisCISuccess.txt'
    value: 'TravisCIFailure.txt'.
] ifFalse: [
  "Run the RB tests"
  TravisCIHarness
    value: #( 'BaselineOfRB')
    value: 'TravisCISuccess.txt' 
    value: 'TravisCIFailure.txt'.
].

