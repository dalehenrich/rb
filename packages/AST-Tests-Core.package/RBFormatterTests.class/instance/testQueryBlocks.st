testing
testQueryBlocks
  "GemStone query blocks must have () around predicates when more than one predicate is involved and the only operator between predicates is & ... formatter may be a little more conservative"

  self
    formatMethodSource:
      'select: nsc nsc
    select: { :person | 
      (true) & (1 < person) & (person <= 3) }'
    expected:
      {'select: nsc 
	nsc select: {:person | (true) & (1 < person) & (person <= 3)}'.
      'select: nsc
  nsc select: { :person | true & (1 < person) & (person <= 3) }'}.
  self
    formatMethodSource:
      'select: nsc nsc
    select: { :person | 
      (person.isMale) & (1 < person.numberOfChildren)
        & (person.numberOfChildren <= 3) }'
    expected:
      {'select: nsc 
	nsc select: 
			{:person | 
			(person.isMale) & (1 < person.numberOfChildren) 
				& (person.numberOfChildren <= 3)}'.
      'select: nsc
  nsc
    select: { :person | (person.isMale) & (1 < person.numberOfChildren) & (person.numberOfChildren <= 3) }'}.
  self
    formatMethodSource:
      'select: nsc nsc
    select: { :person | 
      (person.isMale == true) & (1 < person.numberOfChildren)
        & (person.numberOfChildren <= 3) }'
    expected:
      {'select: nsc 
	nsc select: 
			{:person | 
			(person.isMale == true) & (1 < person.numberOfChildren) 
				& (person.numberOfChildren <= 3)}'.
      'select: nsc
  nsc
    select: { :person | 
      (person.isMale == true) & (1 < person.numberOfChildren)
        & (person.numberOfChildren <= 3) }'}.
  self
    formatMethodSource:
      'select: nsc nsc select: {:person | (person.isMale) & (person.firstName = ''Casey'')}'
    expected:
      {'select: nsc 
	nsc select: {:person | (person.isMale) & (person.firstName = ''Casey'')}'.
      'select: nsc
  nsc select: { :person | (person.isMale) & (person.firstName = ''Casey'') }'}.
  true
    ifTrue: [ ^ self ].
  self
    formatMethodSource: ''
    expected:
      {''.
      ''}.
  self
    formatMethodSource: ''
    expected:
      {''.
      ''}.
  self
    formatMethodSource: ''
    expected:
      {''.
      ''}.
  self
    formatMethodSource: ''
    expected:
      {''.
      ''}.
  self
    formatMethodSource: ''
    expected:
      {''.
      ''}.
  self
    formatMethodSource: ''
    expected:
      {''.
      ''}.
  self
    formatMethodSource: ''
    expected:
      {''.
      ''}.
  self
    formatMethodSource: ''
    expected:
      {''.
      ''}.
  self
    formatMethodSource: ''
    expected:
      {''.
      ''}.
  self
    formatMethodSource: ''
    expected:
      {''.
      ''}.
  self
    formatMethodSource: ''
    expected:
      {''.
      ''}