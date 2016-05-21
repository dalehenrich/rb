running
tearDown
  super tearDown.
  RBProgramNode formatterClass: previous.
  node := previous := nil