private
formatMethodSource: source expected: expectedArray
  1 to: self formatters size do: [ :index | 
    | formatter |
    formatter := self formatters at: index.
    self
      formatMethodSource: source
      formatter: formatter
      expected: (expectedArray at: index) ]