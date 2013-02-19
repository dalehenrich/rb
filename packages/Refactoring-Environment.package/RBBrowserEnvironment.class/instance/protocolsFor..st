accessing
protocolsFor: aClass
  ^ aClass categories select: [ :each | self includesProtocol: each in: aClass ]