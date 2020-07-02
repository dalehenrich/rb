testing
includesCategory: aCategory
  ^ (categories includes: aCategory asSymbol)
    and: [ super includesCategory: aCategory ]