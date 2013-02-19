accessing
selectorsFor: aProtocol in: aClass
  ^ (aClass selectorsIn: aProtocol)
    select: [ :each | self includesSelector: each in: aClass ]