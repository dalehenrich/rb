baseline
baseline: spec
  <baseline>
  spec
    for: #'common'
    do: [ 
      spec
        package: 'AST-Core' ;
        package: 'AST-Tests-Core' with: [ spec requires: 'AST-Core' ].
      spec
        group: 'default' with: #('Core');
        group: 'Core' with: #('AST-Core');
        group: 'Tests' with: #('AST-Tests-Core') ].
  spec
    for: #'gemstone'
    do: [ 
      spec
        configuration: 'GsCore'
        with: [ 
          spec
            versionString: '0.247';
            repository: 'http://seaside.gemstone.com/ss/MetacelloRepository' ].
      spec
        package: 'AST-Core'
          with: [ 
              spec
                requires: 'GsCore' ] ]