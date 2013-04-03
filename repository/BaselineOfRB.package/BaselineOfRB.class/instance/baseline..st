baseline
baseline: spec
  <baseline>
  spec
    for: #'common'
    do: [ 
      spec
        configuration: 'GsCore'
        with: [ 
          spec
            versionString: '0.247';
            repository: 'http://seaside.gemstone.com/ss/MetacelloRepository' ].
      spec
        package: 'AST-Core' with: [ spec requires: 'GsCore' ];
        package: 'AST-Tests-Core' with: [ spec requires: 'AST-Core' ];
        package: 'AST-Semantic' with: [ spec requires: 'AST-Core' ];
        package: 'AST-Tests-Semantic' with: [ spec requires: 'AST-Semantic' ];
        package: 'Refactoring-Environment' with: [ spec requires: 'AST-Core' ];
        package: 'Refactoring-Tests-Environment'
          with: [ spec requires: 'Refactoring-Environment' ];
        package: 'Refactoring-Changes'
          with: [ spec requires: 'Refactoring-Environment' ];
        package: 'Refactoring-Tests-Changes'
          with: [ spec requires: 'Refactoring-Changes' ];
        package: 'Refactoring-Core'
          with: [ spec requires: 'Refactoring-Changes' ];
        package: 'Refactoring-Tests-Core'
          with: [ spec requires: 'Refactoring-Core' ];
        package: 'Refactoring-Critics'
          with: [ spec requires: 'Refactoring-Changes' ];
        package: 'Refactoring-Tests-Critics'
          with: [ spec requires: 'Refactoring-Critics' ];
        package: 'Refactoring-Spelling'
          with: [ spec requires: 'Refactoring-Critics' ];
        package: 'Refactoring-Tests-Spelling'
          with: [ spec requires: 'Refactoring-Tests-Critics' ];
        package: 'Refactoring-GemStone-Platform'
          with: [ spec requires: 'Refactoring-Core' ].
      spec
        group: 'default' with: #('Core');
        group: 'Core'
          with:
            #('AST-Core' 'AST-Semantic' 'Refactoring-Environment' 'Refactoring-Changes' 'Refactoring-Core' 'Refactoring-Critics' 'Refactoring-Spelling' 'Refactoring-GemStone-Platform');
        group: 'Tests'
          with:
            #('AST-Tests-Core' 'AST-Tests-Semantic' 'Refactoring-Tests-Environment' 'Refactoring-Tests-Changes' 'Refactoring-Tests-Core' 'Refactoring-Tests-Critics' 'Refactoring-Tests-Spelling');
        group: 'Core Tests' with: #('Core' 'Tests');
        yourself ]